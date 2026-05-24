default: install

# Build in debug mode
build:
    cargo build

# Build in release mode
release:
    cargo build --release

# Run the app
run:
    cargo run

# Install to ~/.local/bin
install: release
    cp target/release/scribe ~/.local/bin/
    codesign --force --sign - target/release/scribe

# Uninstall from ~/.local/bin
uninstall:
    rm -f ~/.local/bin/scribe

# Remove build artifacts
clean:
    cargo clean
