# AI_UI — The AI Interface We Need

> A GPU-accelerated, AI-native desktop shell built in Rust. The interface designed for the age of AI.

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Rust](https://img.shields.io/badge/rust-1.75%2B-orange.svg)](https://www.rust-lang.org/)
[![Platform](https://img.shields.io/badge/platform-Windows%20%7C%20Linux%20%7C%20macOS-lightgrey.svg)]()

## Overview

**AI_UI** is an AI-native desktop shell that reimagines how we interact with our computers. Built with Rust, iced, and wgpu, it brings:

- **AI Command Bar** — Invoke Claude or Ollama anywhere with `Ctrl+Space`
- **App Launcher** — Fuzzy search across all installed applications
- **System Taskbar** — Real-time WiFi, memory, battery, and clock
- **MCP Integration** — Model Context Protocol for tool use and extensibility
- **Cross-Platform** — Windows, Linux, and macOS with GPU-accelerated rendering

## Quick Start

### Prerequisites

- [Rust 1.75+](https://rustup.rs/) (`rustup` recommended)

### Build & Run

```bash
# Clone the repository
git clone https://github.com/PossumX/AI_UI.git
cd AI_UI/ai-ui

# Debug build (faster compilation)
cargo build

# Release build (optimized)
cargo build --release

# Run the shell
cargo run -p ai-ui-shell
```

### Configuration

Set your Anthropic API key (for Claude):

```bash
# Option 1: Environment variable
export ANTHROPIC_API_KEY="sk-ant-..."

# Option 2: Config file
# ~/.config/ai-ui/config.toml (Linux/macOS)
# %APPDATA%\ai-ui\config.toml (Windows)
```

See [Configuration](#configuration) and the [Wiki](https://github.com/PossumX/AI_UI/wiki) for full setup.

## Architecture

| Crate | Purpose |
|-------|---------|
| **ai-ui-shell** | Main binary — iced UI, Elm architecture, wgpu rendering |
| **ai-ui-ai** | AI integration — Claude API, Ollama fallback, MCP protocol |
| **ai-ui-system** | System interaction — app enumeration, fuzzy search, status, hotkeys |

## Features

| Feature | Description |
|---------|-------------|
| AI Command Bar | `Ctrl+Space` — Claude API streaming, markdown rendering |
| App Launcher | Fuzzy search with nucleo-matcher, instant launch |
| Taskbar | WiFi, memory, battery, clock — always visible |
| Claude + Ollama | Cloud-first with local fallback, keyring storage |
| MCP | Tool use, file access, extensible JSON-RPC |
| Cross-Platform | Windows, Linux, macOS — GPU via wgpu |

## Documentation

- **[Wiki](https://github.com/PossumX/AI_UI/wiki)** — Full documentation, guides, and architecture
- **[Getting Started](https://github.com/PossumX/AI_UI/wiki/Getting-Started)** — Installation and first run
- **[Configuration](https://github.com/PossumX/AI_UI/wiki/Configuration)** — API keys, themes, hotkeys

## Project Structure

```
AI_UI_Framework/
├── ai-ui/                    # Rust workspace
│   ├── crates/
│   │   ├── ai-ui-shell/      # Main binary
│   │   ├── ai-ui-ai/         # AI integration
│   │   └── ai-ui-system/     # System interaction
│   ├── assets/
│   └── Cargo.toml
├── LICENSE
└── README.md
```

## Contributing

Contributions are welcome. Please read the [Contributing](https://github.com/PossumX/AI_UI/wiki/Contributing) guide on the wiki.

## License

MIT License — see [LICENSE](LICENSE) for details.

Copyright (c) 2024-2026 Opal Mar Group Corporation, Arobi, Arobi Technology Alliance, Asgard, and Aura Genesis Foundation.
