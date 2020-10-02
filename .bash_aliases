# Development
alias git=hub
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

# Tools
alias cz_sub='recode -f cp1250..utf8 $1'
alias ip='dig +short myip.opendns.com @resolver1.opendns.com'


# Shortcuts
alias dcs='docker stop $(docker ps -a -q)'
alias tmux='tmux -2'
alias remove_docker='docker rm -f $(docker ps -a -q) ; docker rmi -f $(docker images -q) && docker system prune && docker system prune --volumes'
alias up='sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade && sudo apt autoremove && sudo apt-get clean'
alias gti='git'

