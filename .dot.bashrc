#!/bin/bash

alias l='eza'
alias ll='eza -algF'
alias la='eza -A'
alias ls='eza -GF'
alias tree='eza -T'

. "$HOME/.cargo/env"
eval "$(tv init bash)"
eval "$(zoxide init bash)"
alias zi="z \$(tv zoxide --inline)"

# zmx
if command -v zmx &> /dev/null; then
    eval "$(zmx completions bash)"
fi

# machine-local, untracked
if [ -f "$HOME/.dot.bashrc.machine" ]; then
    . "$HOME/.dot.bashrc.machine"
fi
