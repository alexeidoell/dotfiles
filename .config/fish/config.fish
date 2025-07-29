if status is-interactive
    # Commands to run in interactive sessions can go here
    set -gx fish_prompt_pwd_dir_length 0
    set -g fish_greeting
    set -gx BROWSER google-chrome
    set -gx EDITOR nvim
    tv init fish | source


    abbr -a -- tree 'eza -T'
    abbr -a -- ll 'eza -alF'
    abbr -a -- la 'eza -A'
    abbr -a -- ls 'eza -GF'
    abbr -a -- l eza

    zoxide init fish | source
    abbr -a -- zi 'z $(tv zoxide --inline)'
end
