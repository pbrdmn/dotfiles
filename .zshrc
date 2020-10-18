export EDITOR='vim'
export ZSH="/Users/philip/.oh-my-zsh"
ZSH_THEME="theunraveler"

plugins=(git brew osx zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# aliases
alias zshc="vi ~/.zshrc && zshr"
alias zshr="source ~/.zshrc"
alias omzc="vi ~/.oh-my-zsh"
alias omzr="source ~/.oh-my-zsh"

# git
alias git=hub
alias ga="git add -p"
alias gaa="git add ."
alias gc="git commit -m"
alias gca="git commit --amend"
alias gcan="git commit --amend --no-edit"
alias gcb="git checkout cb"
alias gco="git checkout"
alias gd="git diff --staged"
alias gf="git fetch"
alias gl="git log --graph --pretty=format:'%C(green)%h%C(cyan)%d%C(bold white) %s %Creset%C(magenta)- %an, %C(dim)%ar%Creset'"
alias gm="git checkout main"
alias gpd="git pull"
alias gpu="git push"
alias gpf="git push --force"
alias gr="git rebase"
alias grc="git rebase --continue"
alias grom="git rebase origin/main"
alias gs="git status"

# misc
alias entry="~/captains-log/entry.sh"
alias dc="docker-compose"
alias k="kubectl"
alias icloud="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs"



export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
