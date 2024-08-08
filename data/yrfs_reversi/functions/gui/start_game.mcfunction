#> yrfs_reversi:gui/start_game
#
# ゲームを開始する
#
# @within function yrfs_reversi:click_detection/im_gui_interaction

# 場合分けしてゲーム開始
  execute if entity @a[tag=reversi_player_black] if entity @a[tag=reversi_player_white] run function reversi:command/start
  execute if entity @a[tag=reversi_player_black] unless entity @a[tag=reversi_player_white] run function reversi:command/start_cpu_white
  execute unless entity @a[tag=reversi_player_black] if entity @a[tag=reversi_player_white] run function reversi:command/start_cpu_black
  execute unless entity @a[tag=reversi_player_black] unless entity @a[tag=reversi_player_white] run function reversi:command/start_cpu_both
