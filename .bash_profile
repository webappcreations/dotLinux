#
# ~/.bash_profile
#

#turn off shell pause to make strg-s possible in vim...
stty -ixon

#change caps to escape
setxkbmap -option caps:escape &


for DOTFILE in `find $HOME/dotLinux`
do
  [ -f “$DOTFILE” ] && source “$DOTFILE”
done

export PATH="$PATH:$HOME/$DOTFILE/Linux/scripts:$HOME/.config/composer/vendor/bin";

export DOTFILES="$HOME/$DOTFILE/Linux/";
export SCRIPTS="$HOME/$DOTFILE/Linux/scripts";
