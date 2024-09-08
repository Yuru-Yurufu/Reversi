#> yrfs_reversi:white/rotation/loop
#
# ひっくり返す処理のループ部分
#
# @within function yrfs_reversi:white/rotation/init

# 後でまとめて処理するためにタグをつけておく
  tag @s add reversi_rotation

# スコアでタイミングをずらす
  scoreboard players add system reversi_rotation_delay 1
  scoreboard players operation @s reversi_rotation_delay = system reversi_rotation_delay

# 一つ先のマスが黒ならループ
  $execute positioned $(position) as @e[type=item_display,tag=reversi_disc,distance=..0.01,sort=nearest,limit=1] if data entity @s {item:{components:{"minecraft:custom_model_data":1}}} run function yrfs_reversi:white/rotation/loop {position:"$(position)"}
