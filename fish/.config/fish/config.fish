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
if test -z $ASDF_DATA_DIR
    set _asdf_shims "$HOME/.asdf/shims"
else
    set _asdf_shims "$ASDF_DATA_DIR/shims"
end
if not contains $_asdf_shims $PATH
    set -gx --prepend PATH $_asdf_shims
end
set --erase _asdf_shims
