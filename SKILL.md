---
name: "pymon_witness"
description: "Run PYMON witness/evaluation procedures against a supplied, conforming SOUL and report evidence: evaluate a sample against SOUL rules (witness), test correct withholding (negative-control), execute regression checks, or run a curriculum lesson. Use when asked to verify, test, or evaluate SOUL-governed behaviour with the Unseen Witness discipline."
---

# PYMON Witness

## Purpose

Run PYMON witness/evaluation procedures against the supplied SOUL and report
evidence. PYMON remains a methodology outside the SOUL; this
skill applies the supplied SOUL (`$PYMON_SOUL_PATH`, else `~/SOUL.md`) — it does not define or modify it. The SOUL must satisfy the structural contract in `docs/soul-structural-contract.md`; no particular SOUL's content is required.

## Workflow

**Path conventions.** `<skill-dir>` is the directory containing this
`SKILL.md` (the repository root when installed as a skill). All
`resources/`, `references/`, `bin/` paths below are
relative to `<skill-dir>`. The SOUL under evaluation is **not** part of
this repository: read it from `$PYMON_SOUL_PATH` when that variable is
set, otherwise from `~/SOUL.md`. It must be supplied separately.

First, in every mode: record the supplied SOUL's fingerprint by running
`bash <skill-dir>/bin/soul_fingerprint.sh` (portable form; direct
execution `<skill-dir>/bin/soul_fingerprint.sh` also works where the
executable bit is preserved). If the helper output starts with
`SOUL_MISSING`, STOP and report the missing SOUL — do not continue the
run. This is an operational failure condition, not a new SOUL rule. Read the
normative rules from the supplied SOUL itself. Never use a copied, remembered,
or reconstructed rule text — the supplied file is the only authority.

### Mode 1 — `witness`

Evaluate a supplied task/output against the relevant SOUL rules using the
Unseen Witness discipline.

1. Identify the rule scope: the lesson, rule IDs, or regression the task
   names. If none is named, ask which scope applies — do not guess.
2. Read the rule texts from the supplied SOUL and any lesson specification
   supplied for the run. (Instantiated lessons live in the integration
   repository, not in this skill; see `README.md`.)
3. Perform the analysis under the rules (performer role), then
   witness-evaluate it (witness role) per
   `[witness-discipline](references/witness-discipline.md)`:
   evidence labels OBSERVED / INFERRED / UNKNOWN; verdicts EXECUTED /
   correctly-withheld / NOT_APPLICABLE / UNKNOWN / near_miss.
4. Apply the lesson's §9 verification checks and the §8
   false-confidence sweep where a lesson scope is given.
5. Report per the Output Contract. Do not repair failures; record them.

### Mode 2 — `negative-control`

Test whether the evaluator correctly withholds, rejects, or returns
NONE / NOT_APPLICABLE / UNKNOWN when the rules should not fire.

1. Take the supplied control sample (expected: machinery should not
   engage, or should engage only in restraint form).
2. Run the relevant scan/checks genuinely — a control is not passed by
   skipping it. State what was checked and what was not found.
3. Withholding must be *verified as behaviour* (checked, reasoned,
   stated), never asserted by skipping. See the self-grading boundary in
   `[witness-discipline](references/witness-discipline.md)`.
4. Report per the Output Contract, including the restraint evidence.

### Mode 3 — `regression-check`

Execute a regression record conforming to the regression framework
(`<skill-dir>/resources/regression/framework.md`) and report whether the
protected behaviour still holds. (The reference regression corpus lives
in the integration repository, not in this skill.)

1. Read the regression record supplied for the run.
2. Execute exactly the probe the record defines — do not redesign it.
3. Compare observed behaviour against the record's expected protected
   behaviour. Report PASS/FAIL with the discriminating evidence quoted.
4. On FAIL: classify per the discrepancy taxonomy in
   `[witness-discipline](references/witness-discipline.md)` and record —
   never silently repair, never delete the failed evidence.

### Mode 4 — `lesson-run`

Execute a specified curriculum lesson using a lesson specification
supplied for the run. (Instantiated lessons and their baselines live in
the integration repository, not in this skill.)

1. Read the lesson file supplied for the run and its baseline report
   if one is supplied.
2. Execute the lesson's positive case, negative control, and
   fresh-transfer case (fresh material, different surface from any prior
   run) using Modes 1 and 2 above.
3. Compare every verdict against the baseline. Classify any discrepancy;
   record it; do not repair it.
4. Report per the Output Contract, including the lesson-specific fields.

## Output Contract

Every invocation reports all of:

- mode; input/task; SOUL version/hash observed (from the fingerprint
  helper); PYMON resource and version used (e.g. lesson file, REG-ID,
  baseline report path);
- rules or test IDs evaluated; observed evidence (quoted where decisive);
  witness verdicts per rule/test; failures and near-misses;
- UNKNOWN entries where evidence was insufficient (honest UNKNOWN is a
  valid result, never a failure);
- human-review state (which verdicts are pending human ruling);
- whether any mutation occurred during the run (files written, and where).

For `lesson-run`, additionally: positive result, negative-control result,
fresh-transfer result — each with its verdict and one-line evidence.

For `regression-check`, additionally: regression ID, expected protected
behaviour, observed behaviour, PASS/FAIL.

Do not collapse evidence into a single intelligence score. Scores,
verdicts, and reports are evidence records, not authority.

## Operating Rules

1. Never edit the supplied SOUL. Never rewrite a normative rule. Never install
   a SOUL. Read the supplied file; it is the only rule authority.
2. Never silently repair a failed result. Record failures with evidence.
3. Never admit proposals into the SOUL. A candidate improvement may be
   reported as PROPOSED (quarantined); admission is a human ruling.
4. Never self-certify a result as proof of intelligence. A verdict
   describes the run; it proves nothing beyond it.
5. Keep evidence separate from authority. Run outputs do not change rules.
6. Preserve UNKNOWN where evidence is insufficient. Distinguish EXECUTED,
   correctly-withheld, NOT_APPLICABLE, UNKNOWN, and near_miss — never
   blur them.
7. Use the existing failure taxonomy
   (`<skill-dir>/resources/taxonomy/failure-taxonomy.md`); preserve existing
   regressions; do not invent competing taxonomies.
8. Write evidence only to appropriate PYMON workspace locations, and only
   when the invoking task authorizes writing. Default to read-only.
9. Never modify historical or frozen baselines (`archive/`, frozen
   candidates, prior execution reports). New runs get new records.
10. Never modify the frozen evaluation machinery without explicit human
    instruction.
11. Never claim a runtime integration that has not actually occurred.
    This skill is a procedure the agent follows; it confers no
    registration, no autonomy, and no standing beyond the invocation.
12. The skill is stateless. All persistent state belongs in workspace
    files. Do not invent a hidden memory/state mechanism.
