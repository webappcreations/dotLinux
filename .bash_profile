#
# ~/.bash_profile
#

#turn off shell pause to make strg-s possible in vim...
stty -ixon

#change caps to escape
setxkbmap -option caps:escape &


for DOTFILE in `find $HOME/Linux/dotfiles`
do
  [ -f “$DOTFILE” ] && source “$DOTFILE”
done

export PATH="$PATH:$HOME/Linux/dotfiles/scripts:$HOME/.config/composer/vendor/bin";

export DOTFILES="$HOME/Linux/dotfiles";
export SCRIPTS="$HOME/Linux/dotfiles/scripts";
