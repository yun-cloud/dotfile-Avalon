#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then 
    xrdb -merge $sysresources 
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then 
    xrdb -merge "$userresources" 
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

#twm &
#xclock -geometry 50x50-1+1 &
#xterm -geometry 80x50+494+51 &
#xterm -geometry 80x20+494-0 &
#exec xterm -geometry 80x66+0+0 -name login

# Set up an icon tray
trayer --edge top --align right --SetDockType true --SetPartialStruct true \
  --expand true --width 10 --transparent true --tint 0x191970 --height 12 &

# Set the background color and the cursor
xsetroot -cursor_name left_ptr -solid midnightblue &

# Set the resolution 
xrandr -s 1024x768

xscreensaver -no-splash & 
feh --bg-scale ~/Pictures/avalon.jpg &

exec xmonad
