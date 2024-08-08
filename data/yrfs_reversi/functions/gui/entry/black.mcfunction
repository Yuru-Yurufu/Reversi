#> yrfs_reversi:gui/entry/black
#
# 黒にエントリーする
#
# @within function yrfs_reversi:click_detection/im_gui_interaction

# まだエントリーしていない人ならエントリーする
  execute if entity @s[tag=!reversi_player_black] run function yrfs_reversi:gui/entry/black2

# 既にエントリーしている人ならエントリーをやめる
  execute if entity @s[tag=reversi_player_black] run function yrfs_reversi:gui/entry/black_cancel

# tempタグを正しいものに直す
  tag @s[tag=reversi_player_black_temp] add reversi_player_black
  tag @s[tag=reversi_player_black_temp] remove reversi_player_black_temp
