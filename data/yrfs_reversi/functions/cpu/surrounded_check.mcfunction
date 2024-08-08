#> yrfs_reversi:cpu/surrounded_check
#
# 石が囲まれいるかチェックする
#
# @within function
#           yrfs_reversi:white/cpu/virtual_turn/1
#           yrfs_reversi:black/cpu/virtual_turn/surrounded_check
#           yrfs_reversi:white/cpu/virtual_turn/surrounded_check

# 初期化
  scoreboard players set surrounded_check reversi 0

# 空いてたらスコアを加算
  execute positioned ~-1 ~ ~ if data entity @e[type=marker,tag=reversi_marker,distance=..0.01,sort=nearest,limit=1] {data:{cpu:{disc:""}}} if block ~ ~ ~ green_concrete run scoreboard players add surrounded_check reversi 1
  execute positioned ~1 ~ ~ if data entity @e[type=marker,tag=reversi_marker,distance=..0.01,sort=nearest,limit=1] {data:{cpu:{disc:""}}} if block ~ ~ ~ green_concrete run scoreboard players add surrounded_check reversi 1
  execute positioned ~ ~ ~-1 if data entity @e[type=marker,tag=reversi_marker,distance=..0.01,sort=nearest,limit=1] {data:{cpu:{disc:""}}} if block ~ ~ ~ green_concrete run scoreboard players add surrounded_check reversi 1
  execute positioned ~ ~ ~1 if data entity @e[type=marker,tag=reversi_marker,distance=..0.01,sort=nearest,limit=1] {data:{cpu:{disc:""}}} if block ~ ~ ~ green_concrete run scoreboard players add surrounded_check reversi 1
  execute positioned ~-1 ~ ~-1 if data entity @e[type=marker,tag=reversi_marker,distance=..0.01,sort=nearest,limit=1] {data:{cpu:{disc:""}}} if block ~ ~ ~ green_concrete run scoreboard players add surrounded_check reversi 1
  execute positioned ~1 ~ ~-1 if data entity @e[type=marker,tag=reversi_marker,distance=..0.01,sort=nearest,limit=1] {data:{cpu:{disc:""}}} if block ~ ~ ~ green_concrete run scoreboard players add surrounded_check reversi 1
  execute positioned ~-1 ~ ~1 if data entity @e[type=marker,tag=reversi_marker,distance=..0.01,sort=nearest,limit=1] {data:{cpu:{disc:""}}} if block ~ ~ ~ green_concrete run scoreboard players add surrounded_check reversi 1
  execute positioned ~1 ~ ~1 if data entity @e[type=marker,tag=reversi_marker,distance=..0.01,sort=nearest,limit=1] {data:{cpu:{disc:""}}} if block ~ ~ ~ green_concrete run scoreboard players add surrounded_check reversi 1

# 全部埋まってたら探索の時に無視するために印をつけておく
  execute if score surrounded_check reversi matches 0 run tag @s add reversi_cpu_ignore_find_can_place

# スコアの合計値を代入
  scoreboard players operation @s reversi_cpu_surrounded_temp = surrounded_check reversi

# weightをかける
  scoreboard players operation @s reversi_cpu_surrounded_temp *= cpu_surrounded_weight reversi
