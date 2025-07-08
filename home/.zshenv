#!/usr/bin/env bash

typeset -U path

# Defualt Apps
export PAGER="less"
export EDITOR="hx"
export VISUAL="hx"
export READER="zathura"

#path
path=(/usr/local/bin $path)
export PATH=/home/joe/.local/bin:$PATH
