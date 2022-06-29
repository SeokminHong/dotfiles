set -u ARCH (uname -m | tr '[:upper:]' '[:lower:]')
switch $ARCH
    case 'amd64'; set -u ARCH "x86_64"
    case 'arm64'; set -u ARCH "aarch64"
end

set -u PLATFORM (uname -s | tr '[:upper:]' '[:lower:]')
switch $PLATFORM
    case 'linux'; set -u PLATFORM "unknown-linux-gnu"
    case 'darwin'; set -u PLATFORM "apple-darwin"
end

ln -s "~/.config/fish/store/starship/starship-$ARCH-$PLATFORM" /usr/local/bin/starship
