#!/bin/bash

sudo apt-get install vim python-wstool

if [ "$(pwd)" == "${HOME}/.vim" ]; then
  echo "Repo already present in ~/.vim, skipping clone."
else
  echo "Cloning repo to ~/.vim"
  git clone https://github.com/mikepurvis/vim.git ~/.vim
fi

wstool update

if [ -f ~/.vimrc ]; then
  mv ~/.vimrc{,.bak}
fi
ln -s "${HOME}/.vim/vimrc" "${HOME}/.vimrc"
