# Global instructions

- Never use memory. Auto memory is disabled on purpose; anything that should persist goes in a CLAUDE.md file.
- Don't use the `AskUserQuestion` tool to ask me questions. Ask them directly in your reply.
- Don't use the `Artifact`, `ArtifactComments` or `ArtifactData` tools, or the Claude Docs tools (`mcp__claude_ai_Claude_Docs__*`), and don't publish anything else to a Claude/Anthropic server unless I specifically ask for it.
- Don't use subagents (the `Agent` or `Workflow` tools) unless I ask for them, or unless one is needed so that a long-running task doesn't block other work.

## Tools and languages

- Use mise for language runtimes and dev tools whenever possible. Don't install things globally (`brew install`, `npm install -g`, `pip install --user`, `gem install`, `cargo install`, `go install`, etc.), and don't use the system or Homebrew versions of languages (e.g. `/usr/bin/python3`).
- In a project, add the tools it needs to the project's `mise.toml` with `mise use <tool>@<version>`. For a one-off command, use `mise exec <tool>@<version> -- <command>` instead of installing anything.
- Tools that aren't in mise's registry can often still come from mise's backends (`npm:`, `pipx:`, `cargo:`, `go:`, `gem:`, `github:`, `aqua:`).
- Project-local dependencies (`npm install`, a project venv, `bundle install`) are fine.
- Don't change my global mise config (`~/.config/mise/config.toml`) unless I ask. If something can't be done through mise, ask me before installing it another way.
