#> reversi:command/change_white_here
#
# 実行者の最寄りのマスを白にする
#
# @user

data modify entity @e[type=marker,tag=reversi_marker,sort=nearest,limit=1] data.disc set value "white"
data modify entity @e[type=item_display,tag=reversi_disc,sort=nearest,limit=1] item.components."minecraft:custom_model_data" set value 2
