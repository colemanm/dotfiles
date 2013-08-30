# Shell / Environment
alias zz='subl ~/.zshrc'
alias aa='subl ~/.aliases'
alias ff='subl ~/.functions'
alias src='source ~/.zshrc'
alias cx='chmod +x'
alias e='subl .'
alias ee='subl'
alias lf="ls -l | egrep -v '^d'"
alias ldir="ls -l | egrep '^d'"

# Vagrant
alias vu="vagrant up"
alias vh="vagrant halt"
alias vr="vagrant reload"
alias vd="vagrant destroy"

# SSH
alias sshconf='ee ~/.ssh/config'
source ~/.servers

# Shortcuts
alias la='ls -lA'
alias lh='ls -lAh'
alias o='open'
alias s='subl'
alias j='jekyll'
alias js='jekyll serve --watch'

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
alias gr='git remote show origin'
alias gpd='git push origin dev'
alias gpm='git push origin master'
alias gpg='git push origin gh-pages'

# Rails
alias bi='bundle install'
alias rs='bundle exec rails s'
alias fs='bundle exec foreman start'
alias rc='bundle exec rails c'

# Processes
alias mgd='mongod --dbpath ~/Documents/mongo_data'
alias sqld='mysql.server start'

# Dev
alias xcode='open *.xcodeproj'
alias b='brew'

# Env
alias mate='nocorrect mate'
alias wget='nocorrect wget'
alias nmap='nocorrect nmap'
alias vpce='nocorrect vpce'
alias excel='/Applications/Microsoft\ Office\ 2011/Microsoft\ Excel.app/Contents/MacOS/Microsoft\ Excel'

# Geo
alias o2o='ogr2ogr'
alias oinfo='ogrinfo -so -al'