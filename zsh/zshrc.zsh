ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="sorin"

plugins=(git ruby rails macos history)

source $ZSH/oh-my-zsh.sh
source ~/.functions
source ~/.aliases
source ~/.private

export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/opt/homebrew/lib/ruby/gems/3.1.0/bin:$PATH"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

# Homebrew
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/opt/homebrew/bin:$PATH

# rbenv
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/bin:$PATH" 

# PostgreSQL binaries
export PATH=/usr/local/pgsql/bin:$PATH

# Expand zsh history
HISTFILE=~/Dropbox/backups/histories/history.zsh
HISTSIZE=50000000
SAVEHIST=50000000

export OGR_S57_OPTIONS="SPLIT_MULTIPOINT=ON,ADD_SOUNDG_DEPTH=ON,LNAM_REFS=ON"

# disable autocorrect
unsetopt correct_all

# added by travis gem
[ -f /Users/coleman/.travis/travis.sh ] && source /Users/coleman/.travis/travis.sh
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/coleman/.cache/lm-studio/bin"
