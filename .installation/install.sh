
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew cask install iterm2
brew install vim
brew upgrade vim

brew install cmake
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall


if ! [ -n "$ZSH_VERSION" ]; then
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

	rm ../.zshrc
	mv ../.zshrc.pre-oh-my-zsh ../.zshrc
	rm ../.shell.pre-oh-my-zsh
fi

