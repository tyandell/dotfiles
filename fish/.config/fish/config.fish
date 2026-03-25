/opt/homebrew/bin/brew shellenv | source

set -gx EDITOR nvim
set -gx VISUAL nvim

abbr g git status

# GnuPG
# =====
gpg-connect-agent /bye ^/dev/null
set -gx SSH_AUTH_SOCK ~/.gnupg/S.gpg-agent.ssh

# ---

set -gx PATH $HOME/.local/bin $HOME/bin $PATH
