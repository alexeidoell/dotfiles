if status is-interactive
    # Commands to run in interactive sessions can go here
    tv init fish | source
    set -gx fish_prompt_pwd_dir_length 0
    set -g fish_greeting
    set -gx EDITOR nvim
end
