#> yrfs_reversi:white/turn_end
#
# ターン終了時の処理
#
# @within function yrfs_reversi:white/rotation/sc_loop

# 置いた石とその周りの石が囲まれているかを見る
  execute at @e[type=marker,tag=reversi_marker,tag=reversi_now_placed_here] as @e[type=marker,tag=reversi_marker,tag=!reversi_ignore_find_can_place,distance=..1.5] unless data entity @s {data:{disc:""}} at @s run function yrfs_reversi:surrounded_check

# 石の数を数える
  function yrfs_reversi:count_disc

# 初期化処理
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_now_placed_here] run tag @s remove reversi_now_placed_here
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_can_place_here] run tag @s remove reversi_can_place_here
  execute as @e[type=marker,tag=reversi_marker] unless data entity @s {data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false}}} run data modify entity @s data.can_reverse_direction set value {nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false}

# ターン交代
  execute unless data storage yrfs_reversi: {root:{game_status:{turn:"kill_process"}}} unless data storage yrfs_reversi: {root:{game_status:{turn:"result"}}} if data storage yrfs_reversi: {root:{game_status:{is_cpu:{black:false}}}} run function yrfs_reversi:black/player/turn_start
  execute unless data storage yrfs_reversi: {root:{game_status:{turn:"kill_process"}}} unless data storage yrfs_reversi: {root:{game_status:{turn:"result"}}} if data storage yrfs_reversi: {root:{game_status:{is_cpu:{black:true}}}} run function yrfs_reversi:black/cpu/virtual_turn/init

# 強制中断時の処理
  execute if data storage yrfs_reversi: {root:{game_status:{turn:"kill_process"}}} run schedule function yrfs_reversi:game_end 1
