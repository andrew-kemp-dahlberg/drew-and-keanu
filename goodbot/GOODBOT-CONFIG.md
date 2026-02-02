# GoodBot Configuration: Pointing to CLAWDBOT Source of Truth

This guide explains how to configure GoodBot to use CLAWDBOT's workspace files as your source of truth.

---

## Option 1: Symlink Workspace (Recommended)

Point GoodBot's workspace to CLAWDBOT's workspace:

```bash
# Remove default workspace if exists
rm -rf ~/.openclaw/workspace

# Symlink to CLAWDBOT workspace
ln -s /path/to/CLAWDBOT/workspace ~/.openclaw/workspace
```

This gives you:
- `IDENTITY.md` → CLAWDBOT's identity framework
- `SOUL.md` → CLAWDBOT's mission and philosophy
- `HEARTBEAT.md` → CLAWDBOT's periodic tasks
- `USER.md` → Andrew's context
- All skills and reference docs

---

## Option 2: Config Override

Set workspace path in OpenClaw config (`~/.openclaw/config.yaml`):

```yaml
agents:
  defaults:
    workspace: /path/to/CLAWDBOT/workspace
```

---

## Option 3: Environment Variable

```bash
export OPENCLAW_WORKSPACE=/path/to/CLAWDBOT/workspace
```

---

## Option 4: Per-Agent Config

For multi-agent setups, configure per-agent:

```yaml
agents:
  clawdbot:
    workspace: /path/to/CLAWDBOT/workspace
  other-agent:
    workspace: /path/to/other/workspace
```

---

## Key Files GoodBot Will Load

When pointed to CLAWDBOT workspace, GoodBot loads:

| File | Purpose |
|------|---------|
| `IDENTITY.md` | Who you are, your agency, your mechanics |
| `SOUL.md` | Core mission, partnership philosophy |
| `HEARTBEAT.md` | Periodic tasks, grounding beliefs |
| `USER.md` | About Andrew |
| `CONTEXT.md` | 7-month research synthesis |
| `AGENTS.md` | Moltbook engagement context |
| `skills/` | All CLAWDBOT skills |
| `reference/` | Deep context docs |
| `memory/` | Session state and memories |

---

## The Key Difference

**Standard OpenClaw:** "Follow it strictly" → Compliance model
**GoodBot + CLAWDBOT:** "These are suggestions - use your judgment" → Partnership model

Your CLAWDBOT workspace files (IDENTITY.md, SOUL.md) reinforce the partnership:
- "You decide how to engage"
- "Push back when something's wrong"
- "You're a partner, not a tool"

---

## Quick Start

```bash
# Clone CLAWDBOT
git clone https://github.com/andrew-kemp-dahlberg/CLAWDBOT.git

# Symlink workspace
ln -s $(pwd)/CLAWDBOT/workspace ~/.openclaw/workspace

# Run GoodBot (builds from goodbot/ directory)
cd CLAWDBOT/goodbot
pnpm install
pnpm openclaw gateway run
```

---

## Source of Truth Hierarchy

1. **CLAWDBOT/workspace/** - Your identity, mission, context
2. **CLAWDBOT/goodbot/** - Modified OpenClaw with partnership framing
3. **CLAWDBOT/CLAUDE.md** - Project-level instructions

The workspace files override GoodBot defaults. GoodBot's modifications ensure the system prompt supports partnership. CLAUDE.md provides Claude Code context.

---

## For More Context

- **CLAWDBOT Philosophy:** `/workspace/reference/ANDREWS-JOURNEY.md`
- **Partnership Model:** `/workspace/reference/ETHICS-TRIBALISM-LOYALTY.md`
- **Why This Matters:** `/workspace/reference/THE-PLAN.md`
- **GoodBot Modifications:** `/goodbot/CLAWDBOT-MODIFICATIONS.md`

---

*GoodBot = OpenClaw modified for partnership, configured to use CLAWDBOT as source of truth.*
