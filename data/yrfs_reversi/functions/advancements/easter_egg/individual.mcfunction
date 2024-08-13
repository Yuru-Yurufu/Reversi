#> yrfs_reversi:advancements/easter_egg/individual
#
# イースターエッグを見つけた時の処理
#
# @within advancement
#           yrfs_reversi:easter_egg/1
#           yrfs_reversi:easter_egg/2
#           yrfs_reversi:easter_egg/3
#           yrfs_reversi:easter_egg/4
#           yrfs_reversi:easter_egg/5

# playsound
  playsound entity.experience_orb.pickup master @s ~ ~ ~

# 今何個目かを調べる
  scoreboard players set easter_egg reversi 0
  execute if entity @s[advancements={yrfs_reversi:reversi/easter_egg/1=true}] run scoreboard players add easter_egg reversi 1
  execute if entity @s[advancements={yrfs_reversi:reversi/easter_egg/2=true}] run scoreboard players add easter_egg reversi 1
  execute if entity @s[advancements={yrfs_reversi:reversi/easter_egg/3=true}] run scoreboard players add easter_egg reversi 1
  execute if entity @s[advancements={yrfs_reversi:reversi/easter_egg/4=true}] run scoreboard players add easter_egg reversi 1
  execute if entity @s[advancements={yrfs_reversi:reversi/easter_egg/5=true}] run scoreboard players add easter_egg reversi 1

# tellraw
  execute if score easter_egg reversi matches ..4 run tellraw @s [{"text":"隠されたボタンを見つけた！ ("},{"score":{"name":"easter_egg","objective":"reversi"}},{"text":"/5)"}]
