#> yrfs_reversi:gui/display_end_game_button/_
#
# 「ゲームを終了する」を表示する
#
# @within function
#           yrfs_reversi:command/start
#           yrfs_reversi:command/start_cpu_black
#           yrfs_reversi:command/start_cpu_white
#           yrfs_reversi:command/start_cpu_both
#           yrfs_reversi:click_detection/im_gui_interaction
#           yrfs_reversi:language/sync
#           reversi:language/en
#           reversi:language/ja

# 表示してたものを消す
  kill @e[tag=reversi_gui]

# 新たに表示
  execute if data storage yrfs_reversi: {root:{language:"en_us"}} run function yrfs_reversi:gui/display_end_game_button/en_us
  execute if data storage yrfs_reversi: {root:{language:"ja_jp"}} run function yrfs_reversi:gui/display_end_game_button/ja_jp
