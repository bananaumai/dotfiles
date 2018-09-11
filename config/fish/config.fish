function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
end

set -x GOPATH $HOME/go
set -x PATH $HOME/bin $HOME/.local/bin $HOME/.cargo/bin $HOME/.rbenv/shims $HOME/.goenv/bin $HOME/.pyenv/shims $GOPATH/bin $PATH

rbenv init - | source
pyenv init - | source
status --is-interactive; and source (nodenv init -|psub)
eval (direnv hook fish)
goenv rehash > /dev/null ^&1

alias g='git'
