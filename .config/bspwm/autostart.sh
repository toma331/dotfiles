#! /bin/sh

xset b off

~/scripts/switch_mode.sh
polybar &
~/.fehbg
bash /home/bossy/.config/polybar/launch.sh --grayblocks
setxkbmap -layout us,ru -option grp:caps_toggle
xsetroot -cursor_name left_ptr
picom --backend glx --vsync -b
