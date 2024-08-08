#> yrfs_reversi:black/cpu/count_disc_1
#
# 石の数を数えてスコアから引く
#
# @within function
#           yrfs_reversi:black/cpu/virtual_turn/1
#           yrfs_reversi:black/cpu/virtual_turn/1_loop

# 数える
  execute as @e[type=marker,tag=reversi_marker] if data entity @s {data:{disc:"black"}} run tag @s add this
  execute store result score cpu_black_count_1 reversi if entity @e[type=marker,tag=this]
  tag @e[tag=this] remove this
  execute as @e[type=marker,tag=reversi_marker] if data entity @s {data:{disc:"white"}} run tag @s add this
  execute store result score cpu_white_count_1 reversi if entity @e[type=marker,tag=this]
  tag @e[tag=this] remove this

# 引く
  scoreboard players operation cpu_black_count_1 reversi -= cpu_white_count_1 reversi
