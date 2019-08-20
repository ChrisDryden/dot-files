# terminal-dot-files

.bashrc and .zsh files


# Mac Installation Guide

clone repo and run the following command:

```sh install.sh```

installation script installs:
 - iTerm2
 - vim
 - OhMyZsh Powerlevel10K

# installation guide for Windows Terminal

open regedit.exe and go to Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Command Processor

Add the following String Value "AutoRun" : |Home Path| terminal-dot-files\alias.bat


# installation guide for Linux Terminals

sudo apt-get update -y 

sudo apt-get upgrade -y

sudo apt-get install git -y
 

# Installing oh-my-zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone 'dircolorsdb repo'

eval `dircolors /path/to/dircolorsdb`

# Terminals to install

Xterm2: https://www.iterm2.com/downloads.html



