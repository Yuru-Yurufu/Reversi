#> yrfs_reversi:main
#
# #tickから実行されるfunction
#
# @within tag/function minecraft:tick

# ゲーム中にループさせる処理
  execute if data storage yrfs_reversi: {root:{game_status:{in_game:true}}} run function yrfs_reversi:game_loop

# 操作パネルのボタンに視点を合わせた時用の処理
  execute at @e[type=marker,tag=reversi_gui_center,limit=1] unless entity @a[distance=..5] as @e[type=text_display,tag=reversi_gui_show_underline_] run function yrfs_reversi:gui/remove_underline/init
  execute at @e[type=marker,tag=reversi_gui_center,limit=1] as @a[distance=..5] at @s run function yrfs_reversi:gui/find_gaze_point/loop

# カメラを見てる時の処理
  execute as @a[tag=reversi_camera_spectator,tag=!reversi_result_viewer] at @s if predicate yrfs_reversi:should_leave run function yrfs_reversi:result/uuid_copy
  execute as @a[tag=reversi_camera_spectator,tag=!reversi_result_viewer] at @s unless entity @e[type=item_display,tag=reversi_camera,limit=1,distance=...1] run function yrfs_reversi:result/uuid_copy
