# scribe

[![Rust](https://img.shields.io/badge/rust-stable-orange?logo=rust)](https://www.rust-lang.org/)
[![Swift](https://img.shields.io/badge/swift-6.2+-F05138?logo=swift&logoColor=white)](https://swift.org/)
[![macOS](https://img.shields.io/badge/macOS-13%2B-000000?logo=apple&logoColor=white)](https://www.apple.com/macos/)

Apple Notes from the terminal. Quick capture, full-text search, and edit notes in your favorite CLI text editor.

## Install

Requires macOS 13+ and Swift 6.2+.

```sh
just install
```

This builds a release binary and copies it to `~/.local/bin/`.

## Usage

```sh
# List all notes
scribe list

# List notes in a specific folder
scribe list --folder "Work"

# Show a note's contents
scribe show "Shopping List"

# Full-text search across all notes
scribe search "meeting agenda"

# Create a new note in $EDITOR
scribe new "My Note" -e

# Create a new note from stdin
echo "Remember to buy milk" | scribe new "Groceries"

# Edit an existing note in $EDITOR
scribe edit "Shopping List"

# List all folders
scribe folders

# Launch interactive TUI (default when run with no arguments)
scribe
```

### Interactive TUI

Running `scribe` with no arguments opens an interactive terminal UI for browsing and managing notes.

| Key | Action |
|-----|--------|
| `j` / `k` / `↑` / `↓` | Navigate notes |
| `Enter` | Edit selected note in `$EDITOR` |
| `d` | Delete selected note (with confirmation) |
| `/` | Search notes |
| `?` | Toggle help screen |
| `q` / `Esc` | Quit |

## How it works

Scribe talks to Apple Notes via AppleScript. Notes are fetched as plaintext, opened in your `$EDITOR`, and written back as HTML.

Rich content (checklists, drawings, attachments) gets flattened to plaintext on edit — best suited for text-heavy notes.

## Uninstall

```sh
just uninstall
```
