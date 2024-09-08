#> yrfs_reversi:click_detection/im_marker
#
# 右クリック検知
#
# @within function yrfs_reversi:click_detection/_

# 置けないマスだったら中断
  execute if entity @s[tag=!reversi_can_place_here] run return 0

# 黒のターン
  execute if entity @a[tag=reversi_clicker,tag=reversi_player_black] if data storage yrfs_reversi: {root:{game_status:{turn:"black"}}} run function yrfs_reversi:black/rotation/init

# 白のターン
  execute if entity @a[tag=reversi_clicker,tag=reversi_player_white] if data storage yrfs_reversi: {root:{game_status:{turn:"white"}}} run function yrfs_reversi:white/rotation/init
