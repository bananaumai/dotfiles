bindkey -e

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt sharehistory
setopt appendhistory
setopt incappendhistory


zstyle :compinstall filename "/home/yuta/.zshrc"
autoload -Uz compinit
compinitHISTFILE=~/.histfile


if [[ `which starship` ]]; then
  eval "$(starship init zsh)"
fi

if [[ `which peco` ]]; then
  function peco-select-history() {
    BUFFER=$(\history -n -r 1 | peco --query "$LBUFFER")
    CURSOR=$#BUFFER
    zle clear-screen
  }
  zle -N peco-select-history
  bindkey "^r" peco-select-history
fi
