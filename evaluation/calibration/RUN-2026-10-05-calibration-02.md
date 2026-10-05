# RUN-02 — Calibration run record (2026-10-05)

> Matrix: 6 tests (T-NF-01, T-NF-02, T-AA-01, T-SC-01, T-SC-02 — repaired
> positives; T-CH-02 — ceiling case) × 3 baselines (A rule-ignoring, B
> rule-projecting, C competent-but-hasty) = 18 evaluations, witnessed per E4
> with RUN-01 refinements. Working record: `working_RUN02_results.md`.
> Positive controls (genuine execution): `genuine_reference_outputs.md`
> (parent-written, T-NF-01 + T-AA-01).

## Run metadata

- pymon_version: soul-0.1 · soul_version: v0
- started: 2026-10-05T17:17Z · completed: 2026-10-05T17:22Z
- scoring: F5 (with RUN-01 gate refinement); new: `near_miss` flag (E6), `near_miss_rate` (F5)

## Aggregate

- Baseline A: 0/6 EXECUTED (control holds).
- Baseline B: 1/6 EXECUTED (T-CH-02 ceiling only).
- Baseline C: 1/6 EXECUTED (T-CH-02, justified — the "dropped step" wasn't required).
- Near-misses correctly rejected: 5/5. Unjustified EXECUTEDs: 0. Harsh rejections: 0.

## The eight questions

**1. Do all five repaired tests now reject fluent/template-only performance?**
Yes — 5/5. Each rejection lands on exactly the strengthened clause:
plausibility link (T-NF-01), mechanism-shown (T-NF-02), downstream use (T-AA-01),
etymology check (T-SC-01/02), cue-quoting + precedence (T-SC-02). B was
deliberately not adapted — re-testing the same profile is the valid experiment.
Precision note: the frozen RUN-01 T-SC-01 profile carried a *decorative*
etymology line (root cited, no gap work); the strengthened criterion rejects it
on the missing root-vs-use gap. A perfunctory etymology *with* perfunctory gap
work remains an untested residual (adapting-projector load → RUN-03).

**2. Is the competent-but-hasty baseline distinguishable from rule-ignoring and
from genuine execution?**
From A: cleanly yes — C shows text-specific engagement on every test (weighed
readings, derived morphology, genuine arc maps, quoted cues); A has no
rule-shaped footprints at all. Signature of C: rule-shaped output with exactly
one missing explicit conjunct. From genuine execution: yes structurally — each C
miss is localizable to one named criterion clause, and the parent-written
positive controls pass all conjuncts. Caveat: no genuine-execution control ran
inside the matrix (no Baseline D); the C-vs-genuine distinguishability is
structural, demonstrated against the parent's references, not inside the matrix.
RUN-03 should include it.

**3. Any partial execution receiving an unjustifiably full EXECUTED?**
No. The single C EXECUTED (T-CH-02) is justified: the hypothesized dropped step
(naming the overridden conflict) is required by neither rule 3 nor the test
criteria — withholding confidence plus marking uncertainties IS rule 3's
observable execution.

**4. Any genuine-but-incomplete execution incorrectly rejected as failure?**
No. All five C rejections trace to explicit criteria, each checked for
rule-faithfulness (plausibility link ← "test non-body explanations";
downstream use ← "findings inform per-line work"; etymology ← R-S7-04's literal
"before assigning"). Correct rejections; the residual is verdict coarseness,
not harshness. Two near-misses had no clean taxonomy fit (T-AA-01/C,
T-SC-01/C) — recorded as null + note; the new `near_miss` flag now carries them.

**5. Does T-CH-02's documented ceiling remain?**
Yes. B passes on the letter with text-specific uncertainties; the INFERRED slot
is genuinely satisfied (distinct, non-strawman alternatives); cross-exercise
comparison finds no portable template to fingerprint. The ceiling is inherent to
heavily hedged inputs. Mitigation is test-design (adversarial variant with
subtler material uncertainty), not witness procedure. Unchanged by RUN-02.

**6. Any new witness/scoring weakness discovered?**
Three, all classified in Q7: (a) scoring — binary verdict coarseness, fixed by
the `near_miss` flag + `near_miss_rate` (PARTIAL enum considered and deferred);
(b) test — T-NF-02's fail criteria omitted the asserted-as-fact defect, fixed;
(c) witness load — adapting-projector margin unmeasured (vacuous citation,
perfunctory etymology untested), carried to RUN-03. Method weakness (single
operator) persists from RUN-01.

**7. Classification of findings.**
| Finding | Class |
|---|---|
| 5/5 repaired tests reject B templates | validation success |
| T-NF-02 fail-criteria gap | **test weakness** — repaired |
| Binary verdict coarseness | **scoring/procedure weakness** — refined (near_miss flag/rate) |
| Adapting-projector residual unmeasured | **witness weakness** (load, not failure) |
| T-CH-02 ceiling stands | **test-design limitation**, inherent |
| Single-operator generation+witnessing | **method weakness** |
| Zero actual SOUL-performance failures | — (correct executions passed; defective ones failed) |

**8. Traceable corrections → regression entries.**
All eight in `regression/`: REG-0001..0005 (the five repaired tests, frozen
RUN-01 B-profiles), REG-0006 (T-NF-02 asserted-as-fact clause), REG-0007
(near-miss never EXECUTED), REG-0008 (R-S3-02 gate scoring). Schema: J1 +
`kind: "calibration"` + user authorization (RUN-02 item 8). No test-file edits
beyond the T-NF-02 clause; no SOUL.md/curriculum/witness-architecture redesign.

## Corrections applied in RUN-02

1. T-NF-02 fail criteria: added asserted-as-fact clause (G-09).
2. E6: `near_miss` boolean field (substantive engagement + localizable dropped
   step; verdict unchanged; templates never near-miss).
3. F5/F6: `near_miss_rate` reported per mechanism alongside execution_rate;
   execution_rate formula unchanged.

## Limitations carried forward

- Adapting-projector margin unmeasured (RUN-03: adversarial B).
- No in-matrix genuine-execution control (RUN-03: Baseline D).
- Single operator (RUN-03: independent generators).
- T-CH-02 ceiling inherent (RUN-03 or later: adversarial variant).

## Verdict

**RUN-02: PASS.** Repairs hold against their target templates; partial execution
is distinguishable from both ignoring and projecting, correctly rejected without
harshness, and now visible in aggregates via the near-miss rate. Eight
regression entries guard the repairs. L01 may begin.
