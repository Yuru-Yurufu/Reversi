#> yrfs_reversi:gui/confirm_end_game/_
#
# ゲーム終了の確認メッセージを表示する
#
# @within function
#           yrfs_reversi:click_detection/im_gui_interaction
#           yrfs_reversi:language/sync
#           reversi:command/language/en
#           reversi:command/language/ja

# 表示してたものを消す
  kill @e[tag=reversi_gui]

# 新たに表示
  execute if data storage yrfs_reversi: {root:{language:"en_us"}} run function yrfs_reversi:gui/confirm_end_game/en_us
  execute if data storage yrfs_reversi: {root:{language:"ja_jp"}} run function yrfs_reversi:gui/confirm_end_game/ja_jp
