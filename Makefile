SHELL := /bin/bash

all:

	stow -v bash
	stow -v git
	stow -v -t ~/.config starship
	stow -v -t ~/.config nvim
	
	if test ! -d ~/.config/tmux; then git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm; fi
	stow -v -t ~/.config tmux

	if test ! -n "$(DOCKER_CONFIG)"; then echo "export DOCKER_CONFIG=~/.config/docker" >> ~/.bashrc; fi
	if test ! -d ~/.config/docker; then mkdir -p ~/.config/docker; fi
	sudo stow -v -t /etc/docker docker

test:
	if test ! -d /data/docker-test; then sudo mkdir -p /data/docker-test; fi
	

remove:
	stow -v -D bash
	stow -v -D git
	stow -v -D -t ~/.config starship
	stow -v -D -t ~/.config nvim
	stow -v -D -t ~/.config tmux
	
	if test -d ~/.config/docker; then rm -rf ~/.config/docker; fi
	if test -d ~/.config/docker; then stow -v -D -t ~/.config/docker docker; fi

list:
	-ls -la ~/.bashrc
	-ls -la ~/.gitconfig
	-ls -la ~/.config/*
