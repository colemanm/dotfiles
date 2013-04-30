# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="sorin"
DISABLE_AUTO_UPDATE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

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
HISTSIZE=500000
SAVEHIST=500000

source ~/.functions
source ~/.aliases

source ~/.private
