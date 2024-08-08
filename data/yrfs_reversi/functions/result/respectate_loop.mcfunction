#> yrfs_reversi:result/respectate_loop
#
#
#
# @within function
#           yrfs_reversi:result/main
#           yrfs_reversi:result/respectate_loop

# カメラを止めるな！
  execute as @a[tag=reversi_result_viewer] if predicate yrfs_reversi:should_leave run function yrfs_reversi:result/respectate

# ループ
  execute if data storage yrfs_reversi: {root:{can_respectate_loop:1b}} run schedule function yrfs_reversi:result/respectate_loop 1
