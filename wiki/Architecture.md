# Architecture

AI_UI is organized as a Rust workspace with three crates.

## Workspace Structure

```
ai-ui/
├── Cargo.toml              # Workspace manifest
├── crates/
│   ├── ai-ui-shell/        # Main binary — UI and orchestration
│   ├── ai-ui-ai/            # AI integration (Claude, Ollama, MCP)
│   └── ai-ui-system/       # System interaction (apps, status, hotkeys)
└── assets/
```

## Crates

### ai-ui-shell

The main application crate. Responsibilities:

- **iced 0.14** — Elm architecture (Model → Message → Update → View)
- **wgpu** — GPU-accelerated rendering (with tiny-skia fallback)
- **Window management** — Transparent overlay, taskbar, command bar
- **Platform abstraction** — Windows, Linux, macOS via `platform/` module

Key modules:

- `app.rs` — Application state, update loop, view
- `command_bar.rs` — AI command bar UI
- `launcher.rs` — App launcher overlay
- `taskbar.rs` — System taskbar widget
- `platform/` — OS-specific code

### ai-ui-ai

AI integration crate. Provides:

- **Claude API** — Streaming, JSON mode, tool use
- **Ollama** — Local model fallback
- **MCP** — Model Context Protocol for external tools
- **Streaming** — Real-time token display

Key modules:

- `claude.rs` — Anthropic API client
- `ollama.rs` — Ollama local client
- `mcp.rs` — MCP protocol support
- `streaming.rs` — Token streaming

### ai-ui-system

System interaction crate. Handles:

- **App enumeration** — List installed applications
- **Fuzzy search** — nucleo-matcher for launcher
- **Status** — WiFi, memory, battery, clock
- **Hotkeys** — Global keyboard shortcuts

Key modules:

- `apps.rs` — Application discovery
- `status.rs` — System status queries
- `hotkeys.rs` — Global hotkey registration
- `windows.rs` — Window management (platform-specific)

## Data Flow

```
User Input (keyboard, mouse)
    ↓
ai-ui-shell (iced update loop)
    ↓
ai-ui-ai (Claude/Ollama/MCP)  ←→  ai-ui-system (apps, status)
    ↓
ai-ui-shell (view, render via wgpu)
    ↓
Display
```

## Dependencies

- **iced** — UI framework (wgpu, tiny-skia, canvas, image, svg)
- **tokio** — Async runtime
- **reqwest** — HTTP for Claude API
- **serde/serde_json** — Serialization
- **tracing** — Logging

## Platform Notes

- **Windows** — Uses Win32 APIs for app enumeration and hotkeys
- **Linux** — Uses freedesktop.org standards (XDG, etc.)
- **macOS** — Uses Cocoa/AppKit where needed
