#> yrfs_reversi:gui/start_menu/_
#
# スタートメニューを表示
#
# @within function
#           yrfs_reversi:game_end
#           yrfs_reversi:language/sync
#           reversi:language/en
#           reversi:language/ja

# 表示してたものを消す
  kill @e[tag=reversi_gui]

# 新たに表示
  summon item_display 0.9 4.3 15.04 {Tags:["reversi","reversi_gui","reversi_gui_display","reversi_gui_disk_black"],item:{id:"minecraft:armor_stand",count:1b,components:{"minecraft:custom_model_data":1}},Rotation:[-180f,90f],transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},brightness:{sky:15,block:10}}
  summon text_display 0.9 3.3 14.999 {Tags:["reversi","reversi_gui","reversi_gui_display","reversi_gui_black_player"],text:'{"text":"CPU"}',background:0,Rotation:[-180f,0f],transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[1.8f,1.8f,1.8f]}}
  summon item_display -0.9 4.3 15.04 {Tags:["reversi","reversi_gui","reversi_gui_display","reversi_gui_disk_white"],item:{id:"minecraft:armor_stand",count:1b,components:{"minecraft:custom_model_data":2}},Rotation:[-180f,90f],transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},brightness:{sky:15,block:10}}
  summon text_display -0.9 3.3 14.999 {Tags:["reversi","reversi_gui","reversi_gui_display","reversi_gui_white_player"],text:'{"text":"CPU"}',background:0,Rotation:[-180f,0f],transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[1.8f,1.8f,1.8f]}}
  execute if data storage yrfs_reversi: {root:{language:"en_us"}} run function yrfs_reversi:gui/start_menu/en_us
  execute if data storage yrfs_reversi: {root:{language:"ja_jp"}} run function yrfs_reversi:gui/start_menu/ja_jp
