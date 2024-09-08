#> yrfs_reversi:click_detection/_
#
# クリックされた場所を基準に変更する
#
# @within advancement yrfs_reversi:player_interacted_with_entity

# advancementの初期化
  advancement revoke @s only yrfs_reversi:player_interacted_with_entity

# タグを付ける
  tag @s add reversi_clicker

# クリックされたinteractionが盤面の子だった時の処理
  execute as @e[type=interaction,tag=reversi_board_interaction] if data entity @s {interaction:{}} at @s as @e[type=marker,tag=reversi_marker,sort=nearest,limit=1] at @s run function yrfs_reversi:click_detection/im_marker

# クリックされたinteractionがGUIの子だった時の処理
  execute as @e[type=interaction,tag=reversi_gui_interaction] if data entity @s {interaction:{}} at @s run function yrfs_reversi:click_detection/im_gui_interaction

# nbtのinteractionの中身を消しとく
  execute as @e[type=interaction,tag=reversi_interaction] if data entity @s {interaction:{}} run data remove entity @s interaction

# タグを外す
  tag @s remove reversi_clicker
