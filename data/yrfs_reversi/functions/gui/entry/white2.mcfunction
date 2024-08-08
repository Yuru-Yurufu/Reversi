#> yrfs_reversi:gui/entry/white2
#
# 白にエントリーする
#
# @within function yrfs_reversi:gui/entry/white

# 実際にエントリーする
  kill @e[tag=reversi_gui_white_player]
  tag @s add reversi_player_white_temp
  tag @a[tag=reversi_player_white] remove reversi_player_white

# プレイヤーヘッドの設定
  summon item_display -0.9 3.8 15.2 {Tags:["reversi","reversi_gui","reversi_gui_display","reversi_gui_white_player","reversi_gui_white_player_unset"],item:{id:"player_head",Count:1b,tag:{SkullOwner:""}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.9f,0.9f,0.9f]},brightness:{sky:15,block:10}}
  item modify entity @e[type=item_display,tag=reversi_gui_white_player_unset] container.0 yrfs_reversi:fill_player_head
  tag @e[tag=reversi_gui_white_player_unset] remove reversi_gui_white_player_unset
