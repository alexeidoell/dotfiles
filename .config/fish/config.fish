if status is-interactive
    # Commands to run in interactive sessions can go here
    set -gx fish_prompt_pwd_dir_length 0
    set -g fish_greeting
    set -gx BROWSER google-chrome
    set -gx EDITOR nvim
    tv init fish | source
end
