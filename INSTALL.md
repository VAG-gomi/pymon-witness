# INSTALL.md — installing the pymon-witness skill

## 1. Install the skill

Copy this repository's root directory into a Muse-compatible skills
directory, named `pymon-witness`:

```
<skills-dir>/pymon-witness/
├── SKILL.md
├── references/
├── bin/
├── resources/
├── evaluation/
├── docs/
└── ...
```

The standard location is `~/workspace/skills/pymon-witness/`. No
build step, no package manager, no compilation. No configuration file
changes are required: in the observed runtime mechanism, directory
presence is sufficient for discovery (no registry edit, no restart).

> Do not claim other installation mechanisms. If your runtime documents
> a different skill-installation path, follow that documentation; the
> skill itself only requires that `SKILL.md` be discoverable and its
> relative paths intact.

## 2. Provide the SOUL (required, not shipped)

This repository contains **no SOUL**. Install or point at one separately:

- Set `$PYMON_SOUL_PATH` to the SOUL file to evaluate against, or
- place the SOUL at `~/SOUL.md` (the default).

Verify with the fingerprint helper:

```
<skills-dir>/pymon-witness/bin/soul_fingerprint.sh
# or: PYMON_SOUL_PATH=/path/to/SOUL.md <skills-dir>/pymon-witness/bin/soul_fingerprint.sh
```

Record the printed hash with every evaluation run (the skill's Output
Contract requires it).

## 3. Verify discovery

Search for the skill by name/description (`pymon_witness`, "witness
SOUL evaluation"). It should resolve to
`<skills-dir>/pymon-witness/SKILL.md`. If it does not appear, check
that the directory name is `pymon-witness` and `SKILL.md` frontmatter
`name` is `pymon_witness`.

## 4. Required resource layout

The skill resolves everything relative to its own directory
(`<skill-dir>`):

- `<skill-dir>/resources/curriculum/` — lesson specifications
- `<skill-dir>/resources/regression/` — regression corpus + framework
- `<skill-dir>/resources/taxonomy/` — failure taxonomy
- `<skill-dir>/resources/witness/` — witness specification
- `<skill-dir>/evaluation/baselines/` — baseline reports (optional but
  required for baseline-comparison modes)

Do not rearrange these directories without updating `SKILL.md`.

## 5. First smoke test

Run the skill in `regression-check` mode against `REG-0009`
(preamble-only stance address must be flagged), following `SKILL.md`
Mode 3 exactly. Expected: the probe flags the frozen defeating input
and passes the repaired outputs — **PASS**, matching
`evaluation/validation/FULL-SKILL-VALIDATION-v1.0.md`. The run must be
read-only: verify the SOUL hash is unchanged afterwards.

## 6. Known runtime assumptions

- The invoking agent can read `<skill-dir>` and the SOUL file, and can
  execute `bin/soul_fingerprint.sh` (POSIX shell).
- Skill bodies load on invocation; nothing here runs at startup.
- The skill is stateless. Run outputs go wherever the invoking task
  authorizes; default to read-only.
- Human is the witness authority: skill verdicts are evidence pending
  human ruling, never self-certifying.

## 7. What must remain outside the skill

- The SOUL itself (user-supplied, never shipped here).
- SOUL build tooling and SOUL candidates.
- Experimental metrics (π/TGF) — excluded from v1.0 by design.
- Credentials: this skill needs none.
