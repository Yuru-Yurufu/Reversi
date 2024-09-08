#> yrfs_reversi:result/respectate
#
# spectateし直し
#
# @within function yrfs_reversi:result/main

# 再spectate
  gamemode spectator
  spectate @e[type=item_display,tag=reversi_camera,limit=1] @s

# スコアリセット
  scoreboard players set @s reversi_sneak_check 0
