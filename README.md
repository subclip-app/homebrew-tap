# Subclip Homebrew tap

Install [AI Video Editor by Subclip](https://www.subclip.app/) on macOS (Apple silicon) with Homebrew:

```sh
brew install --cask subclip-app/tap/subclip
```

The app updates itself. `brew upgrade --cask subclip` also works.

The cask adds a `subclip` command for terminal and agent use:

```sh
subclip --headless           # run without a window (servers, agents)
subclip --print-mcp-config   # local MCP server address and token (this user only)
```

Headless mode and the `subclip` service commands need app version 1.0.52 or later.

Uninstall with `brew uninstall --cask subclip`. `brew uninstall --zap --cask subclip` also removes the app's settings
and caches; your projects in `~/Documents/AI Video Editor by Subclip` are never removed.

This tap is updated automatically by Subclip's release pipeline.
