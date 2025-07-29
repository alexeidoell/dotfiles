function fish_user_key_bindings
    bind -e \f
    bind \f 'forward-char'
    bind -e \v
    bind \v 'up-or-search'
    bind -e \n
    bind \n 'complete'
    bind -e \b
    bind \b 'backward-char'
end
