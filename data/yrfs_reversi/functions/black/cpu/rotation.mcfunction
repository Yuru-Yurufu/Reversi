#> yrfs_reversi:black/cpu/rotation
#
# ひっくり返す
#
# @within function
#           yrfs_reversi:black/cpu/virtual_turn/1
#           yrfs_reversi:white/cpu/virtual_turn/2
#           yrfs_reversi:black/cpu/rotation

# 黒にする
  data modify entity @s data.cpu.disc set value "black"

# 後でまとめて処理するためにタグをつけておく
  tag @s add reversi_cpu_rotation

# 一つ先のマスが白ならループ
  $execute positioned $(position) as @e[type=marker,tag=reversi_marker,distance=..0.01,limit=1] if data entity @s {data:{cpu:{disc:"white"}}} run function yrfs_reversi:black/cpu/rotation {position:"$(position)"}
