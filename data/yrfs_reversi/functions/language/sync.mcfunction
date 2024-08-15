#> yrfs_reversi:language/sync
#
# パネルの言語を現在の使用言語に合わせる
#
# @within function yrfs_reversi:sc_load

# 使用言語の確認
  function yrfs_reversi:language/check

# 操作パネルを再生成
  execute if entity @e[tag=reversi_gui_entry_black] run function yrfs_reversi:gui/start_menu/_
  execute if entity @e[tag=reversi_gui_end_game] run function yrfs_reversi:gui/display_end_game_button/_
  execute if entity @e[tag=reversi_gui_confirm_end_game] run function yrfs_reversi:gui/confirm_end_game/_
