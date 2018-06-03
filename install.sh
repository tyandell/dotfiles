#!/bin/sh
#
# Install dotfiles.
#

# Install install dependencies.
brew install stow

# fish
brew install fish
mkdir ~/bin
stow --no-folding fish

# neovim
brew install neovim
curl -L -o ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
stow --no-folding neovim
nvim +PlugInstall +qa

# gnupg
brew install gnupg
brew install pinentry-mac
stow --no-folding gnupg

# git
brew install git
stow --no-folding git
curl -L -o ~/.config/git/ignore --create-dirs https://raw.githubusercontent.com/github/gitignore/master/Global/macOS.gitignore
