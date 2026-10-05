# A. PYMON-SOUL Architecture

> Deliverable A of the PYMON-SOUL construction phase. SOUL v0 = the installed
> `~/SOUL.md` (USC Witness Configuration, draft). This document is the educational /
> performance layer. It does not modify SOUL.md.

## A1. Layer definitions

```
┌─────────────────────────────────────────────────────────────┐
│ HUMAN — witness, correction, approval, override authority    │
│ Verdicts: APPROVE / FLAG / REJECT / OVERRIDE / ANNOTATE      │
│ Corrections are training evidence, not automatic rule edits. │
└────────────────────────▲────────────────────────────────────┘
                         │ verdicts + corrections
┌────────────────────────┴────────────────────────────────────┐
│ PYMON — self-education / apprenticeship / performance layer   │
│  · Curriculum (15 lessons, dependency-ordered)               │
│  · Unseen Witness (rule-execution evaluation)                │
│  · Performance engine (positive/negative test cases)         │
│  · Failure taxonomy (13 categories)                          │
│  · Regression framework (corrected failures → tests)         │
│  · Session export (deterministic, machine-readable)          │
│  · PI/TGF engine (EXPERIMENTAL development metric only)      │
└────────────────────────▲────────────────────────────────────┘
                         │ lessons, exercises, scores
┌────────────────────────┴────────────────────────────────────┐
│ MUSE — execution substrate                                   │
│ Executes SOUL v0 rules against exercises and tests.          │
│ Produces outputs the Witness evaluates.                      │
└────────────────────────▲────────────────────────────────────┘
                         │ rule-execution traces
┌────────────────────────┴────────────────────────────────────┐
│ SOUL.md — cognitive specification (v0, UNCHANGED)             │
│ The rules. PYMON teaches them; PYMON never rewrites them.    │
└─────────────────────────────────────────────────────────────┘
```

Authority flows downward (spec → execution); evidence flows upward (execution →
evaluation → human verdict). PYMON sits between spec and substrate as teacher and
examiner. It may teach, test, observe, score, identify failure, suggest repair,
record training evidence, and build regression tests. It may NOT rewrite SOUL.md,
invent SOUL rules, silently resolve contradictions, promote inference to rule,
delete unresolved material, treat its score as proof of intelligence, or treat
formatting success as cognition success (Phase L boundary).

## A2. The learning loop (normative)

```
SOUL RULE (B_soul_rule_representation.json, cited by ID)
  → PYMON lesson (D_curriculum, dependency-ordered)
    → MUSE execution (exercise or test input)
      → UNSEEN WITNESS evaluation (OBSERVED / INFERRED / UNKNOWN)
        → HUMAN review → APPROVE / FLAG / REJECT / OVERRIDE / ANNOTATE
          → training record (K_session_export_schema)
            → next exercise; corrected failures → regression corpus (J)
```

Human correction is authoritative over PYMON scores. A human correction is recorded
first as training evidence; it becomes a candidate rule change only as a PROPOSAL
requiring explicit human review — never automatically.

## A3. Component map (deliverables → files)

| Deliverable | File(s) |
|---|---|
| A. Architecture | `A_architecture.md` (this file) |
| B. SOUL rule representation | `B_soul_rule_representation.json` (62 rules, 3 tensions) |
| C. Dependency graph | `C_dependency_graph.md` (15 lessons derived, not 9 sections) |
| D. Curriculum | `D_curriculum/L01..L15_*.md` (10-section lesson anatomy) |
| E. Unseen Witness | `E_unseen_witness.md` |
| F. Performance engine | `F_performance_engine.md` |
| G. Failure taxonomy | `G_failure_taxonomy.md` (13 categories) |
| H. PI/TGF adaptation + audit | `H_pi_tgf_audit.md` |
| I. Human correction loop (+ progress model) | `I_human_loop_and_progress.md` |
| J. Regression framework | `J_regression_framework.md` |
| K. Session export schema | `K_session_export_schema.md` (+ JSON schema) |
| L. Migration map from PYMON v10 | `L_migration_map.md` |
| M. Known limitations | `M_known_limitations.md` |
| N. Test suite | `N_test_suite/T1_*.md`, `T2_*.md` (positive + negative cases) |
| Archive | `archive/pymon_grimware_v10_source.md` (verbatim, preserved) |

## A4. Design decisions (recorded, not hidden)

1. **Lessons follow the dependency graph, not the nine SOUL sections** (Phase C
   requirement). Rationale: execution competence is ordered by prerequisite, and
   several rules cannot be taught independently (taught-prayer paradox,
   integration, Decision 6).
2. **The Witness evaluates rule execution, not output correctness alone**
   (Phase D). A correct-looking output produced without executing the rule is
   scored as failure (false presence / protocol projection).
3. **Every test has a negative case** (Phase E). Without negative cases, a system
   that always fires every rule would score perfectly — the exact failure mode
   (protocol projection) the suite exists to detect.
4. **π/TGF is an experimental development metric, never a validity claim**
   (Phase G). It summarizes; it does not override evidence and is not presented
   as a scientifically validated measure of cognition.
5. **Honest UNKNOWN is never failure** (Phase F). Confusion ≠ false confidence.
6. **Proposals are quarantined** (Phase L). Anything that would change SOUL.md is
   recorded as PROPOSAL and requires explicit human review.
