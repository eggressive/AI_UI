# Contributing

Thank you for your interest in contributing to AI_UI!

## Development Setup

```bash
git clone https://github.com/PossumXI/AI_UI.git
cd AI_UI/ai-ui

# Check formatting
cargo fmt --all --check

# Compile the full workspace against the lockfile
cargo check --workspace --locked

# Test
cargo test --workspace --locked

# Run the shell locally
cargo run -p ai-ui-shell
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

- Follow `cargo fmt` output
- Add tests for new functionality
- Update documentation as needed

## CI and Release

GitHub Actions workflows must live at the repository root under `.github/workflows`.
The Rust workspace itself lives in `ai-ui/`, so root workflows set that directory as
their command working directory.

- `CI` runs on pull requests and pushes to `main`.
- The release workflow runs only for `v*.*.*` tags and publishes Linux, Windows,
  and macOS shell artifacts to the GitHub release.

## Areas for Contribution

- **Bug fixes** — Check the issue tracker
- **Documentation** — Wiki, README, inline docs
- **Features** — Discuss in issues before large changes
- **Platform support** — Windows, Linux, macOS improvements

## Questions?

Open an [issue](https://github.com/PossumXI/AI_UI/issues) for discussion.
