#!/bin/bash
xrandr --newmode "1280x1024_60.00"  109.00  1280 1368 1496 1712  1024 1027 1034 1063 -hsync +vsync
xrandr --addmode VGA1 "1280x1024_60.00"
xrandr --output VGA1 --mode "1280x1024_60.00"
xrandr --output LVDS1 --pos 1280x0
# Apparently there might be some alignment issues which can be fixed giving a new "auto"
xrandr --output VGA1 --auto
# Reconfiguring conky
killall conky
(conky -c .myconf/conkyrc &)
