# Versioning discipline

- `VERSION` holds the current semantic version (`1.0.0`).
- `CHANGELOG.md` records what changed per version, including the
  frozen skill-source hash the version was cut from.
- `MANIFEST.txt` records the sha256 of every file in the packaged tree
  at packaging time.
- Behavioural changes (skill workflows, witness discipline, regression
  probes) require a version bump and a re-validation record.
- Mechanical changes (path parameterization, redactions, doc edits)
  are recorded in the changelog with an explicit "no behavioural
  change" statement and the diff inventory from the package report.
- The packaged skill hash will differ from the frozen runtime hash
  (`08ceeadc828bc86c`) exactly by the documented adaptations; any
  undocumented difference is a packaging defect.
