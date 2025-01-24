# Shell / Environment
alias zz='code ~/.zshrc'
alias aa='code ~/.aliases'
alias ff='code ~/.functions'
alias hg='history | grep'
alias hh='history | tail -40'
alias ha='history | grep -C 3'
alias src='source ~/.zshrc'
alias cx='chmod +x'
alias e='atom .'
alias c='code .'
alias ee='atom'
alias lf="ls -l | egrep -v '^d'"
alias ldir="ls -l | egrep '^d'"
alias nr="repl.history"

# Vagrant
alias vu="vagrant up"
alias vh="vagrant halt"
alias vr="vagrant reload"
alias vd="vagrant destroy"
alias vs="vagrant ssh"

# SSH
alias sshconf='ee ~/.ssh/config'

# Shortcuts
alias la='ls -lA'
alias lh='ls -lAh'
alias o='open'
alias s='subl'
alias jr='make clean && bundle exec jekyll serve --watch --config _config_dev.yml --incremental --future'
alias jrf='make clean && make resetmeta && bundle exec jekyll serve --watch --config _config_dev.yml --incremental --future'
alias j='bundle exec jekyll'
alias bw='open -a Byword.app'
alias bebp='bundle exec ./blog.rb post'
alias bebl='bundle exec ./blog.rb link'
alias bebb='bundle exec ./blog.rb book'

# Networking
alias flush='sudo killall -HUP mDNSResponder'
alias ip='curl icanhazip.com'
alias fdns='dscacheutil -flushcache'

# git
alias git='hub'
alias gp='git pull'
alias gs='git status'
alias gc='git clone'
alias gb='git branch -a'
alias ga='git add --all'
alias gdd='git branch -d'
alias gr='git remote show origin'
alias gpd='git push origin dev'
alias gpm='git push origin master'
alias gdiff='git diff'
alias gdiffc='git diff --cached'
alias gditch='git reset --hard'
alias gditchall='git reset --hard && git clean -fd'
alias ggl='git log'

# Rails
alias bi='bundle install'
alias rs='bundle exec rails s'
alias fs='bundle exec foreman start'
alias rc='bundle exec rails c'

# Processes
alias mgd='mongod --dbpath ~/Documents/mongo_data'
alias sqld='mysql.server start'
alias sqlstop='mysql.server stop'

# Dev
alias xcode='open *.xcodeproj'
alias b='brew'

alias excel='/Applications/Microsoft\ Office\ 2011/Microsoft\ Excel.app/Contents/MacOS/Microsoft\ Excel'

# Geo
alias o2o='ogr2ogr'
alias oinfo='ogrinfo -so -al'

# Inkscape
alias inkscape='/Users/coleman/Applications/Inkscape.app/Contents/Resources/bin/inkscape'
alias inkscape-bin='/Users/coleman/Applications/Inkscape.app/Contents/Resources/bin/inkscape-bin'
