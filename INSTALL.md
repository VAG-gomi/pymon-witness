# INSTALL.md — installing the pymon-witness skill

## 1. Install the skill

Extract the release archive and note the top-level directory name —
depending on how the release was packaged it may be `pymon-witness`,
`pymon-witness-2.0.0`, or similar. Copy (or rename) that directory
into a Muse-compatible skills directory **as `pymon-witness`**:

```
<skills-dir>/pymon-witness/
├── SKILL.md
├── references/
├── bin/
├── resources/
├── docs/
├── experimental/
├── MIGRATION.md
└── ...
```

The required final directory name is `pymon-witness` regardless of the
archive's outer folder name. The standard location is
`~/workspace/skills/pymon-witness/`. No build step, no package
manager, no compilation. No configuration file changes are required:
in the observed runtime mechanism, directory presence is sufficient
for discovery (no registry edit, no restart).

> Do not claim other installation mechanisms. If your runtime documents
> a different skill-installation path, follow that documentation; the
> skill itself only requires that `SKILL.md` be discoverable and its
> relative paths intact.

## 2. Provide the SOUL (required, not shipped)

This repository contains **no SOUL**. Install or point at one separately:

- Set `$PYMON_SOUL_PATH` to the SOUL file to evaluate against, or
- place the SOUL at `~/SOUL.md` (the default).

Verify with the fingerprint helper (portable form; direct execution
also works where the executable bit is preserved):

```
bash <skills-dir>/pymon-witness/bin/soul_fingerprint.sh
# or: PYMON_SOUL_PATH=/path/to/SOUL.md bash <skills-dir>/pymon-witness/bin/soul_fingerprint.sh
```

If the output starts with `SOUL_MISSING`, stop: the SOUL is not
installed at the expected location — report it instead of continuing.

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

- `<skill-dir>/resources/curriculum/` — lesson framework (lesson
  anatomy; instantiated lessons live in the integration repository)
- `<skill-dir>/resources/regression/` — regression framework
  (the regression corpus lives in the integration repository)
- `<skill-dir>/resources/taxonomy/` — failure taxonomy
- `<skill-dir>/resources/witness/` — witness specification
- `<skill-dir>/docs/soul-structural-contract.md` — the SOUL structural
  contract (what the helper counts; what a SOUL file must satisfy)

Do not rearrange these directories without updating `SKILL.md`.

## 5. First smoke test

Run the fingerprint helper against the SOUL provided in step 2:

```
bash <skills-dir>/pymon-witness/bin/soul_fingerprint.sh
```

Expected: the five descriptive fields — `hash`, `bytes`,
`rule_anchors`, `tension_sections`, `first_line` — for your SOUL file.
See `docs/soul-structural-contract.md` for what the counts mean and,
just as importantly, what they do not mean. If the output starts with
`SOUL_MISSING`, the SOUL is not installed at the expected location —
that is the documented operational failure path (SKILL.md: STOP and
report); install the SOUL and retry, do not continue the run.

Then confirm the skill contract loads: repeat the discovery check from
step 3 and verify `SKILL.md` lists its four modes. No SOUL-specific
regression corpus or validation record is needed for this check — those
live in the integration repository, not in this skill.

## 6. Known runtime assumptions

- The invoking agent can read `<skill-dir>` and the SOUL file, and can
  execute `bin/soul_fingerprint.sh` (POSIX shell; use the `bash`
  invocation form for portability).
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
