#!/bin/sh
#
# Install dotfiles.
#

# Install installer dependencies.
brew install stow

# gnupg
# =====
brew install gnupg
brew install pinentry-mac
stow --no-folding gnupg
chmod 700 ~/.gnupg
chmod 600 ~/.gnupg/*

# fish
# ====
brew install fish
curl -L -o ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
stow --no-folding fish
mkdir ~/bin

# neovim
# ======
brew install neovim
curl -L -o ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
stow --no-folding neovim
nvim +PlugInstall +qa

# git
# ===
brew install git
stow --no-folding git
curl -L -o ~/.config/git/ignore --create-dirs https://raw.githubusercontent.com/github/gitignore/master/Global/macOS.gitignore

# direnv
# ======
brew install direnv

# Other stuff
# ===========
brew install rbenv node go
npm i -g yarn

# Now that we have all the dependencies:
fish -c fisher update
