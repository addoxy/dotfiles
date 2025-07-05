alias h="~"
alias ..='cd ..'
alias ...='cd ../../'
alias pg="cd ~/Personal-Github"
alias wg="cd ~/Work-Github"
alias py='python3'
alias python='python3'

alias zshrc="nano ~/.zshrc"
alias aliasz="nano ~/.alias.zsh"
alias reload="source ~/.zshrc"
alias setup-next="pnpm add -D prettier tailwindcss-debug-screens prettier-plugin-tailwindcss prettier-plugin-organize-imports tailwindcss-animate && pnpm dlx shadcn@latest init"

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
