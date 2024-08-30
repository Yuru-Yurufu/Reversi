#> yrfs_reversi:black/player/turn_start
#
# ターンごとの準備
#
# @within function
#           yrfs_reversi:command/start
#           yrfs_reversi:command/start_cpu_white
#           yrfs_reversi:white/turn_end
#           yrfs_reversi:white/pass

# ターン経過
  scoreboard players add turn reversi 1
  data modify storage yrfs_reversi: root.game_status.turn set value "black"

# 置けるマスを探す(直前のターンがパスの場合はスキップ)
  execute unless data storage yrfs_reversi: {root:{pass_count:1b}} as @e[type=marker,tag=reversi_marker,tag=!reversi_ignore_find_can_place] if data entity @s {data:{disc:"white"}} at @s run function yrfs_reversi:black/player/find_can_place/_

# 冗長な記述がイヤなのでまとめておく
  execute as @e[type=marker,tag=reversi_marker,tag=!reversi_can_place_here] if data entity @s {data:{disc:""}} unless data entity @s {data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false}}} run tag @s add reversi_can_place_here
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_can_place_here] if data entity @s {data:{disc:"",can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false}}} run tag @s remove reversi_can_place_here

# 置ける場合はpass_countを0に戻しておく
  execute if entity @e[type=marker,tag=reversi_marker,tag=reversi_can_place_here] if data storage yrfs_reversi: {root:{pass_count:1b}} run data modify storage yrfs_reversi: root.pass_count set value 0b

# 一つも置けない場合はパスをする
  execute unless entity @e[type=marker,tag=reversi_marker,tag=reversi_can_place_here] run schedule function yrfs_reversi:black/pass 3
