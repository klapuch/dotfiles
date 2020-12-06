function dc() {
	if [[ $# -eq 0 ]] ; then
		exit 1
	fi
	docker-compose -p $1 up -d
}

secret () {
	output=~/"${1}".$(date +%s).enc
	gpg --encrypt --armor --output ${output} -r $KEYID "${1}" && echo "${1} -> ${output}"
}

reveal () {
	output=$(echo "${1}" | rev | cut -c16- | rev)
	gpg --decrypt --output ${output} "${1}" && echo "${1} -> ${output}"
}

#
# # ex - archive extractor
# # usage: ex <file>
ex () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
