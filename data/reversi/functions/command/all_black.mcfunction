#> reversi:command/all_black
#
# 盤面を黒一色にする
#
# @user

execute as @e[type=marker,tag=reversi_marker] run data modify entity @s data.disc set value "black"
execute as @e[type=item_display,tag=reversi_disc] run data modify entity @s item.tag.CustomModelData set value 1
function yrfs_reversi:black/turn_end
