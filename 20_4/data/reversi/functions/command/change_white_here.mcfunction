#> reversi:command/change_white_here
#
# 実行者の最寄りのマスを白にする
#
# @user

data modify entity @e[type=marker,tag=reversi_marker,sort=nearest,limit=1] data.disc set value "white"
data modify entity @e[type=item_display,tag=reversi_disc,sort=nearest,limit=1] item.tag.CustomModelData set value 2
