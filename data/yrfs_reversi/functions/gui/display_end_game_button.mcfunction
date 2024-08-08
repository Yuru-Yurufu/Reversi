#> yrfs_reversi:gui/display_end_game_button
#
# 「ゲームを終了する」を表示する
#
# @within function
#           reversi:command/start
#           reversi:command/start_cpu_black
#           reversi:command/start_cpu_white
#           reversi:command/start_cpu_both
#           yrfs_reversi:click_detection/im_gui_interaction

# 表示してたものを消す
  kill @e[tag=reversi_gui]

# 新たに表示
  summon text_display 0.01 3.3 14.999 {Tags:["reversi","reversi_gui","reversi_gui_display","reversi_gui_end_game"],text:'{"text":"ゲームを終了する","underlined":false}',background:0,Rotation:[-180f,0f]}
  summon interaction 0.0 3.3 15.959 {Tags:["reversi","reversi_interaction","reversi_gui","reversi_gui_interaction","reversi_gui_end_game"],width:1.92f,height:0.3f}
  summon text_display -1.39 2.3 14.999 {Tags:["reversi","reversi_gui","reversi_gui_display","reversi_gui_spectate"],text:'{"text":"観戦","underlined":false}',background:0,Rotation:[-180f,0f]}
  summon interaction -1.4 2.3 15.239 {Tags:["reversi","reversi_interaction","reversi_gui","reversi_gui_interaction","reversi_gui_spectate"],width:0.48f,height:0.3f}
