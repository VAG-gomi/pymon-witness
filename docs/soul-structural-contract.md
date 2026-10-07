# SOUL Structural Contract (generic)

**Version:** sc1
**Status:** INPUT-NORMATIVE for this skill; DESCRIPTIVE of the helper.
**Scope:** This document specifies the minimum a SOUL file must satisfy for
`pymon_witness` to operate against it. It constrains *inputs to this skill*.
It is not a universal standard for SOULs, and it contains no normative SOUL
content of its own.

**Language marking (binding on this document):**
- **[DESCRIPTIVE]** — states what the helper does (a fact about the tool).
- **[INPUT-NORMATIVE]** — states what a SOUL file must satisfy *for use
  with this skill*.
- Nothing here is universally normative. Another tool may define different
  conventions without contradiction.

## 1. Six distinct concepts

These are different. Do not collapse them.

- **A. Existence.** A SOUL file exists at the resolved path
  (`$PYMON_SOUL_PATH`, else `$HOME/SOUL.md`). [DESCRIPTIVE] If missing,
  the helper prints `SOUL_MISSING path=…` and exits 1; the skill must
  STOP and report. Existence is the only thing exit codes establish
  about validity.
- **B. Readability.** The file can be read as text. [DESCRIPTIVE] A
  successful read is established by the helper running to completion.
  Unreadable files (permissions, environment) are environment-dependent;
  behavior there is UNKNOWN — never assumed.
- **C. Structural recognisability.** The helper's mechanical conventions
  (§2) find anchors in the file. [DESCRIPTIVE] Purely syntactic.
- **D. Curriculum compatibility.** The SOUL works with a particular
  curriculum. Established **only** by the integration repository's
  compatibility evidence for a specific (skill × SOUL) pair. The helper
  can never establish this. Structural recognition (C) is not
  curriculum compatibility (D).
- **E. Particular normative implementation.** The file *is* a specific
  SOUL (e.g. some versioned distribution). Established **only** by
  sha256 fingerprint match against a pinned value. Counts are not
  identity: two different SOULs can share counts.
- **F. Runtime auto-loading.** A runtime may auto-load a SOUL file for
  its own convenience. Not a repository fact; not a dependency of this
  skill; out of scope for all contract purposes.

## 2. What the helper establishes [DESCRIPTIVE, OBSERVED]

From `bin/soul_fingerprint.sh` (behavior observed 2026-10-06; the script
is byte-stable across releases):

- `rule_anchors` = number of lines matching `^> \*\*R-S`.
- `tension_sections` = number of lines matching `^## T-0`.
- The counting is done with `grep -c` and has **no fence awareness**:
  matching lines inside fenced code blocks **are counted**. [OBSERVED]
- `hash`, `bytes`, `first_line` are descriptive file facts.
- Exit 0 = the helper ran and printed counts. Exit 1 = SOUL_MISSING.

The helper has no malformation detector. It cannot establish validity,
normativity, identity, or curriculum compatibility.

## 3. Meanings and limitations

- **Rule anchors** [DESCRIPTIVE]: lines matching the helper's rule-anchor
  pattern. The contract does not claim they are rules; it claims the
  helper counts them. Whether they *are* rules is a D/E-level judgment.
- **Tension headings** [DESCRIPTIVE]: same status as rule anchors.
- **Fenced content** [DESCRIPTIVE + INPUT-NORMATIVE]: the helper does not
  exclude it. **Consequence [INPUT-NORMATIVE]:** SOUL files intended for
  structural recognition MUST NOT contain fenced lines matching the
  anchor patterns — documentation examples inside fences would be
  counted. (Proposal P-C1, adopted as the working rule; see §4.)
- **Structural recognition** [DESCRIPTIVE]: "the helper found N anchor
  lines." Not validity, not normativity, not compatibility.
- **Zero detected anchors with exit 0** means exactly this: *the helper
  ran successfully and found zero lines matching its conventions.* It
  does **not** mean malformed. It does **not** mean valid-but-empty. It
  does **not** mean unsupported. Those judgments require this contract
  plus human judgment (C-level), or the integration's pair evidence
  (D-level).
- **Malformed or unsupported structure** is a C-level determination made
  by applying this contract — not by the helper, which cannot detect it.
  Absence of anchors is not evidence of malformation.

## 4. Fence-handling rule [PROPOSAL P-C1 — labeled]

P-C1 (adopted working rule): keep the helper's observed behavior
unchanged; constrain SOUL *authoring* via §3 instead. Rationale: the
helper is byte-stable across releases and the reference signatures were
produced under this behavior; changing counting semantics would be a
breaking change requiring its own validation.

P-C2 (recorded alternative, not adopted): change the helper to exclude
fenced blocks. This would be a Repo 1 MAJOR change (count semantics
change) requiring its own validation and human ruling. Recorded here so
the option is not lost; not implemented.

## 5. Three levels (use these terms; do not invent others)

1. **Syntactically readable** — the file exists and reads as text (A+B).
2. **Structurally recognised** — the helper's conventions find anchors (C).
3. **Curriculum-compatible** — the integration evidences the pair (D).

A file can be (1) without (2), and (2) without (3). The skill operates at
levels 1–2 against any supplied file; level 3 is the integration's claim,
not the skill's.

## 6. What this contract does not do

- It does not define what a SOUL *should* contain.
- It does not validate, certify, or rank SOULs.
- It does not make any particular SOUL mandatory.
- It does not create PYMON rules. No normative rule is invented here.
