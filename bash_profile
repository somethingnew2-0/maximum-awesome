export EDITOR='vim'

export GOPATH=$HOME/Development/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$HOME/bin:$GOPATH/bin:$PATH:$GOROOT/bin

if [ -e $HOME/.cargo/env ]; then source $HOME/.cargo/env; fi
if [ -e $HOME/.nix-profile/etc/profile.d/nix.sh ]; then source $HOME/.nix-profile/etc/profile.d/nix.sh; fi

if [ -f $HOME/.bash_aliases ]
then
  source $HOME/.bash_aliases
fi

# vim: filetype=sh
gpgconf --launch gpg-agent
if [ -S "${HOME}/.gnupg/S.gpg-agent" ]; then
  export GPG_TTY=$(tty)
  export SSH_AUTH_SOCK=$( gpgconf --list-dirs agent-ssh-socket )
fi

alias ls='ls -G'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias gd='git diff'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gs='git status'
alias gau='git add -u'
alias gaa='git add -A'
alias gcm='git commit -m '
alias gca='git commit --amend'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gp='git pull'
alias gpf='git push --force'
alias gr='git restore'
alias python='python3'
alias pip='pip3'

# Eternal bash history.
# ---------------------
# Undocumented feature which sets the size to "unlimited".
# http://stackoverflow.com/questions/9457233/unlimited-bash-history
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
# Change the file location because certain bash sessions truncate .bash_history file upon close.
# http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login
export HISTFILE=~/.bash_eternal_history
# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
