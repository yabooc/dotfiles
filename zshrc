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
plugins=(bundler command-not-found debian dircycle encode64 fasd git git-flow npm nyan rvm)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# My stuff
if [[ -f /lib/terminfo/x/xterm-256color ]];
then
    export TERM='xterm-256color'
fi

PATH=$HOME/.local/bin:$HOME/bin:$HOME/bin/grails-2.1.0/bin:/opt/vagrant/bin:$PATH

export GRAILS_HOME=$HOME/bin/grails-2.1.0
export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64

alias zr="source ~/.zshrc"

alias glt="git log --graph --pretty=format:'%Cred%h$Creset %C(cyan)%an%Creset - %C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"

alias open="xdg-open"

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
