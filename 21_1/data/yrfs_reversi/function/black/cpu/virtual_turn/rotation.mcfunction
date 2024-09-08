#> yrfs_reversi:black/cpu/virtual_turn/rotation
#
# ひっくり返す
#
# @within function
#           yrfs_reversi:black/cpu/virtual_turn/surrounded_check
#           yrfs_reversi:black/cpu/virtual_turn/rotation

# 後でまとめて処理するためにタグをつけておく
  tag @s add reversi_cpu_rotation

# 一つ先のマスが白ならループ
  $execute positioned $(position) as @e[type=marker,tag=reversi_marker,distance=..0.01,limit=1] if data entity @s {data:{cpu:{disc:"white"}}} run function yrfs_reversi:black/cpu/virtual_turn/rotation {position:"$(position)"}
