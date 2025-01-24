ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="sorin"

plugins=(git ruby rails macos history)

source $ZSH/oh-my-zsh.sh
source ~/.functions
source ~/.aliases

export LD_LIBRARY_PATH=/usr/local/lib
export GDAL_DRIVER_PATH=/usr/local/lib/gdalplugins
export ANDROID_HOME=/usr/local/share/android-sdk
export PATH=$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/emulator:$PATH
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/opt/homebrew/lib/ruby/gems/3.1.0/bin:$PATH"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
# Homebrew
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/opt/homebrew/bin:$PATH

# jekyll / github

# export SSL_CERT_FILE=/Users/coleman/.ssh/cacert.pemact
export JEKYLL_GITHUB_TOKEN='926c184e54e74e44a96961be0916f569e899d35d'

# EC2 API tools
# export JAVA_HOME="$(/usr/libexec/java_home)"
# export EC2_PRIVATE_KEY="$(/bin/ls "$HOME"/.ec2/pk-*.pem | /usr/bin/head -1)"
# export EC2_CERT="$(/bin/ls "$HOME"/.ec2/cert-*.pem | /usr/bin/head -1)"
export EC2_HOME="/usr/local/Library/LinkedKegs/ec2-api-tools/jars"

# PostgreSQL binaries
export PATH=/usr/local/pgsql/bin:$PATH

# Expand zsh history
HISTFILE=~/Dropbox/backups/histories/history.zsh
HISTSIZE=50000000
SAVEHIST=50000000

export FULCRUM_ANDROID=/Users/coleman/Documents/dev/fulcrum_android
export FULCRUM_IOS=/Users/coleman/Documents/dev/fulcrum_ios
export FULCRUM_WEB=/Users/coleman/Documents/dev/fulcrum
export FULCRUM_SITE=/Users/coleman/Documents/dev/fulcrumapp.com

export OGR_S57_OPTIONS="SPLIT_MULTIPOINT=ON,ADD_SOUNDG_DEPTH=ON,LNAM_REFS=ON"

# virtualenv
# source "/usr/local/bin/virtualenvwrapper.sh"
# export WORKON_HOME="/opt/virtual_env/"

# disable autocorrect
unsetopt correct_all

# added by travis gem
[ -f /Users/coleman/.travis/travis.sh ] && source /Users/coleman/.travis/travis.sh
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
