# Contributing

Thank you for your interest in contributing to AI_UI!

## Development Setup

```bash
git clone https://github.com/PossumX/AI_UI.git
cd AI_UI/ai-ui

# Build
cargo build

# Run
cargo run -p ai-ui-shell

# Test
cargo test --workspace

# Lint
cargo clippy --workspace -- -D warnings

# Format
cargo fmt --all
```

## Workflow

1. **Fork** the repository on GitHub
2. **Clone** your fork locally
3. **Create a branch** for your feature or fix (`git checkout -b feature/my-feature`)
4. **Make changes** and ensure tests pass
5. **Commit** with clear messages
6. **Push** to your fork
7. **Open a Pull Request** against `main`

## Code Style

- Follow `cargo fmt` and `cargo clippy` output
- Add tests for new functionality
- Update documentation as needed

## Areas for Contribution

- **Bug fixes** — Check the issue tracker
- **Documentation** — Wiki, README, inline docs
- **Features** — Discuss in issues before large changes
- **Platform support** — Windows, Linux, macOS improvements

## Questions?

Open an [issue](https://github.com/PossumX/AI_UI/issues) for discussion.
