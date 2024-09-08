#> yrfs_reversi:black/rotation/init
#
# 石をひっくり返す処理
#
# @within function yrfs_reversi:click_detection/im_marker

# ターン切り替え
  data modify storage yrfs_reversi: root.game_status.turn set value "waiting_black"

# クリックした場所に石を置く
  data modify entity @s data.disc set value "black"
  tag @s add reversi_now_placed_here
  data modify entity @e[type=item_display,tag=reversi_disc,distance=..1.1,sort=nearest,limit=1] item.components."minecraft:custom_model_data" set value 1

# ひっくり返すタイミングの設定
  scoreboard players set system reversi_rotation_delay 0
  execute if data entity @s {data:{can_reverse_direction:{nw:true}}} positioned ~1 ~1.06 ~1 as @e[type=item_display,tag=reversi_disc,distance=..0.01,sort=nearest,limit=1] run function yrfs_reversi:black/rotation/loop {position:"~1 ~ ~1"}
  scoreboard players set system reversi_rotation_delay 0
  execute if data entity @s {data:{can_reverse_direction:{n:true}}} positioned ~ ~1.06 ~1 as @e[type=item_display,tag=reversi_disc,distance=..0.01,sort=nearest,limit=1] run function yrfs_reversi:black/rotation/loop {position:"~ ~ ~1"}
  scoreboard players set system reversi_rotation_delay 0
  execute if data entity @s {data:{can_reverse_direction:{ne:true}}} positioned ~-1 ~1.06 ~1 as @e[type=item_display,tag=reversi_disc,distance=..0.01,sort=nearest,limit=1] run function yrfs_reversi:black/rotation/loop {position:"~-1 ~ ~1"}
  scoreboard players set system reversi_rotation_delay 0
  execute if data entity @s {data:{can_reverse_direction:{w:true}}} positioned ~1 ~1.06 ~ as @e[type=item_display,tag=reversi_disc,distance=..0.01,sort=nearest,limit=1] run function yrfs_reversi:black/rotation/loop {position:"~1 ~ ~"}
  scoreboard players set system reversi_rotation_delay 0
  execute if data entity @s {data:{can_reverse_direction:{e:true}}} positioned ~-1 ~1.06 ~ as @e[type=item_display,tag=reversi_disc,distance=..0.01,sort=nearest,limit=1] run function yrfs_reversi:black/rotation/loop {position:"~-1 ~ ~"}
  scoreboard players set system reversi_rotation_delay 0
  execute if data entity @s {data:{can_reverse_direction:{sw:true}}} positioned ~1 ~1.06 ~-1 as @e[type=item_display,tag=reversi_disc,distance=..0.01,sort=nearest,limit=1] run function yrfs_reversi:black/rotation/loop {position:"~1 ~ ~-1"}
  scoreboard players set system reversi_rotation_delay 0
  execute if data entity @s {data:{can_reverse_direction:{s:true}}} positioned ~ ~1.06 ~-1 as @e[type=item_display,tag=reversi_disc,distance=..0.01,sort=nearest,limit=1] run function yrfs_reversi:black/rotation/loop {position:"~ ~ ~-1"}
  scoreboard players set system reversi_rotation_delay 0
  execute if data entity @s {data:{can_reverse_direction:{se:true}}} positioned ~-1 ~1.06 ~-1 as @e[type=item_display,tag=reversi_disc,distance=..0.01,sort=nearest,limit=1] run function yrfs_reversi:black/rotation/loop {position:"~-1 ~ ~-1"}

# くるりんちょ
  schedule function yrfs_reversi:black/rotation/sc_loop 3
