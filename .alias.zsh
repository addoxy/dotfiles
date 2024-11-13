alias h="~"
alias ..='cd ..'
alias ...='cd ../../'
alias pg="cd ~/Personal-Github"
alias py='python3'
alias python='python3'

alias zshrc="nano ~/.zshrc"
alias reload="source ~/.zshrc"

alias gitx=_gitx

function _gitx() {
    if [ -z "$1" ]; then
        echo "Please provide a commit message."
        return 1
    fi

    git add .
    message="$(tr "[:lower:]" "[:upper:]" <<< ${1:0:1})${1:1}"
    git commit -m "$message"
    git push
};