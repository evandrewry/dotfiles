if [ -f "$HOME/.bashrc" ]; then
  source $HOME/.bashrc
fi

if [ -f /bin/zsh ]; then
	exec /bin/zsh -l
fi


