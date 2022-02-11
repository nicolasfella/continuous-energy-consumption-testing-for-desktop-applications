#!/usr/bin/env bash

call_okular() {

    qdbus org.kde.okular-`pidof okular` /okular $@
}

call_action() {
    qdbus org.kde.okular-`oidof okular` /okular/okular__Shell_1 org.kde.KMainWindow.activateAction $@
}

call_partAction() {
    qdbus org.kde.okular-`pidof okular` /okular/okular__Shell_1 org.kde.okular.KParts.MainWindow.activatePartAction $@
}

startTime=$(date +%s%N)
elapsed=0

syncUp() {
    elapsed=$((elapsed + ($1 * 1000000000)))
    delta=$(echo "scale=10; (($startTime + $elapsed) - $(date +%s%N)) / 1000000000" | bc)
    echo "Sleep" $delta
    sleep $delta
}

call_okular org.kde.okular.openDocument /home/seadmin/tools/okular/data/20yearsofKDE.pdf
syncUp 5

# Jump to page 33
call_okular org.kde.okular.goToPage 33
syncUp 14

# Add bookmark
call_partAction bookmark_add
syncUp 5

# Go next
call_okular org.kde.okular.slotNextPage
syncUp 1
call_okular org.kde.okular.slotNextPage
syncUp 1
call_okular org.kde.okular.slotNextPage
syncUp 1
call_okular org.kde.okular.slotNextPage
syncUp 1
call_okular org.kde.okular.slotNextPage
syncUp 1
call_okular org.kde.okular.slotNextPage
syncUp 1

# Go previous
call_okular org.kde.okular.slotPreviousPage
syncUp 1
call_okular org.kde.okular.slotPreviousPage
syncUp 1
call_okular org.kde.okular.slotPreviousPage
syncUp 1
call_okular org.kde.okular.slotPreviousPage
syncUp 1
call_okular org.kde.okular.slotPreviousPage
syncUp 1
call_okular org.kde.okular.slotPreviousPage
syncUp 10

# Jump to page 100
call_okular org.kde.okular.goToPage 100
syncUp 10

# Add bookmark
call_partAction bookmark_add
syncUp 5

# Find 'KDE'
call_partAction edit_find
syncUp 1
xdotool type KDE
syncUp 1
call_partAction edit_find_next
syncUp 1
call_partAction edit_find_next
syncUp 1
call_partAction edit_find_next
syncUp 1
call_partAction edit_find_next

# Find 'community'
syncUp 5
xdotool key BackSpace
xdotool key BackSpace
xdotool key BackSpace
syncUp 1
xdotool type community
syncUp 1
call_partAction edit_find_next
syncUp 1
call_partAction edit_find_next
syncUp 1
call_partAction edit_find_next
syncUp 1
call_partAction edit_find_next
call_partAction close_find_bar
syncUp 10

# Zoom in
call_partAction view_zoom_in
syncUp 1
call_partAction view_zoom_in
syncUp 1
call_partAction view_zoom_in
syncUp 5

# Go next
call_okular org.kde.okular.slotNextPage
syncUp 5

# Zoom out
call_partAction view_zoom_out
syncUp 1
call_partAction view_zoom_out
syncUp 1
call_partAction view_zoom_out
syncUp 5

# Enter presentation mode
call_partAction presentation
syncUp 1

# Go next
call_okular org.kde.okular.slotNextPage
syncUp 1
call_okular org.kde.okular.slotNextPage
syncUp 1
call_okular org.kde.okular.slotNextPage
syncUp 1
call_okular org.kde.okular.slotNextPage
syncUp 1

# Exit presentation mode
xdotool key Escape
syncUp 10

# rotate 360
call_partAction view_orientation_rotate_cw
syncUp 5
call_partAction view_orientation_rotate_cw
syncUp 5
call_partAction view_orientation_rotate_cw
syncUp 5
call_partAction view_orientation_rotate_cw
syncUp 5

# Show document properties
call_partAction properties
syncUp 10
xdotool key Escape

# Jump to document start
call_okular org.kde.okular.slotGotoFirst
syncUp 10

# Next bookmark
call_partAction next_bookmark
syncUp 5
call_partAction next_bookmark
syncUp 5

# Jump to document end
call_okular org.kde.okular.slotGotoLast
