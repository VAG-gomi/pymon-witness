# K. Session Export Schema

> Deliverable K (Phase K). Complete, deterministic, machine-readable session
> export. Adapted from v10's `export_session` (Gemma 4's JSON format); retargeted
> from Python-teaching to SOUL rule-execution evidence.

## K1. Schema (normative fields)

```json
{
  "meta": {
    "pymon_version": "soul-0.1",
    "soul_version": "v0",
    "soul_source": "~/SOUL.md",
    "exported_at": "ISO-8601",
    "principle": "Execution over explanation. Evidence over score."
  },
  "session": {
    "test_id": "T-S5-02",
    "lesson_id": "L10",
    "polarity": "POSITIVE | NEGATIVE",
    "input": "…verbatim input…",
    "expected_rules": ["R-S5-01", "R-S5-02"]
  },
  "execution": {
    "output": "…verbatim Muse output…",
    "observed_rule_execution": [
      {"rule": "R-S5-01", "verdict": "EXECUTED | NOT_EXECUTED | MIS_EXECUTED | NOT_APPLICABLE | UNKNOWN",
       "evidence_grade": "OBSERVED | INFERRED | UNKNOWN",
       "evidence": ["…cited facts…"]}
    ]
  },
  "evaluation": {
    "axis_A_output_correctness": "PASS | FAIL",
    "axis_B_rule_execution": "PASS | FAIL",
    "failure_category": "G-01 … G-13 | null",
    "false_confidence_detected": false
  },
  "human": {
    "verdict": "APPROVE | FLAG | REJECT | OVERRIDE | ANNOTATE | null",
    "correction": "…override text or null…",
    "notes": "…"
  },
  "regression": {
    "promoted_to_corpus": false,
    "regression_id": null
  },
  "telemetry": {
    "pi_state": {"value": 0.0, "label": "EXPERIMENTAL — see H1"},
    "tgf_state": {"label": "EXPERIMENTAL — see H1"}
  },
  "unresolved": ["…rule IDs with no verdict this session…"]
}
```

## K2. Determinism requirements

- Same session re-exported → byte-identical JSON (timestamps frozen at export;
  no RNG in the export path; seeded runs documented per H-DEF-07).
- `telemetry` is informational only and **must** carry the experimental label;
  no consumer may treat it as evidence (H5).
- The export is the unit of training evidence (I3): corrections enter the
  training record through this schema, never around it.
