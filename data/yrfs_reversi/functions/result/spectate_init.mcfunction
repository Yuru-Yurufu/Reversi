#> yrfs_reversi:result/spectate_init
#
# spectate関連の準備
#
# @within function
#           yrfs_reversi:game_end
#           reversi:command/spectate_camera

# 後で戻ってくるための目印を出しておく
  summon marker ~ ~ ~ {Tags:["reversi","reversi_spectate_portal"],data:{player_uuid:[I;0,0,0,0]}}
  data modify entity @e[type=marker,tag=reversi_spectate_portal,nbt={data:{player_uuid:[I;0,0,0,0]}},sort=nearest,limit=1] Rotation set from entity @s Rotation
  data modify entity @e[type=marker,tag=reversi_spectate_portal,nbt={data:{player_uuid:[I;0,0,0,0]}},sort=nearest,limit=1] data.player_uuid set from entity @s UUID
