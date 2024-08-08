#> yrfs_reversi:gui/remove_underline/remove
#
# 下線を外す
#
# @within function yrfs_reversi:gui/remove_underline/init

# 下線ぽい
  $data modify entity @s text set value '{"text":$(input_text),"underlined":false}'
