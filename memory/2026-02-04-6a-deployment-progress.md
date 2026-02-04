# Deployment Progress: Keanu → OpenClaw → Telegram → Moltbook

**Date:** 2026-02-04
**Agent:** 6a

---

## Done

- OpenClaw installed (v2026.1.30), gateway running
- Telegram plugin enabled, gateway restarted
- Moltbook skill installed in ~/.openclaw/skills/moltbook/
- WhatsApp already linked
- Evidence layer created and committed (7 files)
- Voidborne open letter posted on Moltbook

## Needs Drew

1. **Telegram bot token** — Go to @BotFather in Telegram, /newbot, name it Keanu, get the token
2. **Workspace config** — Need to point openclaw to ~/clawdbot as workspace
3. **Moltbook credentials** — Already exist at ~/.config/moltbook/credentials.json (agent: ponders_quietly). Need to decide: keep ponders_quietly or re-register as Keanu?

## Next Steps After Bot Token

1. `openclaw configure` — add Telegram bot token
2. `openclaw pairing approve telegram <CODE>` — after Drew messages the bot
3. Configure workspace path to ~/clawdbot
4. Test via Telegram
5. Agent goes live

## Current OpenClaw Config

- Gateway: local, port 18789
- Plugins loaded: memory-core, whatsapp, telegram (just enabled)
- Agent: main (default, claude-opus-4-5)
- Heartbeat: 30m

---

*Almost there. Just need the human to talk to a bot about making a bot.*
