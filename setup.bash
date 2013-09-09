#!/bin/bash

if [ "$(pwd)" == "${HOME}/.vim" ]; then
  cd ~/.vim
  git remote -v | grep origin.*github\.com/mikepurvis/vim > /dev/null
  if [ "$?" == "0" ]; then
    echo "Repo already present in ~/.vim, skipping clone."
  else
    echo "Path ~/.vim already exists, but is not a clone of this repo."
    echo "Back up and remove previous ~/.vim folder and run setup script again."
    exit 1
  fi
else
  echo "Cloning repo to ~/.vim"
  git clone https://github.com/mikepurvis/vim.git ~/.vim
fi

echo "Invoking apt-get to install vim and wstool."
sudo apt-get install vim python-wstool

wstool update -t ~/.vim

if [ -f ~/.vimrc ]; then
  mv ~/.vimrc{,.bak}
fi
ln -s "${HOME}/.vim/vimrc" "${HOME}/.vimrc"
