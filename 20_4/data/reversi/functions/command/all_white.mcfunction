#> reversi:command/all_white
#
# 盤面を白一色にする
#
# @user

execute as @e[type=marker,tag=reversi_marker] run data modify entity @s data.disc set value "white"
execute as @e[type=item_display,tag=reversi_disc] run data modify entity @s item.tag.CustomModelData set value 2
function yrfs_reversi:white/turn_end
