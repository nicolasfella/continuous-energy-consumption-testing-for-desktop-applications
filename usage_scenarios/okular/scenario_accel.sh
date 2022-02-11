#!/usr/bin/env bash

startTime=$(date +%s%N)
elapsed=0

syncUp() {
    elapsed=$((elapsed + ($1 * 1000000000)))
    delta=$(echo "scale=10; (($startTime + $elapsed) - $(date +%s%N)) / 1000000000" | bc)
    echo "Sleep" $delta
    sleep $delta
}

qdbus org.kde.okular-`pidof okular` /okular org.kde.okular.openDocument /home/seadmin/tools/okular/data/20yearsofKDE.pdf
syncUp 5

# Jump to page 33
xdotool key alt+g
xdotool key alt+g
syncUp 1
xdotool type 33
syncUp 1
xdotool key Return
syncUp 10

# Add bookmark
xdotool key alt+b
xdotool key alt+a
syncUp 5

# Go next
xdotool key alt+g
xdotool key alt+n
syncUp 1
xdotool key alt+g
xdotool key alt+n
syncUp 1
xdotool key alt+g
xdotool key alt+n
syncUp 1
xdotool key alt+g
xdotool key alt+n
syncUp 1
xdotool key alt+g
xdotool key alt+n
syncUp 1
xdotool key alt+g
xdotool key alt+n
syncUp 1

# Go previous
xdotool key alt+g
xdotool key alt+p
syncUp 1
xdotool key alt+g
xdotool key alt+p
syncUp 1
xdotool key alt+g
xdotool key alt+p
syncUp 1
xdotool key alt+g
xdotool key alt+p
syncUp 1
xdotool key alt+g
xdotool key alt+p
syncUp 1
xdotool key alt+g
xdotool key alt+p
syncUp 10

# Jump to page 100
xdotool key alt+g
xdotool key alt+g
syncUp 1
xdotool type 100
syncUp 1
xdotool key Return
syncUp 10

# Add bookmark
xdotool key alt+b
xdotool key alt+a
syncUp 5

# Find 'KDE'
xdotool key alt+e
xdotool key alt+f
syncUp 1
xdotool type KDE
syncUp 1
xdotool key alt+n
syncUp 1
xdotool key alt+n
syncUp 1
xdotool key alt+n
syncUp 1
xdotool key alt+n

# Find 'community'
syncUp 5
xdotool key BackSpace
xdotool key BackSpace
xdotool key BackSpace
syncUp 1
xdotool type community
syncUp 1
xdotool key alt+n
syncUp 1
xdotool key alt+n
syncUp 1
xdotool key alt+n
syncUp 1
xdotool key alt+n
xdotool key Escape
syncUp 10

# Zoom in
xdotool key alt+v
xdotool key alt+i
syncUp 1
xdotool key alt+v
xdotool key alt+i
syncUp 1
xdotool key alt+v
xdotool key alt+i
syncUp 5

# go next
xdotool key alt+g
xdotool key alt+n
syncUp 5

#zoom out

xdotool key alt+v
xdotool key alt+o
syncUp 1
xdotool key alt+v
xdotool key alt+o
syncUp 1
xdotool key alt+v
xdotool key alt+o
syncUp 5

# Enter presentation mode
xdotool key alt+v
xdotool key alt+r
syncUp 1

# Go next
xdotool key Right
syncUp 1
xdotool key Right
syncUp 1
xdotool key Right
syncUp 1
xdotool key Right
syncUp 1

# Exit presentation mode
xdotool key Escape
syncUp 10

# rotate 360
xdotool key alt+v
xdotool key alt+e
xdotool key alt+l
syncUp 5
xdotool key alt+v
xdotool key alt+e
xdotool key alt+l
syncUp 5
xdotool key alt+v
xdotool key alt+e
xdotool key alt+l
syncUp 5
xdotool key alt+v
xdotool key alt+e
xdotool key alt+l
syncUp 5

# Show document properties
xdotool key alt+f
xdotool key alt+p
xdotool key alt+p
xdotool key Return
syncUp 10
xdotool key Escape

# Jump to document start
xdotool key alt+g
xdotool key alt+o
syncUp 10

# Next bookmark
xdotool key alt+b
xdotool key alt+n
syncUp 5
xdotool key alt+b
xdotool key alt+n
syncUp 5

# Jump to document end
xdotool key alt+g
xdotool key alt+e

