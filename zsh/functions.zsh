# Server functions
function pgstart() {
  pg_ctl -D /opt/homebrew/var/postgres -l /opt/homebrew/var/postgres/server.log start
}
function pgstop() {
  pg_ctl -D /opt/homebrew/var/postgres stop
}

# Shell
function mkexec() {
  chmod +x $1
}
function remove-ext() {
  echo "$1" | sed "s/\([^.*]\)\.\(.*\)*$/\1/g"
}
function psa() {
  ps aux | grep $1
}

function geminfo() {
  gem query -r -d -n \^$1$
}

# Git
function gpo() {
  git push origin $1
}
function gco() {
  git checkout $1
}
function gpfind () {
  git log --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %C(cyan)(%cr) %C(blue)<%an>%Creset" --abbrev-commit --date=relative --patch -S"$1"
}
function gitmerged() {
  git branch --merged=master | grep -v master
}
function gitclean() {
  git branch -d $(git branch --merged=master | grep -v master)
}

# sshfs
# Remote Mount (sshfs)
# creates mount folder and mounts the remote filesystem
rmount() {
  local host folder mname
  host="${1%%:*}:"
  [[ ${1%:} == ${host%%:*} ]] && folder='' || folder=${1##*:}
  if [[ -n $2 ]]; then
    mname=$2
  else
    mname=${folder##*/}
    [[ "$mname" == "" ]] && mname=${host%%:*}
  fi
  if [[ $(grep -i "host ${host%%:*}" ~/.ssh/config) != '' ]]; then
    mkdir -p ~/mounts/$mname > /dev/null
    sshfs $host$folder ~/mounts/$mname -oauto_cache,reconnect,defer_permissions,negative_vncache,volname=$mname,noappledouble && echo "mounted ~/mounts/$mname"
  else
    echo "No entry found for ${host%%:*}"
    return 1
  fi
}

# Remote Umount, unmounts and deletes local folder (experimental, watch you step)
rumount() {
  if [[ $1 == "-a" ]]; then
    ls -1 ~/mounts/|while read dir
    do
      [[ -d $(mount|grep "mounts/$dir") ]] && umount ~/mounts/$dir
      [[ -d $(ls ~/mounts/$dir) ]] || rm -rf ~/mounts/$dir
    done
  else
    [[ -d $(mount|grep "mounts/$1") ]] && umount ~/mounts/$1
    [[ -d $(ls ~/mounts/$1) ]] || rm -rf ~/mounts/$1
  fi
}


# Git
function gcom() {
  git commit -m $1
}

function search() {
  find . -type f \( ! -path "*/.git/*" \) -exec grep -l "$1" {} \;
}

function his() {
  history | grep $1
}

function lg() {
  ls -lah | grep $1
}

function unlocal {
  username=`whoami`
  export PATH=`echo $PATH | sed -e "s/\/Users\/\$username\/local\/bin://"`
}

function addlocal {
  unlocal
  username=`whoami`
  export PATH="/Users/$username/local/bin:$PATH"
}

# Images
function tiny {
  tinypng $1 -r -k pSSDFdzgDt6djsGpp769wzdQ8jdzYspc
}

# GIS stuff
function cgdb() {
  createdb $1
  echo "CREATE EXTENSION postgis" | psql -d $1
  echo "Database $1 created."
}

function reprojshp() {
  ogr2ogr --config SHAPE_ENCODING UTF-8 -f "ESRI Shapefile" -t_srs EPSG:$1 -s_srs EPSG:$2 $4 $3
}

function quickmdbimport() {
  creategisdb $1
  ~/local/bin/ogr2ogr -f "PostgreSQL" PG:"host=localhost user=postgres dbname=$1" $1.mdb -lco GEOMETRY_NAME=geometry -skipfailures
}

# importing -- command dbname filename
function imposm2pgsql() {
  osm2pgsql -v -U postgres -s -S /usr/local/share/default.style -d $1 $2
}

function imposmimportdb() {
  creategisdb $2
  imposm --read --write --optimize --overwrite-cache -d $2 $1
  imposm -d $2 --deploy-production-tables
}

# Import OSM data in imposm format
# Usage: imposmimport dbname filename
function imposmimport() {
  imposm --read --write --optimize --overwrite-cache -d $1 $2
  imposm -d $1 --deploy-production-tables
}

function kv() {
  TAG="$1" && VALUE="$2" && curl -s "http://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%3B%28node%5B${TAG}%3D%27${VALUE}%27%5D%3B%29%3Bout%20100%3B" | python -mjson.tool
}
