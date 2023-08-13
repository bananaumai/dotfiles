# bananaumai dotfiles

## Requirements
[rcm](https://github.com/thoughtbot/rcm)

## Installation

```
$ INSTALL_DIR=<dir_to_install_dotfiles>
$ git clone git@github.com:bananaumai/dotfiles.git $INSTALL_DIR
$ cat <<EOL > $HOME/.rcrc
EXCLUDES="README.md LICENSE"
DOTFILES_DIRS="$INSTALL_DIR/dotfiles"
EOL
```
