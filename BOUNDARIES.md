# BOUNDARIES.md — authority relationships in pymon-witness

Concise definitions. The authority relationship is stated after each.

## SOUL

The normative behavioural configuration under evaluation
(e.g. the installed `SOUL.md`). **Authority: supreme over the
evaluation.** Read by the skill, never written by it. Not included in
this repository.

## SKILL (`pymon_witness`)

The documented evaluation procedure an agent follows on invocation
(four modes: `witness`, `negative-control`, `regression-check`,
`lesson-run`). **Authority: procedural only.** It applies the SOUL; it
does not define, modify, install, or duplicate it as normative content.
Stateless; confers no autonomy, identity, or standing beyond the
invocation.

## PYMON METHOD

The methodology specifications: architecture, witness discipline,
failure taxonomy, human-loop protocol, export schema
(`resources/method/`, `resources/witness/`, `resources/taxonomy/`).
**Authority: methodological.** They say *how* to evaluate, never *what*
the rules are.

## CURRICULUM

The 15 lesson specifications (`resources/curriculum/`).
**Authority: pedagogical.** Rule quotations inside are reference
material; the installed SOUL is the sole normative source. Tests are
invalid if their expected rule text silently diverges from the active
SOUL. The curriculum is not a second SOUL.

## EVALUATION

Baselines, calibration runs, test suites, validation records
(`evaluation/`). **Authority: evidential.** Records of what was
observed, pending human ruling. Never normative; never a basis for
changing the SOUL.

## REGRESSION

The regression framework and corpus (`resources/regression/`).
**Authority: protective.** Guards that must keep passing; a failing
guard blocks promotion but does not itself rewrite anything. Guards are
executed exactly as recorded — never redesigned mid-run.

## EVIDENCE

Any observed output of an evaluation: verdicts, counts, quoted
excerpts, hashes. **Authority: none beyond the run.** Evidence is kept
separate from authority at all times. A PASS describes a run; it proves
nothing beyond it and changes no rule.

## EXPERIMENTAL MATERIAL

Anything not validated as evaluation procedure — notably π/TGF-style
metrics. **Authority: none.** Excluded from v1.0. If ever retained, it
lives in `experimental/` explicitly labelled as non-normative, and it
must never override witness evidence or enter the skill contract.

## The standing form

**PYMON workspace architecture ≠ PYMON runtime Skill ≠ Muse Agent ≠ SOUL.**

What the repository must never imply: that PYMON is an agent; that
PYMON is (or ships) the SOUL; that the skill contains the whole
workspace; that experimental evidence is normative; that Muse-specific
paths are universal.
