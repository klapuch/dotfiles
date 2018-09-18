if [ -f ~/.bash_functions ]; then
    . ~/.bash_functions
fi

# Development
alias git=hub
alias php_tag='sh ~/php_ctags'
alias pvim='php_tag && vim'
function proj() {
	FOO="$HOME/Projects/$1"
	cd ${FOO// /}
}
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
alias h='history'
alias tmux='tmux -2'
alias ..='cd ..'
alias remove_docker='docker rm -f $(docker ps -a -q) ; docker rmi -f $(docker images -q)'
alias ll='ls -lha'
alias la='ls -A'
alias l='ls -CF'
alias up='sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade && sudo apt autoremove && sudo apt-get clean'
alias csfd-apc-flush='ssh csfd-www1 '"'"'systemctl restart php7.2-fpm.service'"'"' & ssh csfd-www2 '"'"'systemctl restart php7.2-fpm.service'"'"''
alias csfd-redis-flush='ssh csfd-service1 '"'"'for i in {6379..6383}; do redis-cli -p $i flushall; done'"'"''
alias csfd-flush-apc='ansible-playbook /share/pmg/ansible/playbooks/apps/csfd.yml --tags flush'
alias csfd-flush-redis='ansible-playbook /share/pmg/ansible/playbooks/service.yml --tags flush'
