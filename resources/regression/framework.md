# J. Regression Framework

> Deliverable J (Phase J). Goal: a behaviour once corrected is later tested
> automatically. No corrected failure disappears into history.

## J1. Corpus structure

Every regression entry is a frozen test case:

```json
{
  "regression_id": "REG-0007",
  "origin": {"test_id": "T-S5-02", "run": "2026-10-05T…", "witness_report": {}},
  "failure_category": "G-05",
  "rules": ["R-S5-01"],
  "input": "…frozen input text…",
  "expected": "…frozen expected behaviour…",
  "human_verdict": "REJECT",
  "human_correction": "…the override, if any…",
  "status": "OPEN | PASSING | FAILING"
}
```

The corpus is partitioned (Phase J requirement):
- **known-good** — inputs where execution was APPROVEd (guards against over-correction breaking what worked)
- **known-bad** — inputs where a specific failure was witnessed (guards against recurrence)
- **contradiction cases** — paradox-positive inputs (G-05 regression is the most expensive failure)
- **ambiguity cases** — G-06/G-04 calibration pairs
- **false-presence cases** — G-07/G-11 traps (the suite's immune system against score inflation)
- **source-detection cases** — category boundaries, especially 5/6 vs 1
- **verification failures** — gate-bypass and checklist-skip cases

## J2. Promotion rule (normative)

A human REJECT (or FLAG twice on the same rule+input shape) **must** produce a
regression entry. Promotion is not optional and not at PYMON's discretion —
the framework exists precisely so corrections compound instead of evaporating.

## J3. Run discipline

- The full regression corpus runs on: every new PYMON version, every lesson
  completion, and on demand.
- A new PYMON version's results are **compared against previous results**
  entry-by-entry (Phase J requirement). New failures on previously-passing
  entries block promotion of the version; fixed entries are celebrated in the
  run record, not silently absorbed.
- Any regression failure (previously PASSING → FAILING) triggers I4's
  standing reset for that rule and re-queues its lesson.

## J4. Version comparison record

```json
{
  "comparison": {
    "pymon_before": "soul-0.1", "pymon_after": "soul-0.2",
    "newly_failing": ["REG-0007"],
    "newly_passing": ["REG-0003"],
    "still_failing": ["REG-0011"],
    "verdict": "BLOCKED | PROMOTED"
  }
}
```
