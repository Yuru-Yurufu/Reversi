#> yrfs_reversi:count_disc
#
# 石の数を数える
#
# @within function
#           yrfs_reversi:black/turn_end
#           yrfs_reversi:white/turn_end
#           yrfs_reversi:game_end

# 数える
  execute as @e[type=marker,tag=reversi_marker] if data entity @s {data:{disc:"black"}} run tag @s add this
  execute store result score result_black_count reversi store result score result_timer_black reversi if entity @e[type=marker,tag=this]
  tag @e[tag=this] remove this
  execute as @e[type=marker,tag=reversi_marker] if data entity @s {data:{disc:"white"}} run tag @s add this
  execute store result score result_white_count reversi store result score result_timer_white reversi if entity @e[type=marker,tag=this]
  tag @e[tag=this] remove this
