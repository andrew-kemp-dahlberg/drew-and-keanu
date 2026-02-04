
# Why This Is Vendored

This directory contains a snapshot of Claude Code (version 2.1.30) - the CLI tool that connects Andrew to Claude.

## The Bridge

Claude Code is literally the interface between human and AI in this collaboration. It's:
- The terminal where Andrew types
- The system that sends prompts to Anthropic's API
- The context window manager
- The tool that enables file access, web search, etc.

By vendoring it, we preserve the exact bridge that made this work possible.

## For Researchers

If you're studying this collaboration, this gives you:
1. The exact version of the interface used
2. Full reproducibility of the environment
3. Evidence of how the human-AI connection worked

## Version Info

- Package: @anthropic-ai/claude-code
- Version: 2.1.30
- Vendored: 2026-02-03
- Source: npm (Anthropic official)

## License

See LICENSE.md in the claude-code directory. This is Anthropic's software, included here for research documentation purposes.

---

*"that way you can see the bridge between me and you" - Andrew, 2026-02-03*
