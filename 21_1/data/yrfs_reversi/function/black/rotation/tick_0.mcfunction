#> yrfs_reversi:black/rotation/tick_0
#
# item_displayのアニメーション
#
# @within function
#           yrfs_reversi:black/rotation/sc_loop

# 内部データを黒に変更
  data modify entity @e[type=marker,tag=reversi_marker,distance=..1.1,sort=nearest,limit=1] data.disc set value "black"

# 効果音
  execute at @s run playsound entity.item.pickup master @a ~ ~ ~

# 回転
  data modify entity @s start_interpolation set value -1
  data modify entity @s transformation.left_rotation set value {angle:3.1416,axis:[0f,0f,1f]}

# 上下移動
  tp @s ~ ~0.3 ~
