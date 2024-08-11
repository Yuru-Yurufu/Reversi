#> reversi:command/start
#
# ゲームスタート (黒: Player, 白: Player)
#
# @user

# 初期化
  kill @e[tag=reversi]
  tag @a[tag=reversi_result_viewer] remove reversi_result_viewer

# オセロの石
  summon item_display -3.5 1.06 -3.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display -3.5 1.06 -2.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display -3.5 1.06 -1.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display -3.5 1.06 -0.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display -3.5 1.06 0.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display -3.5 1.06 1.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display -3.5 1.06 2.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display -3.5 1.06 3.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display -2.5 1.06 -3.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display -2.5 1.06 -2.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display -2.5 1.06 -1.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display -2.5 1.06 -0.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display -2.5 1.06 0.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display -2.5 1.06 1.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display -2.5 1.06 2.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display -2.5 1.06 3.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display -1.5 1.06 -3.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display -1.5 1.06 -2.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display -1.5 1.06 -1.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display -1.5 1.06 -0.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display -1.5 1.06 0.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display -1.5 1.06 1.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display -1.5 1.06 2.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display -1.5 1.06 3.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display -0.5 1.06 -3.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display -0.5 1.06 -2.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display -0.5 1.06 -1.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display -0.5 1.06 -0.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:2}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display -0.5 1.06 0.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:1}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display -0.5 1.06 1.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display -0.5 1.06 2.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display -0.5 1.06 3.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display 0.5 1.06 -3.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display 0.5 1.06 -2.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display 0.5 1.06 -1.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display 0.5 1.06 -0.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:1}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display 0.5 1.06 0.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:2}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display 0.5 1.06 1.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display 0.5 1.06 2.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display 0.5 1.06 3.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display 1.5 1.06 -3.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display 1.5 1.06 -2.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display 1.5 1.06 -1.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display 1.5 1.06 -0.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display 1.5 1.06 0.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display 1.5 1.06 1.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display 1.5 1.06 2.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display 1.5 1.06 3.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display 2.5 1.06 -3.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display 2.5 1.06 -2.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display 2.5 1.06 -1.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display 2.5 1.06 -0.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display 2.5 1.06 0.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display 2.5 1.06 1.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display 2.5 1.06 2.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display 2.5 1.06 3.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display 3.5 1.06 -3.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display 3.5 1.06 -2.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display 3.5 1.06 -1.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display 3.5 1.06 -0.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display 3.5 1.06 0.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display 3.5 1.06 1.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display 3.5 1.06 2.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}
  summon item_display 3.5 1.06 3.5 {Tags:["reversi","reversi_disc"],item:{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}},transformation:{left_rotation:{angle:0,axis:[0f,0f,1f]},right_rotation:{angle:0,axis:[0f,0f,1f]},translation:[0f,0f,0f],scale:[0.64f,0.64f,0.64f]},interpolation_duration:5,teleport_duration:1}

# 当たり判定
  summon interaction -3.5 0.0001 -3.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction -3.5 0.0001 -2.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction -3.5 0.0001 -1.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction -3.5 0.0001 -0.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction -3.5 0.0001 0.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction -3.5 0.0001 1.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction -3.5 0.0001 2.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction -3.5 0.0001 3.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction -2.5 0.0001 -3.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction -2.5 0.0001 -2.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction -2.5 0.0001 -1.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction -2.5 0.0001 -0.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction -2.5 0.0001 0.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction -2.5 0.0001 1.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction -2.5 0.0001 2.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction -2.5 0.0001 3.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction -1.5 0.0001 -3.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction -1.5 0.0001 -2.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction -1.5 0.0001 -1.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction -1.5 0.0001 -0.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction -1.5 0.0001 0.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction -1.5 0.0001 1.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction -1.5 0.0001 2.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction -1.5 0.0001 3.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction -0.5 0.0001 -3.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction -0.5 0.0001 -2.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction -0.5 0.0001 -1.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction -0.5 0.0001 -0.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction -0.5 0.0001 0.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction -0.5 0.0001 1.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction -0.5 0.0001 2.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction -0.5 0.0001 3.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction 0.5 0.0001 -3.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction 0.5 0.0001 -2.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction 0.5 0.0001 -1.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction 0.5 0.0001 -0.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction 0.5 0.0001 0.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction 0.5 0.0001 1.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction 0.5 0.0001 2.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction 0.5 0.0001 3.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction 1.5 0.0001 -3.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction 1.5 0.0001 -2.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction 1.5 0.0001 -1.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction 1.5 0.0001 -0.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction 1.5 0.0001 0.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction 1.5 0.0001 1.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction 1.5 0.0001 2.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction 1.5 0.0001 3.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction 2.5 0.0001 -3.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction 2.5 0.0001 -2.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction 2.5 0.0001 -1.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction 2.5 0.0001 -0.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction 2.5 0.0001 0.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction 2.5 0.0001 1.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction 2.5 0.0001 2.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction 2.5 0.0001 3.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction 3.5 0.0001 -3.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction 3.5 0.0001 -2.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction 3.5 0.0001 -1.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction 3.5 0.0001 -0.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction 3.5 0.0001 0.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction 3.5 0.0001 1.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction 3.5 0.0001 2.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}
  summon interaction 3.5 0.0001 3.5 {Tags:["reversi","reversi_interaction","reversi_board_interaction"],response:false}

# データ管理用のマーカー
  summon marker -3.5 0 -3.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker -3.5 0 -2.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker -3.5 0 -1.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker -3.5 0 -0.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker -3.5 0 0.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker -3.5 0 1.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker -3.5 0 2.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker -3.5 0 3.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker -2.5 0 -3.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker -2.5 0 -2.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker -2.5 0 -1.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker -2.5 0 -0.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker -2.5 0 0.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker -2.5 0 1.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker -2.5 0 2.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker -2.5 0 3.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker -1.5 0 -3.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker -1.5 0 -2.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker -1.5 0 -1.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker -1.5 0 -0.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker -1.5 0 0.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker -1.5 0 1.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker -1.5 0 2.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker -1.5 0 3.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker -0.5 0 -3.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker -0.5 0 -2.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker -0.5 0 -1.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker -0.5 0 -0.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:"white"}}
  summon marker -0.5 0 0.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:"black"}}
  summon marker -0.5 0 1.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker -0.5 0 2.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker -0.5 0 3.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker 0.5 0 -3.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker 0.5 0 -2.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker 0.5 0 -1.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker 0.5 0 -0.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:"black"}}
  summon marker 0.5 0 0.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:"white"}}
  summon marker 0.5 0 1.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker 0.5 0 2.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker 0.5 0 3.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker 1.5 0 -3.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker 1.5 0 -2.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker 1.5 0 -1.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker 1.5 0 -0.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker 1.5 0 0.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker 1.5 0 1.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker 1.5 0 2.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker 1.5 0 3.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker 2.5 0 -3.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker 2.5 0 -2.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker 2.5 0 -1.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker 2.5 0 -0.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker 2.5 0 0.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker 2.5 0 1.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker 2.5 0 2.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker 2.5 0 3.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker 3.5 0 -3.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker 3.5 0 -2.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker 3.5 0 -1.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker 3.5 0 -0.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker 3.5 0 0.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker 3.5 0 1.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker 3.5 0 2.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}
  summon marker 3.5 0 3.5 {Tags:["reversi","reversi_marker"],data:{can_reverse_direction:{nw:false,n:false,ne:false,w:false,e:false,sw:false,s:false,se:false},disc:""}}

# カメラ
  summon item_display 0.0 9.0 0.0 {Tags:["reversi","reversi_camera"],Rotation:[180f, 90f]}

# 操作パネル
  summon marker 0.0 3.2 15.0 {Tags:["reversi","reversi_gui_center"]}
  function yrfs_reversi:gui/display_end_game_button/_

# 視点先操作
  summon marker 0.0 0.0 0.0 {Tags:["reversi","reversi_find_gaze_point"],Invulnerable:1b}

# ゲーム設定
  data modify storage yrfs_reversi: root.game_status set value {in_game:true,turn:"black",is_cpu:{black:false,white:false}}
  data modify storage yrfs_reversi: root.pass_count set value 0b
  scoreboard players set turn reversi 0

# titleに表示する内容の設定
  title @a times 1 15 3
  scoreboard players set result_black_count reversi 2
  scoreboard players set result_white_count reversi 2

  data modify storage yrfs_reversi: root.title set value {turn:'{"text":"\\u0001","font":"reversi"}',gage_background:[{"text":"左","font":"reversi","color":"#181881"},{"translate":"yrf_system:space_-3"},{"text":"中"},{"translate":"yrf_system:space_-3"},{"text":"中"},{"translate":"yrf_system:space_-3"},{"text":"中"},{"translate":"yrf_system:space_-3"},{"text":"中"},{"translate":"yrf_system:space_-4"},{"text":"中"},{"translate":"yrf_system:space_-3"},{"text":"右"}]}

# ゲームスタート
  function yrfs_reversi:black/player/turn_start
