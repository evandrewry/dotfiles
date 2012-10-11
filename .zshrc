#!/bin/zsh

#autojump
export FPATH="$FPATH:/opt/local/share/zsh/site-functions/"
autoload -U compinit; compinit

if [ -f "$HOME/.profile" ]; then
  source $HOME/.profile
fi


#autocomplete
autoload -U compinit
compinit
setopt completealiases
zstyle ':completion:*' menu select
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'

#history
export HISTSIZE=2000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE

#autocd
setopt autocd

#auto-correction
setopt correctall

#extended globbing
setopt extendedglob 

#custom prompt
setopt prompt_subst
autoload colors zsh/terminfo
colors

function __git_rprompt {
  local DIRTY="%{$fg[yellow]%}"
  local CLEAN="%{$fg[green]%}"
  local UNMERGED="%{$fg[red]%}"
  local RESET="%{$terminfo[sgr0]%}"
  git rev-parse --git-dir >& /dev/null
  if [[ $? == 0 ]]
  then
    echo -n "["
    if [[ `git ls-files -u >& /dev/null` == '' ]]
    then
      git diff --quiet >& /dev/null
      if [[ $? == 1 ]]
      then
        echo -n $DIRTY
      else
        git diff --cached --quiet >& /dev/null
        if [[ $? == 1 ]]
        then
          echo -n $DIRTY
        else
          echo -n $CLEAN
        fi
      fi
    else
      echo -n $UNMERGED
    fi
    echo -n `git branch | grep '* ' | sed 's/..//'`
    echo -n $RESET
    echo -n "]"
  fi
}

function __git_lprompt {
  local DIRTY="%{$fg[yellow]%}"
  local CLEAN="%{$fg[green]%}"
  local UNMERGED="%{$fg[red]%}"
  local NONGIT="%{$fg[blue]%}"
  local RESET="%{$terminfo[sgr0]%}"
  git rev-parse --git-dir >& /dev/null
  if [[ $? == 0 ]]
  then
    if [[ `git ls-files -u >& /dev/null` == '' ]]
    then
      git diff --quiet >& /dev/null
      if [[ $? == 1 ]]
      then
        echo -n $DIRTY
      else
        git diff --cached --quiet >& /dev/null
        if [[ $? == 1 ]]
        then
          echo -n $DIRTY
        else
          echo -n $CLEAN
        fi
      fi
    else
      echo -n $UNMERGED
    fi
    echo -n '%~ %# '
    echo -n $RESET
  else
	echo -n $NONGIT
    echo -n '%~ %# '
    echo -n $RESET
  fi
}

export PS1='$(__git_lprompt)'
export RPS1='$(__git_rprompt)'

fortune -as
