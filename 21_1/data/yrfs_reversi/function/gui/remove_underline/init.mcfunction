#> yrfs_reversi:gui/remove_underline/init
#
# 下線を外す準備
#
# @within function
#           yrfs_reversi:main
#           yrfs_reversi:gui/find_gaze_point/loop

# タグリセット
  tag @s remove reversi_gui_show_underline
  tag @s remove reversi_gui_show_underline_

# textを取得しておく
  data modify storage yrfs_reversi: root.gui.temp.input_text set string entity @s text 9 -20

# 下線を外す
  function yrfs_reversi:gui/remove_underline/remove with storage yrfs_reversi: root.gui.temp
