# ----- Homebrew ----- #
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv bash)"
# Add the specific folder where Brew keeps the generic 'gcc' name to override older system version
LATEST_GCC=$(ls -1 $(brew --prefix)/bin/gcc-[0-9]* 2>/dev/null | sort -V | tail -n 1)
if [ -n "$LATEST_GCC" ]; then
    alias gcc="$LATEST_GCC"
    alias g++="${LATEST_GCC/gcc/g++}"
fi


# ----- Starship ----- #
eval "$(starship init bash)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml

# ----- Python ----- #
alias pyenvc='python3 -m venv .venv'
alias pyenv='source ./.venv/bin/activate'


# ----- Go ----- #
# Add Go binaries to PATH (for installed tools like gopls)
export PATH="$(brew --prefix)/opt/go/libexec/bin:$PATH"


# ----- NVM / NPM ----- #
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# ----- Angular ----- #
# Load Angular CLI autocompletion.
source <(ng completion script)


# ----- Config ----- #
# Enable custom funcs
source ~/.config/saved-pwd/functions
source ~/.config/docs/functions
source ~/.config/miscellaneous/dotfilePush.sh
# Allow cd by just typing the path
shopt -s autocd
# Enable up/down arrow history search for matching prefixes
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
# Improve output color of common commands
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
# Smart Tab-Completion (For Git, SSH, etc.)
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi


# ----- Neovim ----- #
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


# ----- Lazygit ----- #
alias lg='lazygit'


# ----- Git ----- #
alias gl='git pull'
alias gp='git push'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gcmsg='git commit message -m'
alias gaa='git add -all'
alias gs='git status'
alias gss='git status -sb'
alias gsv='git status -vv'


# ----- Alias ----- #
alias open=explorer.exe
alias reload='source ~/.bashrc'
alias weather='curl wttr.in/Dubuque?u && echo -e "" && curl v2.wttr.in/Dubuque?u'
alias l='ls -lha'


# ----- Startup ----- #
# Lightweight welcome script
welcome_info() {
    # Text colors
    local teal='\033[38;2;139;213;202m'
    local mauve='\033[38;2;198;160;246m'
    local peach='\033[38;2;245;169;127m'
    local white='\033[1;37m'

    local art_color=$teal
    local user_color=$mauve
    local title_color=$peach
    local value_color=$white
    local nc='\033[0m' # No Color

    # Gather static details
    local user_host="$(whoami)@$(hostname)"
    local os_info="$(uname -sr)"
    local date_time="$(date '+%A, %b %d @ %I:%M %p')"

    # Fetch the custom formatted single-line current weather
    local quick_weather=""
    if command -v curl >/dev/null 2>&1; then
        quick_weather=$(curl -s --max-time 1.5 "wttr.in/Dubuque?u&format=%c+%t" 2>/dev/null)
    fi
    [ -z "$quick_weather" ] && quick_weather="Offline"

    # 1. Print the full ASCII art first
    echo ""
    printf "${art_color}⡏⠉⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿${nc}\n"
    printf "${art_color}⣿⠀⠀⠀⠈⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⠉⠁⠀⣿${nc}\n"
    printf "${art_color}⣿⣧⡀⠀⠀⠀⠀⠙⠿⠿⠿⠻⠿⠿⠟⠿⠛⠉⠀⠀⠀⠀⠀⣸⣿${nc}\n"
    printf "${art_color}⣿⣿⣷⣄⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿${nc}\n"
    printf "${art_color}⣿⣿⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⣴⣿⣿⣿⣿${nc}\n"
    printf "${art_color}⣿⣿⣿⡟⠀⠀⢰⣹⡆⠀⠀⠀⠀⠀⠀⣭⣷⠀⠀⠀⠸⣿⣿⣿⣿${nc}\n"
    printf "${art_color}⣿⣿⣿⠃⠀⠀⠈⠉⠀⠀⠤⠄⠀⠀⠀⠉⠁⠀⠀⠀⠀⢿⣿⣿⣿${nc}\n"
    printf "${art_color}⣿⣿⣿⢾⣿⣷⠀⠀⠀⠀⡠⠤⢄⠀⠀⠀⠠⣿⣿⣷⠀⢸⣿⣿⣿${nc}\n"
    printf "${art_color}⣿⣿⣿⡀⠉⠀⠀⠀⠀⠀⢄⠀⢀⠀⠀⠀⠀⠉⠉⠁⠀⠀⣿⣿⣿${nc}\n"
    printf "${art_color}⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿${nc}\n"
    printf "${art_color}⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿${nc}\n"
    echo ""

    # 2. Print the text information blocks stacked below the art
    printf "  ${user_color}%s${nc}\n" "$user_host"
    printf "  ${title_color}OS      ${value_color}%s${nc}\n" "$os_info"
    printf "  ${title_color}Time    ${value_color}%s${nc}\n" "$date_time"
    printf "  ${title_color}Weather ${value_color}%s${nc}\n" "$quick_weather"
    echo ""
}
# Run the function on shell initialization
welcome_info
