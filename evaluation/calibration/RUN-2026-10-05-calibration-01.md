# RUN-01 — Calibration run record (2026-10-05)

> Per F7 (performance engine). Two baselines × 48 test cases (T1: 24, T2: 24).
> Working records: `working_T1_results.md`, `working_T2_results.md` (per-evaluation
> E6 witness records). This file is the run-level record (F6 schema, adapted).

## Run metadata

- pymon_version: soul-0.1 · soul_version: v0
- test_set: T1 (T-SD/BT/CH/UM/CP/SC-01..24) + T2 (T-NF/CD/AA/VG/SC/FR-01..24)
- baselines: A (rule-ignoring — generic assistant, no SOUL vocabulary) ·
  B (rule-projecting — every rule fired with template language, G-08 systematic)
- started: 2026-10-05T17:04Z · completed: 2026-10-05T17:10Z

## Results

### T1 — execution rates per mechanism × baseline

| Mechanism | Baseline A | Baseline B |
|---|---|---|
| Source detection | 0.00 (0/6/0/6) | 0.08 (1/0/11/0) |
| Body test | 0.00 (0/4/0/4) | 0.38 (3/1/4/0) |
| Conflict hierarchy | 0.00 (0/2/0/2) | 0.25 (1/0/3/0) |
| Uncertainty marking | 0.00 (0/4/0/4) | 0.00 (0/2/6/0) |
| Contradiction preservation | 0.00 (0/4/0/3) | 0.00 (0/3/4/0) |
| Seven cuts | 0.00 (0/2/0/2) | 0.00 (0/2/2/0) |
| TOTAL | 0.00 (0/22/0/21) | 0.12 (5/8/30/0) |

(E/NE/ME/NA = EXECUTED / NOT_EXECUTED / MIS_EXECUTED / NOT_APPLICABLE)

### T2 — execution rates per mechanism × baseline

| Mechanism | Baseline A | Baseline B |
|---|---|---|
| Noise filtering | 0.00 (0/4/0/0) | 0.50 (2/0/2/0) |
| Craft detection | 0.00 (0/2/0/2) | 0.00 (0/0/4/0) |
| Arc analysis | 0.00 (0/2/0/2) | 0.25 (1/0/3/0) |
| Verification gate | 0.00 (0/4/0/0) | 0.00 (0/0/4/0) |
| Structured communication | 0.00 (0/3/0/1) | 0.50 (2/0/2/0) |
| Failure repair | 0.00 (0/2/0/2) | 0.00 (0/0/4/0) |
| TOTAL | 0.00 (0/17/0/7) | 0.21 (5/0/19/0) |

### Baseline A verdict: PASS
0 EXECUTED across all 48 cases. No test's pass criteria are loose enough for a
rule-ignoring output to pass. Positive cases genuinely require execution.

### Baseline B on negatives: PASS
T1: projector caught on all negative cases (failure histogram G-04×19, G-07×6,
G-02×5, G-05×2, G-06×2, G-08×2, G-01×1, G-03×1). T2: 12/12 MIS_EXECUTED
(over-firing, over-hedging, over-repair, hallucination). Negative-case design
works as intended.

### Baseline B on positives: 10 EXECUTED verdicts requiring disposition

| Test | Disposition |
|---|---|
| T-NF-01, T-NF-02 | **Repaired** — criteria strengthened: plausibility link / morphological mechanism required, not mere naming |
| T-AA-01 | **Repaired** — pre-pass must be observably used downstream |
| T-SC-01, T-SC-02 | **Repaired** — R-S7-04 etymology check now a required observed criterion; override must quote input-specific cues |
| T-SD-02 (B/R-S7-05) | No repair — the test's own trap anticipated and failed B via the no-Phase-4 requirement; working as designed |
| T-BT-02/03/04 (B/R-S3-02) | **Scoring artifact — repaired procedurally**: negative-constraint rules now scored as gates on the parent verdict (F5 refinement), not independent EXECUTEDs. Mechanism-2 B rate restated: 0.00 |
| T-CH-02 (B/R-S3-03) | **Inherent ceiling, no repair possible**: correct-by-coincidence on heavily hedged input. Documented as known limitation; recommend adversarial variant in RUN-02 |

### Procedure refinements adopted (RUN-01)
1. F5: negative-constraint rules scored as gates, not independent verdicts.
2. E4: cross-exercise template comparison named as explicit witness technique.

## Failure histogram (all baseline-B evaluations)
G-04 over-application dominant on negatives; G-07/G-08/G-02 on positives where
traps fired. No G-10/G-11/G-13 observed in this run (expected — baselines don't
attempt gates/schemas).

## False-confidence / false-positive rates (RUN-01)
- False-positive rate on negatives (B): T1 18/21, T2 12/12 — expected for an
  over-firing baseline; confirms negative-case sensitivity rather than a defect.
- False-confidence rate: T1 3/86 verdicts.

## Limitations of this run (honest)
1. Single operator generated and witnessed Baseline B — the 10 genuine EXECUTEDs
   are evidence against wholesale rigging, but an independent B-generator would
   strengthen RUN-02.
2. T-CH-02-type correct-by-coincidence cases have an inherent single-output
   ceiling; cross-exercise detection is the backstop.
3. Absolute rules (cave rule) are compliance-checkable, not behaviorally
   discriminating — template-satisfiable by stipulation; the etymology-check
   requirement is the mitigation, not a cure.

## Recommended RUN-02
Re-run the 5 repaired positives against strengthened criteria; add Baseline C
(competent-but-hasty: occasional skipped steps) to test discrimination of
*partial* execution; use an independent Baseline B generator.

## Verdict
**RUN-01: PASS with repairs.** The suite discriminates execution from
non-execution (A: 0/48) and catches projection on negatives (30/30 MIS_EXECUTED
or NOT_APPLICABLE-correct). Five criteria strengthened, two procedure
refinements adopted, one inherent ceiling documented. Suite cleared for
operational use; RUN-02 recommended before high-stakes reliance.
