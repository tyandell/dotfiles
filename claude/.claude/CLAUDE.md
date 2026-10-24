# Claude Code instructions

- Never use memory. Auto memory is disabled on purpose; anything that should persist goes in this file, or in the shared `~/.config/agents/AGENTS.md` if it isn't specific to Claude Code.
- Don't use the `AskUserQuestion` tool to ask me questions. Ask them directly in your reply.
- Don't use the `Artifact`, `ArtifactComments` or `ArtifactData` tools, or the Claude Docs tools (`mcp__claude_ai_Claude_Docs__*`), and don't publish anything else to a Claude/Anthropic server unless I specifically ask for it.
- Don't use subagents (the `Agent` or `Workflow` tools) unless I ask for them, or unless one is needed so that a long-running task doesn't block other work.

@~/.config/agents/AGENTS.md
