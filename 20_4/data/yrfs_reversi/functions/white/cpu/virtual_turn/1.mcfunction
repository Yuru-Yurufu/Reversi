#> yrfs_reversi:white/cpu/virtual_turn/1
#
# 1ターン目 白のターン
#
# as,at: server
#
# @within function yrfs_reversi:white/cpu/virtual_turn/init

# 置けるマスを探す(直前のターンがパスの場合はスキップ)
  execute unless data storage yrfs_reversi: {root:{pass_count:1b}} as @e[type=marker,tag=reversi_marker,tag=!reversi_ignore_find_can_place] if data entity @s {data:{disc:"black"}} at @s run function yrfs_reversi:white/player/find_can_place/_

# 冗長な記述がイヤなのでまとめておく
  execute as @e[type=marker,tag=reversi_marker,tag=!reversi_can_place_here] if data entity @s {data:{disc:""}} unless data entity @s {data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false}}} run tag @s add reversi_can_place_here
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_can_place_here] if data entity @s {data:{disc:"",can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false}}} run tag @s remove reversi_can_place_here
  execute as @e[type=marker,tag=reversi_marker] run data modify entity @s data.cpu.can_reverse_direction set from entity @s data.can_reverse_direction

# 実行順が一番早いmarkerにタグをつけておく
  tag @e[type=marker,tag=reversi_marker,tag=reversi_can_place_here,limit=1] add reversi_cpu_now_placed_here

# 盤面を保存しておく
  tag @e[type=marker,tag=reversi_marker,tag=reversi_can_place_here] add reversi_cpu_can_place_here_
  tag @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] add reversi_cpu_now_placed_here_
  execute as @e[type=marker,tag=reversi_marker] run data modify entity @s data.cpu_ set from entity @s data.cpu

# タグ持ちの場所に置く
  data modify entity @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here,limit=1] data.cpu.disc set value "white"

# 一つも置けない場合パスをする
  execute unless entity @e[type=marker,tag=reversi_marker,tag=reversi_can_place_here] run schedule function yrfs_reversi:white/pass 7

# 置ける場合はpass_countを0に戻しておく
  execute if data storage yrfs_reversi: {root:{pass_count:1b}} if entity @e[type=marker,tag=reversi_marker,tag=reversi_can_place_here] run data modify storage yrfs_reversi: root.pass_count set value 0b

# ひっくり返す
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] if data entity @s {data:{can_reverse_direction:{nw:true}}} at @s run function yrfs_reversi:white/cpu/rotation {position:"~1 ~ ~1"}
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] if data entity @s {data:{can_reverse_direction:{n:true}}} at @s run function yrfs_reversi:white/cpu/rotation {position:"~ ~ ~1"}
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] if data entity @s {data:{can_reverse_direction:{ne:true}}} at @s run function yrfs_reversi:white/cpu/rotation {position:"~-1 ~ ~1"}
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] if data entity @s {data:{can_reverse_direction:{w:true}}} at @s run function yrfs_reversi:white/cpu/rotation {position:"~1 ~ ~"}
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] if data entity @s {data:{can_reverse_direction:{e:true}}} at @s run function yrfs_reversi:white/cpu/rotation {position:"~-1 ~ ~"}
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] if data entity @s {data:{can_reverse_direction:{sw:true}}} at @s run function yrfs_reversi:white/cpu/rotation {position:"~1 ~ ~-1"}
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] if data entity @s {data:{can_reverse_direction:{s:true}}} at @s run function yrfs_reversi:white/cpu/rotation {position:"~ ~ ~-1"}
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] if data entity @s {data:{can_reverse_direction:{se:true}}} at @s run function yrfs_reversi:white/cpu/rotation {position:"~-1 ~ ~-1"}

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
  execute as @e[type=marker,tag=reversi_marker] unless data entity @s {data:{cpu:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false}}}} run data modify entity @s data.cpu.can_reverse_direction set value {nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false}

# 2ターン目に進む
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here_] run function yrfs_reversi:white/cpu/virtual_turn/2
