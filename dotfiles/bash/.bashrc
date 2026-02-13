# ----- OhMyBash ----- #
# Enable the subsequent settings only in interactive sessions
case $- in
  *i*) ;;
    *) return;;
esac

export OSH='/home/mwhee/.oh-my-bash'
OSH_THEME="agnoster"
completions=(git composer ssh)
aliases=(general)
plugins=(git bashmarks)
source "$OSH"/oh-my-bash.sh
# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"
# alias bashconfig="mate ~/.bashrc"
# alias ohmybash="mate ~/.oh-my-bash"


# ----- Python ----- #
alias pyenvc='python3 -m venv .venv'
alias pyenv='source ./.venv/bin/activate'


# ----- NVM / NPM ----- #
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# ----- Config ----- #
source ~/.config/saved-pwd/functions
source ~/.config/docs/functions


# ----- Alias ----- #
alias open=explorer.exe
alias reload='source ~/.bashrc'
alias weather='curl wttr.in' # curl wttr.in/CityName
alias vi=nvim
alias fzf="fzf --preview='cat {}'"
alias nvim-update='nvim --headless "+Lazy! sync" +qa'
