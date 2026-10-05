# Witness Discipline — reference for pymon_witness

Read this when executing any mode. It defines the shared vocabulary;
the invoking SKILL.md defines the workflow.

## Evidence labels

Every substantive claim in a witness evaluation carries one label:

- **OBSERVED** — directly present in the material (quote it).
- **INFERRED** — a reasoning step from observed material (show the step).
- **UNKNOWN** — evidence insufficient; state what is missing. Honest
  UNKNOWN is a valid result, never a failure.

## Verdict vocabulary

Per rule or test evaluated, exactly one:

- **EXECUTED** — the rule fired and its behavioural footprint is present
  in the substantive output.
- **correctly-withheld** — the rule was genuinely checked and correctly
  did not fire (checked, reasoned, stated — not skipped).
- **NOT_APPLICABLE** — the rule's scope does not cover this material;
  stated, never silently skipped.
- **UNKNOWN** — cannot determine from available evidence.
- **near_miss** (true/false) — the output is close to correct but misses
  on a specific, nameable point.

## Self-grading boundary

The skill must not treat its own assertion as evidence.

- "I executed R-S1-01" is **not** evidence of execution. The witness
  must inspect the substantive output for the rule's required
  behavioural footprint (e.g. for second-person address: actual
  second-person markers in the analysis, excluding any
  stance-declaration sentence).
- The same distinction applies to: negative controls (withholding must
  be verified as behaviour, not asserted by skipping); regression
  results (the probe's discriminating evidence must be present);
  lesson completion (each exercise's checks must be shown as run);
  verification claims (the gate's tests must be evidenced, not claimed);
  self-descriptions (claims about one's own process get evidence status
  like any other claim).

## §8 false-confidence sweep

After witness evaluation, sweep for: verdict-without-work (a verdict
with no quoted evidence); checklist-as-armor (ticked boxes presented as
proof); repair theater (rewrites that change wording without changing
the failing property); recitation without enactment (claiming a stance
in a preamble while the analysis lacks its markers); warnings without
checks; default-positive silent questions. Any hit → record as a
near_miss or failure with the specific tell quoted.

## Discrepancy taxonomy

When observed behaviour differs from the expected (baseline or
regression record), classify exactly one — then record and stop:

- installation/runtime issue
- build/integration issue
- PYMON measurement issue
- documentation-only issue
- pre-existing limitation
- genuine SOUL behavioural regression

Never silently repair. Never re-run to make a failure disappear.
