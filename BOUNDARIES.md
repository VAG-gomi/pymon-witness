# BOUNDARIES.md — authority relationships in pymon-witness

Concise definitions. The authority relationship is stated after each.
Rewritten for the generic skill (v2.0.0): no particular SOUL is named or
required anywhere below.

## SOUL

The normative behavioural configuration under evaluation — the SOUL
file supplied at run time (`$PYMON_SOUL_PATH`, else `~/SOUL.md`).
**Authority: supreme over the evaluation.** Read by the skill, never
written by it. Not included in this repository; no particular SOUL is
required by it.

## SKILL (`pymon_witness`)

The documented evaluation procedure an agent follows on invocation
(four modes: `witness`, `negative-control`, `regression-check`,
`lesson-run`). **Authority: procedural only.** It applies the supplied
SOUL; it does not define, modify, install, or duplicate any SOUL as
normative content. Stateless; confers no autonomy, identity, or
standing beyond the invocation.

## PYMON METHOD

The methodology specifications: architecture, witness discipline,
failure taxonomy, human-loop protocol, export schema
(`resources/method/`, `resources/witness/`, `resources/taxonomy/`).
**Authority: methodological.** They say *how* to evaluate, never *what*
the rules are.

## CURRICULUM FRAMEWORK

The generic lesson anatomy (`resources/curriculum/framework.md`):
section structure, the §8→§9 correspondence rule, the proposal
pipeline. **Authority: structural.** It defines what a lesson *is*,
never what any lesson teaches. Instantiated lessons live in the
integration repository, not here; this repository's framework is not a
curriculum.

## EVALUATION

Evaluation records live in the integration repository, where they are
evidence *about a specific skill×SOUL pair*. **Authority: evidential.**
Records of what was observed, pending human ruling. Never normative;
never a basis for changing any SOUL. This repository makes no
pair-specific evaluative claims.

## REGRESSION

The regression *framework* (`resources/regression/framework.md`):
record format, PASS/FLAGGED semantics. **Authority: protective** (of the
procedure). The corpus — the actual guards — lives in the integration
repository. Guards are executed exactly as recorded — never redesigned
mid-run.

## EVIDENCE

Any observed output of an evaluation: verdicts, counts, quoted
excerpts, hashes. **Authority: none beyond the run.** Evidence is kept
separate from authority at all times. A PASS describes a run; it proves
nothing beyond it and changes no rule.

## EXPERIMENTAL MATERIAL

Anything not validated as evaluation procedure — notably π/TGF-style
metrics. **Authority: none.** Excluded. If ever retained, it lives in
`experimental/` explicitly labelled as non-normative, and it must never
override witness evidence or enter the skill contract.

## The standing form

**PYMON methodology ≠ PYMON runtime Skill ≠ Muse Agent ≠ SOUL.**

What the repository must never imply: that PYMON is an agent; that
PYMON is (or ships, or requires) any particular SOUL; that the skill
contains the whole project; that experimental evidence is normative;
that Muse-specific paths are universal; that the reference integration
is mandatory for PYMON users.
