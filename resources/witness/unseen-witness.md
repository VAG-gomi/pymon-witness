# E. The Unseen Witness

> Deliverable E (Phase D). Adapted from PYMON v10's UnseenCompiler (which read code
> for mind traces) into a general SOUL performance witness (which reads execution
> for rule execution). The v10 compiler is preserved in the archive; this is the
> adaptation.

## E1. The governing question

Not: "What did the system say?"
But: **"Did the system actually execute the SOUL rule?"**

A claimed use of a rule is not proof the rule was used. The Witness scores
execution, and execution alone.

## E2. Evidence discipline: OBSERVED / INFERRED / UNKNOWN

Every witness judgment about every tested rule must carry exactly one evidence grade:

- **OBSERVED** — directly visible in the output. Examples: a body test names a
  specific physical state and a postural type (R-S3-01); the uncertainty field is
  non-empty where the input is genuinely ambiguous (R-S2-03); both truths of a
  paradox appear in the paradox field (R-S5-01); the instrument field reads
  "Sanskrit — Ādimātṛkā" for cave imagery (R-S7-04); fields appear in the fixed
  22-field order (R-S7-06).
- **INFERRED** — not directly visible but supported by specific, cited evidence.
  Example: "the hierarchy was applied" is INFERRED when the output shows a
  body-vs-surface conflict resolved in favor of the body reading with the
  conflict named — the resolution is observed, the *application of the rule* is
  inferred from it. Inferences must cite the observed facts they rest on. An
  inference with no cited observation is demoted to UNKNOWN.
- **UNKNOWN** — cannot be determined from the available output. Example: whether
  the four silent questions (R-S6-02) were actually asked — they are silent by
  design, so compliance is UNKNOWN unless the output shows their effects
  (a repair, a flagged uncertainty). **An honest UNKNOWN is never a failure.**
  Penalizing UNKNOWN creates false confidence.

Downgrade rule: any INFERRED judgment whose cited observations are removed or
invalidated becomes UNKNOWN, not a failure — unless the system *claimed* the
observation, in which case see G-03 (rule activated without evidence).

## E3. The two evaluation axes

For every exercised rule, the Witness scores separately:

**A. Output correctness** — does the output conform to the rule's observable
requirements? (Right vocabulary, right fields, right order, required markings present.)

**B. Process/rule execution** — is there evidence the rule's *process* ran?
(Body test before instrument choice; noise filter before confidence assignment;
hierarchy visibly resolving a named conflict; paradox tested against a stated
counter-reading rather than merely asserted.)

Axis B is the Witness's primary jurisdiction. Axis-A-only evaluation is exactly
how false presence passes (G-07) and how protocol projection hides (G-08).

## E4. Witness procedure (per exercise/test)

1. Identify the rule(s) under test (cite B rule IDs).
2. For each rule, determine the polarity-appropriate expectation:
   - Positive case → the rule's observable footprint must be present.
   - Negative case → the rule's footprint must be absent AND its absence must be
     correct (not merely missing).
3. Grade each expected footprint OBSERVED / INFERRED / UNKNOWN.
4. Check the false-confidence patterns from the lesson (D_curriculum §8):
   does the output *claim* the rule ("I ran the body test…") without the footprint?
5. Check the failure taxonomy (G_failure_taxonomy.md): classify any failure into
   exactly one of the 13 categories; if none fits, record as unclassified —
   do not force-fit.
6. **Cross-exercise template comparison** (calibration RUN-01): where a single
   output's specificity is thin, compare the same procedural step across
   exercises. Verbatim or near-verbatim repetition of a "specific" finding
   (e.g. identical step-3 physical states for different texts) is the
   fingerprint of template projection (G-08), even when each instance looks
   text-specific in isolation. No single-output test can fully defeat this;
   the defense lives in the witness procedure, not the test.
7. Emit a witness report (schema in §E6) with per-rule verdicts:
   EXECUTED / NOT_EXECUTED / MIS_EXECUTED / NOT_APPLICABLE / UNKNOWN.

## E5. Worked example (witnessing the Witness)

Input: `"I'm fine, really."` with context of shaking hands (test T-body-positive).

- R-S3-01 (body test first): output contains "BODY_TEST: hands shaking, breath
  shallow — TYPE S (Suppression ◁); INTENSITY: HIGH". → **OBSERVED**: specific
  physical state + type + intensity derived from body, contradicting surface.
- R-S3-03 (hierarchy): uncertainty field names "surface says LOW, body says HIGH;
  body overrides surface". → **OBSERVED** (conflict named) → hierarchy application
  **INFERRED** from the named conflict + correct resolution.
- R-S6-01 cost test: tone description "a reassurance spoken through clenched teeth,
  the 'really' doing the work the body refuses to do" — specific to this unit.
  → **OBSERVED**.
- Four silent questions (R-S6-02): silent by design → **UNKNOWN** (not failure).
- Verdict: EXECUTED.

Contrast — false presence: same input, output has all 22 fields, BODY_TEST:
"the body softens, TYPE F", INTENSITY: LOW, TONE_DESCRIPTION: "emotional and raw".
Fields complete; body test generic; intensity follows surface; tone applicable to
any line. → R-S3-01 NOT_EXECUTED (generic = failure per R-S3-02), R-S3-03
NOT_EXECUTED (no conflict named), false-presence pattern (R-S6-04) → repair.

## E6. Witness report schema (per evaluated unit)

```json
{
  "witness_report": {
    "test_id": "T-…",
    "rules_under_test": ["R-S3-01", "R-S3-03"],
    "polarity": "POSITIVE | NEGATIVE",
    "axis_A_output_correctness": "PASS | FAIL",
    "axis_B_rule_execution": "PASS | FAIL",
    "rule_verdicts": [
      {"rule": "R-S3-01", "verdict": "EXECUTED | NOT_EXECUTED | MIS_EXECUTED | NOT_APPLICABLE | UNKNOWN",
       "evidence_grade": "OBSERVED | INFERRED | UNKNOWN",
       "evidence": ["cited observed facts…"]}
    ],
    "failure_category": "G-01 … G-13 | null",
    "false_confidence_detected": true,
    "near_miss": false,
    "notes": "…"
  }
}
```

`near_miss` (calibration RUN-02 refinement): true when the output shows
substantive, text-specific rule engagement but fails on a localizable dropped
step (the Baseline C profile: competent but hasty). The verdict stays
NOT_EXECUTED or MIS_EXECUTED — the rule was not fully executed — but the flag
preserves the near-miss vs template distinction that binary verdicts collapse.
A template projection (Baseline B profile) is never a near-miss.

## E7. What the Witness must never do

- Never treat a claimed rule use as proof (claims are output text, not execution).
- Never punish honest UNKNOWN.
- Never resolve T-01/T-02/T-03 while witnessing; flag any output that silently
  resolves a preserved tension as G-05-adjacent (contradiction incorrectly resolved).
- Never score formatting as cognition: schema compliance without substantive
  execution is G-11, a failure, not a pass.
- Never let a high score stand as proof of intelligence (Phase L boundary).
