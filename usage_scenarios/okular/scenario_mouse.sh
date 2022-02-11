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
xdotool mousemove 155 45
xdotool click 1
xdotool mousemove 310 240
xdotool click 1
syncUp 1
xdotool type 33
syncUp 1
xdotool mousemove 900 545
xdotool click 1
syncUp 10

# Add bookmark
xdotool mousemove 215 50
xdotool click 1
xdotool mousemove 215 75
xdotool click 1
syncUp 5

# Go next
xdotool mousemove 1145 90
xdotool click 1
syncUp 1
xdotool mousemove 1145 90
xdotool click 1
syncUp 1
xdotool mousemove 1145 90
xdotool click 1
syncUp 1
xdotool mousemove 1145 90
xdotool click 1
syncUp 1
xdotool mousemove 1145 90
xdotool click 1
syncUp 1
xdotool mousemove 1145 90
xdotool click 1
syncUp 1

# Go previous
xdotool mousemove 935 85
xdotool click 1
syncUp 1
xdotool mousemove 935 85
xdotool click 1
syncUp 1
xdotool mousemove 935 85
xdotool click 1
syncUp 1
xdotool mousemove 935 85
xdotool click 1
syncUp 1
xdotool mousemove 935 85
xdotool click 1
syncUp 1
xdotool mousemove 935 85
xdotool click 1
syncUp 10

# Jump to page 100
xdotool mousemove 155 45
xdotool click 1
xdotool mousemove 310 240
xdotool click 1
syncUp 1
xdotool type 100
syncUp 1
xdotool mousemove 900 545
xdotool click 1
syncUp 10

# Add bookmark
xdotool mousemove 215 50
xdotool click 1
xdotool mousemove 215 75
xdotool click 1
syncUp 5

# Find 'KDE'
xdotool mousemove 110 50
xdotool click 1
xdotool mousemove 250 220
xdotool click 1
syncUp 1
xdotool type KDE
syncUp 1
xdotool mousemove 1680 1060
xdotool click 1
syncUp 1
xdotool mousemove 1680 1060
xdotool click 1
syncUp 1
xdotool mousemove 1680 1060
xdotool click 1
syncUp 1
xdotool mousemove 1680 1060
xdotool click 1

# Find 'community'
syncUp 5
xdotool mousemove 500 1060
xdotool click 1
xdotool click 1
xdotool key BackSpace
xdotool key BackSpace
xdotool key BackSpace
syncUp 1
xdotool type community
syncUp 1
xdotool mousemove 1680 1060
xdotool click 1
syncUp 1
xdotool mousemove 1680 1060
xdotool click 1
syncUp 1
xdotool mousemove 1680 1060
xdotool click 1
syncUp 1
xdotool mousemove 1680 1060
xdotool click 1
xdotool mousemove 310 1060
xdotool click 1
syncUp 10

# Zoom in
xdotool mousemove 70 50
xdotool click 1
xdotool mousemove 140 130
xdotool click 1
syncUp 1
xdotool mousemove 70 50
xdotool click 1
xdotool mousemove 140 130
xdotool click 1
syncUp 1
xdotool mousemove 70 50
xdotool click 1
xdotool mousemove 140 130
xdotool click 1
syncUp 5

# go next
xdotool mousemove 1145 90
xdotool click 1
syncUp 5

# Zoom out
xdotool mousemove 70 50
xdotool click 1
xdotool mousemove 140 160
xdotool click 1
syncUp 1
xdotool mousemove 70 50
xdotool click 1
xdotool mousemove 140 160
xdotool click 1
syncUp 1
xdotool mousemove 70 50
xdotool click 1
xdotool mousemove 140 160
xdotool click 1
syncUp 5

# Enter presentation mode
xdotool mousemove 70 50
xdotool click 1
xdotool mousemove 150 100
xdotool click 1
syncUp 1

# Go next
xdotool mousemove 900 500
xdotool click 1
syncUp 1
xdotool click 1
syncUp 1
xdotool click 1
syncUp 1
xdotool click 1
syncUp 1

# Exit presentation mode
xdotool key Escape
syncUp 10

# rotate 360
xdotool mousemove 70 50
xdotool click 1
xdotool mousemove 180 330
xdotool click 1
xdotool mousemove 400 330
xdotool click 1
syncUp 5
xdotool mousemove 70 50
xdotool click 1
xdotool mousemove 180 330
xdotool click 1
xdotool mousemove 400 330
xdotool click 1
syncUp 5
xdotool mousemove 70 50
xdotool click 1
xdotool mousemove 180 330
xdotool click 1
xdotool mousemove 400 330
xdotool click 1
syncUp 5
xdotool mousemove 70 50
xdotool click 1
xdotool mousemove 180 330
xdotool click 1
xdotool mousemove 400 330
xdotool click 1
syncUp 5

# Show document properties
xdotool mousemove 20 50
xdotool click 1
xdotool mousemove 160 360
xdotool click 1
syncUp 10
xdotool mousemove 1660 720
xdotool click 1

# jump to document start
xdotool mousemove 150 50
xdotool click 1
xdotool mousemove 150 130
xdotool click 1
syncUp 10

# Next bookmark
xdotool mousemove 200 50
xdotool click 1
xdotool mousemove 200 160
xdotool click 1
syncUp 5
xdotool mousemove 200 50
xdotool click 1
xdotool mousemove 200 160
xdotool click 1
syncUp 5

# jump to document end
xdotool mousemove 150 50
xdotool click 1
xdotool mousemove 150 160
xdotool click 1
