#> yrfs_reversi:white/cpu/virtual_turn/3
#
# 白のターン
#
# @within function yrfs_reversi:white/cpu/virtual_turn/2

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
  scoreboard players operation 3 reversi_cpu_surrounded < @e[type=marker,tag=reversi_marker,tag=reversi_cpu_can_place_here] reversi_cpu_surrounded_temp

# 置ける場所が無かった場合は20とする
  execute unless entity @e[type=marker,tag=reversi_marker,tag=reversi_cpu_can_place_here] run scoreboard players set 3 reversi_cpu_surrounded 20

# 1,2,3ターン目の(開放度+α)を足す(2ターン目は符号を逆にする)
  scoreboard players operation 2 reversi_cpu_surrounded -= 3 reversi_cpu_surrounded
  scoreboard players operation @s reversi_cpu_surrounded -= 2 reversi_cpu_surrounded

# 55ターン目以降は石の数も考慮に入れる
  execute if score turn reversi matches 55.. run function yrfs_reversi:white/cpu/count_disc_3

# リセット
  tag @e[type=marker,tag=reversi_marker,tag=reversi_cpu_rotation] remove reversi_cpu_rotation
  tag @e[type=marker,tag=reversi_marker,tag=reversi_cpu_can_place_here] remove reversi_cpu_can_place_here
  execute as @e[type=marker,tag=reversi_marker] unless data entity @s {data:{cpu:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false}}}} run data modify entity @s data.cpu.can_reverse_direction set value {nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false}

# 1ターン目に戻る
  execute unless entity @e[type=marker,tag=reversi_marker,tag=reversi_cpu_can_place_here_,tag=!reversi_cpu_now_placed_here_] run schedule function yrfs_reversi:white/cpu/virtual_turn/1_end 1
  execute if entity @e[type=marker,tag=reversi_marker,tag=reversi_cpu_can_place_here_,tag=!reversi_cpu_now_placed_here_] run schedule function yrfs_reversi:white/cpu/virtual_turn/1_loop 2
