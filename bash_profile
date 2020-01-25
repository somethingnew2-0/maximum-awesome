export GOPATH=$HOME/Development/go
export PATH=$HOME/bin:$GOPATH/bin:$PATH

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
