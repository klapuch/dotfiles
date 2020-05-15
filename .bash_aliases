if [ -f ~/.bash_functions ]; then
    . ~/.bash_functions
fi

# Development
alias git=hub
alias php_tag='sh ~/php_ctags'
alias pvim='php_tag && vim'
function dc() {
	if [[ $# -eq 0 ]] ; then
		echo 'some message'
		exit 1
	fi
	docker-compose -p $1 up -d
}

# Tools
alias cz_sub='recode -f cp1250..utf8 $1'
alias ip='dig +short myip.opendns.com @resolver1.opendns.com'


# Shortcuts
alias dcs='docker stop $(docker ps -a -q)'
alias tmux='tmux -2'
alias remove_docker='docker rm -f $(docker ps -a -q) ; docker rmi -f $(docker images -q) && docker system prune && docker system prune --volumes'
alias up='sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade && sudo apt autoremove && sudo apt-get clean'
