#> yrfs_reversi:gui/end_game
#
# ゲームを終了する処理
#
# @within function yrfs_reversi:click_detection/im_gui_interaction

# ゲーム終了処理
  execute if data storage yrfs_reversi: {root:{game_status:{is_cpu:{black:false,white:true},turn:"black"}}} run schedule function yrfs_reversi:game_end 3
  execute if data storage yrfs_reversi: {root:{game_status:{is_cpu:{black:true,white:false},turn:"white"}}} run schedule function yrfs_reversi:game_end 3
  execute if data storage yrfs_reversi: {root:{game_status:{turn:"black"}}} if data storage yrfs_reversi: {root:{game_status:{is_cpu:{black:false,white:false}}}} run schedule function yrfs_reversi:game_end 3
  execute if data storage yrfs_reversi: {root:{game_status:{turn:"white"}}} if data storage yrfs_reversi: {root:{game_status:{is_cpu:{black:false,white:false}}}} run schedule function yrfs_reversi:game_end 3

# game_statusの変更
  data modify storage yrfs_reversi: root.game_status.turn set value "kill_process"
