#> yrfs_reversi:gui/find_gaze_point/loop
#
# 視線先の位置を特定する時のループ処理
#
# @within function yrfs_reversi:main

# 視線先の位置を特定する
  function yrfs_reversi:gui/find_gaze_point/find

# 視線先のtext_displayに下線をつける
  execute as @e[type=text_display,tag=reversi_gui_show_underline,tag=!reversi_gui_show_underline_] at @s run function yrfs_reversi:gui/give_underline/init

# 視線先ではなくなったtext_displayから下線を外す
  execute as @e[type=text_display,tag=reversi_gui_show_underline_,tag=!reversi_gui_show_underline] at @s run function yrfs_reversi:gui/remove_underline/init

# タグリセット
  tag @e[tag=reversi_gui_show_underline] remove reversi_gui_show_underline
