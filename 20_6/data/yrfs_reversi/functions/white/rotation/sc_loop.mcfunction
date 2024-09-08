#> yrfs_reversi:white/rotation/sc_loop
#
# タイミングをずらしながら石をひっくり返していく
#
# @within function yrfs_reversi:white/rotation/init

# スコアでタイミングをずらす
  scoreboard players remove @e[type=item_display,tag=reversi_disc,tag=reversi_rotation] reversi_rotation_delay 1

# ひっくり返すアニメーション
  execute as @e[type=item_display,tag=reversi_disc,tag=reversi_rotation,scores={reversi_rotation_delay=0}] at @s run function yrfs_reversi:white/rotation/tick_0
  execute as @e[type=item_display,tag=reversi_disc,tag=reversi_rotation,scores={reversi_rotation_delay=-1}] at @s run tp ~ ~0.1 ~
  execute as @e[type=item_display,tag=reversi_disc,tag=reversi_rotation,scores={reversi_rotation_delay=-3}] at @s run tp ~ ~-0.1 ~
  execute as @e[type=item_display,tag=reversi_disc,tag=reversi_rotation,scores={reversi_rotation_delay=-4}] at @s run tp ~ ~-0.3 ~
  execute as @e[type=item_display,tag=reversi_disc,tag=reversi_rotation,scores={reversi_rotation_delay=-5}] at @s run function yrfs_reversi:white/rotation/tick_5

# 全部ひっくり返したらターン終了処理をする
  execute unless entity @e[type=item_display,tag=reversi_disc,tag=reversi_rotation] run function yrfs_reversi:white/turn_end

# 次tickのアニメーション
  execute if entity @e[type=item_display,tag=reversi_disc,tag=reversi_rotation] run schedule function yrfs_reversi:white/rotation/sc_loop 1
