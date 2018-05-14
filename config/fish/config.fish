function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
end

rbenv init - | source
pyenv init - | source
status --is-interactive; and source (nodenv init -|psub)
eval (direnv hook fish)

set -x PATH $HOME/.local/bin $HOME/.rbenv/shims $HOME/.pyenv/shims $HOME/go/bin $PATH

set -x GOPATH $HOME/go
set -x GOROOT /usr/local/Cellar/go/1.9.2/libexec

alias g='git'
