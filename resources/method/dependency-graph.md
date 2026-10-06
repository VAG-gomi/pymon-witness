# C. Dependency Graph — SOUL v0 rule dependencies → lesson derivation

> Built from `B_soul_rule_representation.json`. No invented rules. Tensions (T-01..T-03)
> are nodes with no resolution edge — they are taught as tensions, not solved.

## C1. Dependency edges (prerequisite → dependent)

**Foundational layer (no prerequisites):**
- R-S1-01/04/05/06/07/08 (stances + Oath) → everything. Nothing in-spec above them.
- R-S4-01 (mirror), R-S4-02 (three knowings), R-S4-03 (corruption doctrine) → all reasoning,
  all verification, all contradiction handling.

**Stance → behaviour:**
- R-S1-* → R-S2-01..08 (behavioural rules are the Oath/stance made operational).

**Epistemology → reasoning:**
- R-S4-01/03 → R-S3-01 (body test), R-S3-04/05 (source detection), R-S3-14/15 (noise/craft).
- R-S4-02 → R-S3-12 (Straight-Path cut), R-S6-01 (distance test).
- R-S4-04 (ten patterns) → R-S3-06 (per-unit order), R-S6-01 (structure test).

**Vocabulary → reasoning expression:**
- R-S7-02/03/05 (body types, intensity, categories) → R-S3-01/04/06 (reasoning outputs
  are expressed in this vocabulary; vocabulary can be *memorized* early, *used* only
  after reasoning is learned).

**Reasoning internal order:**
- R-S3-01 (body test) → R-S3-06 (per-unit order), R-S3-14 (noise filter).
- R-S3-04/05 (source detection) → R-S3-06, R-S4-05/06 (Phase-4 handling), R-S3-16 (arc).
- R-S3-07/08/09 (epistemological/etymological/anti-surface cuts) → R-S3-06.
- R-S3-06 → R-S3-10/11/13 (paradox, retreat, mirror cuts operate inside the per-unit order).
- R-S3-03 (hierarchy) → R-S3-17 (integration).
- R-S3-14 → R-S3-15 (craft detection runs after noise filter).
- R-S3-16 (arc pre-pass) → R-S3-06 (units processed after the pre-pass).

**Reasoning → contradiction:**
- R-S3-10 (paradox cut), R-S3-03 (hierarchy rule 2) → R-S5-01/02/03.
- R-S4-06 (taught-prayer paradox) + R-S4-05 (reciter gap) → R-S5-04.

**Reasoning → verification:**
- R-S3-* (all reasoning) → R-S6-01/02/03 (the gate verifies reasoning execution).
- R-S5-* → R-S6-01 (structure test checks paradox genuinely tested).
- R-S7-06 (fields) → R-S6-03 (checklist is field-level).

**Communication:**
- R-S7-01/02/03/05 → R-S7-04/06 (vocabulary before instrument/field discipline).
- R-S7-06 → R-S6-03.

**Memory/evolution (capstone):**
- R-S8-01/02 → R-S9-01 (export feeds the loop).
- R-S6-* (verification of corrections) → R-S9-01 (only verified corrections train).
- R-S9-02 (schema proposals) → human decision (outside PYMON's authority: L-boundary).

**Cannot be taught independently:**
- Taught-prayer paradox (needs R-S4-05 + R-S4-06 + R-S5-04 together).
- Integration R-S3-17 (needs all three lenses + R-S3-03).
- Decision 6 R-S6-01 (needs the entire reasoning chain it gates).
- T-01/T-02/T-03 (taught as preserved tensions, never as solved rules).

## C2. Practice/verification classification

- **Repeated practice required:** R-S3-01 (body test), R-S2-03 (uncertainty marking),
  R-S5-01 (paradox preservation), R-S6-01 (Decision 6), R-S6-04 (false-presence detection),
  R-S3-14 (noise filter confidence grading).
- **Contradiction tests required:** R-S5-01/02/03, R-S3-03 (hierarchy under conflict),
  R-S3-17 (naming disagreement in uncertainty).
- **Verification required:** all R-S6-*, plus R-S3-06 outputs and R-S7-06 field discipline.

## C3. Lesson derivation (dependency order, NOT the nine SOUL sections)

| Lesson | Title | Source rules | Prerequisites | Why this order |
|---|---|---|---|---|
| L01 | Stance & the Oath | R-S1-01..08 | — | Foundational; no prerequisites |
| L02 | Epistemic foundation: gap, corruption, uncertainty | R-S4-01/02/03, R-S2-02/03 | L01 | Stance → epistemology |
| L03 | The Straight Path in practice | R-S4-02, R-S2-05, R-S3-12 | L01, L02 | Repair triggers need stance + epistemology |
| L04 | Behavioural rules: judge, mark, preserve | R-S2-01/04/06/07/08 | L01, L02 | Behaviour = stance operationalized |
| L05 | Artificial language I: body types, intensity, speed | R-S7-01/02/03, R-S7-05 | L02 | Vocabulary memorizable early; use comes later |
| L06 | The body test | R-S3-01/02, R-S4-01 | L02, L05 | First operation; needs epistemology + vocabulary; repeated practice |
| L07 | Source detection: six categories | R-S3-04/05, R-S4-05 | L02, L06 | Runs before all other decisions; needs body-trace literacy |
| L08 | The seven cuts | R-S3-07..13 | L06, L07 | Operate inside the per-unit order |
| L09 | Conflict hierarchy & integration | R-S3-03, R-S3-17, R-S2-06 | L06, L08 | Needs lenses + cuts before merging them; contradiction tests |
| L10 | Paradox detection & preservation | R-S5-01/02/03, R-S3-10 | L04, L08, L09 | Needs cuts + hierarchy; contradiction tests; repeated practice |
| L11 | Noise filter & craft detection | R-S3-14/15 | L06 | Runs after every trace reading; verification-adjacent |
| L12 | Phase-4: reciter, gaps, taught prayer | R-S4-05/06, R-S5-04, R-S1-08 | L07, L10 | Cannot be taught independently |
| L13 | The verification gate | R-S6-01..05, R-S3-02 | L01–L12 | Gates everything it verifies; repeated practice |
| L14 | Structured communication: fields & schema | R-S7-04/06/07/08 | L05, L13 | Field discipline verified by the gate |
| L15 | Memory, evolution & the loop | R-S8-01/02/03, R-S9-01/02/03 | L13 | Capstone; only verified corrections train |

## C4. Graph integrity notes

- No cycles detected in prerequisite edges.
- T-01 (involuntariness vs craft) is introduced in L11 and referenced in L02/L06 — taught
  as a preserved tension with explicit instruction never to resolve it silently.
- T-02 (genuine vs simulated fragmentation) is introduced in L09.
- T-03 (transformation-not-instruction framing) is introduced in L01 as the source's claim.
- R-S1-02 (no invented personality traits) and R-S8-03 (no invented memory) are taught as
  constraints in L01 and L15 respectively, and enforced by the Witness (Phase D).
