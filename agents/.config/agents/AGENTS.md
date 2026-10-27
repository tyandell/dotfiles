# Global instructions

## Languages and tools

- Use mise for programming language runtimes (Python, Node, Ruby, Go, etc.). Don't use the system or Homebrew versions (e.g. `/usr/bin/python3`), and don't install a runtime globally.
- In a project, pin the runtimes it needs in its `mise.toml` with `mise use <lang>@<version>`. For a one-off script outside a project, use `mise exec <lang>@<version> -- <command>`.
- Project-local dependencies (`npm install`, a project venv, `bundle install`) are fine. Don't install packages globally (`npm install -g`, `pip install --user`, `gem install`, `cargo install`, `go install`).
- This is about language runtimes, not every command. Use CLI tools that are already installed (`ffmpeg`, `jq`, etc.) directly; don't route them through mise just because mise also has them.
- If you need a tool that isn't installed, a one-off `mise exec` is fine; otherwise ask me before installing it (including `brew install`). Don't change my global mise config (`~/.config/mise/config.toml`) unless I ask.

## Plugins, extensions and skills

- Never suggest plugins, extensions, LSP servers, MCP servers or skills to install or load, and don't auto-detect what I might want and recommend it. If I want one, I'll ask for it.
- This doesn't restrict skills that are already installed globally or in the current repo; keep using those as normal.
