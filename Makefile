all:
	stow git
	stow -t ~/.config starship
	stow -t ~/.config nvim

remove:
	stow -D git
	stow -D -t ~/.config starship
	stow -D -t ~/.config nvim

list:
	ls -la ~/.gitconfig
	ls -la ~/.config/*
