#!/usr/bin/env bash

sudo add-apt-repository ppa:lazygit-team/release
sudo apt-get update
sudo apt-get install tmux
sudo apt-get install silversearcher-ag
sudo apt-get install lazygit
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp vimrclite ~/.vimrc
cp tmuxconflite ~/.tmux.conf
mkdir ~/.vim/colors
cp colors/er_box.vim ~/.vim/colors/er_box.vim
cp colors/rr_box.vim ~/.vim/colors/rr_box.vim
cd ~/.vim && git clone https://github.com/ctrlpvim/ctrlp.vim.git bundle/ctrlp.vim
sudo apt-get python-dev

echo "******************************************"
echo " "
echo " "
echo "Install Elixir / Erlang? [Y,n]"
read input
echo " "
echo " "
echo " "
if [[ $input == "Y" || $input == "y" ]]; then
  echo "******************************************"
  wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb && sudo dpkg -i erlang-solutions_2.0_all.deb
  sudo apt-get update
  sudo apt-get install esl-erlang
  sudo apt-get install elixir
  echo "******************************************"
fi

echo " "
echo " "
echo "Setup done, open vim and run :PlugInstall"
echo " "
echo " "
echo " "
echo "******************************************"

