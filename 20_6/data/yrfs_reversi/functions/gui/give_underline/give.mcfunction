#> yrfs_reversi:gui/give_underline/give
#
# 下線をつける
#
# @within function yrfs_reversi:gui/give_underline/init

# 下線ぺちゃ（半角スペース入ると代入できないのの応急処置）
  $execute if entity @s[tag=!reversi_i_have_space_sry] run data modify entity @s text set value '{"text":$(input_text),"underlined":true}'
  execute if entity @s[tag=reversi_i_have_space_sry] if data storage yrfs_reversi: {root:{gui:{temp:{input_text:"Start Game"}}}} run data modify entity @s text set value '{"text":"Start Game","underlined":true}'
  execute if entity @s[tag=reversi_i_have_space_sry] if data storage yrfs_reversi: {root:{gui:{temp:{input_text:"End Game"}}}} run data modify entity @s text set value '{"text":"End Game","underlined":true}'

# 効果音
  playsound entity.item.pickup master @a ~ ~ ~ 0.7
