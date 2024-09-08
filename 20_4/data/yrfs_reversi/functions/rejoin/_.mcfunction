#> yrfs_reversi:rejoin/_
#
# ワールドに再参加した時の処理
#
# @within advancement yrfs_reversi:rejoin

# リセット処理
  scoreboard players reset @s reversi_leave_world
  advancement revoke @s only yrfs_reversi:rejoin
  advancement revoke @s only yrfs_reversi:hello_world

# 自分が戦っている対局なのに途中でワールドを抜けて、しばらくしてから戻ってきた人へ向けた処理
  execute if entity @s[predicate=yrfs_reversi:is_player] unless score @s reversi_game_start_time = latest reversi_game_start_time run function yrfs_reversi:rejoin/reset

# やめやめ！観戦中止！
  execute if entity @s[tag=reversi_result_viewer] run function yrfs_reversi:result/uuid_copy
  execute if entity @s[tag=reversi_camera_spectator] if data storage yrfs_reversi: {root:{game_status:{in_game:false}}} run function yrfs_reversi:result/uuid_copy
