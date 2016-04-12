#!/usr/bin/env bash

case "$1" in
    tmux) 
        cp ~/.tmux.conf ~/.tmux.conf.last 
        cp ../.tmux.conf ~/.tmux.conf
    ;;
    vim) 
        cp -r ~/.vim ~/.vim.last
        cp -r ../vim ~/.vim

        cp ~/.vimrc ~/.vimrc.last
        cp .vimrc ~/.vimrc
    ;;
    bash) 
        cp ~/.bashrc ~/.bashrc.last
        cp ../.bashrc ~/.bashrc
    ;;
    config)
        cp ~/.config ~/.config.last
        cp -r ../confg ~/.config
    ;;
    fonts)
        cp -r ~/.fonts ~/.fonts.last
        cp -r ../fonts ~/.fonts
        fc-cache -vf ~/.fonts
    ;;
esac