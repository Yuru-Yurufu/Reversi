#> yrfs_reversi:white/cpu/virtual_turn/1_loop
#
# 1ターン目のループ
#
# @within function yrfs_reversi:white/cpu/virtual_turn/3

# スコアリセット
  scoreboard players set 2 reversi_cpu_surrounded 5000
  scoreboard players set 3 reversi_cpu_surrounded 5000

# 盤面を1ターン目の状態に戻す
  execute as @e[type=marker,tag=reversi_marker] run data modify entity @s data.cpu set from entity @s data.cpu_

# 実行順が次に早いmarkerにタグづけ
  tag @e[type=marker,tag=reversi_marker,tag=reversi_cpu_can_place_here_,tag=!reversi_cpu_now_placed_here_,limit=1] add reversi_cpu_now_placed_here
  tag @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here,limit=1] add reversi_cpu_now_placed_here_

# 目印の場所に置く
  data modify entity @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here,limit=1] data.cpu.disc set value "white"

# ひっくり返す
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] if data entity @s {data:{cpu:{can_reverse_direction:{nw:true}}}} at @s run function yrfs_reversi:white/cpu/rotation {position:"~1 ~ ~1"}
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] if data entity @s {data:{cpu:{can_reverse_direction:{n:true}}}} at @s run function yrfs_reversi:white/cpu/rotation {position:"~ ~ ~1"}
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] if data entity @s {data:{cpu:{can_reverse_direction:{ne:true}}}} at @s run function yrfs_reversi:white/cpu/rotation {position:"~-1 ~ ~1"}
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] if data entity @s {data:{cpu:{can_reverse_direction:{w:true}}}} at @s run function yrfs_reversi:white/cpu/rotation {position:"~1 ~ ~"}
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] if data entity @s {data:{cpu:{can_reverse_direction:{e:true}}}} at @s run function yrfs_reversi:white/cpu/rotation {position:"~-1 ~ ~"}
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] if data entity @s {data:{cpu:{can_reverse_direction:{sw:true}}}} at @s run function yrfs_reversi:white/cpu/rotation {position:"~1 ~ ~-1"}
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] if data entity @s {data:{cpu:{can_reverse_direction:{s:true}}}} at @s run function yrfs_reversi:white/cpu/rotation {position:"~ ~ ~-1"}
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] if data entity @s {data:{cpu:{can_reverse_direction:{se:true}}}} at @s run function yrfs_reversi:white/cpu/rotation {position:"~-1 ~ ~-1"}

# 開放度を調べる
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_rotation] at @s run function yrfs_reversi:cpu/surrounded_check
  scoreboard players set @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] reversi_cpu_surrounded 0
  scoreboard players operation @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] reversi_cpu_surrounded += @e[type=marker,tag=reversi_marker,tag=reversi_cpu_rotation] reversi_cpu_surrounded_temp

# 置くマスの重みを調べる
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] at @s run function yrfs_reversi:cpu/priority_check_1

# 55ターン目以降は石の数も考慮に入れる
  execute if score turn reversi matches 55.. run function yrfs_reversi:white/cpu/count_disc_1

# リセット
  tag @e[type=marker,tag=reversi_marker,tag=reversi_cpu_rotation] remove reversi_cpu_rotation
  tag @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] remove reversi_cpu_now_placed_here
  tag @e[type=marker,tag=reversi_marker,tag=reversi_cpu_can_place_here] remove reversi_cpu_can_place_here
  execute as @e[type=marker,tag=reversi_marker] unless data entity @s {data:{cpu:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false}}}} run data modify entity @s data.cpu.can_reverse_direction set value {nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false}

# 2ターン目に進む
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here_,tag=!reversi_cpu_used_] run function yrfs_reversi:white/cpu/virtual_turn/2
