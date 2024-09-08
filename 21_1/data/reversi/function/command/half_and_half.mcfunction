#> reversi:command/half_and_half
#
# 盤面を黒と白半分ずつにする
#
# @user

execute as @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},sort=random,limit=30] run data modify entity @s data.disc set value "black"
execute as @e[type=marker,tag=reversi_marker] if data entity @s {data:{disc:"black"}} at @s as @e[type=item_display,tag=reversi_disc,distance=..1.1,limit=1] run data modify entity @s item.components."minecraft:custom_model_data" set value 1
execute as @e[type=marker,tag=reversi_marker] if data entity @s {data:{disc:""}} run data modify entity @s data.disc set value "white"
execute as @e[type=marker,tag=reversi_marker] if data entity @s {data:{disc:"white"}} at @s as @e[type=item_display,tag=reversi_disc,distance=..1.1,limit=1] run data modify entity @s item.components."minecraft:custom_model_data" set value 2
function yrfs_reversi:black/turn_end
