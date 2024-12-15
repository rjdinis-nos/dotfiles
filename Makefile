all:
	stow bash
	stow git
	stow -t ~/.config starship
	stow -t ~/.config nvim
	stow -t ~/.config tmux

	git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm

remove:
	stow -D bash
	stow -D git
	stow -D -t ~/.config starship
	stow -D -t ~/.config nvim
	stow -D -t ~/.config tmux

list:
	-ls -la ~/.bashrc
	-ls -la ~/.gitconfig
	-ls -la ~/.config/*
