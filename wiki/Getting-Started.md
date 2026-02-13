# Getting Started

This guide walks you through installing and running AI_UI.

## Prerequisites

### Rust Toolchain

AI_UI requires **Rust 1.75 or newer**. Install via [rustup](https://rustup.rs/):

```bash
# Linux/macOS
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Windows
# Download and run rustup-init.exe from https://rustup.rs/
```

Verify:

```bash
rustc --version
cargo --version
```

### AI Provider (Optional but Recommended)

- **Claude** — [Anthropic API key](https://console.anthropic.com/)
- **Ollama** — [Install Ollama](https://ollama.ai/) for local models

## Installation

### Clone the Repository

```bash
git clone https://github.com/PossumX/AI_UI.git
cd AI_UI/ai-ui
```

### Build

```bash
# Debug build (faster, for development)
cargo build

# Release build (optimized, for daily use)
cargo build --release
```

### Run

```bash
# Via Cargo
cargo run -p ai-ui-shell

# Or run the release binary directly
./target/release/ai-ui-shell     # Linux/macOS
target\release\ai-ui-shell.exe   # Windows
```

## First-Time Setup

### API Key

For Claude integration, set your Anthropic API key:

**Option 1: Environment variable**

```bash
export ANTHROPIC_API_KEY="sk-ant-..."
```

**Option 2: Config file**

Create `~/.config/ai-ui/config.toml` (Linux/macOS) or `%APPDATA%\ai-ui\config.toml` (Windows):

```toml
[api]
anthropic_key = "sk-ant-..."
model = "claude-sonnet-4-5-20250929"
```

**Option 3: OS keyring**

On first run, the shell can prompt you to store the key securely in your system keyring.

### Ollama Fallback

If Claude is unavailable, AI_UI falls back to Ollama. Install and run:

```bash
# Install from https://ollama.ai/
ollama run llama3.2
```

Configure in `config.toml`:

```toml
[ai]
ollama_fallback = true
ollama_model = "llama3.2:latest"
```

## Hotkeys

| Action | Default |
|--------|---------|
| AI Command Bar | `Ctrl+Space` |
| App Launcher | `Ctrl+Shift+A` |
| Settings | `Ctrl+Shift+S` |

## Next Steps

- [Configuration](Configuration) — Full config reference
- [Architecture](Architecture) — How it works under the hood
