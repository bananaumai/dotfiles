# starship
starship init fish | source

# basic path setting
set -x PATH $HOME/bin $HOME/.local/bin $PATH

# direnv setting
eval (direnv hook fish)

# go setting
set -x GOENV_ROOT $HOME/.goenv
set -x PATH $GOPATH/bin $GOENV_ROOT/bin $GOENV_ROOT/shims $PATH
goenv init - | source

# ruby setting
set -x PATH $HOME/.rbenv/shims $PATH
rbenv init - | source

# python setting
set -x PATH $HOME/.pyenv/shims $PATH
pyenv init - | source

# node setting
set -x PATH $HOME/.nodenv/bin $PATH
set -x PATH $HOME/.nodenv/shims $PATH
status --is-interactive; and source (nodenv init -|psub)

# rust setting
set -x PATH $HOME/.cargo/bin $PATH

# alias
alias g='git'

# functions
function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
end

