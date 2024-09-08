#> reversi:command/change_none_here
#
# 実行者の最寄りのマスを空白にする
#
# @user

data modify entity @e[type=marker,tag=reversi_marker,sort=nearest,limit=1] data.disc set value ""
data modify entity @e[type=item_display,tag=reversi_disc,sort=nearest,limit=1] item.tag.CustomModelData set value 3
