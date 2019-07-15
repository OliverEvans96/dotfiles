[[ -f ~/.Xresources ]] && xrdb -merge I$HOME ~/.Xresources
export PATH="$HOME/local/bin:$PATH"
exec i3
