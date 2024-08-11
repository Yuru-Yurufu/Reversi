#> yrfs_reversi:click_detection/im_gui_interaction
#
# GUIのinteractionをクリックした時の処理
#
# @within function yrfs_reversi:click_detection/_

# 効果音
  playsound minecraft:ui.button.click master @a ~ ~ ~ 1 2

# ゲームを開始する
  execute if entity @s[tag=reversi_gui_start_game] run function yrfs_reversi:gui/start_game

# 黒にエントリー
  execute if entity @s[tag=reversi_gui_entry_black] as @a[tag=reversi_clicker] run function yrfs_reversi:gui/entry/black

# 白にエントリー
  execute if entity @s[tag=reversi_gui_entry_white] as @a[tag=reversi_clicker] run function yrfs_reversi:gui/entry/white

# ゲームを終了する
  execute if entity @s[tag=reversi_gui_end_game] run function yrfs_reversi:gui/confirm_end_game/_

# ゲームを終了する → はい
  execute if entity @s[tag=reversi_gui_confirm_end_game_yes] run function yrfs_reversi:gui/end_game

# ゲームを終了する → いいえ
  execute if entity @s[tag=reversi_gui_confirm_end_game_no] run function yrfs_reversi:gui/display_end_game_button/_

# 観戦
  execute if entity @s[tag=reversi_gui_spectate] as @a[tag=reversi_clicker] at @s run function reversi:command/spectate_camera
