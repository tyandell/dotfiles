#!/bin/sh

# Install installer dependencies.
brew install stow

# GnuPG
# =====
brew install gnupg
brew install pinentry-mac
stow --no-folding gnupg
chmod 700 ~/.gnupg
chmod 600 ~/.gnupg/*

# Fish
# ====
brew install fish
curl -L -o ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
stow --no-folding fish
mkdir ~/bin

# Neovim
# ======
brew install neovim
curl -L -o ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
stow --no-folding neovim
nvim +PlugInstall +qa

# Git
# ===
brew install git
stow --no-folding git
curl -L -o ~/.config/git/ignore --create-dirs https://raw.githubusercontent.com/github/gitignore/master/Global/macOS.gitignore

# direnv
# ======
brew install direnv

# asdf
# ====
brew install asdf
stow --no-folding asdf
asdf plugin add ruby
asdf plugin add nodejs
asdf plugin add golang
asdf plugin add yarn

# ---

fish -c "fisher update"
asdf install
