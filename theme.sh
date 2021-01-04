#! /bin/bash

HOME="/home/naz"
AUR="$HOME/aur"
CONFIG="$HOME/.config"
THEMES="$HOME/.themes"
OOMOX="$AUR/oomox/pkg/oomox/opt/oomox"
WALLPAPERS="$HOME/images/wallpaper"

feh --bg-fill "$WALLPAPERS/textured.jpg" && wal -f base16-materialer

{
	killall files, firefox, spotify, polybar
	spicetify update
	oomox-cli -d true -o pywal -t $THEMES $OOMOX/scripted_colors/xresources/xresources
	$OOMOX/plugins/icons_gnomecolors/gnome-colors-icon-theme/change_color.sh -o pywal $OOMOX/scripted_colors/xresources/xresources
	$AUR/intellijPywal/intellijPywalGen.sh $CONFIG/JetBrains/DataGrip2020.3
} > /dev/null 2>&1

spotify > /dev/null 2>&1 &
$CONFIG/polybar/polybar.sh > /dev/null 2>&1 &

sleep 1
rm -rf $PWD/blob_storage
