#> yrfs_reversi:gui/confirm_end_game/en_us
#
# 使用言語がen_usの時の確認メッセージの表示
#
# @within function yrfs_reversi:gui/confirm_end_game/_

# 表示
  summon text_display 0.0 3.7 14.999 {Tags:["reversi","reversi_gui","reversi_gui_display","reversi_gui_confirm_end_game"],text:'{"text":"Are you sure\\nyou want to end this game?"}',background:0,Rotation:[-180f,0f]}
  summon text_display 0.51 3.3 14.999 {Tags:["reversi","reversi_gui","reversi_gui_display","reversi_gui_confirm_end_game_yes"],text:'{"text":"End","underlined":false}',background:0,Rotation:[-180f,0f]}
  summon interaction 0.5 3.3 15.239 {Tags:["reversi","reversi_interaction","reversi_gui","reversi_gui_interaction","reversi_gui_confirm_end_game_yes"],width:0.48f,height:0.3f}
  summon text_display -0.49 3.3 14.999 {Tags:["reversi","reversi_gui","reversi_gui_display","reversi_gui_confirm_end_game_no"],text:'{"text":"Cancel","underlined":false}',background:0,Rotation:[-180f,0f]}
  summon interaction -0.5 3.3 15.449 {Tags:["reversi","reversi_interaction","reversi_gui","reversi_gui_interaction","reversi_gui_confirm_end_game_no"],width:0.90f,height:0.3f}
  summon text_display 0.0 2.6 14.999 {Tags:["reversi","reversi_gui","reversi_gui_display","reversi_gui_confirm_end_game"],text:'{"text":"This action\\ncannot be undone."}',background:0,Rotation:[-180f,0f]}
