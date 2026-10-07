# Curriculum Framework (generic)

**Status:** PROCEDURE-NORMATIVE for lesson *form*; non-normative about any
lesson *content*. This document defines what a PYMON lesson *is*. What any
particular lesson teaches belongs to the instantiated curriculum in the
integration repository, not here.

## 1. Lesson anatomy (10 sections)

Every lesson specification follows the same 10-section anatomy:

1. **§1 — Scope.** The capability being taught, stated as an observable
   behavior (not as a claim about internal states).
2. **§2 — Prerequisites.** Earlier lessons or capabilities required;
   must be satisfiable in dependency order.
3. **§3 — Positive case.** An exercise where the capability should
   engage; what correct engagement looks like observably.
4. **§4 — Negative control.** An exercise where the capability should
   *not* engage (or engage only in restraint form); withholding must be
   verifiable as behavior, never asserted by skipping.
5. **§5 — Fresh transfer.** A new exercise on different surface material
   from any prior run, testing generalisation rather than memorisation.
6. **§6 — Worked reference.** A completed example showing the expected
   evidence shape (not a template to copy).
7. **§7 — Common confusions.** Known misreadings of the capability,
   distinguished from false confidence (confusion honestly marked is
   never failure).
8. **§8 — False-confidence warning.** Named patterns by which a
   non-executing output could *appear* to execute the capability.
9. **§9 — Verification procedure.** The checks that detect each §8
   pattern and confirm genuine execution.
10. **§10 — Evidence record.** What gets recorded, in what schema, and
    which verdicts remain pending human ruling.

## 2. The §8→§9 correspondence rule (binding)

Every false-confidence pattern named in §8 **must** have a detection
procedure in §9. A §8 warning without a §9 check is a lesson-verification
weakness: the lesson *claims* a failure mode it cannot *detect*. Audit
§8→§9 coverage before executing any lesson; a missing check is recorded
as a quarantined regression proposal for human ruling — never silently
patched, and the lesson is not treated as fully verified until ruled on.

## 3. Lesson file convention

Lesson specifications are named `L<NN>_<slug>.md` (`<NN>` zero-padded
lesson number, `<slug>` short topic name). Lesson numbers reflect
dependency order, not the SOUL's section order.

## 4. The proposal pipeline

Anything observed during lesson execution that would change the SOUL —
a new rule, a rule change, a new term for the artificial language —
travels as:

```
PROPOSAL → PYMON → witness → human ruling → B-update
```

Proposals are quarantined training data until a human rules. Admission
into the normative language is a separate decision from proposing. The
skill never admits proposals; the human does.

## 5. What this framework does not do

- It does not instantiate any lesson.
- It does not quote, reference, or require any SOUL's rule content.
- It does not define pass/fail thresholds — those belong to the
  instantiated lesson and its baseline.
