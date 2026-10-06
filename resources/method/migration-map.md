> **Packaging note — pymon-witness v1.0.** Background/historical method material. Not executed by the skill; not normative.

# L. Migration Map — PYMON v10 → PYMON-SOUL

> Deliverable L (Phase A.4). Every v10 component classified: PRESERVED / ADAPTED /
> REPLACED / RETIRED / NEW. Source: `archive/pymon_grimware_v10_source.md`.

## PRESERVED (as historical source; untouched)

- The complete v10 prototype text — archived verbatim, never modified.
- The π threshold mathematics (`E[Δπ] = Δ(1 − 3p/2)`, critical rate 2/3, 0.0088
  residual) — as derived results; the *interpretation* ("knowing vs being")
  preserved as the authors' claim, not fact.
- The Gemma-4 fix log (Fix 1/2/3) — as history, including Fix 1's aspirational
  status (H-DEF-04).

## ADAPTED (pattern kept, target changed)

| v10 component | PYMON-SOUL form | Change |
|---|---|---|
| UnseenCompiler (reads code for mind traces) | Unseen Witness (E) — reads execution for rule execution | Target: code→rules; added OBSERVED/INFERRED/UNKNOWN discipline, two axes |
| 26-check validation suite (structure) | N test suite (positive+negative template) | Kept the check-list pattern + WRONG/RIGHT calibration idea; content replaced (H-DEF-06) |
| LearnerState / WitnessReport | K export schema evidence section | State-tracking pattern kept; π-stages dropped |
| Lesson anatomy (explanation/example/task/watch_for) | D_curriculum 10-section anatomy | Extended: + source rule IDs, + expected behaviour, + false-confidence pattern, + verification/correction methods |
| Stage floor | I5 demonstrated floor | Recomputed from witness evidence, not π; regression can lower it |
| Curriculum progression | C dependency graph → 15 lessons | Rebuilt from rule dependencies, not Python topics |
| export_session JSON | K_session_export_schema | Retargeted to rule-execution evidence; telemetry labeled experimental |

## REPLACED (v10 content superseded)

- Python curriculum (VARIABLES→DESIGN, all lessons) → SOUL curriculum L01–L15.
- π-as-mastery semantics → π as experimental development metric only (H1).
- `is_confirmed` multi-condition gate → unreachable; removed (H-DEF-03).
- Double-advancement state updates → single-advancement (H-DEF-01).
- Post-increment floor → pi_before floor (H-DEF-02).
- v10 validation suite content (Mathematics instrument, python_meaning, etc.) → SOUL-v0-faithful tests (H-DEF-06).
- Progress = π trajectory → progress = rule-execution evidence (I4).

## RETIRED (not carried forward)

- Python teacher interface (`teach`/`submit` Python code, `_give_feedback` per Python stage).
- VARIABLES/CONTROL/STRUCTURE/PATTERNS/SYSTEMS/DESIGN as a progress model.
- TRPP step labels as learning stages (STEP_0..STEP_8) — observer-classification
  pattern noted, not reused; no validated mapping to SOUL rule execution.
- `attempt_confirmation` as a separate path (folded into the single advancement path).
- Any claim that the engine measures cognition (H4).

## NEW (no v10 predecessor)

- B: machine-readable SOUL rule representation (62 rules + 3 tensions).
- C: dependency graph with lesson derivation.
- E: OBSERVED/INFERRED/UNKNOWN evidence discipline; two-axis evaluation.
- F: negative-case requirement; calibration-against-baseline requirement.
- G: 13-category failure taxonomy; confusion/false-confidence distinction.
- J: regression framework with version comparison.
- Phase L boundary enforcement (PROPOSAL quarantine; no auto-rewrite of SOUL.md).
- M: known limitations (this phase's honest boundary).
