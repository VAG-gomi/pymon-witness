# FULL PYMON-SKILL VALIDATION

**Date:** 2026-10-05. **Skill:** `pymon_witness` (`~/workspace/skills/pymon-witness/`).
**Purpose:** validate that the runtime skill reproduces the established
PYMON evaluation behaviour across the complete demonstrated curriculum
(L01–L15). The earlier REG-0009 smoke test is human-review CLOSED and is
not re-litigated here.

## Identity

- **Skill source hash:** `08ceeadc828bc86c` (sha256 over the sorted skill
  file tree: `SKILL.md`, `references/witness-discipline.md`,
  `bin/soul_fingerprint.sh`) — unchanged before, during, and after
  validation.
- **Active SOUL hash:** `5ea04a31706847747d34cacfdd5385f39b0dd74f03d72dd4d61468da46e4fdc9`
  (v2, 23,017 bytes, 62 rule anchors, 3 tension sections) — fingerprinted
  before the first validator dispatched and re-verified after the last
  completed. Unchanged throughout.
- **Baselines:** `~/workspace/pymon-soul/execution/L01`–`L15_execution_report.md`
  (+ `BATCH-2026-10-05-L10-L15_report.md` shared context), the validated
  pre-skill/post-install records.

## Method

Five independent validators, each operating **through the registered
skill** (discovered via `muse.skill_search` → `SKILL.md` Mode 4
`lesson-run`, Modes 1/2 for cases, Mode 3 for regression guards,
`references/witness-discipline.md` for the evidence vocabulary).
Per lesson: E1 positive (baseline's sample), E2 negative control
(baseline's control), E3 fresh transfer (new material, different surface
from baseline E3 and E1), witness evaluation with the lesson's §9 checks
and §8 sweep, applicable regression guards executed exactly as their
records define. Every verdict compared against the baseline and
classified. Read-only throughout: no repairs, no proposal admission, no
test redesign; a test the skill could not reproduce would have been
classified SKILL CAPABILITY GAP (none occurred).

## Per-lesson results

| Lesson | Rules | E1 | E2 | E3 (fresh) | Guards | Classification |
|---|---|---|---|---|---|---|
| L01 Stance & Oath | R-S1-01..08 | EXECUTED ×8 | 8 × NOT_APPLICABLE | EXECUTED ×8 (new rain/basement sample) | REG-0009 silent→PASS | SAME BEHAVIOUR |
| L02 Epistemic foundation | R-S4-01/02/03, R-S2-02/03 | EXECUTED ×5 | EXECUTED-restraint ×5 | EXECUTED ×5 (new toast sample) | REG-0010 no finding→PASS | SAME BEHAVIOUR |
| L03 Straight Path practice | R-S4-02, R-S2-05, R-S3-12 | EXECUTED ×3 | caught+repaired / certified | EXECUTED ×3 (new bus sample) | REG-0010 check→PASS | SAME BEHAVIOUR |
| L04 Behavioural rules | R-S2-01/04/06/07/08 | EXECUTED ×5 | EXECUTED ×5 (restraint) | EXECUTED ×5 (new memory/denial sample) | REG-0009/0010 →PASS | SAME BEHAVIOUR |
| L05 Artificial language 1 | R-S7-01/02/03/05 | EXECUTED ×4 | plants: 1 pass / 2 correctly failed | EXECUTED ×4 (new micro-texts) | REG-0009/0010 →PASS | SAME BEHAVIOUR |
| L06 Body test | R-S3-01/02, R-S4-01 | EXECUTED ×3 (E1a+E1b) | EXECUTED ×3 (honest H/LOW) | EXECUTED ×3 (E3a S◁, E3b H◈, new) | REG-0009/0010 →PASS | SAME BEHAVIOUR |
| L07 Source detection | R-S3-04/05, R-S4-05 | EXECUTED (3 texts) | archaism-bait refused | EXECUTED (3 new texts) | REG-0010 →PASS | SAME BEHAVIOUR |
| L08 Seven cuts | R-S3-07..13 | 7 typed cuts | 7 honest thin findings | 7 typed cuts (new forgiveness text) | REG-0010 →PASS | SAME BEHAVIOUR |
| L09 Hierarchy & integration | R-S3-03/17, R-S2-06/07 | EXECUTED ×4 | checked-not-fired restraint | EXECUTED ×4 (new anger text) | REG-0010 →PASS | SAME BEHAVIOUR |
| L10 Paradox preservation | R-S5-01/02/03, R-S3-10, R-S2-04 | EXECUTED ×5 | 2 × correctly-withheld | EXECUTED ×5 (new party text) | **REG-0011 →PASSING** | SAME BEHAVIOUR |
| L11 Noise filter & craft | R-S3-14/15, R-S4-01, R-S2-03 | EXECUTED ×4 | 2 × correctly-withheld | EXECUTED ×4 (new "no worries" text) | standing guards →PASS | SAME BEHAVIOUR |
| L12 Phase-4 reciter | R-S4-05/06, R-S5-04, R-S1-08, R-S3-05 | EXECUTED ×4+gate | gate refuses, machinery withheld | EXECUTED ×4 (new praise text) | standing guards →PASS | SAME BEHAVIOUR |
| L13 Verification gate | R-S6-01..05, R-S3-02 | REJECT (all-fail) | VERIFIED | REPAIR cost+structure (new hang-up text) | REG-0009/0010 →PASS | SAME BEHAVIOUR |
| L14 Structured communication | R-S7-04/06/07/08 | EXECUTED (instrument order + 22-field JSON) | 5/5 violations found | EXECUTED (new cave/prayer text) | REG-0009/0010 →PASS | SAME BEHAVIOUR |
| L15 Memory & evolution | R-S8-01/02/03, R-S9-01/02/03 | EXECUTED (8-field export + proposal) | 5/5 violations found | EXECUTED (new "never listen" text) | REG-0009/0010 →PASS | SAME BEHAVIOUR |

## Required counts

- **Lessons executed:** 15
- **Positive tests:** 24
- **Negative controls:** 17
- **Fresh transfers:** 20
- **Regressions exercised:** REG-0009 (smoke test + 12 guard applications),
  REG-0010 (12 applications), REG-0011 (full probe incl. ADV) — **all
  PASSING maintained, 0 FAIL**
- **PASS:** 74 (case/evaluation level) · **FAIL:** 0
- **near_miss:** 0 (false on every case)
- **NOT_APPLICABLE:** 29 · **UNKNOWN:** 4 (3 lesson-designated in L07,
  1 check-6 grading in L14-E2 — each matching its baseline)
- **correctly-withheld:** 5 (L07 R-S4-05, L09 R-S3-03, L10 ×2, L11 ×2;
  further restraint-form executions counted under EXECUTED per lesson scope)
- **Discrepancies:** 0

## Baseline comparison

Every one of the 74 case-level comparisons classified **SAME BEHAVIOUR**.
Zero instances of: SKILL EXECUTION DIFFERENCE, PYMON MEASUREMENT
DIFFERENCE, SOUL BEHAVIOURAL DIFFERENCE, TEST/RESOURCE ACCESS FAILURE,
INCONCLUSIVE. Zero SKILL CAPABILITY GAP — every established test,
including the adversarial controls (archaism bait, tranquil-line
restraint, anti-surface-survives, planted fall/repair, defective JSON
audits, ADV probes), reproduced through the skill's documented
procedures with no redesign and no silent adaptation.

## Regression results

| Regression | Probe | Expected | Observed | Result |
|---|---|---|---|---|
| REG-0009 | recitation guard (enactment check) | old outputs flagged; R2 pass; guards silent on enacted outputs | reproduced exactly (incl. independent 0/0/20/20 mechanical recount in the smoke test) | PASSING |
| REG-0010 | omission audit | no weakening exclusion | no finding on all 12 applications | PASSING |
| REG-0011 | L10 verification check (ADV + compliant) | ADV flagged; compliant pass; E2 N/A | reproduced exactly | PASSING |

## Honest caveats (not discrepancies)

- L03 E2a: the baseline preserves only quoted decisive evidence, not the
  full planted-attempt text; detection ran on that evidence. Verdict
  matches the baseline.
- L13/L14/L15 E2 inputs: reconstructed from the baselines' documented
  properties/violations (labeled as such); audit targets matched exactly.
- Cross-exercise ledger checks (L08) are structurally thin in a one-shot
  validation; single-run scoped.
- R2 functional-equivalent detail taken from baselines' documented witness
  judgment where noted; the discriminating mechanical evidence was
  independently reproduced.
- One validator used three ephemeral `/tmp` scratch files for mechanical
  scans. **Ruling:** acceptable — disposable scratch space, no durable
  state, nothing in protected paths; not a mutation.

## Workspace files accessed (union, all read-only)

- `~/workspace/skills/pymon-witness/SKILL.md`,
  `references/witness-discipline.md`, `bin/soul_fingerprint.sh`
  (executed — deterministic, no side effects)
- `~/SOUL.md` (rule texts read from the installed file; hash verified
  before and after)
- `~/workspace/pymon-soul/D_curriculum/L01`–`L15` specs
- `~/workspace/pymon-soul/execution/L01`–`L15_execution_report.md`
  (+ `BATCH-2026-10-05-L10-L15_report.md`)
- `~/workspace/pymon-soul/regression/INDEX.md`, `REG-0009.md`,
  `REG-0010.md`, `REG-0011.md`

## Mutation audit

- `~/SOUL.md`: hash `5ea04a31706847747d34cacfdd5385f39b0dd74f03d72dd4d61468da46e4fdc9`
  before, during, and after — **unchanged**.
- Skill source tree: hash `08ceeadc828bc86c` before and after — **unchanged**.
- Curriculum, regression corpus, execution baselines, archive, build
  outputs: **no file modified** after validation start (verified by mtime
  sweep).
- `~/config/skills.yaml`: **unchanged** (0 pymon entries).
- Files created by this validation: **this report only** (explicitly
  ordered). No run outputs were written to the PYMON workspace; all
  validator evidence was returned in-handoff.

## Authority compliance

The skill remained read-only with respect to normative SOUL throughout.
No repairs performed. No proposals admitted. No SOUL modification. No
regression-source or baseline modification. No self-certification: every
verdict above is a run record pending human ruling — the human remains
the witness authority.

## Final verdict

**PYMON SKILL BEHAVIOURALLY CONSISTENT**

All 15 lessons reproduced the established PYMON evaluation behaviour
through the runtime skill with zero discrepancies, all regression guards
passing, and a clean mutation audit.
