# CHANGELOG.md

## 2.0.0 — 2026-10-06 (three-repository restructure; Repo 1 becomes the generic skill)

MAJOR: this repository is now Repo 1 (`pymon-witness`) of the
three-repository architecture. It contains the generic skill only.

- **Removed from this repository** (moved to
  `pymon-witness-soul-integration`, Repo 2): the 15 instantiated
  curriculum lessons, the SOUL-specific regression corpus
  (REG-0001..0011), and all evaluation/baselines/calibration records.
  Their history is preserved and traceable; see `MIGRATION.md`.
- **New:** `docs/soul-structural-contract.md` — the generic SOUL
  structural contract (the G-1 repair): what the helper counts, what
  the counts mean and do not mean, and the fence constraint. No
  normative SOUL content.
- **New:** `resources/curriculum/framework.md` — the generic lesson
  anatomy extracted from the instantiated lessons.
- **Rewritten:** `README.md`, `BOUNDARIES.md` — generic contract
  language; no particular SOUL named or required.
- **Scrubbed:** `SKILL.md` (generic "supplied SOUL" language; modes and
  procedures unchanged), `resources/taxonomy/failure-taxonomy.md`,
  `resources/method/{architecture,dependency-graph,performance-engine}.md`
  (SOUL-v2-specific references removed; methodology kept).
- **Split:** `docs/known-limitations.md` — generic items stay here;
  SOUL-v0 construction context moves to Repo 2.
- **Unchanged:** helper script (byte-identical), witness discipline,
  regression framework, human-loop, export schema, install procedure.
- **BREAKING for 1.x consumers:** the single-repo layout is gone; update
  paths. The 1.0.0/1.0.1 published trees remain immutable historical
  baselines; the unpublished 1.0.2 repair candidate is superseded (its
  five documentation fixes are carried forward here).

## 1.0.2 — 2026-10-06 (repository-construction repair; documentation/installation only)

Repairs repository-construction errors found in review of the v1.0.1
tree. No evaluation, regression, or helper behaviour changes: the
helper script content, the curriculum, the evaluation machinery, and
all regression records are untouched.

- `README.md`: version header corrected (`1.0.0` → `1.0.2`);
  `LICENSE (placeholder)` wording corrected to `LICENSE (Apache-2.0)`
  — the full Apache-2.0 licence text was already present.
- `INSTALL.md`: installation no longer assumes the extracted
  archive's top-level directory is named `pymon-witness`; it now
  instructs renaming to `pymon-witness` on install regardless of the
  archive's outer folder name.
- `CHANGELOG.md`: v1.0.1 entry wording corrected to distinguish
  unchanged evaluation/regression behaviour from the added
  operational failure path (`SOUL_MISSING` → STOP-and-report).
- `VERSION`: `1.0.1` → `1.0.2`.
- `MANIFEST.txt` regenerated for all changed files.

## 1.0.1 — 2026-10-06 (packaging/portability/documentation patch; published as VAG-gomi/pymon-witness tag `v1.0.1`)

Patch release fixing packaging, portability, and documentation defects
found in review of the v1.0.0 tree. Behavioural scope, stated
precisely:

- **Evaluation/regression behaviour: unchanged.** The helper script
  content is byte-identical; REG-0009/0010/0011 records are
  byte-identical; the curriculum and evaluation machinery are
  untouched. No normative SOUL changes.
- **Operational failure-path behaviour: changed in one documented
  way.** `SKILL.md` adds an explicit failure condition — if the
  fingerprint helper output starts with `SOUL_MISSING`, the skill must
  STOP and report the missing SOUL instead of continuing. This is an
  operational failure condition, not a new SOUL rule.
- **Documentation/portability: changed** as listed below.

- `bin/soul_fingerprint.sh`: Git file mode corrected to `100755`
  (was `100644` — direct execution failed with `Permission denied` on
  fresh clones). `SKILL.md` and `INSTALL.md` now document the portable
  `bash <skill-dir>/bin/soul_fingerprint.sh` invocation form alongside
  direct execution.
- `SKILL.md`: operational failure condition added — if the fingerprint
  helper output starts with `SOUL_MISSING`, the skill must STOP and report
  the missing SOUL instead of continuing.
- `resources/regression/INDEX.md`: historical path-mapping note added —
  the frozen REG-0009/REG-0010 records cite `execution/<NN>_execution_report.md`;
  the reports live at `evaluation/baselines/<NN>_execution_report.md`.
  The records themselves are preserved byte-for-byte.
- `docs/development/skill-design.md`: stale `execution/L01…L15_execution_report.md`
  path corrected to `evaluation/baselines/L01…L15_execution_report.md`.
- `README.md`: portability claim corrected — runtime/installation files
  contain no host-specific paths; historical/evidence documentation may
  retain historical workspace references where explicitly part of the record.
- `VERSION`: `1.0.0` → `1.0.1`.
- `MANIFEST.txt` regenerated for all changed files.

## 1.0.0 — 2026-10-05 (packaged; published 2026-10-06 as VAG-gomi/pymon-witness tag `v1.0.0`)

First portable packaging of the `pymon_witness` runtime skill.

- Frozen runtime skill source hash (pre-packaging):
  `08ceeadc828bc86c` (sha256 over sorted skill file tree).
- Validated SOUL at packaging time:
  `5ea04a31706847747d34cacfdd5385f39b0dd74f03d72dd4d61468da46e4fdc9`
  (v2, 62 rules, 3 tensions). The SOUL itself is not shipped.
- Validation: 15/15 lessons reproduced, 0 discrepancies;
  REG-0009/0010/0011 passing. Record:
  `evaluation/validation/FULL-SKILL-VALIDATION-v1.0.md`.
  Verdict: PYMON SKILL BEHAVIOURALLY CONSISTENT (pending human ruling).
- Packaging adaptations vs the frozen skill: path parameterization
  (`<skill-dir>`-relative; `$PYMON_SOUL_PATH` override), curriculum
  quotation-boundary headers, host-path redactions, new
  README/INSTALL/BOUNDARIES/docs. No behavioural change; see the
  package report for the exact diff inventory.
- Licence: Apache-2.0 (see LICENSE).
