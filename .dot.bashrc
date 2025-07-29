#!/bin/bash

alias ls='eza'
alias ll='eza -alF'
alias la='eza -A'
alias l='eza -GF'
alias tree='eza -T'

eval "$(tv init bash)"
eval "$(zoxide init bash)"
alias zi="z \$(tv zoxide --inline)"
