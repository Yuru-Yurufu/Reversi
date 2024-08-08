#> yrfs_reversi:white/cpu/virtual_turn/init
#
# CPUのターンごとの準備
#
# as,at: server
#
# @within function
#           yrfs_reversi:black/turn_end
#           yrfs_reversi:black/pass

# 準備
  scoreboard players add turn reversi 1
  data modify storage yrfs_reversi: root.game_status.turn set value "white"
  execute as @e[type=marker,tag=reversi_marker] run data modify entity @s data.cpu.disc set from entity @s data.disc

  scoreboard players set 1 reversi_cpu_surrounded 5000
  scoreboard players set 2 reversi_cpu_surrounded 5000
  scoreboard players set 3 reversi_cpu_surrounded 5000

# がんばるぞ～～
  function yrfs_reversi:white/cpu/virtual_turn/1
