if [ -f ~/.bash_functions ]; then
    . ~/.bash_functions
fi

# PostgreSQL
alias pg_connect='psql -h localhost -U postgres -W'


# Development
alias cu='composer update'
alias cud='composer dump-autoload -o -a'
alias php_tag='sh ~/php_ctags'
alias pvim='php_tag && vim'


# Current development
alias initLocal='sudo rm -rf temp/ && build/build initLocal && sudo chmod 0777 -R temp log'
alias sfe='BACKEND_URL=http://localhost/spider-backend/public npm start'


# Tools
alias cz_sub='recode -f cp1250..utf8 $1'
alias chint='ping www.google.com'
alias ip='dig +short myip.opendns.com @resolver1.opendns.com'


# Shortcuts
alias tmux='tmux -2'
alias ..='cd ..'
alias c='clear'
alias e='exit'
alias remove_docker='docker rm $(docker ps -a -q) && docker rmi $(docker images -q)'
alias cp='cp -v'
alias mv='mv -v'
alias ln='ln -v'
alias rm='rm -v'
alias ll='ls -lha'
alias la='ls -A'
alias l='ls -CF'
alias up='sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade && sudo apt-get clean'
