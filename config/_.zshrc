# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"

DEFAULT_USER="djessup"

# Example aliases
alias zshconfig="o ~/.zshrc"
alias ohmyzsh="o ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx github brew vagrant)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/local/opt/ruby/bin:/usr/local/Cellar/groovy/2.1.1/libexec:/usr/local/share/npm/bin:/usr/local/share/python:/usr/local/Cellar/php53/5.3.22/bin/:/Users/djessup/pear/bin/:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/git/bin:~/bin

# Helpful Bash aliases
alias reload='source ~/.zshrc'
alias rmdsstores='find ./ -type f | grep .DS_Store | xargs rm'
alias ll='ls -lahGp'
alias l='ls -lhGp'
alias ..='cd ..'
alias flushdns="dscacheutil -flushcache;sudo killall -HUP mDNSResponder"

# Set an Editor of choice and allow easier editing of some key files
alias o="subl"

# open common file
alias hosts="o /etc/hosts"
alias bash_profile="o ~/.bash_profile"

# Copy current directory into clipboard
alias cpwd='printf "$PWD" | pbcopy'

alias pear="/Users/djessup/pear/bin/pear";

# common commands
alias cd-dev="cd /Users/djessup/Documents/Projects/Dev"

# Git commands
alias git-pullall="/Users/djessup/Documents/Projects/Dev/scripts/update_all_projects.sh"
alias git-mergefb="/Users/djessup/Documents/Projects/Dev/scripts/merge_feature_as_one_commit.sh"

# Obtain IP for a hostname
function ipfor(){
  dig +short $1 | grep -E '^[0-9.]+$' | head -1
}

# AutoJump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# Jenkins
alias jenkins-start="sudo launchctl load /Library/LaunchDaemons/org.jenkins-ci.plist"
alias jenkins-stop="sudo launchctl unload /Library/LaunchDaemons/org.jenkins-ci.plist"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export PATH="/usr/local/bin:$PATH"

### .net extensions
source dnvm.sh
