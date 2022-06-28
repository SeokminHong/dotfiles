if status is-interactive
    # Commands to run in interactive sessions can go here
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

# zoxide init fish | source
