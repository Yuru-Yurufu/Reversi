#> reversi:command/language/ja
#
# 言語設定を日本語にする
#
# @user

# 言語を設定
  data modify storage yrfs_reversi: root.language set value "ja_jp"
  data modify storage yrfs_reversi: root.language_force set value 1b

# 操作パネルを再生成
  execute if entity @e[tag=reversi_gui_entry_black] run function yrfs_reversi:gui/start_menu/_
  execute if entity @e[tag=reversi_gui_end_game] run function yrfs_reversi:gui/display_end_game_button/_
  execute if entity @e[tag=reversi_gui_confirm_end_game] run function yrfs_reversi:gui/confirm_end_game/_
