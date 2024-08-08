#> yrfs_reversi:gui/give_underline/give
#
# 下線をつける
#
# @within function yrfs_reversi:gui/give_underline/init

# 下線ぺちゃ
  $data modify entity @s text set value '{"text":$(input_text),"underlined":true}'

# 効果音
  playsound entity.item.pickup master @a ~ ~ ~ 0.7
