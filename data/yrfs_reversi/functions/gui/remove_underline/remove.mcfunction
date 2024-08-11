#> yrfs_reversi:gui/remove_underline/remove
#
# 下線を外す
#
# @within function yrfs_reversi:gui/remove_underline/init

# 下線ぽい（半角スペース入ると代入できないのの応急処置）
  $execute if entity @s[tag=!reversi_i_have_space_sry] run data modify entity @s text set value '{"text":$(input_text),"underlined":false}'
  execute if entity @s[tag=reversi_i_have_space_sry] if data storage yrfs_reversi: {root:{gui:{temp:{input_text:"Start Game"}}}} run data modify entity @s text set value '{"text":"Start Game","underlined":false}'
  execute if entity @s[tag=reversi_i_have_space_sry] if data storage yrfs_reversi: {root:{gui:{temp:{input_text:"End Game"}}}} run data modify entity @s text set value '{"text":"End Game","underlined":false}'
