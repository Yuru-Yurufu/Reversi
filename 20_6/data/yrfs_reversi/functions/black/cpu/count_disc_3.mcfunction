#> yrfs_reversi:black/cpu/count_disc_3
#
# 石の数を数えてスコアから引く
#
# @within function yrfs_reversi:black/cpu/virtual_turn/3

# 数える
  execute as @e[type=marker,tag=reversi_marker] if data entity @s {data:{disc:"black"}} run tag @s add this
  execute store result score cpu_black_count_3 reversi if entity @e[type=marker,tag=this]
  tag @e[tag=this] remove this
  execute as @e[type=marker,tag=reversi_marker] if data entity @s {data:{disc:"white"}} run tag @s add this
  execute store result score cpu_white_count_3 reversi if entity @e[type=marker,tag=this]
  tag @e[tag=this] remove this

# 黒と白の差を引く
  scoreboard players operation cpu_black_count_3 reversi -= cpu_white_count_3 reversi
  scoreboard players operation cpu_black_count_3 reversi -= cpu_black_count_1 reversi
  scoreboard players operation cpu_black_count_3 reversi *= cpu_disc_count reversi
  scoreboard players operation @s reversi_cpu_surrounded -= cpu_black_count_3 reversi
