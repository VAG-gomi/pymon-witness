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

## Three-repository versioning (from 2.0.0)

- `pymon-witness` (this repo, Repo 1) is versioned independently:
  MAJOR = structural-contract or mode-semantics change, or content
  removal from the repo layout; MINOR = new mode/docs; PATCH = fixes.
- `pymon-witness-soul-integration` (Repo 2) is versioned independently:
  MAJOR = drops a SOUL major, adopts a new Repo 1 major, or changes the
  compatibility-claim structure; MINOR = new SOUL minor support, new
  tests; PATCH = evidence corrections.
- The SOUL repository (Repo 3) tracks the SOUL build version (2.0, 3.0…),
  not repo birth: MAJOR = any normative byte change.
- Repo 2's `COMPATIBILITY.md` is the single source of truth for which
  versions work together. No automatic cross-repository updates: change
  propagates as change → compatibility evaluation → evidence → human
  ruling → release.
- **Non-recategorization rule:** historical validation results stay
  attached to the pair they measured. Old results are never re-homed as
  generic claims of this repository.
