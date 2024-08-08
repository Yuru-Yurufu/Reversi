#> yrfs_reversi:result/gui_loop
#
# GUIをループさせる
#
# @within function
#           yrfs_reversi:result/gui
#           yrfs_reversi:result/gui_loop

# title
  title @a times 0 20 0
  title @a[tag=reversi_result_viewer] title {"text":"背","font":"reversi","color":"#180000"}
  title @a[tag=reversi_result_viewer] actionbar [{"translate":"yrf_system:space_56","font":"reversi"},{"storage":"yrfs_reversi:","nbt":"root.title.result.winner","interpret":true},{"translate":"yrf_system:space_-195"},{"text":"く","color":"#18188D"},{"translate":"yrf_system:space_100"},{"text":"し","color":"#18188A"},{"translate":"yrf_system:space_-158"},{"storage":"yrfs_reversi:","nbt":"root.title.result.black_count","interpret":true,"color":"#18188B"},{"translate":"yrf_system:space_117"},{"storage":"yrfs_reversi:","nbt":"root.title.result.white_count","interpret":true,"color":"#18188A"},{"translate":"yrf_system:space_-236"},{"storage":"yrfs_reversi:","nbt":"root.title.gage_background","interpret":true},{"translate":"yrf_system:space_-323"},{"storage":"yrfs_reversi:","nbt":"root.title.result.gage[]","interpret":true,"separator":"","color":"#181882"},{"translate":"yrf_system:space_-223"},{"text":"＜ スニークで結果を閉じる ＞","color":"#190000","font":"default"},{"translate":"yrf_system:space_109"}]

# スニークで元の位置に戻す
  execute as @a[tag=reversi_result_viewer] if score @s reversi_sneak_check matches 1.. run function yrfs_reversi:result/uuid_copy
  execute as @a[gamemode=!spectator,tag=reversi_result_viewer] run function yrfs_reversi:result/uuid_copy

# 繰り返し
  execute if entity @a[tag=reversi_result_viewer] run schedule function yrfs_reversi:result/gui_loop 1
