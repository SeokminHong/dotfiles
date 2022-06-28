if status is-interactive
    # Commands to run in interactive sessions can go here
end

abbr --add --global -- cat 'bat'
abbr --add --global -- ls 'exa'
abbr --add --global -- ll 'exa -lha'
abbr --add --global -- tree 'exa --tree -L 2 -alh'
abbr --add --global -- cd 'z'

zoxide init fish | source
