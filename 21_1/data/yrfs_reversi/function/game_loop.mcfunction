#> yrfs_reversi:game_loop
#
# ゲーム中にループさせる処理
#
# @within function yrfs_reversi:main

# 目印用のマーカーがいるブロックにパーティクルを表示
  execute if data storage yrfs_reversi: {root:{game_status:{is_cpu:{black:false,white:true},turn:"black"}}} at @e[type=marker,tag=reversi_marker,tag=reversi_can_place_here] run particle electric_spark ~ ~1.1 ~ 0 0 0 0 1 force
  execute if data storage yrfs_reversi: {root:{game_status:{is_cpu:{black:true,white:false},turn:"white"}}} at @e[type=marker,tag=reversi_marker,tag=reversi_can_place_here] run particle electric_spark ~ ~1.1 ~ 0 0 0 0 1 force
  execute if data storage yrfs_reversi: {root:{game_status:{turn:"black"}}} if data storage yrfs_reversi: {root:{game_status:{is_cpu:{black:false,white:false}}}} at @e[type=marker,tag=reversi_marker,tag=reversi_can_place_here] run particle dust{color:[0,0,0],scale:1} ~ ~1.1 ~ 0 0 0 0 1 force
  execute if data storage yrfs_reversi: {root:{game_status:{turn:"white"}}} if data storage yrfs_reversi: {root:{game_status:{is_cpu:{black:false,white:false}}}} at @e[type=marker,tag=reversi_marker,tag=reversi_can_place_here] run particle dust{color:[100000000,100000000,100000000],scale:1} ~ ~1.1 ~ 0 0 0 0 1 force
