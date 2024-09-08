#> yrfs_reversi:rejoin/reset
#
# タグとかをリセットする
#
# @within function yrfs_reversi:rejoin/_

# tag
  tag @s remove reversi_player_black
  tag @s remove reversi_player_white

# scoreboard
  scoreboard players reset @s reversi_game_start_time
