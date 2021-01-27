set -gx PATH ~/.dotfiles/bin $PATH
set -gx PATH $HOME/dev/cf-aws-login/bin $PATH
set -gx PATH $HOME/dev/cf-infra-stacks/bin $PATH
set -gx PATH $GOPATH/bin $PATH
set -gx PATH $HOME/.rbenv/shims $PATH
set -gx PATH ~/.npm-global/bin $PATH
set -gx GOPATH $HOME/dev/go
set -gx PATH $HOME/dev $PATH
set -gx PATH $HOME/bin $PATH
eval (direnv hook fish)
status --is-interactive; and source (rbenv init -|psub)
