#> yrfs_reversi:gui/entry/white_cancel
#
# エントリーをキャンセルする
#
# @within function yrfs_reversi:gui/entry/white

# cancel
  kill @e[type=item_display,tag=reversi_gui_white_player]
  summon text_display -0.9 3.3 14.999 {Tags:["reversi","reversi_gui","reversi_gui_display","reversi_gui_white_player"],text:'{"text":"CPU"}',background:0,Rotation:[-180f,0f],transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[1.8f,1.8f,1.8f]}}
  tag @a remove reversi_player_white
