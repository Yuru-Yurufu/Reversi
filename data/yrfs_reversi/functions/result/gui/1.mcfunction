#> yrfs_reversi:result/gui/1
#
# GUI 1
#
# @within function yrfs_reversi:result/main

# playsound
  execute as @a at @s run playsound entity.player.levelup master @s

# advancements
  execute unless data storage yrfs_reversi: {root:{game_status:{turn:"kill_process"}}} if score result_black_count reversi > result_white_count reversi as @a[tag=reversi_player_black,advancements={yrfs_reversi:reversi/first_win=false},limit=1] run advancement grant @s only yrfs_reversi:reversi/first_win
  execute unless data storage yrfs_reversi: {root:{game_status:{turn:"kill_process"}}} if score result_black_count reversi < result_white_count reversi as @a[tag=reversi_player_white,advancements={yrfs_reversi:reversi/first_win=false},limit=1] run advancement grant @s only yrfs_reversi:reversi/first_win
  execute unless data storage yrfs_reversi: {root:{game_status:{turn:"kill_process"}}} if score result_black_count reversi = result_white_count reversi as @a[predicate=yrfs_reversi:is_player,advancements={yrfs_reversi:reversi/draw=false},limit=2] run advancement grant @s only yrfs_reversi:reversi/draw
  execute if score result_black_count reversi matches 64 run function yrfs_reversi:result/advancements_check/black_64
  execute if score result_white_count reversi matches 64 run function yrfs_reversi:result/advancements_check/white_64
  execute if score result_black_count reversi matches 0 if score result_white_count reversi matches 40 unless entity @e[type=marker,tag=reversi_marker,predicate=yrfs_reversi:isnt_heart] as @a[predicate=yrfs_reversi:is_player,advancements={yrfs_reversi:reversi/big_heart=false},limit=2] run function yrfs_reversi:result/advancements_check/heart

# game_statusの変更
  data modify storage yrfs_reversi: root.game_status.turn set value "result"

# プレイヤーのタグをリセット
  tag @a[tag=reversi_player_black] remove reversi_player_black
  tag @a[tag=reversi_player_white] remove reversi_player_white

# title
  title @a times 0 20 0
  title @a[tag=reversi_result_viewer] title {"text":"背","font":"reversi","color":"#180000"}
  title @a[tag=reversi_result_viewer] actionbar [{"translate":"yrf_system:space_56","font":"reversi"},{"storage":"yrfs_reversi:","nbt":"root.title.result.winner","interpret":true},{"translate":"yrf_system:space_-195"},{"text":"く","color":"#18188D"},{"translate":"yrf_system:space_100"},{"text":"し","color":"#18188A"},{"translate":"yrf_system:space_-158"},{"storage":"yrfs_reversi:","nbt":"root.title.result.black_count","interpret":true,"color":"#18188B"},{"translate":"yrf_system:space_117"},{"storage":"yrfs_reversi:","nbt":"root.title.result.white_count","interpret":true,"color":"#18188A"},{"translate":"yrf_system:space_-236"},{"storage":"yrfs_reversi:","nbt":"root.title.gage_background","interpret":true},{"translate":"yrf_system:space_-323"},{"storage":"yrfs_reversi:","nbt":"root.title.result.gage[]","interpret":true,"separator":"","color":"#181882"},{"translate":"yrf_system:space_11"}]

# テキスト追加用
  execute if data storage yrfs_reversi: {root:{language:"en_us"}} run schedule function yrfs_reversi:result/gui/en_us/2 10
  execute if data storage yrfs_reversi: {root:{language:"ja_jp"}} run schedule function yrfs_reversi:result/gui/ja_jp/2 10
