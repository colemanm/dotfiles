ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="sorin"

plugins=(history)

source $ZSH/oh-my-zsh.sh
source ~/.functions
source ~/.aliases

# Homebrew
export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";
fpath[1,0]="/opt/homebrew/share/zsh/site-functions";
PATH="/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin"; export PATH;
[ -z "${MANPATH-}" ] || export MANPATH=":${MANPATH#:}";
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";

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

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/coleman/.cache/lm-studio/bin"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/coleman/.lmstudio/bin"
# End of LM Studio CLI section

