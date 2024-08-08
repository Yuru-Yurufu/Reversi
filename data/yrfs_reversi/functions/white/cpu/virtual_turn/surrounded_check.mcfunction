#> yrfs_reversi:white/cpu/virtual_turn/surrounded_check
#
# 黒のターンの開放度チェック用
#
# @within function
#           yrfs_reversi:black/cpu/virtual_turn/2
#           yrfs_reversi:white/cpu/virtual_turn/3

# ひっくり返す
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] if data entity @s {data:{cpu:{can_reverse_direction:{nw:true}}}} at @s positioned ~1 ~ ~1 run function yrfs_reversi:white/cpu/virtual_turn/rotation {position:"~1 ~ ~1"}
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] if data entity @s {data:{cpu:{can_reverse_direction:{n:true}}}} at @s positioned ~ ~ ~1 run function yrfs_reversi:white/cpu/virtual_turn/rotation {position:"~ ~ ~1"}
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] if data entity @s {data:{cpu:{can_reverse_direction:{ne:true}}}} at @s positioned ~-1 ~ ~1 run function yrfs_reversi:white/cpu/virtual_turn/rotation {position:"~-1 ~ ~1"}
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] if data entity @s {data:{cpu:{can_reverse_direction:{w:true}}}} at @s positioned ~1 ~ ~ run function yrfs_reversi:white/cpu/virtual_turn/rotation {position:"~1 ~ ~"}
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] if data entity @s {data:{cpu:{can_reverse_direction:{e:true}}}} at @s positioned ~-1 ~ ~ run function yrfs_reversi:white/cpu/virtual_turn/rotation {position:"~-1 ~ ~"}
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] if data entity @s {data:{cpu:{can_reverse_direction:{sw:true}}}} at @s positioned ~1 ~ ~-1 run function yrfs_reversi:white/cpu/virtual_turn/rotation {position:"~1 ~ ~-1"}
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] if data entity @s {data:{cpu:{can_reverse_direction:{s:true}}}} at @s positioned ~ ~ ~-1 run function yrfs_reversi:white/cpu/virtual_turn/rotation {position:"~ ~ ~-1"}
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] if data entity @s {data:{cpu:{can_reverse_direction:{se:true}}}} at @s positioned ~-1 ~ ~-1 run function yrfs_reversi:white/cpu/virtual_turn/rotation {position:"~-1 ~ ~-1"}

# 開放度を調べる
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_rotation] at @s run function yrfs_reversi:cpu/surrounded_check
  scoreboard players set @s reversi_cpu_surrounded_temp 0
  scoreboard players operation @s reversi_cpu_surrounded_temp += @e[type=marker,tag=reversi_marker,tag=reversi_cpu_rotation] reversi_cpu_surrounded_temp

# リセット
  scoreboard players reset @e[tag=reversi_rotation] reversi_cpu_surrounded_temp

# weightをかける
  scoreboard players operation @s reversi_cpu_surrounded_temp *= cpu_surrounded_weight reversi
