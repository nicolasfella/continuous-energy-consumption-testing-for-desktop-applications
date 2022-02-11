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
call_viewAction go_goto_line
xdotool type "100"
xdotool key Return
syncUp 5

# toggle comment
call_viewAction tools_toggle_comment
syncUp 1

# toggle comment
call_viewAction tools_toggle_comment
syncUp 1

# line down
call_viewAction move_line_down
call_viewAction move_line_down
syncUp 1

# toggle comment
call_viewAction tools_toggle_comment
syncUp 1

# find KConfig
call_viewAction edit_find
syncUp 1
xdotool type "KConfig"
syncUp 1

# next
call_viewAction edit_find_next
syncUp 1
# next
call_viewAction edit_find_next
syncUp 1
# next
call_viewAction edit_find_next
syncUp 1
# next
call_viewAction edit_find_next
syncUp 5

# prev
call_viewAction edit_find_prev
syncUp 1
# prev
call_viewAction edit_find_prev
syncUp 1

# close find bar
xdotool key Escape

# replace

syncUp 10

# go to line 200
call_viewAction go_goto_line
xdotool type "200"
xdotool key Return
syncUp 5

# select 10 lines
call_viewAction select_line_down
call_viewAction select_line_down
call_viewAction select_line_down
call_viewAction select_line_down
call_viewAction select_line_down
call_viewAction select_line_down
call_viewAction select_line_down
call_viewAction select_line_down
call_viewAction select_line_down
call_viewAction select_line_down
syncUp 1

# delete
call_viewAction backspace
syncUp 5

# go 5 lines down
call_viewAction move_line_down
call_viewAction move_line_down
call_viewAction move_line_down
call_viewAction move_line_down
call_viewAction move_line_down
syncUp 1

# delete line
call_viewAction delete_line
syncUp 5

# undo
call_viewAction edit_undo
syncUp 1
# undo
call_viewAction edit_undo
syncUp 1
 
# redo
call_viewAction edit_redo
syncUp 5

# inc font size
call_viewAction view_inc_font_sizes
syncUp 1

# inc font size
call_viewAction view_inc_font_sizes
syncUp 5

# toggle folding 4x
call_viewAction folding_toggle_in_current
syncUp 1
call_viewAction folding_toggle_in_current
syncUp 1
call_viewAction folding_toggle_in_current
syncUp 1
call_viewAction folding_toggle_in_current
syncUp 5

# dec font size
call_viewAction view_dec_font_sizes
syncUp 1

# dec font size
call_viewAction view_dec_font_sizes
syncUp 5

# print preview
call_viewAction file_print_preview &
syncUp 5
xdotool key Escape

# go 5 lines down
call_viewAction move_line_down
call_viewAction move_line_down
call_viewAction move_line_down
call_viewAction move_line_down
call_viewAction move_line_down
syncUp 1

# select 10 lines
call_viewAction select_line_down
call_viewAction select_line_down
call_viewAction select_line_down
call_viewAction select_line_down
call_viewAction select_line_down
call_viewAction select_line_down
call_viewAction select_line_down
call_viewAction select_line_down
call_viewAction select_line_down
call_viewAction select_line_down
syncUp 1

# cut
call_viewAction edit_cut
syncUp 1

# go 5 lines down
call_viewAction move_line_down
call_viewAction move_line_down
call_viewAction move_line_down
call_viewAction move_line_down
call_viewAction move_line_down
syncUp 1

# paste
call_viewAction edit_paste
syncUp 5

# close
call_action file_close &
syncUp 1

# dont save
xdotool key "Tab"
syncUp 1
xdotool key Return

# new file
call_action file_new
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
call_viewAction view_line_numbers
syncUp 5

# select last line
call_viewAction select_beginning_of_line
syncUp 1

# uppercase
call_viewAction tools_uppercase
syncUp 1

# toggle line numbers
call_viewAction view_line_numbers
syncUp 5

# lowercase
call_viewAction tools_lowercase
syncUp 5

# new file
call_action file_new
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
call_action file_new
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

call_viewAction file_save &
syncUp 1
xdotool type "somefile.txt"
xdotool key Return
