#> yrfs_reversi:gui/start_menu/en_us
#
# 使用言語がen_usの時のスタートメニューの表示
#
# @within function yrfs_reversi:gui/start_menu/_

# 表示
  summon text_display 0.885 2.9 14.999 {Tags:["reversi","reversi_gui","reversi_gui_display","reversi_gui_entry_black"],text:'{"text":"Entry","underlined":false}',background:0,Rotation:[-180f,0f]}
  summon interaction 0.875 2.9 15.399 {Tags:["reversi","reversi_interaction","reversi_gui","reversi_gui_interaction","reversi_gui_entry_black"],width:0.8f,height:0.3f}
  summon text_display -0.915 2.9 14.999 {Tags:["reversi","reversi_gui","reversi_gui_display","reversi_gui_entry_white"],text:'{"text":"Entry","underlined":false}',background:0,Rotation:[-180f,0f]}
  summon interaction -0.925 2.9 15.399 {Tags:["reversi","reversi_interaction","reversi_gui","reversi_gui_interaction","reversi_gui_entry_white"],width:0.8f,height:0.3f}
  summon text_display 0.01 2.3 14.999 {Tags:["reversi","reversi_gui","reversi_gui_display","reversi_gui_start_game","reversi_i_have_space_sry"],text:'{"text":"Start Game","underlined":false}',background:0,Rotation:[-180f,0f]}
  summon interaction 0.0 2.3 15.719 {Tags:["reversi","reversi_interaction","reversi_gui","reversi_gui_interaction","reversi_gui_start_game"],width:1.44f,height:0.3f}
