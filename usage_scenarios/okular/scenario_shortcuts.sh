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
xdotool key Ctrl+g
syncUp 1
xdotool type 33
syncUp 1
xdotool key Return
syncUp 10

# Add bookmark
xdotool key Ctrl+b
syncUp 5

# Go next
xdotool key Left
syncUp 1
xdotool key Left
syncUp 1
xdotool key Left
syncUp 1
xdotool key Left
xdotool key Left
syncUp 1
xdotool key Left
syncUp 1

# Go previous
xdotool key Right
syncUp 1
xdotool key Right
syncUp 1
xdotool key Right
syncUp 1
xdotool key Right
syncUp 1
xdotool key Right
syncUp 1
xdotool key Right
syncUp 10

# Jump to page 100
xdotool key Ctrl+g
syncUp 1
xdotool type 100
syncUp 1
xdotool key Return
syncUp 10

# Add bookmark
xdotool key Ctrl+b
syncUp 5

# Find 'KDE'
xdotool key Ctrl+f
syncUp 1
xdotool type KDE
syncUp 1
xdotool key F3
syncUp 1
xdotool key F3
syncUp 1
xdotool key F3
syncUp 1
xdotool key F3

# Find 'community'
syncUp 5
xdotool key BackSpace
xdotool key BackSpace
xdotool key BackSpace
syncUp 1
xdotool type community
syncUp 1
xdotool key F3
syncUp 1
xdotool key F3
syncUp 1
xdotool key F3
syncUp 1
xdotool key F3
xdotool key Escape
syncUp 10

# Zoom in
xdotool key Ctrl+plus
syncUp 1
xdotool key Ctrl+plus
syncUp 1
xdotool key Ctrl+plus
syncUp 5

# Go next
xdotool key Ctrl+Shift+n
syncUp 5

# Zoom out
xdotool key Ctrl+minus
syncUp 1
xdotool key Ctrl+minus
syncUp 1
xdotool key Ctrl+minus
syncUp 5

# Enter presentation mode
xdotool key Ctrl+Shift+P
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
xdotool key Ctrl+r
syncUp 5
xdotool key Ctrl+r
syncUp 5
xdotool key Ctrl+r
syncUp 5
xdotool key Ctrl+r
syncUp 5

# Show document properties
xdotool key Alt+Return
syncUp 10
xdotool key Escape

# Jump to document start
xdotool key Ctrl+Home
syncUp 10

# Next bookmark
xdotool key Ctrl+Shift+b
syncUp 5
xdotool key Ctrl+Shift+b
syncUp 5

# Jump to document end
xdotool key Ctrl+End
