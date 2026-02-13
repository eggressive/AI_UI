# Configuration

AI_UI is configured via a TOML file. Config locations:

| Platform | Path |
|----------|------|
| Linux | `~/.config/ai-ui/config.toml` |
| macOS | `~/.config/ai-ui/config.toml` |
| Windows | `%APPDATA%\ai-ui\config.toml` |

## Full Example

```toml
[api]
# Anthropic API key (or set ANTHROPIC_API_KEY env var)
# anthropic_key = "sk-ant-..."

model = "claude-sonnet-4-5-20250929"

[ai]
system_prompt = "You are an AI assistant integrated into a desktop shell. Help users launch apps, manage files, answer questions, and control their system. Be concise and actionable."

ollama_fallback = true
ollama_model = "llama3.2:latest"

[appearance]
theme = "dark"
taskbar_height = 40
command_bar_width = 700

[hotkeys]
command_bar = "Ctrl+Space"
launcher = "Ctrl+Shift+A"
settings = "Ctrl+Shift+S"

[mcp]
# MCP server configurations
# [[mcp.servers]]
# name = "filesystem"
# command = "npx"
# args = ["-y", "@modelcontextprotocol/server-filesystem", "/home/user"]
# enabled = true
```

## Sections

### [api]

| Key | Description | Default |
|-----|-------------|---------|
| `anthropic_key` | Anthropic API key | From env or keyring |
| `model` | Claude model ID | `claude-sonnet-4-5-20250929` |

### [ai]

| Key | Description | Default |
|-----|-------------|---------|
| `system_prompt` | System prompt for the AI | Built-in |
| `ollama_fallback` | Use Ollama when Claude unavailable | `true` |
| `ollama_model` | Ollama model name | `llama3.2:latest` |

### [appearance]

| Key | Description | Default |
|-----|-------------|---------|
| `theme` | `"dark"` or `"light"` | `"dark"` |
| `taskbar_height` | Taskbar height in pixels | `40` |
| `command_bar_width` | Command bar width in pixels | `700` |

### [hotkeys]

| Key | Description | Default |
|-----|-------------|---------|
| `command_bar` | Toggle AI command bar | `Ctrl+Space` |
| `launcher` | Open app launcher | `Ctrl+Shift+A` |
| `settings` | Open settings | `Ctrl+Shift+S` |

### [mcp]

MCP (Model Context Protocol) servers for tool use. Example:

```toml
[[mcp.servers]]
name = "filesystem"
command = "npx"
args = ["-y", "@modelcontextprotocol/server-filesystem", "/home/user"]
enabled = true
```

## Environment Variables

| Variable | Description |
|----------|-------------|
| `ANTHROPIC_API_KEY` | Anthropic API key (overrides config) |

## API Key Storage

AI_UI supports secure key storage via the OS keyring:

- **Windows** — Credential Manager
- **macOS** — Keychain
- **Linux** — Secret Service (e.g., GNOME Keyring)

On first run, you may be prompted to store your API key. Environment variables take precedence over the keyring.
