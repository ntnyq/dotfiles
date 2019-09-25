# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# custom aliases
# alias st="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'"
alias st='open -a "Sublime Text"'
alias o='open'
alias no='node'
alias q='exit'
alias c='clear'
alias cls='clear'
alias gc='git-cz'
alias hs='hs -o -c-1 --log-ip' # TODO add option -s when log-ip enabled 

# Working directories
alias cdw='cd ~/Desktop/work'
alias cdp='cd ~/Desktop/playground'

# Language
alias py='python'
alias rb='ruby'

# Tmux
alias t='tmux'
alias tl='tmux ls'
alias tn='tmux new -s'
alias ta='tmux a -t' 
alias tk='tmux kill-session -t'
alias tka='tmux kill-server'

# Yarn
alias y='yarn'
alias yi='yarn init -y'
alias ya='yarn add'
alias yad='yarn add --dev'
alias yap='yarn add --peer'
alias yrm='yarn remove'
alias ycc='yarn cache clean'
alias yls='yarn list'
alias yu='yarn upgrade-interactive'
alias yul='yarn upgrade-interactive --latest'
alias ycls='yarn config list'
alias ycs='yarn config set'
alias ycg='yarn config get'
alias ycd='yarn config delete'
alias yga='yarn global add'
alias ygrm='yarn global remove'
alias ygu='yarn global upgrade'
alias ygls='yarn global list'
alias yd='yarn dev'
alias yb='yarn build'
alias ys='yarn serve'
alias yt='yarn test'

# Youtube-dl
alias dy_mp3='youtube-dl --extract-audio --audio-format mp3 --no-playlist'
alias dy='youtube-dl -f bestvideo+bestaudio'

# Config
export EDITOR='vim'
export MYVIMRC='~/.vimrc'

# Python3
# export PATH='/usr/local/share/python:$PATH'

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="/usr/local/opt/gettext/bin:$PATH"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# nvm use node
# source ~/.nvm/nvm.sh

# Flutter
export PATH=~/dev/flutter/bin:$PATH
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
export FLUTTER=$HOME/dev/flutter/bin:$PATH

# Android SDK
export PATH=$HOME/bin:/usr/local/bin:$PATH
export ANDROID_HOME=/Users/ntnyq/Library/Android/sdk

# Yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Libxml2
export PATH="/usr/local/opt/libxml2/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/libxml2/lib"
export CPPFLAGS="-I/usr/local/opt/libxml2/include"
export PKG_CONFIG_PATH="/usr/local/opt/libxml2/lib/pkgconfig"

# added by travis gem
[ -f /Users/ntnyq/.travis/travis.sh ] && source /Users/ntnyq/.travis/travis.sh

