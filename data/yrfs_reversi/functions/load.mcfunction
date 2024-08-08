#> yrfs_reversi:load
#
# #loadから実行されるfunction
#
# @within tag/function minecraft:load

# scoreboard
  scoreboard objectives add reversi dummy
  scoreboard objectives add reversi_rotation_delay dummy
  scoreboard objectives add reversi_cpu_surrounded dummy
  scoreboard objectives add reversi_cpu_surrounded_temp dummy
  scoreboard objectives add reversi_sneak_check minecraft.custom:sneak_time

# forceload
  forceload add -1 -1 0 0

# kill
  kill @e[tag=reversi_find_gaze_point]
  kill @e[tag=reversi_gui_background]

# summon
  summon marker 0.0 0.0 0.0 {Tags:["reversi","reversi_find_gaze_point"],Invulnerable:1b}
  summon item_display 0.0 3.5 16.999 {Tags:["reversi_gui_background"],item:{id:"green_concrete",Count:1b,tag:{CustomModelData:1}},transformation:{left_rotation:{angle:1.5708f,axis:[1f,0f,0f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[3.999f,3.999f,3.999f]},brightness:{sky:15,block:10}}
