#> yrfs_reversi:black/cpu/virtual_turn/1_end
#
# 1ターン目のループを終わる時の処理
#
# @within function yrfs_reversi:black/cpu/virtual_turn/3

# 一番低くなる(開放度+α)を保存
  scoreboard players operation 1 reversi_cpu_surrounded < @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here_] reversi_cpu_surrounded

# (開放度+α)が一番低くなる場所に置く
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here_] if score @s reversi_cpu_surrounded = 1 reversi_cpu_surrounded run tag @s add reversi_temp
  tag @e[type=marker,tag=reversi_temp,sort=random,limit=1] add reversi_cpu_now_placed_here
  tag @e[type=marker,tag=reversi_temp] remove reversi_temp
  data modify entity @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here,limit=1] data.disc set value "black"
  execute at @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here,limit=1] run data modify entity @e[type=item_display,tag=reversi_disc,distance=..1.1,limit=1] item.components."minecraft:custom_model_data" set value 1

# 置いた石とその周りの石が囲まれているかを見る
  execute at @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] as @e[type=marker,tag=reversi_marker,tag=!reversi_ignore_find_can_place,distance=..1.5] unless data entity @s {data:{disc:""}} at @s run function yrfs_reversi:surrounded_check

# ひっくり返すための準備
  scoreboard players set system reversi_rotation_delay 0
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] if data entity @s {data:{cpu_:{can_reverse_direction:{nw:true}}}} at @s positioned ~1 ~1.06 ~1 as @e[type=item_display,tag=reversi_disc,distance=..0.01] run function yrfs_reversi:black/rotation/loop {position:"~1 ~ ~1"}
  scoreboard players set system reversi_rotation_delay 0
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] if data entity @s {data:{cpu_:{can_reverse_direction:{n:true}}}} at @s positioned ~ ~1.06 ~1 as @e[type=item_display,tag=reversi_disc,distance=..0.01] run function yrfs_reversi:black/rotation/loop {position:"~ ~ ~1"}
  scoreboard players set system reversi_rotation_delay 0
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] if data entity @s {data:{cpu_:{can_reverse_direction:{ne:true}}}} at @s positioned ~-1 ~1.06 ~1 as @e[type=item_display,tag=reversi_disc,distance=..0.01] run function yrfs_reversi:black/rotation/loop {position:"~-1 ~ ~1"}
  scoreboard players set system reversi_rotation_delay 0
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] if data entity @s {data:{cpu_:{can_reverse_direction:{w:true}}}} at @s positioned ~1 ~1.06 ~ as @e[type=item_display,tag=reversi_disc,distance=..0.01] run function yrfs_reversi:black/rotation/loop {position:"~1 ~ ~"}
  scoreboard players set system reversi_rotation_delay 0
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] if data entity @s {data:{cpu_:{can_reverse_direction:{e:true}}}} at @s positioned ~-1 ~1.06 ~ as @e[type=item_display,tag=reversi_disc,distance=..0.01] run function yrfs_reversi:black/rotation/loop {position:"~-1 ~ ~"}
  scoreboard players set system reversi_rotation_delay 0
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] if data entity @s {data:{cpu_:{can_reverse_direction:{sw:true}}}} at @s positioned ~1 ~1.06 ~-1 as @e[type=item_display,tag=reversi_disc,distance=..0.01] run function yrfs_reversi:black/rotation/loop {position:"~1 ~ ~-1"}
  scoreboard players set system reversi_rotation_delay 0
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] if data entity @s {data:{cpu_:{can_reverse_direction:{s:true}}}} at @s positioned ~ ~1.06 ~-1 as @e[type=item_display,tag=reversi_disc,distance=..0.01] run function yrfs_reversi:black/rotation/loop {position:"~ ~ ~-1"}
  scoreboard players set system reversi_rotation_delay 0
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_now_placed_here] if data entity @s {data:{cpu_:{can_reverse_direction:{se:true}}}} at @s positioned ~-1 ~1.06 ~-1 as @e[type=item_display,tag=reversi_disc,distance=..0.01] run function yrfs_reversi:black/rotation/loop {position:"~-1 ~ ~-1"}

# ひっくり返す
  schedule function yrfs_reversi:black/rotation/sc_loop 3

# リセット
  scoreboard players reset * reversi_cpu_surrounded
  scoreboard players reset * reversi_cpu_surrounded_temp
  tag @e[type=marker,tag=reversi_cpu_now_placed_here] remove reversi_cpu_now_placed_here
  tag @e[type=marker,tag=reversi_cpu_now_placed_here_] remove reversi_cpu_now_placed_here_
  tag @e[type=marker,tag=reversi_cpu_can_place_here] remove reversi_cpu_can_place_here
  tag @e[type=marker,tag=reversi_cpu_can_place_here_] remove reversi_cpu_can_place_here_
  tag @e[type=marker,tag=reversi_cpu_used_] remove reversi_cpu_used_
  execute as @e[type=marker,tag=reversi_marker] run data remove entity @s data.cpu_
  execute as @e[type=marker,tag=reversi_marker,tag=reversi_cpu_ignore_find_can_place,tag=!reversi_ignore_find_can_place] run tag @s remove reversi_cpu_ignore_find_can_place
