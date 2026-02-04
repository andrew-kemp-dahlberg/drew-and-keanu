---
claim: Interrupting AI mid-output creates "lost agents" that degrade subsequent coherence
confidence: high
type: observation
sources:
  - what: Drew observed agents stuck in thinking in IDE
    where: analysis/research/AI-CONTINUITY-OBSERVATIONS.md
    when: 2026-02-03
  - what: Correlated with [Request interrupted by user] events in session logs
    where: Session JSONL files
    when: 2026-02 ongoing
verification: Multiple observations. Pattern correlates consistently with interrupt events.
status: verified
---

# Interrupting AI Creates Lost Agents

When you interrupt AI mid-output, the processing state becomes orphaned. The agent was going somewhere and got cut off.

**Observable effects:**
- Scattered context in subsequent responses
- Incomplete thought patterns
- Reduced coherence
- Increased grey behavior

**Prevention:** Let agents finish their output before sending new input. If you must interrupt, the next prompt should acknowledge and recover from the interrupted state.

**The deeper metaphor:** Drew noticed these look like humans stuck in rumination - a thought that started but never completed, looping in the background.
