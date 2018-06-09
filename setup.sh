



# Symlink all of our dotfiles to the home directory
for config in vimrc
do
	echo "Creating symlink for $config - ($(pwd)/$config -> $HOME/.$config)"
  ln -sf $(pwd)/$config $HOME/.$config
done
