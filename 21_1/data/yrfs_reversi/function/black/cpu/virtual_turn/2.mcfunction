#> yrfs_reversi:black/cpu/virtual_turn/2
#
# 黒のターン
#
# @within function
#           yrfs_reversi:black/cpu/virtual_turn/1
#           yrfs_reversi:black/cpu/virtual_turn/1_loop

# 1ターン目に置いた場所に使用済みタグをつける
  tag @s add reversi_cpu_used_

# 置けるマスを探す
  execute as @e[type=marker,tag=reversi_marker,tag=!reversi_ignore_find_can_place] if data entity @s {data:{cpu:{disc:"black"}}} at @s run function yrfs_reversi:white/cpu/find_can_place/_

# 冗長な記述がイヤなのでまとめておく
  execute as @e[type=marker,tag=reversi_marker,tag=!reversi_cpu_can_place_here] if data entity @s {data:{cpu:{disc:""}}} unless data entity @s {data:{cpu:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false}}}} run tag @s add reversi_cpu_can_place_here
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_can_place_here] if data entity @s {data:{cpu:{disc:"",can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false}}}} run tag @s remove reversi_cpu_can_place_here

# 一番開放度が低い場所を調べる
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_can_place_here] at @s run function yrfs_reversi:white/cpu/virtual_turn/surrounded_check

# 置くマスの重みを調べる
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_can_place_here] at @s run function yrfs_reversi:cpu/priority_check_2

# 一番低くなる(開放度-重み)を保存
  scoreboard players operation 2 reversi_cpu_surrounded < @e[type=marker,tag=reversi_marker,tag=reversi_cpu_can_place_here] reversi_cpu_surrounded_temp

# (開放度-重み)が一番低くなる場所に置く
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_can_place_here] if score @s reversi_cpu_surrounded_temp = 2 reversi_cpu_surrounded run tag @s add reversi_temp
  tag @e[type=marker,tag=reversi_temp,sort=random,limit=1] add reversi_cpu_now_placed_here
  data modify entity @e[type=marker,tag=reversi_temp,tag=reversi_cpu_now_placed_here,limit=1] data.cpu.disc set value "white"
  tag @e[tag=reversi_temp] remove reversi_temp

# 置ける場所が無かった場合は50とする
  execute unless entity @e[type=marker,tag=reversi_marker,tag=reversi_cpu_can_place_here] run scoreboard players set 2 reversi_cpu_surrounded 50

# ひっくり返す
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] if data entity @s {data:{cpu:{can_reverse_direction:{nw:true}}}} at @s run function yrfs_reversi:white/cpu/rotation {position:"~1 ~ ~1"}
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] if data entity @s {data:{cpu:{can_reverse_direction:{n:true}}}} at @s run function yrfs_reversi:white/cpu/rotation {position:"~ ~ ~1"}
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] if data entity @s {data:{cpu:{can_reverse_direction:{ne:true}}}} at @s run function yrfs_reversi:white/cpu/rotation {position:"~-1 ~ ~1"}
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] if data entity @s {data:{cpu:{can_reverse_direction:{w:true}}}} at @s run function yrfs_reversi:white/cpu/rotation {position:"~1 ~ ~"}
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] if data entity @s {data:{cpu:{can_reverse_direction:{e:true}}}} at @s run function yrfs_reversi:white/cpu/rotation {position:"~-1 ~ ~"}
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] if data entity @s {data:{cpu:{can_reverse_direction:{sw:true}}}} at @s run function yrfs_reversi:white/cpu/rotation {position:"~1 ~ ~-1"}
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] if data entity @s {data:{cpu:{can_reverse_direction:{s:true}}}} at @s run function yrfs_reversi:white/cpu/rotation {position:"~ ~ ~-1"}
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] if data entity @s {data:{cpu:{can_reverse_direction:{se:true}}}} at @s run function yrfs_reversi:white/cpu/rotation {position:"~-1 ~ ~-1"}

# リセット
  tag @e[type=marker,tag=reversi_marker,tag=reversi_cpu_rotation] remove reversi_cpu_rotation
  tag @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] remove reversi_cpu_now_placed_here
  tag @e[type=marker,tag=reversi_marker,tag=reversi_cpu_can_place_here] remove reversi_cpu_can_place_here
  execute as @e[type=marker,tag=reversi_marker] unless data entity @s {data:{cpu:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false}}}} run data modify entity @s data.cpu.can_reverse_direction set value {nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false}

# 3ターン目に進む
  function yrfs_reversi:black/cpu/virtual_turn/3
