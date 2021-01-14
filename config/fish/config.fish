set -gx PATH ~/.dotfiles/bin $PATH
set -gx PATH $HOME/dev/contentful/cf-aws-login/bin $PATH
set -gx PATH ~/.npm-global/bin $PATH
set -gx GOPATH $HOME/dev/go
set -gx PATH $HOME/.rbenv/shims $PATH
set -gx PATH ~/bin $PATH
set -gx PATH $GOPATH/bin $PATH
set -gx PATH $HOME/dev $PATH
set -gx PATH /Users/mturki/dev/contentful/cf-infra-stacks/bin $PATH
eval (direnv hook fish)
status --is-interactive; and source (rbenv init -|psub)

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/mturki/Desktop/google-cloud-sdk/path.fish.inc' ]; . '/Users/mturki/Desktop/google-cloud-sdk/path.fish.inc'; end
