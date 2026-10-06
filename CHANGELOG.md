# CHANGELOG.md

## 1.0.1 — candidate (packaging/portability/documentation patch; not yet published)

Patch release candidate fixing packaging, portability, and documentation
defects found in review of the v1.0.0 tree. No behavioural or normative
changes; the evaluation machinery, curriculum, and regression records are
untouched.

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
