# shell tools
alias zz='subl ~/.zshrc'
alias aa='subl ~/.aliases'
alias ff='subl ~/.functions'
alias zp='$EDITOR ~/.zshrc'
alias src='source ~/.zshrc'
alias cx='chmod +x'
alias e='subl .'

# shortcuts
alias la='ls -lA'
alias lh='ls -lAh'
alias o='open'
alias s='subl'
alias j='jekyll'

# networking
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

# rails
alias bi='bundle install'
alias rs='bundle exec rails s'
alias fs='bundle exec foreman start'
alias rc='bundle exec rails c'

# processes
alias mgd='mongod --dbpath ~/Documents/mongo_data'
alias sqld='mysql.server start'

# dev
alias xcode='open *.xcodeproj'
alias b='brew'

# env
alias mate='nocorrect mate'
alias wget='nocorrect wget'
alias nmap='nocorrect nmap'
alias excel='/Applications/Microsoft\ Office\ 2011/Microsoft\ Excel.app/Contents/MacOS/Microsoft\ Excel'

# geo
alias o2o='ogr2ogr'
alias oinfo='ogrinfo -so -al'