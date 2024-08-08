#> yrfs_reversi:white/rotation/tick_5
#
# 5tick目の処理
#
# @within function
#           yrfs_reversi:white/rotation/sc_loop

# 初期化
  tag @s remove reversi_rotation
  scoreboard players reset @s reversi_rotation_delay
  data modify entity @s item.tag.CustomModelData set value 2
  data modify entity @s transformation.left_rotation set value {angle:0,axis:[0f,0f,1f]}
