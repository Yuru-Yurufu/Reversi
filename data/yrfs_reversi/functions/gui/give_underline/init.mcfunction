#> yrfs_reversi:gui/give_underline/init
#
# 下線をつける準備
#
# @within function yrfs_reversi:gui/find_gaze_point/loop

# tag
  tag @s add reversi_gui_show_underline_

# textを取得しておく
  data modify storage yrfs_reversi: root.gui.temp.input_text set string entity @s text 9 -21

# 下線をつける
  function yrfs_reversi:gui/give_underline/give with storage yrfs_reversi: root.gui.temp
