# Deprecated for now.
# We should later use it for portable version of Halloy.

#!/bin/bash
EXE_NAME="halloy.exe"
TARGET="x86_64-pc-windows-msvc"

# build binary
rustup target add $TARGET
cargo build --release --target=$TARGET
cp -fp target/$TARGET/release/$EXE_NAME target/release
