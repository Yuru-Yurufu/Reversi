#> yrfs_reversi:result/main
#
# 結果表示のループ処理
#
# @within function
#           yrfs_reversi:game_end
#           yrfs_reversi:result/main

# スコア
  execute store result storage yrfs_reversi: root.title.result.timer.timer_1 int 1 run scoreboard players add result_timer_1 reversi 1
  execute store result storage yrfs_reversi: root.title.result.timer.timer_2 int 1 run scoreboard players add result_timer_2 reversi 1
  scoreboard players remove result_timer_black reversi 1
  scoreboard players remove result_timer_white reversi 1

# 代入
  execute if score result_timer_black reversi matches 0.. run function yrfs_reversi:result/black_loop with storage yrfs_reversi: root.title.result.timer
  execute if score result_timer_white reversi matches 0.. run function yrfs_reversi:result/white_loop with storage yrfs_reversi: root.title.result.timer

# 効果音
  execute as @a[tag=reversi_result_viewer] at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~

# 結果表示title
  title @a[tag=reversi_result_viewer] actionbar [{"translate":"yrf_system:space_77","font":"reversi"},{"text":"く","color":"#18188D"},{"translate":"yrf_system:space_100"},{"text":"し","color":"#18188A"},{"translate":"yrf_system:space_-158"},{"storage":"yrfs_reversi:","nbt":"root.title.result.black_count","interpret":true,"color":"#18188B"},{"translate":"yrf_system:space_117"},{"storage":"yrfs_reversi:","nbt":"root.title.result.white_count","interpret":true,"color":"#18188A"},{"translate":"yrf_system:space_-236"},{"storage":"yrfs_reversi:","nbt":"root.title.gage_background","interpret":true},{"translate":"yrf_system:space_-323"},{"storage":"yrfs_reversi:","nbt":"root.title.result.gage[]","interpret":true,"separator":"","color":"#181882"}]
  execute unless predicate yrfs_reversi:continue_result_loop run schedule function yrfs_reversi:result/gui/1 3

# カメラを止めるな！
  execute as @a[tag=reversi_result_viewer] if predicate yrfs_reversi:should_leave run function yrfs_reversi:result/respectate
  execute as @a[tag=reversi_result_viewer] at @s unless entity @e[type=item_display,tag=reversi_camera,limit=1,distance=...1] run function yrfs_reversi:result/respectate
  execute unless predicate yrfs_reversi:continue_result_loop run schedule function yrfs_reversi:result/respectate_loop 1

# 繰り返し
  execute if predicate yrfs_reversi:continue_result_loop run schedule function yrfs_reversi:result/main 1
