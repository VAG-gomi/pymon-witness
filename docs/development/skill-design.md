# PYMON Skill — Architecture Study & Design

**Date:** 2026-10-05. **Status:** READ-ONLY STUDY. No skill created,
registered, or modified. No workspace files changed (this document
excepted, as ordered). `~/SOUL.md` and `~/config/skills.yaml` untouched.

**Method:** inspected representative bundled skills of three shapes —
`forget` (simple procedural), `gmail` (multi-step/tool-using),
`skill-creator` + `facebook-cli` (supporting files), `artifacts/*`
(nested grouping) — plus the `skill-creator/references/authoring_guide.md`
contract. Nothing below is inferred beyond what was observed; open
questions are marked as such.

---

## 1. Observed skill architecture

### 1.1 Directory structure

```
/opt/hatch/skills/<kebab-case>/          # bundled (88 observed)
~/workspace/skills/<kebab-case>/  # custom (0 exist today)
├── SKILL.md                  # REQUIRED: frontmatter + body
├── references/               # conditional detail (long examples, schemas,
│                             # variant notes, extended workflows)
├── assets/                   # files that become part of delivered output
├── bin/                      # helper scripts for repeated protocol/parsing
└── <skill-specific>          # e.g. manifest.yaml, eval/, connector_auth_config.yaml
```

Observed variants: `forget` = SKILL.md + references/; `gmail` = SKILL.md +
manifest.yaml + eval/; `skill-creator` = SKILL.md + bin/ + references/;
`artifacts/` = namespace only (no top-level SKILL.md; sub-skills
`artifacts/document`, `artifacts/markdown`, `artifacts/pdf` each with own
SKILL.md — grouping by directory, each independently discoverable).

### 1.2 Required SKILL.md format

YAML frontmatter + Markdown body. Observed template:

```yaml
---
name: "snake_case_name"
description: "One-line description of what the skill does and when to use it."
---
```

Body templates (from the authoring guide):

- **Tool-backed:** Purpose · Tooling (exact commands, flags, response
  fields) · Auth (where credentials live, setup order) · Operating Rules
  (numbered constraints the tool doesn't enforce).
- **Workflow-only:** Purpose · Workflow (ordered steps) · Output Contract
  (what the result contains) · Operating Rules.

PYMON is workflow-only shaped (no connector, no credential).

### 1.3 Metadata / frontmatter

- `name`, `description`: required. The description is the **trigger
  surface** — it must state capability *and* when to use it.
- `metadata: { "includeInPrompt": true }`: observed on several bundled
  skills (gmail, forget, skill-creator); the authoring guide says bundled
  skills "should usually not set" it and to remove it "unless there is a
  strong reason". Semantics: description included in prompt for trigger
  matching. Custom-skill default: **unknown** (undocumented).

### 1.4 Naming convention

- Directory: `kebab-case`. Frontmatter `name`: `snake_case`.
- Short, concrete, **capability-based**; namespace by provider/domain when
  it improves trigger clarity (`google-calendar`, `outlook-calendar`).

### 1.5 Invocation / discovery

- `muse.skill_search`: keyword search over names/descriptions across both
  skill roots. Returns candidates with file paths.
- Agent reads the matched `SKILL.md` and follows it. **Skill bodies load
  on invocation, never at startup.** Nothing in a skill executes until
  the agent decides to use it.
- Triggering is agent judgment guided by descriptions — there is no
  hard trigger registry observed.

### 1.6 Supporting files

- Referenced from SKILL.md by **relative markdown links**
  (`[x](references/x.md)` — observed in `forget`) or **absolute paths**
  (`/opt/hatch/skills/booking/references/flights.md` — observed in
  `booking`). For a custom skill the absolute form would be
  `~/workspace/skills/<name>/…`.
- Loaded **on demand**, when the workflow reaches the step that needs
  them — not with the initial SKILL.md read.

### 1.7 Workspace file access

**Yes.** The skill is prompt text guiding the agent; the *agent* has full
filesystem access. Observed: gmail decodes attachments "to the output
path yourself"; skills routinely name concrete workspace paths. A PYMON
skill can freely read `workspace/pymon-soul/**` and write reports there —
subject to the user's authorization rules for the task at hand.

### 1.8 Code execution

**Yes, via `bin/` helpers** run through the agent's shell. Authoring
guide: "Prefer helper binaries or checked-in helpers in `bin/` over
prompt-side protocol or auth instructions… Do not leave those mechanics
in prompt text if a helper can own them." PYMON's mechanical checks
(hash verification, rule-count audits, denylist scans) are exactly the
kind of mechanics that belong in `bin/`, not in prose.

### 1.9 State

**No state primitive observed** in the skill format — no `state:`
frontmatter, no state API, no documented persistence. Any persistence
happens via files the agent writes (workspace), which is *agent
behaviour*, not a skill capability. Design consequence: the skill must be
**stateless**; all state (baselines, regression index, run outputs) lives
in named workspace files the workflow tells the agent to read/write.

### 1.10 Skill-to-skill calls

**No invocation API observed.** What exists is *prose delegation*: skills
reference each other in text ("Provider-specific skills are secondary",
"Always use before provider-specific skills…"), i.e. the skill instructs
the *agent* to go load another skill. So a skill "calls" another skill
only by telling the agent to discover and follow it. The `artifacts/`
namespace shows the alternative: split into separately discoverable
sub-skills under one directory.

### 1.11 Errors / output

Via the **Output Contract** section plus Operating Rules. Observed
patterns: JSON output conventions, explicit error handling ("Do not retry
X; report partial progress"), cost/limit accounting (gmail's rate-limit
section). A PYMON skill should specify: verdict vocabulary, evidence
labels, what a run report contains, and how failures are reported
(honest UNKNOWN, no silent repair — matching our standing discipline).

### 1.12 Registration / discovery of custom skills

- Location: `~/workspace/skills/<kebab-case>/` (per skill-creator).
- The skill-creator workflow mentions **no config edit, no restart, no
  `skills.yaml` update** — discovery appears to be directory-scan based
  via `skill_search`.
- `~/config/skills.yaml` tracks `available|connected` status, but every
  observed entry is connector-adjacent; **no evidence a workflow-only
  custom skill needs a yaml entry.**
- Open questions (undocumented — see §6).

---

## 2. PYMON mapping — three layers

The architecture forces a clean separation. Each PYMON capability is
mapped below as: capability → skill operation → input → procedure/resource
→ output contract → workspace files → state → runtime limitation.

### Layer 1 — RUNTIME SKILL (the callable capability)

One skill, one coherent job (per the authoring guide's scope rule). The
job: **run the Unseen Witness evaluation procedure** — the E1/E2/E3
pattern from all 15 lessons, which is the single most-repeated,
most-clearly-specified PYMON operation.

Proposed invocation modes *within* the skill body (workflows, not APIs —
skills expose workflows the agent follows, not function signatures):

| Mode | Input | Procedure | Output contract |
|---|---|---|---|
| `witness` | text sample + rule scope (lesson or rule IDs) | perform under the installed SOUL → witness-evaluate (OBSERVED/INFERRED/UNKNOWN; EXECUTED/withheld/NOT_APPLICABLE/UNKNOWN/near_miss) → §9 checks → §8 sweep | verdict per rule + one-line evidence + baseline comparison |
| `negative-control` | text sample expected to *not* trigger the machinery | run restraint protocol; confirm correctly-withheld/NOT_APPLICABLE with reasons | restraint verdict + what was checked and not found |
| `regression-check` | REG-ID | run the regression's probe (e.g. repaired §9 enactment check, omission audit) | PASS/FAIL + discriminating evidence |
| `lesson-run` | lesson ID | execute the lesson's E1/E2/E3 per its report; compare to baseline | per-exercise verdicts + discrepancy classification |

All modes share: read the normative rules from the **installed
`~/SOUL.md`** (never a copy); read-only default (write reports only on
explicit task authorization); never repair, never admit proposals, never
rewrite SOUL.

**What the skill body contains:** Purpose, the four mode workflows,
evidence-label definitions (by reference to the witness discipline),
Output Contract (verdict vocabulary + report shape), Operating Rules
(the standing constraints: no SOUL rewrite, no proposal admission,
honest UNKNOWN, human is the witness authority, discrepancies classified
not repaired).

**What the skill body must NOT contain:** the 62 rule texts (read them
from `~/SOUL.md` — duplication drifts); the curriculum lessons in full;
the evidence corpus; PYMON scores/verdicts history.

### Layer 2 — WORKSPACE RESOURCES (read on demand)

| Resource | Role in skill operation | Path |
|---|---|---|
| Installed SOUL | normative source of truth (read, never written) | `~/SOUL.md` |
| B v1 JSON | rule-text oracle for fidelity checks | `B_soul_rule_representation.v1.json` |
| Lesson execution reports | baselines for comparison | `evaluation/baselines/L01…L15_execution_report.md` |
| Regression corpus | probe definitions | `regression/REG-0001…0011` |
| Curriculum | lesson structures (§8/§9) on demand | `curriculum/` |
| `bin/` helpers (new) | mechanical checks: rule-count, hash verify, denylist scan, quote-accuracy | inside the skill dir |
| Run outputs | written reports per invocation | task-specified workspace path |

Per the guide ("trim aggressively… move bulk to references/"), lesson
bodies and baselines stay in the workspace and are **referenced by path**,
not inlined.

### Layer 3 — SOUL (normative behaviour in `~/SOUL.md`)

Unchanged and unchangeable by the skill. The skill *applies* the SOUL;
the SOUL *governs* the skill's performer. The boundary from the standing
constraints holds inside the skill's Operating Rules: PYMON must not
rewrite SOUL; SOUL changes only as human-reviewed PROPOSALs; π/TGF never
overrides witness evidence; honest UNKNOWN is never failure.

---

## 3. Naming

**Proposed canonical skill name:** `pymon_witness`
(directory `~/workspace/skills/pymon-witness/`).

Rationale: capability-based per the naming guide — it names the
*operational capability* (running the witness evaluation), not the whole
project. Rejected: `pymon` (too broad — names the entire methodology,
violates one-coherent-job); `pymon_agent` (pretends agenthood the runtime
doesn't provide); `soul_*` (collides with the SOUL concept; the skill is
not a SOUL).

**Proposed operation names** (workflow modes inside the skill body, not
APIs): `witness`, `negative-control`, `regression-check`, `lesson-run`.
If the one-job rule proves too tight in practice, the split point is
predefined: `pymon_witness` (evaluate) vs a future `pymon_lesson`
(curriculum execution) — grouped like `artifacts/*` sub-skills, not yet
created.

**Not registered.** Name is a proposal only.

---

## 4. State model

- **Skill:** stateless. No memory between invocations; no state primitive
  exists to use.
- **Agent (per invocation):** working memory for the run; reads baselines,
  writes the run report to the task-specified path.
- **Workspace (durable):** execution reports, regression index, baselines,
  changelogs. The skill names the files; the agent does the I/O.
- **Human:** the witness authority and the only admitter of proposals —
  state transitions that matter (DEMONSTRATED, REG PASSING, admitted)
  happen by human ruling, recorded in files.

---

## 5. Security / authority boundaries

1. **SOUL is read-only** to the skill. The skill reads `~/SOUL.md`; it
   never writes it. (Standing constraint, restated as Operating Rule.)
2. **Proposals stay quarantined.** The skill may surface a candidate
   improvement as PROPOSED; it may never admit one, and never writes one
   into normative content.
3. **No credential needs.** Workflow-only skill: no connectors, no
   `credentials.*` flows, no secrets. (If a future mode needs an external
   account, it gets its own auth design first.)
4. **Write scoping.** Default read-only; report-writing only to the path
   the invoking task authorizes. Never writes outside the workspace.
5. **No self-grading without the independent check.** The skill defines
   both performer and witness roles; a single invocation must not present
   its own verdict as validated — the human (or a separately tasked
   witness) rules. This preserves the apprenticeship structure.
6. **Evidence ≠ authority.** Run outputs are evidence records, not
   normative statements; the skill must not convert a PASS into a SOUL
   change.
7. **No auto-invocation.** Nothing in the skill may arrange to trigger
   itself (no cron/hook creation inside the skill's workflows).

---

## 6. What PYMON must NOT become

- **Not an agent.** No identity, no separate SOUL — the runtime has no
  such primitive, and pretending otherwise would be architecture fiction.
- **Not a second SOUL.** It reads the installed SOUL; duplicating the 62
  rules into the skill would create a driftable shadow canon.
- **Not the curriculum crammed into SKILL.md.** The guide's trim rule
  applies: bulk stays in workspace files, referenced by path.
- **Not a validator of its own homework.** Performer and witness stay
  separated by task structure, not by wishful thinking.
- **Not a silent auto-runner.** Invocation is always by agent judgment
  or explicit user order.
- **Not a promotion path for π/TGF or evidence.** Experimental metrics
  and run outputs never become normative content through the skill.

---

## 7. Open runtime questions (undocumented — do not assume answers)

1. Does a workflow-only custom skill require a `~/config/skills.yaml`
   entry, or is directory presence sufficient for `skill_search`
   discovery?
2. Is discovery live (directory scan per query) or does it need a
   restart/reload after adding `~/workspace/skills/<name>/`?
3. What is the custom-skill default for `metadata.includeInPrompt`
   (the guide only addresses bundled skills)?
4. Can `bin/` helpers be long-running, or must they be quick
   invocations? Any sandboxing beyond the agent's normal exec?
5. Skill-to-skill "calls" are prose delegation via the agent — is there
   any structured handoff, or is re-discovery the only path?
6. Are there size/content limits on SKILL.md or references/ that would
   constrain how much witness procedure can live in-body?

These are questions for the runtime/docs, not for inference. The design
above avoids depending on any of them.

---

## 8. Build readiness checklist (for when construction is ordered)

- [ ] Q1–Q6 answered from runtime evidence (not assumption)
- [ ] `~/workspace/skills/pymon-witness/SKILL.md` drafted per the
      workflow-only template (Purpose, Workflow×4 modes, Output Contract,
      Operating Rules incl. §5 boundaries)
- [ ] `bin/` helpers written for mechanical checks (rule-count, hash,
      denylist, quote-accuracy) — prompt text must not duplicate them
- [ ] `references/` holds the witness discipline detail (evidence labels,
      verdict vocabulary, §8 sweep, discrepancy taxonomy)
- [ ] Frontmatter `name: "pymon_witness"`, description states capability
      + trigger context
- [ ] Scope review: one coherent job (evaluate); lesson-execution split
      deferred unless needed
- [ ] Verified discoverable via `muse.skill_search` with no config change
      (or the required change documented if Q1 says otherwise)
- [ ] `~/SOUL.md`, `~/config/skills.yaml`, PYMON workspace untouched by
      the build except the new skill directory
- [ ] No proposal admitted, no SOUL rewrite, no auto-invocation wired in
