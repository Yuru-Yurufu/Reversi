#> yrfs_reversi:result/advancements_check/black_64
#
# 黒全染めの時
#
# @within function yrfs_reversi:result/gui/1

# perfect_win
  execute as @a[tag=reversi_player_black,advancements={yrfs_reversi:reversi/perfect_win=false},limit=1] run advancement grant @s only yrfs_reversi:reversi/perfect_win

# perfect_win_ai
  execute as @a[tag=reversi_player_black,advancements={yrfs_reversi:reversi/perfect_win_ai=false},limit=1] if data storage yrfs_reversi: {root:{game_status:{is_cpu:{white:true}}}} run advancement grant @s only yrfs_reversi:reversi/perfect_win_ai
