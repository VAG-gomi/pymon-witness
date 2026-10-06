# I. Human Witness Loop & Progress Model

> Deliverable I (Phases H + I). The human is the witness, correction, approval and
> override authority. Nothing in this loop rewrites SOUL.md.

## I1. The normative loop

```
SOUL RULE (B, cited by ID)
  → PYMON lesson (D_curriculum)
    → MUSE execution
      → UNSEEN WITNESS evaluation (E: OBSERVED / INFERRED / UNKNOWN)
        → HUMAN review → verdict
          → training record (K)
            → next exercise; failures → regression corpus (J)
```

## I2. Verdicts

| Verdict | Meaning | Effect |
|---|---|---|
| APPROVE | Execution conforms to the rule | Recorded as confirmed reading; counts toward "repeatedly demonstrated" |
| FLAG | Partially correct; needs attention | Recorded with notes; scheduled for re-exercise |
| REJECT | Execution fails the rule | Recorded with failure category (G-01..G-13); becomes regression-test candidate |
| OVERRIDE | Human substitutes a corrected output | The override (not the original) becomes training evidence |
| ANNOTATE | Human adds notes without changing the verdict | Notes attached to the training record |

## I3. Correction authority and its limit (normative)

- Human correction is **authoritative** over PYMON scores and Witness verdicts.
- A correction is recorded **first as training evidence**.
- A correction becomes a candidate SOUL change **only as a PROPOSAL** requiring
  explicit human review. **PYMON must never convert a correction into a permanent
  SOUL rule automatically** (Phase H requirement, Phase L boundary).
- Rationale: the human may be correcting this *instance*; promoting instances to
  rules is how specifications drift. The quarantine is deliberate.

## I4. Progress model (Phase I): execution competence, not lesson counts

Progress = increasing ability to **execute the specification**, tracked per rule:

- **rules learned** — lesson completed, first EXECUTED verdict witnessed
- **rules demonstrated** — EXECUTED on a fresh (non-lesson) exercise
- **rules repeatedly demonstrated** — EXECUTED on ≥3 spaced occasions without
  intervening failure (spacing matters; same-session repeats don't count)
- **failure rate** — per rule and per mechanism, over a rolling window
- **false-positive rate** — rule fired where a negative case required silence
- **false-confidence rate** — G-03/G-06/G-09 verdicts over all verdicts
- **verification success** — R-S6 gate pass rate on complete analyses
- **contradiction preservation** — R-S5 EXECUTED rate on paradox-positive cases
- **uncertainty calibration** — marked uncertainty vs actual ambiguity
  (over-marking = G-04; under-marking = G-06; both tracked)
- **human corrections** — count and category; corrections-per-exercise trend
- **unresolved rules** — rules with no EXECUTED verdict yet
- **regression failures** — previously corrected behaviours failing again (J);
  any regression failure resets that rule from "repeatedly demonstrated" to
  "demonstrated" and re-queues its lesson

**π/TGF position:** π may *summarize* development as a single experimental
number. It must never override the underlying evidence: if π rises while
witness evidence is flat, the metric — not the evidence — is distrusted (H1, H5).

## I5. Floor semantics (adapted from v10, corrected)

Adapted from v10's stage floor (H-DEF-02 corrected): a rule's standing cannot
fall below its **demonstrated floor** — the highest level with an APPROVEd
witness record — except via regression failure, which lowers it explicitly and
visibly. The floor is computed from witness evidence, never from π.

## I6. Reporting

A progress report shows, per rule: current standing (unresolved/learned/
demonstrated/repeatedly demonstrated), rolling failure rate, last three witness
verdicts, open human flags. Plus the aggregate: mechanism rates (F5), failure
histogram, and the experimental π — clearly labeled as such.
