#> yrfs_reversi:gui/find_gaze_point/find
#
# 視線先の位置を特定する
#
# @within function yrfs_reversi:gui/find_gaze_point/loop

# プレイヤーにもmarkerと同じタグをつける
  tag @s add reversi_find_gaze_point

# 視線先検知用のmarkerをtp
  execute positioned ^ ^ ^-1 facing ^ ^ ^-1 run tp @e[type=marker,tag=reversi_find_gaze_point] ~ ~ ~ ~ ~

# 分割しながら視線先の位置を探す
  execute anchored eyes positioned ^ ^ ^2 rotated as @e[tag=reversi_find_gaze_point,sort=nearest] positioned ^ ^ ^1 rotated as @e[tag=reversi_find_gaze_point,sort=nearest] positioned ^ ^ ^0.5 rotated as @e[tag=reversi_find_gaze_point,sort=nearest] positioned ^ ^ ^0.25 rotated as @e[tag=reversi_find_gaze_point,sort=nearest] positioned ^ ^ ^0.125 rotated as @e[tag=reversi_find_gaze_point,sort=nearest] positioned ^ ^ ^0.0625 rotated as @e[tag=reversi_find_gaze_point,sort=nearest] positioned ^ ^ ^0.03125 rotated as @e[tag=reversi_find_gaze_point,sort=nearest] positioned ^ ^ ^0.015625 if block ~ ~ ~0.016 barrier if block ~ ~ ~-0.016 air positioned ~-0.016 ~-0.016 ~-0.016 as @e[type=interaction,tag=reversi_gui_interaction,dx=0] positioned ~-0.968 ~-0.968 ~-0.968 if entity @s[dx=0] at @s as @e[type=text_display,tag=reversi_gui_display,sort=nearest,limit=1] run tag @s add reversi_gui_show_underline

# プレイヤーにつけたタグを外す
  tag @s remove reversi_find_gaze_point
