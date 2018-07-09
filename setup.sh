#!/bin/sh

# add option check if env should download apps

# todo check system family 
# sudo apt install -y zsh tmux vim
# sudo yum install -y zsh tmux vim

# install oh-my-zsh
# sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install docker 
# curl -fsSL get.docker.com -o get-docker.sh
# sh get-docker.sh

# Symlink all of our dotfiles to the home directory
for config in vimrc tmux.conf zshrc
do
	echo "Creating symlink for $config - ($(pwd)/$config -> $HOME/.$config)"
  ln -sf $(pwd)/$config $HOME/.$config
done
