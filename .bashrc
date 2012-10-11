if [ -f "$HOME/.profile" ]; then
  source $HOME/.profile
fi

export PS1="\W \$ "