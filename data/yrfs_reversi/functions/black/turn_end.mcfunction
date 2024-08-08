#> yrfs_reversi:black/turn_end
#
# ターン終了時の処理
#
# @within function yrfs_reversi:black/rotation/sc_loop

# 置いた石とその周りの石が囲まれているかを見る
  execute at @e[type=marker,tag=reversi_marker,tag=reversi_now_placed_here] as @e[type=marker,tag=reversi_marker,tag=!reversi_ignore_find_can_place,distance=..1.5] unless data entity @s {data:{disc:""}} at @s run function yrfs_reversi:surrounded_check

# 石の数を数える
  function yrfs_reversi:count_disc

# 初期化処理
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_now_placed_here] run tag @s remove reversi_now_placed_here
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_can_place_here] run tag @s remove reversi_can_place_here
  execute as @e[type=marker,tag=reversi_marker] unless data entity @s {data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false}}} run data modify entity @s data.can_reverse_direction set value {nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false}

# ターン交代
  execute unless data storage yrfs_reversi: {root:{game_status:{turn:"kill_process"}}} if data storage yrfs_reversi: {root:{game_status:{is_cpu:{white:false}}}} run function yrfs_reversi:white/player/turn_start
  execute unless data storage yrfs_reversi: {root:{game_status:{turn:"kill_process"}}} if data storage yrfs_reversi: {root:{game_status:{is_cpu:{white:true}}}} run function yrfs_reversi:white/cpu/virtual_turn/init

# 強制中断時の処理
  execute if data storage yrfs_reversi: {root:{game_status:{turn:"kill_process"}}} run schedule function yrfs_reversi:game_end 1
