#> yrfs_reversi:gui/display_end_game_button/en_us
#
# 使用言語がen_usの時のゲーム中のGUI表示
#
# @within function reversi:gui/display_end_game_button/_

# 表示
  summon text_display 0.01 3.3 14.999 {Tags:["reversi","reversi_gui","reversi_gui_display","reversi_gui_end_game","reversi_i_have_space_sry"],text:'{"text":"End Game","underlined":false}',background:0,Rotation:[-180f,0f]}
  summon interaction 0.0 3.3 15.599 {Tags:["reversi","reversi_interaction","reversi_gui","reversi_gui_interaction","reversi_gui_end_game"],width:1.20f,height:0.3f}
  summon text_display -1.12 2.3 14.999 {Tags:["reversi","reversi_gui","reversi_gui_display","reversi_gui_spectate"],text:'{"text":"Spectate","underlined":false}',background:0,Rotation:[-180f,0f]}
  summon interaction -1.13 2.3 15.569 {Tags:["reversi","reversi_interaction","reversi_gui","reversi_gui_interaction","reversi_gui_spectate"],width:1.14f,height:0.3f}
