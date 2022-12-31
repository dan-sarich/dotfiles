if [[ $TERM_PROGRAM != "Apple_Terminal" ]]; then
  export PATH=$PATH:/mnt/c/Users/dsari/AppData/Local/Programs/oh-my-posh/bin
  eval "$(oh-my-posh init zsh --config ~/easy-term.json)"
fi
