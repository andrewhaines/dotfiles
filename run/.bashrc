# Settings

# Vim as system editor
# export EDITOR='vim'

# Aliases
# alias tmuxr='sh ~/tmux-rails/launch.sh'
tmuxr () {
  eval "sh ~/tmux-rails/launch.sh $1"
}

# Project aliases
# alias tekne='cd ~/Projects/tekne/'

# Timezone settings
TZ='America/New_York'

# Ruby settings
# export PATH="$HOME/.rbenv/bin:$PATH"
# eval "$(rbenv init -)"

# MySQL settings
MYSQL=/usr/local/mysql/bin
export PATH=$PATH:$MYSQL
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH

# Terminal theme settings
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
