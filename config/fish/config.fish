set -gx PATH ~/.dotfiles/bin $PATH
set -gx PATH ~/.npm-global/bin $PATH
set -gx PATH ~/.npm/bin $PATH
set -gx PATH $HOME/.rbenv/shims $PATH
set -gx PATH $HOME/.rbenv/bin $PATH
set -gx PATH $HOME/.rbenv/plugins/ruby-build/bin $PATH
set -gx GOPATH $HOME/dev/go
set -gx PATH /usr/local/go/bin $PATH
set -gx PATH $GOPATH/bin $PATH
set -gx PATH $HOME/dev $PATH
set -gx PATH $HOME/bin $PATH
eval (direnv hook fish)
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH
set -gx PATH /usr/local/kubebuilder/bin $PATH
set -gx PATH $HOME/.encore/bin $PATH
set -gx PATH $PATH $HOME/.krew/bin
status --is-interactive; and rbenv init - | source
