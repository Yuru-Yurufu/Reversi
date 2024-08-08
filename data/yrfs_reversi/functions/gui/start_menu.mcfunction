#> yrfs_reversi:gui/start_menu
#
# スタートメニューを表示
#
# @within function
#           yrfs_reversi:game_end

# プレイヤーのタグをリセット
  tag @a[tag=reversi_player_black] remove reversi_player_black
  tag @a[tag=reversi_player_white] remove reversi_player_white

# 表示してたものを消す
  kill @e[tag=reversi_gui]

# 新たに表示
  summon item_display 0.9 4.3 15.04 {Tags:["reversi","reversi_gui","reversi_gui_display","reversi_gui_disk_black"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:1}},Rotation:[-180f,90f],transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},brightness:{sky:15,block:10}}
  summon text_display 0.9 3.3 14.999 {Tags:["reversi","reversi_gui","reversi_gui_display","reversi_gui_black_player"],text:'{"text":"CPU"}',background:0,Rotation:[-180f,0f],transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[1.8f,1.8f,1.8f]}}
  summon text_display 0.885 2.9 14.999 {Tags:["reversi","reversi_gui","reversi_gui_display","reversi_gui_entry_black"],text:'{"text":"エントリー","underlined":false}',background:0,Rotation:[-180f,0f]}
  summon interaction 0.875 2.9 15.599 {Tags:["reversi","reversi_interaction","reversi_gui","reversi_gui_interaction","reversi_gui_entry_black"],width:1.2f,height:0.3f}
  summon text_display -0.9 3.3 14.999 {Tags:["reversi","reversi_gui","reversi_gui_display","reversi_gui_white_player"],text:'{"text":"CPU"}',background:0,Rotation:[-180f,0f],transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[1.8f,1.8f,1.8f]}}
  summon item_display -0.9 4.3 15.04 {Tags:["reversi","reversi_gui","reversi_gui_display","reversi_gui_disk_white"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:2}},Rotation:[-180f,90f],transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},brightness:{sky:15,block:10}}
  summon text_display -0.915 2.9 14.999 {Tags:["reversi","reversi_gui","reversi_gui_display","reversi_gui_entry_white"],text:'{"text":"エントリー","underlined":false}',background:0,Rotation:[-180f,0f]}
  summon interaction -0.925 2.9 15.599 {Tags:["reversi","reversi_interaction","reversi_gui","reversi_gui_interaction","reversi_gui_entry_white"],width:1.2f,height:0.3f}
  summon text_display 0.01 2.3 14.999 {Tags:["reversi","reversi_gui","reversi_gui_display","reversi_gui_start_game"],text:'{"text":"ゲームを開始する","underlined":false}',background:0,Rotation:[-180f,0f]}
  summon interaction 0.0 2.3 15.959 {Tags:["reversi","reversi_interaction","reversi_gui","reversi_gui_interaction","reversi_gui_start_game"],width:1.92f,height:0.3f}
