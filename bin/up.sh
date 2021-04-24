#!/bin/bash

echo "Installing vim files..."

mkdir -p ~/.config/nvim

ln -s $PWD/init.vim $HOME/.config/nvim/init.vim
ln -s $PWD/config/coc-config.json $HOME/.config/nvim/coc-config.json

