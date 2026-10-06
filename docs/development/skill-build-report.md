# PYMON Skill Build Report

**Date:** 2026-10-05. **Skill:** `pymon_witness` (first runtime object
created from the PYMON project).

## Exact skill path

`~/workspace/skills/pymon-witness/` (directory `pymon-witness` =
kebab-case, per the naming convention).

```
pymon-witness/
├── SKILL.md                          # frontmatter + workflow-only body
├── references/
│   └── witness-discipline.md         # evidence labels, verdict vocabulary,
│                                     # self-grading boundary, §8 sweep,
│                                     # discrepancy taxonomy
└── bin/
    └── soul_fingerprint.sh           # deterministic SOUL fingerprint helper
```

No `assets/` directory: the skill needs no generated/stored output
files of its own; run reports go to the PYMON workspace as the invoking
task authorizes.

## Frontmatter

```yaml
name: "pymon_witness"
description: "Run PYMON witness/evaluation procedures against the active SOUL and report evidence: evaluate a sample against SOUL rules (witness), test correct withholding (negative-control), execute regression checks, or run a curriculum lesson. Use when asked to verify, test, or evaluate SOUL-governed behaviour with the Unseen Witness discipline."
```

Verified: parses as YAML; `name` is snake_case; description states
capability *and* trigger context. Matches the observed bundled-skill
contract (name/description keys only). `metadata.includeInPrompt` not
set — default behaviour for custom skills remains undocumented (see
open questions).

## Build validation (per the build order, steps 1–8)

1. **SKILL.md inspected.** Workflow-only template: Purpose, Workflow
   (four modes), Output Contract, Operating Rules.
2. **Frontmatter verified** against the observed contract (see above).
3. **Directory naming verified:** `pymon-witness` (kebab) / `pymon_witness`
   (snake) — matches convention.
4. **No normative duplication.** Grep for rule-anchor quotes
   (`> **R-S…`) and glossary definitions across SKILL.md and
   references/: 0 hits. The skill references rules by ID and reads
   their texts from the installed `~/SOUL.md`.
5. **All supporting-file references resolve.** Three relative links to
   `references/witness-discipline.md` — file exists. `bin/soul_fingerprint.sh`
   exists, is executable, and runs cleanly.
6. **Discoverability tested.** `muse.skill_search` for "pymon witness
   SOUL evaluation" and "pymon_witness": `pymon_witness` returned rank 1,
   score 1.0, file_path `~/workspace/skills/pymon-witness/SKILL.md`,
   immediately after creation.
7. **Registration/discovery status.** No registration step exists in the
   documented mechanism, and none was invented. Discovery was live with
   directory presence alone: no `~/config/skills.yaml` change, no
   restart/reload step. This empirically answers design-study open
   questions Q1 (no yaml entry required for a workflow-only skill) and
   Q2 (no reload required).
8. **The skill was NOT invoked for behavioural work.** Build and
   discovery only.

## Helper verification

`bin/soul_fingerprint.sh` output at build time:

```
path=~/SOUL.md
hash=5ea04a31706847747d34cacfdd5385f39b0dd74f03d72dd4d61468da46e4fdc9
bytes=23017
rule_anchors=62
tension_sections=3
first_line=# Integrated SOUL v2 — build preamble (provenance, not normative)
```

Matches the installed v2 baseline (62 rules, 3 tensions).

## Confirmations

- **`~/SOUL.md` untouched.** Hash before and after build:
  `5ea04a31706847747d34cacfdd5385f39b0dd74f03d72dd4d61468da46e4fdc9`.
  The skill reads it; nothing in the build writes it.
- **`~/config/skills.yaml` untouched.** No entry added; none required.
- **PYMON workspace sources untouched.** No curriculum file, report,
  regression, baseline, or build file was modified. New files added to
  the workspace by explicit order only: `PYMON-SKILL-DESIGN.md` (study),
  this report (build).

## Unresolved implementation questions (carried from the design study)

- Q1 — yaml entry required? **Answered:** no, for a workflow-only skill
  (observed: live discovery without one).
- Q2 — reload/restart required? **Answered:** no (observed: immediate
  discovery after file creation).
- Q3 — custom-skill default for `metadata.includeInPrompt`: still
  undocumented. Skill built without it; trigger behaviour via search is
  confirmed working.
- Q4 — `bin/` helper limits (long-running, sandboxing): undocumented.
  Helper is quick and side-effect-free; no dependence on an answer.
- Q5 — skill-to-skill calls: prose delegation via the agent only; no
  structured handoff observed. The skill does not depend on one.
- Q6 — SKILL.md / references/ size limits: undocumented. Skill kept
  small per the trim guidance.

## Boundary statement

This build creates the first runtime object from the PYMON project.
The boundary remains explicit:

**PYMON workspace architecture** ≠ **PYMON runtime Skill** ≠ **Muse Agent** ≠ **SOUL**

The skill is a procedure the agent follows on invocation. It confers no
registration, no autonomy, no identity, and no normative content. The
SOUL governs; the workspace archives; the skill executes and reports;
the agent decides when to invoke it.
