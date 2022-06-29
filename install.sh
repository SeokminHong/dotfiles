mkdir -p ~/.config
cp -r .config/fish ~/.config
cp .iex.exs ~/

mkdir -p ~/bin

ARCH=$(uname -m | tr '[:upper:]' '[:lower:]')
switch $ARCH
    case 'amd64'; ARCH="x86_64"
    case 'arm64'; ARCH="aarch64"
end

PLATFORM=$(uname -s | tr '[:upper:]' '[:lower:]')
switch $PLATFORM
    case 'linux'; PLATFORM="unknown-linux-gnu"
    case 'darwin'; PLATFORM="apple-darwin"
end

cp "store/starship/starship-$ARCH-$PLATFORM" ~/bin/starship
