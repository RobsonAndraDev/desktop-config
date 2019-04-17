# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/robson/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="murilasso"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export PATH=/usr/local/bin:$PATH

tmux set -g prefix C-a
tmux set -g mouse on
tmux bind -n M-Left select-pane -L
tmux bind -n M-Right select-pane -R
tmux bind -n M-Up select-pane -U
tmux bind -n M-Down select-pane -D
tmux bind -n M-v splitw -v
tmux bind -n M-h splitw -h
# Set status bar
tmux set -g status-bg black
tmux set -g status-fg white
# Highlight active window
tmux set-window-option -g window-status-current-bg blue
# Set window notifications
tmux set -g visual-activity on
tmux setw -g monitor-activity on
# Automatically set window title
tmux setw -g automatic-rename
tmux unbind -n Down
tmux unbind -n Right

pdvpn() {
  cd /home/robson/openvpn/robson.andrade/
  echo "Fox#pd23" | xclip
  sudo openvpn robson.andrade.conf
  #echo $(myPass) #  | sudo openvpn robson.andrade.conf
}

pdvpnLocal() {
  cd /home/robson/openvpn/local/
  echo "Fox#pd23" | xclip
  sudo openvpn robson.andrade.conf
}

bar() {
  echo '/' | xclip
}

interrogation() {
 echo '?' | xclip
}

# alias dockcont="docker container"
cloudlog-w() {
  # tm=[[ "$2" != "" ]] && tm="5m" || tm="$2"
  awslogs get $(awslogs groups | grep $1) -s '2m' -w
}
cloudlog() {
  # tm=[[ "$2" != "" ]] && tm="5m" || tm="$2"
  awslogs get $(awslogs groups | grep $1) -s '2m'
}
kde-restart() {
  kquitapp5 plasmashell && kstart plasmashell
}

sudo cp ~/resolv.conf /etc/resolv.conf
