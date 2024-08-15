#> yrfs_reversi:black/pass
#
# パス
#
# @within function
#           yrfs_reversi:black/player/turn_start
#           yrfs_reversi:black/cpu/virtual_turn/1

# turnを1減らす
  scoreboard players remove turn reversi 1

# パスしたことを記録
  data modify storage yrfs_reversi: root.pass_count set value 1b

# 次のターンに置けるかを先に確認しておく
  execute as @e[type=marker,tag=reversi_marker,tag=!reversi_ignore_find_can_place] if data entity @s {data:{disc:"black"}} at @s run function yrfs_reversi:white/player/find_can_place/_
  execute as @e[type=marker,tag=reversi_marker,tag=!reversi_can_place_here] if data entity @s {data:{disc:""}} unless data entity @s {data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false}}} run tag @s add reversi_can_place_here

# 次のターンも置けなければゲーム終了
  execute unless entity @e[type=marker,tag=reversi_marker,tag=reversi_can_place_here] run schedule function yrfs_reversi:game_end 1
  execute unless entity @e[type=marker,tag=reversi_marker,tag=reversi_can_place_here] run return 0

# パスの演出
  execute if data storage yrfs_reversi: {root:{language:"en_us"}} run title @a title [{"text":"pass","font":"reversi","color":"#181800"}]
  execute if data storage yrfs_reversi: {root:{language:"ja_jp"}} run title @a title [{"text":"パス","font":"reversi","color":"#181800"},{"translate":"yrf_system:space_3"}]
  execute as @a at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 .5

# ターン交代
  execute unless data storage yrfs_reversi: {root:{game_status:{turn:"kill_process"}}} run data modify storage yrfs_reversi: root.game_status.turn set value "waiting_black"
  execute unless data storage yrfs_reversi: {root:{game_status:{turn:"kill_process"}}} if data storage yrfs_reversi: {root:{game_status:{is_cpu:{white:false}}}} run schedule function yrfs_reversi:white/player/turn_start 20
  execute unless data storage yrfs_reversi: {root:{game_status:{turn:"kill_process"}}} if data storage yrfs_reversi: {root:{game_status:{is_cpu:{white:true}}}} run schedule function yrfs_reversi:white/cpu/virtual_turn/init 20

# 強制中断時の処理
  execute if data storage yrfs_reversi: {root:{game_status:{turn:"kill_process"}}} run schedule function yrfs_reversi:game_end 1
