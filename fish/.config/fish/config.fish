/opt/homebrew/bin/brew shellenv | source

set -gx PATH $HOME/bin $PATH

set -gx EDITOR nvim
set -gx VISUAL nvim

abbr g git status

# GnuPG
# =====
gpg-connect-agent /bye ^/dev/null
set -gx SSH_AUTH_SOCK ~/.gnupg/S.gpg-agent.ssh

# direnv
# ======
direnv hook fish | source

# asdf
# ====
source /opt/homebrew/opt/asdf/libexec/asdf.fish
