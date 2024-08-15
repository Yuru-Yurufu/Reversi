#> yrfs_reversi:advancements/easter_egg/all
#
# イースターエッグを全て見つけた時の処理
#
# @within advancement yrfs_reversi:button_click/all

# playsound
  playsound minecraft:entity.player.levelup master @s ~ ~ ~

# tellraw
  tellraw @s [{"translate":"yrfs_reversi:tellraw.found_all_the_hidden_buttons"}]
