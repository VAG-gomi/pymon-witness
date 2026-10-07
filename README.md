# pymon-witness

**Version 2.0.0** — the generic PYMON Witness skill.

> **Restructured from the pymon-witness v1.0.2 single-repo layout.**
> This repository is now Repo 1 of the three-repository architecture
> (see `docs/versioning.md`). It contains the generic skill only: no
> SOUL, no instantiated curriculum, no SOUL-specific regression corpus,
> no SOUL-specific evaluation records. Those live in
> `pymon-witness-soul-integration` (Repo 2) and the SOUL repository
> (Repo 3).

## What PYMON is

PYMON is a methodology for *evaluating* a SOUL-governed cognition: a
witness discipline (evidence labelled OBSERVED / INFERRED / UNKNOWN;
verdicts EXECUTED / correctly-withheld / NOT_APPLICABLE / UNKNOWN /
near_miss), a failure taxonomy, a regression framework, and a
curriculum framework. It is a way of checking work, not a way of being.

## What `pymon_witness` is

`pymon_witness` is a **skill**: a documented procedure that an agent
follows when asked to verify, test, or evaluate SOUL-governed behaviour.
Its single job: *run PYMON witness/evaluation procedures against a
supplied, conforming SOUL and report evidence.* It has four modes —
`witness`, `negative-control`, `regression-check`, `lesson-run` —
defined in `SKILL.md`. It is stateless; all persistent state lives in
workspace files.

## What it is not

- **PYMON is not an agent.** There is no persistent PYMON identity, no
  separate cognition. The skill is a procedure an agent follows on
  invocation — nothing more.
- **PYMON is not a SOUL.** This repository contains no SOUL and requires
  no particular SOUL. The skill evaluates *against* a SOUL supplied at
  run time; it does not define one and does not mandate any specific one.
- **The skill does not contain the entire project.** Instantiated
  lessons, the regression corpus, and evaluation records live in the
  integration repository; the SOUL itself lives in the SOUL repository
  (see `BOUNDARIES.md`).
- **Experimental evidence is not normative.** π/TGF material is excluded.
  Validation records are evidence, never authority: no verdict here
  changes any SOUL.
- **Muse-specific paths are not universal.** All resource paths are
  relative to the skill directory; the SOUL location is a documented,
  user-supplied prerequisite (`$PYMON_SOUL_PATH`, else `~/SOUL.md`).

## The SOUL notice

This skill operates against **whatever conforming SOUL you supply**. A
SOUL is conforming if it satisfies the structural contract in
`docs/soul-structural-contract.md` — the minimum the helper actually
depends on: how rule anchors and tension headings are recognised, what
the counts mean mechanically, and what they do *not* mean.

- You may use your own SOUL. Nothing here requires any particular SOUL's
  content.
- A reference integration (`pymon-witness-soul-integration`) exists for a
  specific SOUL distribution, with its own curriculum, regression corpus,
  and compatibility evidence. It is separate from this skill and optional.
- The skill never writes the SOUL, never installs one, and never treats
  any SOUL as mandatory.

## How the skill relates to a runtime

In a Muse-compatible runtime, skills are discovered by keyword search
over their name and description, and their bodies load on invocation —
never at startup. Installing this repository's root as
`<skills-dir>/pymon-witness/` makes `pymon_witness` discoverable. The
runtime confers no autonomy on the skill; the agent decides when to
invoke it. Runtime auto-loading of any particular SOUL file is a
runtime convenience, not a dependency of this repository.

## How the skill relates to the supplied SOUL

The skill **reads** the supplied SOUL and **never writes** it. Rule
texts are read from the supplied file at evaluation time; the supplied
file is the only rule authority — never a copied, remembered, or
reconstructed text. If the SOUL file changes, re-fingerprint it
(`bin/soul_fingerprint.sh`) and treat prior baselines as historical.

## How the resources relate to the skill

`resources/` holds what the skill reads: the witness specification, the
failure taxonomy, the regression *framework*, the curriculum
*framework*, and method background. Frameworks define *how*;
instantiations (lessons, corpus, records) live in the integration
repository. None of it is normative about any SOUL's content. The
skill's Operating Rules (in `SKILL.md`) are the authority boundary: no
SOUL rewrite, no proposal admission, no silent repair, evidence separate
from authority.

## Installation / discovery

See `INSTALL.md`. In short: copy this directory to your
Muse-compatible skills directory as `pymon-witness/`, ensure a
conforming SOUL is available (`$PYMON_SOUL_PATH` or `~/SOUL.md`), and
verify discovery via skill search for `pymon_witness`.

## Validation status

The 1.x single-repo releases were validated against a 15-lesson
curriculum instantiated for a specific SOUL, with 0 discrepancies vs.
the established baselines (historical record — see `CHANGELOG.md`).
The generic skill defined here is validated by its own suite:
structural-contract self-consistency, helper behaviour on synthetic
fixtures (present / missing / zero-anchor / malformed SOULs), and the
mode procedures. Historical validation results are not re-categorised
as generic claims; see the non-recategorization rule in
`docs/versioning.md`.

## Repository layout

```
pymon-witness/
├── SKILL.md, references/, bin/   # the runtime skill
├── resources/                     # witness spec, taxonomy, regression framework,
│                                  # curriculum framework, method background
├── docs/                          # soul-structural-contract, versioning,
│                                  # limitations, development history
├── experimental/                  # non-normative by definition (see its README)
├── README.md, INSTALL.md, BOUNDARIES.md
├── LICENSE (Apache-2.0), VERSION, CHANGELOG.md, MANIFEST.txt
```

## Portability assumptions

- Skill directory is self-contained; `<skill-dir>` = directory holding `SKILL.md`.
- A conforming SOUL file exists at `$PYMON_SOUL_PATH` or `~/SOUL.md` (user-supplied).
- A POSIX shell for `bin/soul_fingerprint.sh`; no other dependencies.
- No host-specific absolute paths are used in the runtime and installation
  files (`SKILL.md`, `INSTALL.md`, `bin/`, `references/`, `resources/`).
  Historical and evidence documentation (`docs/`) may retain historical
  workspace references where they are part of the recorded evidence; those
  strings are documentation, not runtime dependencies.
