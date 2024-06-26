# Convenient stuff
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias l="ls -Gal"
alias ls="ls -G"
alias ll="ls -Gal"
alias empties="find . -empty -type d -maxdepth 2"
tableflip() {
  echo "ï¼ˆâ•¯Â°â–¡Â°ï¼‰â•¯ â”»â”â”»";
}

alias pg="ps ax | grep -v grep | grep -i "
alias ip="ifconfig | grep 'inet '"

function profile {
  $EDITOR ~/.bash_profile && source ~/.bash_profile
}
function aliases {
  $EDITOR ~/.aliases && source ~/.aliases
}

alias df='df -h'
alias ducks='du -cksh * | sort -rn|head -11' # Lists folders and files sizes in the current folder
alias f='find . -iname'
alias gr='grep -r' # Recursive grep
alias m='less'
alias systail='tail -f /var/log/system.log'
alias top='top -o cpu'
# Shows most used commands, from: http://lifehacker.com/software/how-to/turbocharge-your-terminal-274317.php
alias profileme="history | awk '{print \$4}' | awk 'BEGIN{FS=\"|\"}{print \$1}' | sort | uniq -c | sort -n | tail -n 20 | sort -nr"

# Rails
alias sc="bundle exec rails c $@"
alias sd="bundle exec rails db $@"
alias ss="bundle exec rails s $@"

alias rmp="bundle exec rake db:migrate db:test:prepare"
alias migrate="bundle exec rake db:migrate"
alias reset_db="bundle exec rake db:migrate:reset"

function rlog {
  if [ -z "$1" ]; then
    tail -f -n80 ./log/development.log
  else
    tail -f -n80 ./log/$1.log
  fi
}

# Git
alias ch="git diff --ignore-space-at-eol | $EDITOR"
alias chc="git diff --cached --ignore-space-at-eol | $EDITOR"
alias current_branch="git symbolic-ref HEAD | cut -d / -f 3"
alias gaa="git add --all && git status"
alias gau="git add -u && git status"
alias gadd="git add --all && git status"
alias gap="git add --patch"
alias gb='git branch -v'
alias gbr="git for-each-ref --count=30 --sort=-committerdate refs/heads/ --format='%(refname)' | cut -d / -f 3-"
alias gca='git commit -v --all'
alias gcam='git commit --amend'
alias gcb='git checkout -b'
alias gcf="git checkout -f"
alias gch="git log ORIG_HEAD.. --stat --no-merges"
alias gci='git commit -v'
alias gcia='git commit -v --all'
alias gclean="git clean -dff && git submodule foreach git clean -dff"
alias gcm="git commit -m"
alias gcp="git checkout --patch"
alias gcv='git commit -v'
alias gd='git diff'
alias gdc='git diff --cached | $EDITOR'
alias gdh='git diff HEAD | $EDITOR'
alias gdm='git diff origin/master | $EDITOR'
alias gfd='git push -f origin head:canary'
alias git-user="$EDITOR ~/.gitconfig"
alias gl="git log --date=local"
alias gmm="git merge master"
alias gps="git pull && git submodule sync && git submodule update --init --recursive"
alias grc="git rebase --continue"
alias grim="git rebase --interactive master"
alias grm="git status | grep 'deleted:' | sed -e 's/^.*deleted: *//' -e 's/^/\"/g' -e 's/$/\"/g' | xargs -n1 git rm"
alias gs='git status'
alias gss='git status --short --branch'
alias gu="$EDITOR ~/.gitconfig"
alias gum="echo 'Resetting master to the latest origin/master...' && git fetch && git update-ref refs/heads/master origin/master"
alias rtd="git fetch && git log --abbrev-commit --no-merges --reverse --pretty=format:'%C(yellow)%h%Creset %C(bold)%s%C(green) %an' origin/hoist/sjc1b/production..origin/deployable"
alias sjcrtd=rtd
alias ungreen="git log --abbrev-commit --reverse --pretty=format:'%C(yellow)%h%Creset %C(bold)%s%Creset %an' origin/ci-master-distributed-latest..origin/master"

# Xavier's aliases
alias gis="git status"
alias goc="git checkout"
alias gic="git commit -m"
alias gia="git add"
alias gid="git diff --cached"
alias v="vim"

function gco {
  if [[ $# == 0 ]]; then
    git checkout master
  else
    git checkout "$@"
  fi
}

# Xcode
alias dxdd='echo "Deleting `cd ~/Library/Developer/Xcode; pwd`/DerivedData"; rm -rf ~/Library/Developer/Xcode/DerivedData'

# vim: filetype=sh
