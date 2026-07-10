emulate sh -c 'source /etc/profile'

picom &
dunst &

(cd $HOME/PROJECT/widgets/ ; sh start.sh) &

# hsetroot -cover $HOME/Pictures/Wallpaper/wallpaper-1.jpg -extend $HOME/Pictures/Wallpaper/wallpaper-2.jpg &

feh --bg-scale $HOME/Pictures/Wallpaper/wallpaper-1.jpg $HOME/Pictures/Wallpaper/wallpaper-2.png &

# nice xwinwrap -g 1920x1080+0+0 -b -s -st -sp -nf -ov -fdt -d -ni -- mpv -wid WID --really-quiet --framedrop=vo --no-audio --panscan="1.0" --loop ~/Downloads/5590457-uhd_3840_2160_30fps.mp4

export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tool

