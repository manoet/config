echo "If you continue your current configuration may be overwritten."
read -p "Are you sure you want to continue? " -n 1 -r
echo    # move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
  # Fluxbox
  echo "Configuring Fluxbox"
  ln -f fluxbox/apps ~/.fluxbox/apps
  ln -f fluxbox/init ~/.fluxbox/init
  ln -f fluxbox/keys ~/.fluxbox/keys
  ln -f fluxbox/overlay ~/.fluxbox/overlay
  ln -f fluxbox/startup ~/.fluxbox/startup
  ln -f fluxbox/aurora.jpg ~/.fluxbox/aurora.jpg
  # Vim
  echo "Configuring Vim"
  ln -f vim/vimrc ~/.vimrc
  ln -f jellybeans.vim/colors/jellybeans.vim ~/.vim/colors/jellybeans.vim
  # Other scripts
  echo "Configuring other scripts"
  ln -s $(pwd)/scripts/ ~/.scripts
  # Termination
  echo "Done"
fi
