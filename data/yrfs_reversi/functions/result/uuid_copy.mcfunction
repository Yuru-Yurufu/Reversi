#> yrfs_reversi:result/uuid_copy
#
# UUIDをstorageにコピーする
#
# @within function
#           yrfs_reversi:result/gui_loop
#           yrfs_reversi:main

# UUIDをコピーして渡す
  data modify storage yrfs_reversi: root.temp.uuid set from entity @s UUID
  function yrfs_reversi:result/leave_result with storage yrfs_reversi: root.temp

# スコアリセット
  scoreboard players set @s reversi_sneak_check 0
