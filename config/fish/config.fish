function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
end

rbenv init - | source
pyenv init - | source
goenv init - | source

set -x PATH $HOME/.rbenv/shims $HOME/.pyenv/shims $HOME/.goenv/shims $PATH
