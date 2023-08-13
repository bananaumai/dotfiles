if status is-interactive
  # starship
  starship init fish | source

  # asdf
  source /opt/homebrew/opt/asdf/libexec/asdf.fish

  # functions
  function fish_user_key_bindings
    bind \cr 'peco_select_history (commandline -b)'
  end
end

source $HOME/.config/fish/local.fish
