function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
end

rbenv init - | source
pyenv init - | source
eval (direnv hook fish)

set -x PATH $HOME/.local/bin $HOME/.rbenv/shims $HOME/.pyenv/shims $HOME/.nodebrew/current/bin $HOME/go/bin $HOME/.cargo/bin $PATH

set -x GOPATH $HOME/go
set -x GOROOT /usr/local/Cellar/go/1.8.1/libexec
