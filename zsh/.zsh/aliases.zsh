alias ngrok="cd /Applications && ./ngrok http 3000"
alias gp="git pull --rebase --autostash"
alias yb="yarn build"
alias yd="yarn dev --helmenv"

# add a second alias in case you tend to miss keys :)
export PNPM_HOME="/Users/dsarich/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
export ZSH="$HOME/.zsh"

alias np=pnpm
alias nd="np dev"
alias nb="np build"
alias ns="np start"
alias sb="np storybook --port 3002"

alias src="source ~/.zshrc"