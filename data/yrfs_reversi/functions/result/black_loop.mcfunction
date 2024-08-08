#> yrfs_reversi:result/black_loop
#
# black
#
# @within function yrfs_reversi:result/main

# 結果表示のゲージ
  $data modify storage yrfs_reversi: root.title.result.gage[$(timer_1)] set value '{"text":"\\u81FF黒"}'

# 黒の石の数
  $execute if score result_timer_2 reversi matches 1..9 run data modify storage yrfs_reversi: root.title.result.black_count set value '{"text":"0$(timer_2)"}'
  $execute if score result_timer_2 reversi matches 10.. run data modify storage yrfs_reversi: root.title.result.black_count set value '{"text":"$(timer_2)"}'
