

# Check if zsh is already installed - or add option for it
# todo 

# install zsh
#sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"



# Symlink all of our dotfiles to the home directory
for config in vimrc tmux.conf zshrc
do
	echo "Creating symlink for $config - ($(pwd)/$config -> $HOME/.$config)"
  ln -sf $(pwd)/$config $HOME/.$config
done
