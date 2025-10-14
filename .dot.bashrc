#!/bin/bash

alias l='eza'
alias ll='eza -alF'
alias la='eza -A'
alias ls='eza -GF'
alias tree='eza -T'

. "$HOME/.cargo/env"
eval "$(tv init bash)"
eval "$(zoxide init bash)"
alias zi="z \$(tv zoxide --inline)"
