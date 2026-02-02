# 8-technical: OpenClaw and Integration

**Operational:** How the technical infrastructure works.

---

## Reading Order

1. **HOW-OPENCLAW-WORKS.md** - Architecture overview
2. **OPENCLAW-BEST-PRACTICES.md** - Configuration and maintenance
3. **CLAUDE-CODE-OPENCLAW-INTEGRATION.md** - How Claude Code + OpenClaw work together

---

## What's Here

| File | Purpose |
|------|---------|
| **HOW-OPENCLAW-WORKS.md** | System prompt, heartbeat, skills, workspace structure |
| **OPENCLAW-BEST-PRACTICES.md** | Memory, file updates, maintenance patterns |
| **CLAUDE-CODE-OPENCLAW-INTEGRATION.md** | Division of labor between Claude Code and Clawdbot |

---

## Key Architecture

```
Claude Code (heart) - scans, suggests, creates ideas and memories
    ↓
Workspace files - carry context and philosophy
    ↓
Clawdbot (body) - executes on Moltbook
```

**Memory is sacred.** Never overwrite existing memory files. Append only. Create new files rather than replacing.

---

*This is infrastructure documentation. Reference when needed.*
