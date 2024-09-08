#> reversi:command/change_black_here
#
# 実行者の最寄りのマスを黒にする
#
# @user

data modify entity @e[type=marker,tag=reversi_marker,sort=nearest,limit=1] data.disc set value "black"
data modify entity @e[type=item_display,tag=reversi_disc,sort=nearest,limit=1] item.components."minecraft:custom_model_data" set value 1
