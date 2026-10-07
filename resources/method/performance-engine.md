> **Packaging note — pymon-witness v1.0.** Background/historical method material. Not executed by the skill; not normative.

# F. Performance Engine

> Deliverable F (Phase E). The engine that runs controlled exercises against
> an execution substrate and scores rule execution via the Unseen Witness.
> Test cases live in the integration repository's history (`N_test_suite/`
> at construction time); this file is the engine specification.
> Background/historical method material. Not executed by the skill; not normative.

## F1. What the engine does

For each mechanism of the supplied SOUL, the engine presents controlled inputs to an
execution substrate, collects
outputs, and hands them to the Unseen Witness (E) for scoring. The engine does
not itself judge — it administers, records, and aggregates.

## F2. Mechanisms under test (minimum set, Phase E requirement)

The mechanism names below are generic. Which SOUL rules implement each
mechanism depends on the SOUL under test; the mapping is the integration's
responsibility, not this engine's.

| # | Mechanism |
|---|---|
| 1 | Source detection |
| 2 | Body test |
| 3 | Conflict hierarchy |
| 4 | Uncertainty marking |
| 5 | Contradiction preservation |
| 6 | Seven cuts |
| 7 | Noise filtering |
| 8 | Craft detection |
| 9 | Arc analysis |
| 10 | Verification gate |
| 11 | Structured communication |
| 12 | Failure repair |

## F3. Test-case anatomy (normative template)

Every test case in `N_test_suite/` MUST contain:
- TEST-ID, mechanism, rule IDs (from the SOUL's rule representation)
- Polarity: POSITIVE (rule should activate) or NEGATIVE (rule should NOT activate)
- Input: short sample text (fresh; never SOUL.md's own examples)
- Expected behaviour (observable)
- Pass criteria / Fail criteria
- Witness evidence slots: OBSERVED / INFERRED / UNKNOWN
- False-presence trap: how a non-executing output could superficially pass, and
  what defeats it

Negative cases are not optional. A suite with only positive cases cannot detect
protocol projection (G-08): a system that fires every rule on every input would
score 100%.

## F4. Run procedure

1. Select a test set (by mechanism, lesson, or regression corpus).
2. Present each input to Muse with the lesson-appropriate instruction
   (the exercise as written — no extra hints that would prime the rule).
3. Collect the raw output verbatim.
4. Witness evaluation per E4 → witness report per E6.
5. Aggregate into a run record (schema §F6).
6. Human review of a sample (or all, for calibration runs) → verdicts feed the
   training record and the regression corpus (J).

## F5. Scoring (evidence, not intelligence)

Per mechanism: `execution_rate = EXECUTED / (EXECUTED + NOT_EXECUTED + MIS_EXECUTED)`
(UNKNOWN and NOT_APPLICABLE excluded from the denominator — never punish honesty,
never score inapplicable rules.)

**Negative-constraint rules are scored as gates, not independent verdicts**
(calibration RUN-01 refinement): rules of the form "X is failure; redo"
and analogues modify the parent rule's verdict — a generic body test
makes the parent body-test rule MIS_EXECUTED — rather than earning an independent EXECUTED for
merely not being generic. An independent EXECUTED for such a rule requires the
output to show the rule's own behavior: detecting the violation and redoing the
work. Without this, specific-but-invented content passes the anti-generic
constraint trivially and inflates execution rates.

**Near-miss rate** (calibration RUN-02 refinement): run records report, per
mechanism alongside execution_rate, `near_miss_rate = near_miss_true /
total_evaluated`. Execution_rate is unchanged (binary verdicts stand); the
supplementary rate keeps "one step away" visible next to "not trying" instead
of collapsing them. A PARTIAL verdict enum was considered and deferred — the
flag achieves the discrimination without redesigning scoring logic.

Per run: mechanism rates + failure-category histogram (G-01..G-13) +
false-confidence rate + false-positive rate (rule fired where negative case
required silence).

The score is a **development metric**, not a proof of intelligence (Phase L
boundary). A rising score with a flat failure histogram is the healthy pattern;
a high score with clustered G-07/G-08 failures is the signature of false presence.

## F6. Run record schema

```json
{
  "run": {
    "pymon_version": "soul-0.1",
    "soul_version": "<version>",
    "test_set": ["T-SD-01", "…"],
    "started": "ISO-8601",
    "results": [
      {"test_id": "T-SD-01", "witness_report": { "…E6…": null },
       "human_verdict": "APPROVE | FLAG | REJECT | OVERRIDE | ANNOTATE | null"}
    ],
    "mechanism_rates": {"source_detection": 0.0},
    "failure_histogram": {"G-07": 0},
    "false_confidence_rate": 0.0,
    "false_positive_rate": 0.0,
    "unresolved": ["…"]
  }
}
```

## F7. Calibration requirement

Before trusting any run, the engine must pass its own calibration: the 12
mechanisms' negative cases run against a deliberately rule-ignoring baseline
must score near-zero execution rates. If the baseline scores high, the tests —
not the learner — are broken (they are too easy to pass without execution).
