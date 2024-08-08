#> yrfs_reversi:gui/entry/white
#
# 白にエントリーする
#
# @within function yrfs_reversi:click_detection/im_gui_interaction

# まだエントリーしていない人ならエントリーする
  execute if entity @s[tag=!reversi_player_white] run function yrfs_reversi:gui/entry/white2

# 既にエントリーしている人ならエントリーをやめる
  execute if entity @s[tag=reversi_player_white] run function yrfs_reversi:gui/entry/white_cancel

# tempタグを正しいものに直す
  tag @s[tag=reversi_player_white_temp] add reversi_player_white
  tag @s[tag=reversi_player_white_temp] remove reversi_player_white_temp
