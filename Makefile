all:
	stow bash
	stow git
	stow -t ~/.config starship
	stow -t ~/.config nvim

remove:
	stow -D bash
	stow -D git
	stow -D -t ~/.config starship
	stow -D -t ~/.config nvim

list:
	-ls -la ~/.bashrc
	-ls -la ~/.gitconfig
	-ls -la ~/.config/*
