# MIGRATION.md — Repo 1 (`pymon-witness` 2.0.0)

**Source:** `~/workspace/pymon-witness-v1.0.2/` (tree `b8cf5bb2ffa6bddb`,
72 files), frozen extraction source. The source was never modified.
**Gates:** GATE-1 (extraction of byte-identical rows), GATE-2
(transformations below). No rewrites were performed outside the rows
listed here.

## Per-file provenance

Columns: target path · source path · source sha256 (prefix) · action ·
result sha256 (prefix) · transformation summary · reason.

### GATE-1: byte-identical extraction (11 files)

| Target | Source | Source hash | Action | Result hash | Reason |
|---|---|---|---|---|---|
| INSTALL.md | INSTALL.md | bca70a08e94a79fa | COPY-IDENTICAL | bca70a08e94a79fa | Generic install procedure |
| LICENSE | LICENSE | cfc7749b96f63bd3 | COPY-IDENTICAL | cfc7749b96f63bd3 | Licenses the skill distribution |
| bin/soul_fingerprint.sh | bin/soul_fingerprint.sh | 8833f6b25391a593 | COPY-IDENTICAL | 8833f6b25391a593 | Generic mechanism; mode 770 preserved (git normalizes to 755 on add) |
| docs/development/skill-build-report.md | docs/development/skill-build-report.md | 7bf4b55e72d57cb9 | COPY-IDENTICAL | 7bf4b55e72d57cb9 | R1's own build lineage |
| docs/development/skill-design.md | docs/development/skill-design.md | 975f9a44cb5f52a3 | COPY-IDENTICAL | 975f9a44cb5f52a3 | R1's own design lineage |
| references/witness-discipline.md | references/witness-discipline.md | b94b7e7f1ab54ebc | COPY-IDENTICAL | b94b7e7f1ab54ebc | Generic discipline |
| resources/witness/unseen-witness.md | resources/witness/unseen-witness.md | 348c0135644a8797 | COPY-IDENTICAL | 348c0135644a8797 | Generic evidence discipline |
| resources/regression/framework.md | resources/regression/framework.md | c617745373f515e0 | COPY-IDENTICAL | c617745373f515e0 | Generic REG format/semantics |
| resources/method/human-loop.md | resources/method/human-loop.md | 6a763a512b17c12f | COPY-IDENTICAL | 6a763a512b17c12f | Generic loop |
| resources/method/session-export-schema.md | resources/method/session-export-schema.md | 2c0d2905bacbc8c8 | COPY-IDENTICAL | 2c0d2905bacbc8c8 | Generic schema |
| experimental/README.md | experimental/README.md | 58f72587e8c7da0a | COPY-IDENTICAL | 58f72587e8c7da0a | Generic marker |

### GATE-2: transformations (13 files)

| Target | Source | Source hash | Action | Result hash | Transformation summary | Reason |
|---|---|---|---|---|---|---|
| README.md | README.md | 0ef7bddd06227dd0 | REWRITE | d651e817fdb8a4ae | Full rewrite: generic skill description + SOUL notice (any conforming SOUL); v2.0.0 layout; historical validation labeled as historical, not re-categorised | Must not imply any particular SOUL ships/is required; G-1 notice lives here |
| SKILL.md | SKILL.md | 4f0274c8972987fd | EXTRACT (scrub) | 6a8d1782e7363cb2 | 8 surgical edits: "active/installed SOUL" → "supplied/conforming SOUL"; Mode 1/3/4 path references to `resources/curriculum/`, `resources/regression/REG-*`, `evaluation/baselines/` replaced with "supplied for the run (lives in the integration repository)"; modes, procedures, SOUL_MISSING→STOP unchanged | Core skill def must not name a SOUL or reference moved paths |
| BOUNDARIES.md | BOUNDARIES.md | c28ad8148c25a79b | REWRITE | 5a579617016ad380 | Full rewrite: authority map generic ("the supplied SOUL"); CURRICULUM→curriculum framework (this repo) vs instantiated lessons (integration); EVALUATION→integration; REGRESSION→framework here, corpus in integration; standing form kept | Authority map must be generic |
| CHANGELOG.md | CHANGELOG.md | b0614d1aafc13327 | EXTRACT (append) | 8314da1d5cf14389 | All prior entries verbatim; appended 2.0.0 entry (restructure, removals, additions, BREAKING note) | Lineage continues; append-only |
| VERSION | VERSION | 9fd28642d3aca191 | REWRITE | c28fcca53637bc88 | Content `1.0.2` → `2.0.0` | Major version per contract §11 |
| docs/versioning.md | docs/versioning.md | 14ee5793aad8300a | EXTRACT (extend) | 87d7fe09955b3c6b | Original sections kept; appended three-repository versioning policy + non-recategorization rule | Policy must cover 3 repos |
| docs/known-limitations.md | docs/known-limitations.md | 3b5e2b70d6106f73 | SPLIT | d43e00e03a33434e | R1 keeps M1, M2, M4, M5, M6, M7, M8 (M1 rule-IDs generalized); M3, M9 reserved for R2 `docs/historical-context.md` (GATE-5, not created here) | Domain partition per matrix |
| resources/taxonomy/failure-taxonomy.md | resources/taxonomy/failure-taxonomy.md | 00ea3ed5099cbe24 | EXTRACT (scrub) | 35a2d38521298e07 | 6 substitutions: R-S5-01→paradox-preservation rule; R-S6-04→verification gate's false-presence pattern; R-S3-14→noise filter; R-S6-05→invocation-only-mode note; R-S4-04→scan-coverage rule; R-S4-03→corruption doctrine; T-01/T-02/T-03→"preserved tensions" | Categories generic; ID bindings removed |
| resources/method/architecture.md | resources/method/architecture.md | 410e19ef2d971162 | EXTRACT (scrub) | 166128190d987682 | Header reframed ("built against SOUL v0… read 'the supplied SOUL'"); diagram "SOUL v0 rules"→"supplied SOUL's rules"; A3 table labeled historical construction-phase map with three-repo location note | Methodology generic; v0 refs labeled historical |
| resources/method/dependency-graph.md | resources/method/dependency-graph.md | c95a1174cb3b0366 | EXTRACT (scrub) | 08549b634906cdf3 | Added C0 generic method (5 steps) + framing: method generic, v0 instantiation illustrative/non-normative; edge tables preserved as the worked example | Method required; instantiation de-normativized |
| resources/method/performance-engine.md | resources/method/performance-engine.md | adef8c5430d455d4 | EXTRACT (scrub) | 83b77571cc69846d | F2 rule-ID column removed (mechanism names generic; mapping is integration's); F3 "from B"→"from the SOUL's rule representation"; F6 `"v0"`→`"<version>"`; F5 R-S IDs generalized; header notes test cases live in integration history | Engine generic; SOUL bindings removed |
| docs/soul-structural-contract.md | — (new) | — | NEW | db9116bff162f606 | Full G-1 contract per contract-spec §14: A–F concepts, observed helper behavior, fence rule P-C1, zero-anchor semantics, DESCRIPTIVE/INPUT-NORMATIVE marking | THE G-1 repair; authorized new file |
| resources/curriculum/framework.md | — (new) | — | NEW | 7625144ffc59675a | Generic lesson anatomy (10 sections), §8→§9 correspondence rule, file convention, proposal pipeline | Authorized new file; defines what a lesson is |

## What was NOT moved here (per matrix)

- 15 lessons, 11 REG files + INDEX, 21 evaluation files → Repo 2 (GATE-5).
- `MANIFEST.txt` (old), `resources/method/migration-map.md` → retained-historical.
- `MANIFEST.txt` (new), per-repo manifest → GATE-3.

## Invariants held

- Source tree hash after GATE-1+GATE-2: `b8cf5bb2ffa6bddb` (re-verified;
  source never modified).
- No SOUL bytes entered this repository. No normative SOUL rule invented.
- Historical labels preserved: nothing "validated in the old repository"
  was rewritten as "validated in Repo 1".

## GATE-3 bounded repair: RR-2 (human-authorized 2026-10-06)

**Ruling:** RR-2 VALID DEFECT. RR-1 ACCEPTED AS-IS (no change authorized
or required to `resources/witness/unseen-witness.md`).

**File changed:** `INSTALL.md` only.
- Before: `bca70a08e94a79fa`
- After: `791754be3a6ac677`

**Exact reasons:**
1. §1 layout diagram showed `evaluation/` — removed; diagram now matches
   the constructed 25-file R1 tree.
2. §4 "Required resource layout" listed `resources/curriculum/` lesson
   specifications, `resources/regression/` corpus, and
   `evaluation/baselines/` — none exist in R1. Rewritten to the actual
   R1 layout: curriculum/regression *frameworks* here (instantiations in
   the integration repository), plus the structural-contract doc.
3. §5 smoke test ran `regression-check` against REG-0009 expecting a
   match with `evaluation/validation/FULL-SKILL-VALIDATION-v1.0.md` —
   material that no longer belongs to Repo 1. Replaced with a generic
   smoke test using only what R1 actually contains: run the fingerprint
   helper against the step-2 SOUL (expect the five descriptive fields,
   or the documented SOUL_MISSING failure path), then re-verify skill
   discovery and the four modes.
4. Ancillary: archive-name example `pymon-witness-1.0.2` → `pymon-witness-2.0.0`.

**Confirmations:**
- The generic PYMON Witness method is unaltered: the repair touches
  installation documentation only; SKILL.md modes, procedures, and the
  Operating Rules are untouched.
- No SOUL bytes and no SOUL-specific curriculum were introduced. The new
  smoke test references only the helper (byte-identical since v1.0.0)
  and the structural contract.
- Historical validation evidence was not reinterpreted: the
  FULL-SKILL-VALIDATION reference was removed, not re-homed.
- RR-1 untouched: `resources/witness/unseen-witness.md` hash still
  `348c0135644a8797` (verified post-repair).
