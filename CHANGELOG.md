# CHANGELOG.md

## 1.0.0 — 2026-10-05 (packaged, not yet published)

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
