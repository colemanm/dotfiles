ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="sorin"

plugins=(git ruby rails osx)

source $ZSH/oh-my-zsh.sh
source ~/.functions
source ~/.aliases
source ~/.private

export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/share/python:$PATH
export PATH=/usr/local/Cellar/php53/5.3.14/bin:$PATH
export PATH=/usr/local/Cellar/php53/5.3.14/sbin:$PATH
export PATH=~/local/geotools/bin:$PATH
export PATH=~/local/ogrtool/bin:$PATH
export PATH=~/local/gazetteer/bin:$PATH
export PATH=~/Dropbox/dev/mapnik-sdk/mapnik/bin:$PATH

export BREW_CELLAR=/usr/local/Cellar
export LD_LIBRARY_PATH=/usr/local/lib
export EDITOR=$HOME/.scripts/editor.sh

# EC2 API tools
export JAVA_HOME="$(/usr/libexec/java_home)"
export EC2_PRIVATE_KEY="$(/bin/ls "$HOME"/.ec2/pk-*.pem | /usr/bin/head -1)"
export EC2_CERT="$(/bin/ls "$HOME"/.ec2/cert-*.pem | /usr/bin/head -1)"
export EC2_HOME="/usr/local/Library/LinkedKegs/ec2-api-tools/jars"

# ry
export PATH="$HOME/local/bin:$PATH"
eval "$(ry setup)"

# PostgreSQL binaries
export PATH=/usr/local/pgsql/bin:$PATH

# Osmosis
export PATH=/Users/coleman/Dropbox/dev/osmosis/package/bin:$PATH

# Expand zsh history
HISTSIZE=50000000
SAVEHIST=50000000

export OGR_S57_OPTIONS="SPLIT_MULTIPOINT=ON,ADD_SOUNDG_DEPTH=ON,LNAM_REFS=ON"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
