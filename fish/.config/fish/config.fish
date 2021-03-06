set -gx PATH $HOME/bin $PATH

set -gx EDITOR nvim
set -gx VISUAL nvim

set -gx GOPATH $HOME

gpg-connect-agent /bye ^/dev/null

set -gx SSH_AUTH_SOCK ~/.gnupg/S.gpg-agent.ssh
