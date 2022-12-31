export PATH=$PATH:/home/linuxbrew/.linuxbrew/bin
brew_path="/opt/homebrew/bin"
brew_opt_path="/opt/homebrew/opt"

[ -s "${brew_opt_path}/nvm/nvm.sh" ] && \. "${brew_opt_path}/nvm/nvm.sh"  # This loads nvm
[ -s "${brew_opt_path}/nvm/etc/bash_completion.d/nvm" ] && \. "${brew_opt_path}/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion