#!/usr/bin/env bash

typeset -U path

# Default applications
export PAGER="less"
export EDITOR="hx"
export VISUAL="hx"
export READER="zathura"

# Prepend user and local bin directories to PATH
path=(/home/joe/.local/bin /usr/local/bin $path)
export PATH
