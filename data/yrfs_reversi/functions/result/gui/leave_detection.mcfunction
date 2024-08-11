#> yrfs_reversi:result/gui/leave_detection
#
# 帰りたいときに帰ろう
#
# @within function
#           yrfs_reversi:result/gui/en_us/2
#           yrfs_reversi:result/gui/ja_jp/2
#           yrfs_reversi:result/gui/leave_detection

# 元の位置に戻す
  execute as @a[tag=reversi_result_viewer] if predicate yrfs_reversi:should_leave run function yrfs_reversi:result/uuid_copy

# 繰り返し
  execute if entity @a[tag=reversi_result_viewer] run schedule function yrfs_reversi:result/gui/leave_detection 1
