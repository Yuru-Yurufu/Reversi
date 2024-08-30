#> yrfs_reversi:sc_load
#
# #loadから10tick遅らせて実行したいもの
#
# @within function yrfs_reversi:load

# kill
  kill @e[tag=reversi_find_gaze_point]
  kill @e[tag=reversi_gui_background]

# パネルの言語を現在の使用言語に合わせる
  execute unless data storage yrfs_reversi: {root:{language_force:1b}} run function yrfs_reversi:language/sync

# summon
  summon marker 0.0 0.0 0.0 {Tags:["reversi","reversi_find_gaze_point"],Invulnerable:1b}
  summon item_display 0.0 3.5 16.999 {Tags:["reversi_gui_background"],item:{id:"green_concrete",Count:1b,tag:{CustomModelData:1}},transformation:{left_rotation:{angle:1.5708f,axis:[1f,0f,0f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[3.999f,3.999f,3.999f]},brightness:{sky:15,block:10}}
