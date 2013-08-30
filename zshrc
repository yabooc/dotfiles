# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="mh"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(bower bundler coffee colorize command-not-found debian encode64 extract fasd git git-flow lol node npm rvm safe-paste themes)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# My stuff
if [[ -f /lib/terminfo/x/xterm-256color ]];
then
    export TERM='xterm-256color'
fi

eval $(dircolors -b $HOME/.dircolors)

# Custom aliases
alias zr="source ~/.zshrc"

alias glt="git log --graph --pretty=format:'%Cred%h$Creset %C(cyan)%an%Creset - %C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"

# Quash output
alias open="xdg-open > /dev/null 2>&1"
alias gvim="gvim > /dev/null 2>&1"

# Easy copy/paste from XClipboard
alias cbc="xclip -selection clipboard"
alias cbp="xclip -o -selection clipboard"

# Alternate Sublime Text stuff
alias st="sublime"
alias stt="st ."

# Download all images from a 4chan thread
4chimg() {
  wget -O - $1 |
  grep -Eo 'images.4chan.org/[^"]+' |
  uniq |
  xargs wget
}

# Obtain placeholder from placekitten.com
catph() {
  curl http://placekitten.com/$1/$2
}

# curl headers only
headers() {
  curl -s -D - $1 -o /dev/null
}

# RVM and NVM stuff (ruby and node.js)
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
[[ -s "$HOME/Development/nvm/nvm.sh" ]] && source "$HOME/Development/nvm/nvm.sh"

# Java and Grails
export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
export GRAILS_HOME=$HOME/bin/grails-2.2.3

# Updated path
PATH=$HOME/.local/bin:$HOME/bin:$GRAILS_HOME/bin:/opt/vagrant/bin:$PATH

