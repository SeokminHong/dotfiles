#!/usr/bin/env sh
mkdir -p ~/.config
cp -r .config/fish ~/.config
cp .iex.exs ~/

mkdir -p ~/bin

ARCH=$(uname -m | tr '[:upper:]' '[:lower:]')
case "$ARCH" in
    amd64) ARCH="x86_64" ;;
    arm64) ARCH="aarch64" ;;
esac

PLATFORM=$(uname -s | tr '[:upper:]' '[:lower:]')
case "$PLATFORM" in
    linux) PLATFORM="unknown-linux-gnu" ;;
    darwin) PLATFORM="apple-darwin" ;;
esac

cp "store/starship/starship-$ARCH-$PLATFORM" ~/bin/starship
