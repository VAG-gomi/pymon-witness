# pymon-witness

**Version 1.0.0** — portable PYMON Witness Skill and its evaluation resources.

## What PYMON is

PYMON is a workspace methodology for *evaluating* a SOUL-governed
cognition: a curriculum of lessons, an Unseen Witness evaluation
discipline (evidence labelled OBSERVED / INFERRED / UNKNOWN; verdicts
EXECUTED / correctly-withheld / NOT_APPLICABLE / UNKNOWN / near_miss),
a failure taxonomy, and a regression corpus. It is a way of checking
work, not a way of being.

## What `pymon_witness` is

`pymon_witness` is a **skill**: a documented procedure that an agent
follows when asked to verify, test, or evaluate SOUL-governed behaviour.
Its single job: *run PYMON witness/evaluation procedures against the
active SOUL and report evidence.* It has four modes — `witness`,
`negative-control`, `regression-check`, `lesson-run` — defined in
`SKILL.md`. It is stateless; all persistent state lives in workspace
files.

## What it is not

- **PYMON is not an agent.** There is no persistent PYMON identity, no
  separate cognition. The skill is a procedure an agent follows on
  invocation — nothing more.
- **PYMON is not a SOUL.** This repository contains no SOUL. The skill
  evaluates *against* a SOUL; it does not define one.
- **The skill does not contain the entire workspace.** SOUL build
  machinery, SOUL candidates, archives, and instance surveys are
  deliberately excluded (see `BOUNDARIES.md`).
- **Experimental evidence is not normative.** π/TGF material is excluded
  from v1.0. Validation records in this repo are evidence, never
  authority: no verdict here changes any SOUL.
- **Muse-specific paths are not universal.** All resource paths are
  relative to the skill directory; the SOUL location is a documented,
  user-supplied prerequisite (`$PYMON_SOUL_PATH`, else `~/SOUL.md`).

## How the skill relates to Muse

In a Muse-compatible runtime, skills are discovered by keyword search
over their name and description, and their bodies load on invocation —
never at startup. Installing this repository's root as
`<skills-dir>/pymon-witness/` makes `pymon_witness` discoverable. The
runtime confers no autonomy on the skill; the agent decides when to
invoke it.

## How the skill relates to SOUL.md

The skill **reads** the installed SOUL and **never writes** it. Rule
texts are read from the installed file at evaluation time; the rule
quotations inside `resources/curriculum/` are teaching references only
(see the packaging notice atop each lesson). If the installed SOUL
changes, re-fingerprint it (`bin/soul_fingerprint.sh`) and treat prior
baselines as historical.

## How the workspace resources relate to the skill

`resources/` holds what the skill reads: the curriculum, the witness
specification, the failure taxonomy, the regression framework and
corpus, and method background. `evaluation/` holds evidence: baselines,
calibration runs, the test suite, and the v1.0 validation record. None
of it is normative. The skill's Operating Rules (in `SKILL.md`) are the
authority boundary: no SOUL rewrite, no proposal admission, no silent
repair, evidence separate from authority.

## Installation / discovery

See `INSTALL.md`. In short: copy this directory to your
Muse-compatible skills directory as `pymon-witness/`, ensure a SOUL is
installed (`$PYMON_SOUL_PATH` or `~/SOUL.md`), and verify discovery via
skill search for `pymon_witness`.

## Validation status

v1.0.0 was validated against 15/15 curriculum lessons with 0
discrepancies vs. the established baselines; regression guards
REG-0009/0010/0011 passing. Record:
`evaluation/validation/FULL-SKILL-VALIDATION-v1.0.md`. Verdict:
**PYMON SKILL BEHAVIOURALLY CONSISTENT** (pending human ruling, as all
PYMON verdicts are).

## Repository layout

```
pymon-witness/
├── SKILL.md, references/, bin/   # the runtime skill
├── resources/                     # curriculum, witness spec, regression corpus, taxonomy, method
├── evaluation/                    # baselines, calibration, test suite, validation record
├── docs/                          # installation, versioning, limitations, development history
├── experimental/                  # intentionally empty in v1.0 (see its README)
├── README.md, INSTALL.md, BOUNDARIES.md
├── LICENSE (placeholder), VERSION, CHANGELOG.md, MANIFEST.txt
```

## Portability assumptions

- Skill directory is self-contained; `<skill-dir>` = directory holding `SKILL.md`.
- A SOUL file exists at `$PYMON_SOUL_PATH` or `~/SOUL.md` (user-supplied).
- A POSIX shell for `bin/soul_fingerprint.sh`; no other dependencies.
- No host-specific absolute paths are used anywhere in the repository.
