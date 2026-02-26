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
source ~/.config/miscellaneous/dotfilePush.sh


# ----- Neovim ----- #
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
alias vi=nvim
alias nvim-update='nvim --headless "+Lazy! sync" +qa'


# ----- Opencode ----- #
alias oc='opencode'


# ----- Fuzzy Finder ----- #
# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"
# alias fzfd='__fzf_cd__' # TODO: Need to fix this, doesn't quite work.. For now, use `Alt + c`
alias fzf="fzf --preview='cat {}'"
# Use fd for the main 'fzf' command (ignores node_modules via .gitignore)
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --hidden --follow --exclude .git'
# Use fd for Ctrl+T (File search)
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
# Use fd for Alt+C (Directory-only search)
export FZF_ALT_C_COMMAND='fd --type d --strip-cwd-prefix --hidden --follow --exclude .git'


# ----- Tmux ----- #
alias tn='tmux new -s'
alias ta='tmux a -t'
alias tls='tmux ls'
alias tks='tmux kill-session -t'
alias tka='tmux kill-server'


# ----- Alias ----- #
alias open=explorer.exe
alias reload='source ~/.bashrc'
alias weather='curl wttr.in' # curl wttr.in/CityName
alias lg='lazygit'


# ----- Homebrew ----- #
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv bash)"
# Add the specific folder where Brew keeps the generic 'gcc' name to override older system version
LATEST_GCC=$(ls -1 $(brew --prefix)/bin/gcc-[0-9]* 2>/dev/null | sort -V | tail -n 1)
if [ -n "$LATEST_GCC" ]; then
    alias gcc="$LATEST_GCC"
    alias g++="${LATEST_GCC/gcc/g++}"
fi

