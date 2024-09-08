#> yrfs_reversi:white/player/find_can_place/loop
#
# 置ける場所を探す時のループ処理
#
# @within function
#           yrfs_reversi:white/player/find_can_place/_
#           yrfs_reversi:white/player/find_can_place/loop

# 一つ先のマスが空白なら0を返す
  execute if data entity @e[type=marker,tag=reversi_marker,distance=..0.01,limit=1] {data:{disc:""}} run return 0

# 一つ先のマスが白なら1を返す
  execute if data entity @e[type=marker,tag=reversi_marker,distance=..0.01,limit=1] {data:{disc:"white"}} run return 1

# 一つ先のマスが黒ならループ
  $execute if data entity @e[type=marker,tag=reversi_marker,distance=..0.01,limit=1] {data:{disc:"black"}} positioned $(position) store result entity @s data.can_reverse_direction.$(direction) byte 1 run function yrfs_reversi:white/player/find_can_place/loop {position:"$(position)",direction:"$(direction)"}
