#!/usr/bin/env bash

# Path to here
export PROFILE="$HOME/.bash_profile"

# Path to the bash it configuration
export BASH_IT="$HOME/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='bobby'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set the editor
export EDITOR='/usr/bin/vim'

# Set JAVA_HOME
export JAVA_HOME=$(/usr/libexec/java_home)

# Add some PATHs
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:/usr/local/sbin"

# Load Bash It
source $BASH_IT/bash_it.sh

test -r /sw/bin/init.sh && . /sw/bin/init.sh

#### Google Cloud SDK Updates ####
# The next line updates PATH for the Google Cloud SDK.
source "$HOME/workspace/google-cloud-sdk/path.bash.inc"

# The next line enables bash completion for gcloud.
source "$HOME/workspace/google-cloud-sdk/completion.bash.inc"

# Go Version Manager
export GVM_ROOT="$HOME/.gvm"
export PATH="$PATH:$HOME/.gvm/bin"

# Maven and ANT memory options
export MAVEN_OPTS="-Xmx4096m -Xss1024m -XX:MaxPermSize=128m"
export ANT_OPTS="-Xms512m -Xmx1024m"

# Homebrew github token
source "$HOME/.homebrew_github_token"

# The fuck?
eval $(thefuck --alias)

# vi mode!
# set -o vi

# Virtualenv Wrapper setup
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/workspace
source /usr/local/bin/virtualenvwrapper.sh

# NVM stuff
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# WINE & STEAM
alias steam='WINEARCH=win32 WINEPREFIX=~/.wine32 wine ~/.wine32/drive_c/Program\ Files/Steam/Steam.exe'

alias pipclean="pip list | cut -d' ' -f1 | xargs pip uninstall -y"
