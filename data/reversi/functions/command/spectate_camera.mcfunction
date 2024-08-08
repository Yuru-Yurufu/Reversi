#> reversi:command/spectate_camera
#
# 手動でカメラくんにspectateする
#
# @user

tag @s add reversi_camera_spectator
scoreboard players set @a reversi_sneak_check 0
function yrfs_reversi:result/spectate_init
gamemode spectator @s
spectate @e[type=item_display,tag=reversi_camera,limit=1] @s
