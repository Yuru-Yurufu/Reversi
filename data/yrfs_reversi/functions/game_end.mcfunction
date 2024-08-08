#> yrfs_reversi:game_end
#
# ゲームエンド
#
# @within function
#           yrfs_reversi:black/pass
#           yrfs_reversi:white/pass
#           yrfs_reversi:black/turn_end
#           yrfs_reversi:white/turn_end
#           yrfs_reversi:gui/end_game

# game_statusの変更
  data modify storage yrfs_reversi: root.game_status.turn set value "result"

# 石を数える
  function yrfs_reversi:count_disc

# 初期化
  kill @e[type=interaction,tag=reversi_board_interaction]
  data modify storage yrfs_reversi: root.title.result set value {black_count:'{"text":"00"}', white_count:'{"text":"00"}', gage:['{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}','{"text":"\\u81FF緑"}']}

# 勝敗
  execute if score result_black_count reversi > result_white_count reversi run data modify storage yrfs_reversi: root.title.result.winner set value '[{"text":"BLACK","font":"reversi","color":"#181883"},{"translate":"yrf_system:space_16"},{"text":"WIN!!","font":"reversi","color":"#181883"}]'
  execute if score result_black_count reversi < result_white_count reversi run data modify storage yrfs_reversi: root.title.result.winner set value '[{"text":"WHITE","font":"reversi","color":"#181883"},{"translate":"yrf_system:space_16"},{"text":"WIN!!","font":"reversi","color":"#181883"}]'
  execute if score result_black_count reversi = result_white_count reversi run data modify storage yrfs_reversi: root.title.result.winner set value '[{"translate":"yrf_system:space_70"},{"text":"DRAW","font":"reversi","color":"#181800"},{"translate":"yrf_system:space_70"}]'

# GUI
  function yrfs_reversi:gui/start_menu

# ゲーム終了の演出
  data modify storage yrfs_reversi: root.can_respectate_loop set value 1b
  tag @a add reversi_result_viewer
  scoreboard players set @a reversi_sneak_check 0
  execute as @a[tag=!reversi_camera_spectator] at @s run function yrfs_reversi:result/spectate_init
  gamemode spectator @a[tag=!reversi_camera_spectator]
  execute as @a run spectate @e[type=item_display,tag=reversi_camera,limit=1] @s[tag=!reversi_camera_spectator]
  scoreboard players set result_timer_1 reversi -1
  scoreboard players set result_timer_2 reversi 0
  title @a times 3 200 0
  title @a title {"text":"背","font":"reversi","color":"#180000"}
  schedule function yrfs_reversi:result/main 8
