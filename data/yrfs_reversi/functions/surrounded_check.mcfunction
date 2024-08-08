#> yrfs_reversi:surrounded_check
#
# 石が囲まれいるかチェックする
#
# @within function yrfs_reversi:black/turn_end

# どこか一つでも空いていたら中断
  execute positioned ~-1 ~ ~ if data entity @e[type=marker,tag=reversi_marker,distance=..0.01,sort=nearest,limit=1] {data:{disc:""}} if block ~ ~ ~ green_concrete run return 0
  execute positioned ~1 ~ ~ if data entity @e[type=marker,tag=reversi_marker,distance=..0.01,sort=nearest,limit=1] {data:{disc:""}} if block ~ ~ ~ green_concrete run return 0
  execute positioned ~ ~ ~-1 if data entity @e[type=marker,tag=reversi_marker,distance=..0.01,sort=nearest,limit=1] {data:{disc:""}} if block ~ ~ ~ green_concrete run return 0
  execute positioned ~ ~ ~1 if data entity @e[type=marker,tag=reversi_marker,distance=..0.01,sort=nearest,limit=1] {data:{disc:""}} if block ~ ~ ~ green_concrete run return 0
  execute positioned ~-1 ~ ~-1 if data entity @e[type=marker,tag=reversi_marker,distance=..0.01,sort=nearest,limit=1] {data:{disc:""}} if block ~ ~ ~ green_concrete run return 0
  execute positioned ~1 ~ ~-1 if data entity @e[type=marker,tag=reversi_marker,distance=..0.01,sort=nearest,limit=1] {data:{disc:""}} if block ~ ~ ~ green_concrete run return 0
  execute positioned ~-1 ~ ~1 if data entity @e[type=marker,tag=reversi_marker,distance=..0.01,sort=nearest,limit=1] {data:{disc:""}} if block ~ ~ ~ green_concrete run return 0
  execute positioned ~1 ~ ~1 if data entity @e[type=marker,tag=reversi_marker,distance=..0.01,sort=nearest,limit=1] {data:{disc:""}} if block ~ ~ ~ green_concrete run return 0

# 全部埋まってたら探索の時に無視するためにタグをつけておく
  tag @s add reversi_ignore_find_can_place
