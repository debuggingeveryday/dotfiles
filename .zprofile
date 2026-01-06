emulate sh -c 'source /etc/profile'


# Override config

alias vi="nvim"
alias vim="nvim"
alias ranger="yazi"
alias rm="trash"

picom &

$(cd $HOME/PROJECT/widgets && ./start.sh) &
feh --bg-scale $HOME/Pictures/Wallpaper/itachi-uchiha-dark-3840x2160-20031.jpg $HOME/Pictures/Wallpaper/2025-07-18-23:45:36-screenshot.png

# nice xwinwrap -g 1920x1080+0+0 -b -s -st -sp -nf -ov -fdt -d -ni -- mpv -wid WID --really-quiet --framedrop=vo --no-audio --panscan="1.0" --loop ~/Downloads/5590457-uhd_3840_2160_30fps.mp4

export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tool

