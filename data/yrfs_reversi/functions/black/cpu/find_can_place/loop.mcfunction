#> yrfs_reversi:black/cpu/find_can_place/loop
#
# 置ける場所を探す時のループ処理
#
# @within function
#           yrfs_reversi:black/cpu/find_can_place/_
#           yrfs_reversi:black/cpu/find_can_place/loop

# 一つ先のマスが空白なら0を返す
  execute if data entity @e[type=marker,tag=reversi_marker,distance=..0.01,sort=nearest,limit=1] {data:{cpu:{disc:""}}} run return 0

# 一つ先のマスが黒なら1を返す
  execute if data entity @e[type=marker,tag=reversi_marker,distance=..0.01,sort=nearest,limit=1] {data:{cpu:{disc:"black"}}} run return 1

# 一つ先のマスが白ならループ
  $execute if data entity @e[type=marker,tag=reversi_marker,distance=..0.01,sort=nearest,limit=1] {data:{cpu:{disc:"white"}}} positioned $(position) store result entity @s data.cpu.can_reverse_direction.$(direction) byte 1 run function yrfs_reversi:black/cpu/find_can_place/loop {position:"$(position)",direction:"$(direction)"}
