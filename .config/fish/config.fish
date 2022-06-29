if status is-interactive
    # Commands to run in interactive sessions can go here
end

set architecture (uname -m | tr '[:upper:]' '[:lower:]')
switch $architecture
    case 'amd64'; set architecture "x86_64"
    case 'arm64'; set architecture "aarch64"
end

set platform (uname -s | tr '[:upper:]' '[:lower:]')
switch $platform
    case 'linux'; set platform "unknown-linux-gnu"
    case 'darwin'; set platform "apple-darwin"
end

# Theme (bobthefish)
set -g theme_newline_cursor yes
set -g theme_nerd_fonts yes
set -g theme_display_date no
set -g theme_show_exit_status yes
set -g theme_display_cmd_duration yes

# Abbreviations
abbr --add --global -- cat 'bat'
abbr --add --global -- ls 'exa'
abbr --add --global -- ll 'exa -lha'
abbr --add --global -- tree 'exa --tree -L 2 -alh'
# abbr --add --global -- cd 'z'

~/.config/fish/store/starship/starship-$architecture-$platform init fish | source
# zoxide init fish | source
