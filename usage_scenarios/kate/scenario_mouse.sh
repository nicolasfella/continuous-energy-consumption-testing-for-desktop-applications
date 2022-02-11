#!/usr/bin/env bash

call_okular() {
    qdbus org.kde.kate-`pidof kate` /kate org.kde.kate.$@
}

call_action() {
    qdbus org.kde.kate-`pidof kate` /kate/MainWindow_1 org.kde.KMainWindow.activateAction $@
}

call_viewAction() {
    qdbus org.kde.kate-`pidof kate` /kate/MainWindow_1 org.kde.kate.KateMainWindow.activateViewAction $@
}

startTime=$(date +%s%N)
elapsed=0

syncUp() {
    elapsed=$((elapsed + ($1 * 1000000000)))
    delta=$(echo "scale=10; (($startTime + $elapsed) - $(date +%s%N)) / 1000000000" | bc)
    echo "Sleep" $delta
    sleep $delta
}

qdbus org.kde.kate-`pidof kate` /MainApplication org.kde.Kate.Application.openUrl file:///home/seadmin/katemainwindow.cpp utf-8
syncUp 5

# go to line 100
xdotool mousemove 60 50
xdotool click 1
xdotool mousemove 200 610
xdotool click 1
xdotool mousemove 500 730
xdotool click 1
xdotool type "100"
xdotool mousemove 200 1040
xdotool click 1
syncUp 5

# toggle comment
xdotool mousemove 380 50
xdotool click 1
xdotool mousemove 380 590
xdotool click 1
syncUp 1

# toggle comment
xdotool mousemove 380 50
xdotool click 1
xdotool mousemove 380 590
xdotool click 1
syncUp 1

# line down
xdotool mousemove 135 585
xdotool click 1
syncUp 1

# toggle comment
xdotool mousemove 380 50
xdotool click 1
xdotool mousemove 380 590
xdotool click 1
syncUp 1

# find KConfig
xdotool mousemove 60 50
xdotool click 1
xdotool mousemove 170 480
xdotool click 1

#xdotool key Ctrl+f
syncUp 1
xdotool type "KConfig"
syncUp 1

# next
xdotool mousemove 1760 1040
xdotool click 1
syncUp 1
# next
xdotool mousemove 1760 1040
xdotool click 1
syncUp 1
# next
xdotool mousemove 1760 1040
xdotool click 1
syncUp 1
# next
xdotool mousemove 1760 1040
xdotool click 1
syncUp 5

# prev
xdotool mousemove 1790 1040
xdotool click 1
syncUp 1
# prev
xdotool mousemove 1790 1040
xdotool click 1
syncUp 1

# close find bar
xdotool mousemove 1900 1040
xdotool click 1

syncUp 10

# go to line 200
xdotool mousemove 60 50
xdotool click 1
xdotool mousemove 200 610
xdotool click 1
xdotool mousemove 500 730
xdotool click 1
xdotool type "200"
xdotool mousemove 200 1040
xdotool click 1
syncUp 5

# select 10 lines
xdotool mousemove 95 555
xdotool mousedown 1
xdotool mousemove 95 705
xdotool mouseup 1
syncUp 1

# delete
xdotool key BackSpace
syncUp 5

# go 5 lines down
xdotool mousemove 100 625
xdotool click 1
syncUp 1

# delete line
xdotool key Ctrl+k
syncUp 5

# undo
xdotool mousemove 60 50
xdotool click 1
xdotool mousemove 60 75
xdotool click 1
syncUp 1
# undo
xdotool mousemove 60 50
xdotool click 1
xdotool mousemove 60 75
xdotool click 1
syncUp 1
 
# redo
xdotool mousemove 60 50
xdotool click 1
xdotool mousemove 60 110
xdotool click 1
syncUp 5

# inc font size
xdotool mousemove 110 50
xdotool click 1
xdotool mousemove 200 365
xdotool click 1
xdotool mousemove 500 365
xdotool click 1
syncUp 1

# inc font size
xdotool mousemove 110 50
xdotool click 1
xdotool mousemove 200 365
xdotool click 1
xdotool mousemove 500 365
xdotool click 1
syncUp 5

# toggle folding 4x
xdotool mousemove 110 50
xdotool click 1
xdotool mousemove 215 480
xdotool click 1
xdotool mousemove 550 510
xdotool click 1
syncUp 1

xdotool mousemove 110 50
xdotool click 1
xdotool mousemove 215 480
xdotool click 1
xdotool mousemove 550 510
xdotool click 1
syncUp 1

xdotool mousemove 110 50
xdotool click 1
xdotool mousemove 215 480
xdotool click 1
xdotool mousemove 550 510
xdotool click 1
syncUp 1

xdotool mousemove 110 50
xdotool click 1
xdotool mousemove 215 480
xdotool click 1
xdotool mousemove 550 510
xdotool click 1
syncUp 5

# dec font size
xdotool mousemove 110 50
xdotool click 1
xdotool mousemove 200 365
xdotool click 1
xdotool mousemove 500 395
xdotool click 1
syncUp 1

# dec font size
xdotool mousemove 110 50
xdotool click 1
xdotool mousemove 200 365
xdotool click 1
xdotool mousemove 500 395
xdotool click 1
syncUp 5

# print preview
xdotool mousemove 20 50
xdotool click 1
xdotool mousemove 80 450
xdotool click 1
syncUp 5
xdotool mousemove 1310 120
xdotool click 1

# go 5 lines down
xdotool mousemove 95 362
xdotool click 1
syncUp 1

# select 10 lines
xdotool mousedown 1
xdotool mousemove 95 507
xdotool mouseup 1
syncUp 1

# cut
xdotool mousemove 60 50
xdotool click 1
xdotool mousemove 60 135
xdotool click 1
syncUp 1

# go 5 lines down
xdotool mousemove 95 433
xdotool click 1
syncUp 1

# paste
xdotool mousemove 60 50
xdotool click 1
xdotool mousemove 60 190
xdotool click 1
syncUp 5

# close
xdotool mousemove 20 50
xdotool click 1
xdotool mousemove 110 670
xdotool click 1
syncUp 1

# dont save
xdotool mousemove 1000 540
xdotool click 1
syncUp 1

# new file
xdotool mousemove 20 50
xdotool click 1
xdotool mousemove 60 80
xdotool click 1
syncUp 5

# type lorem ipsum
xdotool type "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna"
xdotool key Return
syncUp 3
xdotool type "aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata"
xdotool key Return
syncUp 3
xdotool type "sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor"
xdotool key Return
syncUp 3
xdotool type "invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet"
xdotool key Return
syncUp 3
xdotool type "clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet"
syncUp 3

# toggle line numbers
xdotool mousemove 40 300
xdotool click 3
xdotool mousemove 150 430
xdotool click 1
syncUp 5

# select to beginning of line
xdotool mousemove 600 210
xdotool mousedown 1
xdotool mousemove 50 210
xdotool mouseup 1
syncUp 1

# uppercase
xdotool mousemove 380 50
xdotool click 1
xdotool mousemove 380 615
xdotool click 1
syncUp 1

# toggle line numbers
xdotool mousemove 40 300
xdotool click 3
xdotool mousemove 150 430
xdotool click 1
syncUp 5

# lowercase
xdotool mousemove 380 50
xdotool click 1
xdotool mousemove 380 640
xdotool click 1
syncUp 5

# new file
xdotool mousemove 20 50
xdotool click 1
xdotool mousemove 60 80
xdotool click 1
syncUp 5

# type lorem ipsum
xdotool type "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna"
xdotool key Return
syncUp 3
xdotool type "aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata"
xdotool key Return
syncUp 3
xdotool type "sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor"
xdotool key Return
syncUp 3
xdotool type "invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet"
xdotool key Return
syncUp 3
xdotool type "clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet"
xdotool key Return
syncUp 3

# new file
xdotool mousemove 20 50
xdotool click 1
xdotool mousemove 60 80
xdotool click 1
syncUp 5

# type lorem ipsum
xdotool type "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna"
xdotool key Return
syncUp 3
xdotool type "aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata"
xdotool key Return
syncUp 3
xdotool type "sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor"
xdotool key Return
syncUp 3
xdotool type "invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet"
xdotool key Return
syncUp 3
xdotool type "clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet"
xdotool key Return
syncUp 3

xdotool mousemove 20 50
xdotool click 1
xdotool mousemove 80 220
xdotool click 1
syncUp 1
xdotool type "somefile.txt"
xdotool mousemove 1220 670
xdotool click 1
