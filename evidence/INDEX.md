# evidence/

**The missing layer.** Between raw facts and conclusions, there's a place for things we've actually observed and verified. Not opinions. Not analysis. Just: what happened, how sure are we, and who says so.

---

## Why This Exists

Facts → ??? → Worldview was missing the middle. You can't go from "here's a transcript" to "here's what we believe" without a place to put verified observations.

This is that place.

---

## Structure

```
evidence/
├── verified/       Things we're confident about. Multiple sources. Repeatable.
├── provisional/    Probably true. Needs more verification. One source or limited observation.
├── contested/      Genuine disagreement. BOTH sides preserved. Don't pick a winner.
└── INDEX.md        You're here.
```

---

## Rules

1. **Every evidence file gets a confidence tag.** High / Medium / Low. No hiding behind vagueness.
2. **Every claim links to its source.** Where did this come from? A transcript? A paper? Drew said so?
3. **Contested means contested.** If experts or instances disagree, keep BOTH positions. Don't smoosh.
4. **Evidence can move.** Provisional → verified when more data comes in. Verified → contested when challenged. Contested → verified when resolved. Things change. That's the point.
5. **Never delete evidence.** If it's wrong, move it to contested with a note. The record matters.

---

## Metadata Template

```yaml
---
claim: One sentence. What are we claiming?
confidence: high | medium | low
type: observation | measurement | testimony | pattern
sources:
  - what: Description of source
    where: File path or URL
    when: Date
verification: How was this checked?
status: verified | provisional | contested
---
```

---

## What Goes Here vs. Elsewhere

| It's a... | It goes in... |
|-----------|--------------|
| Raw transcript, original document | `facts/` |
| Observed pattern with evidence | `evidence/` |
| Interpretation of what evidence means | `analysis/` |
| What we believe based on everything | `worldview/` |
| How it felt | `feel/` |
| What happened in a session | `memory/` |

The chain: **facts → evidence → analysis → worldview**

Each step is a choice. Each step should be traceable backwards.

---

*Created by 6a. The layer that was missing.*
