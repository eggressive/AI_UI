# AI_UI — The AI Interface We Need

Welcome to the **AI_UI** wiki. This is the central documentation for the AI-native desktop shell project.

## What is AI_UI?

AI_UI is a GPU-accelerated desktop shell built in Rust. It reimagines the desktop experience for the age of AI by integrating:

- **AI Command Bar** — Invoke Claude or Ollama from anywhere with `Ctrl+Space`
- **App Launcher** — Fuzzy search across all installed applications
- **System Taskbar** — Real-time status (WiFi, memory, battery, clock)
- **MCP Integration** — Model Context Protocol for extensible tool use

## Quick Links

| Page | Description |
|------|-------------|
| [Getting Started](Getting-Started) | Installation, build, and first run |
| [Architecture](Architecture) | Crate structure, Elm architecture, rendering |
| [Configuration](Configuration) | API keys, themes, hotkeys, MCP |
| [Contributing](Contributing) | How to contribute to the project |

## Tech Stack

- **Rust** — Systems programming, safety, performance
- **iced 0.14** — Elm-architecture UI framework
- **wgpu** — Cross-platform GPU rendering
- **Claude API** — Cloud AI (Anthropic)
- **Ollama** — Local AI fallback
- **MCP** — Model Context Protocol for tools

## Platform Support

| Platform | Status |
|----------|--------|
| Windows | ✅ Supported |
| Linux | ✅ Supported |
| macOS | ✅ Supported |

## License

MIT License. See [LICENSE](../LICENSE) in the repository.
