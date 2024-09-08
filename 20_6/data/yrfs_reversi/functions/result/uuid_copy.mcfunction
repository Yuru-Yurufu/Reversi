#> yrfs_reversi:result/uuid_copy
#
# UUIDをstorageにコピーする
#
# @within function
#           yrfs_reversi:main
#           yrfs_reversi:result/gui/leave_detection
#           yrfs_reversi:rejoin/_
#           yrfs_reversi:command/start
#           yrfs_reversi:command/start_cpu_black
#           yrfs_reversi:command/start_cpu_white
#           yrfs_reversi:command/start_cpu_both

# UUIDをコピーして渡す
  data modify storage yrfs_reversi: root.temp.uuid set from entity @s UUID
  function yrfs_reversi:result/leave_result with storage yrfs_reversi: root.temp

# スコアリセット
  scoreboard players set @s reversi_sneak_check 0
