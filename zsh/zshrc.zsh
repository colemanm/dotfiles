ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="sorin"

plugins=(git ruby rails osx history)

source $ZSH/oh-my-zsh.sh
source ~/.functions
source ~/.aliases
source ~/.private

export BREW_CELLAR=/usr/local/Cellar
export LD_LIBRARY_PATH=/usr/local/lib
export EDITOR=$HOME/.scripts/editor.sh

export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/share/python:$PATH
export PATH=~/local/geotools/bin:$PATH
export PATH=~/local/ogrtool/bin:$PATH
export PATH=~/local/gazetteer/bin:$PATH

# PostgreSQL binaries
export PATH=/usr/local/pgsql/bin:$PATH

# Osmosis
export PATH=/Users/coleman/Dropbox/dev/osmosis/package/bin:$PATH

# Expand zsh history
HISTSIZE=50000000
SAVEHIST=50000000

export OGR_S57_OPTIONS="SPLIT_MULTIPOINT=ON,ADD_SOUNDG_DEPTH=ON,LNAM_REFS=ON"

# disable autocorrect
unsetopt correct_all
