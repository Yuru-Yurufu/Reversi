#> yrfs_reversi:gui/find_gaze_point/underline
#
# 下線のつけ外し
#
# @within function yrfs_reversi:gui/find_gaze_point/loop

# 視線先のtext_displayに下線をつける
  execute as @e[type=text_display,tag=reversi_gui_show_underline,tag=!reversi_gui_show_underline_] at @s run function yrfs_reversi:gui/give_underline/init

# 視線先ではなくなったtext_displayから下線を外す
  execute as @e[type=text_display,tag=reversi_gui_show_underline_,tag=!reversi_gui_show_underline] at @s run function yrfs_reversi:gui/remove_underline/init
