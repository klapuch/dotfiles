
# Tools
alias cz_sub='recode -f cp1250..utf8 $1'
alias my_ip='dig +short myip.opendns.com @resolver1.opendns.com'

# Improvements
alias more=less
alias git=hub


# Shortcuts
alias dcs='docker stop $(docker ps -a -q)'
alias tmux='tmux -2'
alias remove_docker='docker rm -f $(docker ps -a -q) ; docker rmi -f $(docker images -q) && docker system prune && docker system prune --volumes'
alias up='sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade && sudo apt autoremove && sudo apt-get clean'
alias gti='git'
