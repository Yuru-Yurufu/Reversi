#> yrfs_reversi:cpu/priority_check_2
#
# マスの重みを見る
#
# マスの重み
#   中盤: 角:30, C:-10, X:-20, その他:0
#   終盤: 角:15, C:-5,  X:-10, その他:0
#
# @within function
#           yrfs_reversi:cpu/black/virtual_turn/2
#           yrfs_reversi:cpu/white/virtual_turn/2
#           yrfs_reversi:cpu/black/virtual_turn/3
#           yrfs_reversi:cpu/white/virtual_turn/3

# 重みを仮のスコアに入れる
  execute if data entity @s[type=marker,tag=reversi_marker] {data:{position_type:"corner"}} run scoreboard players set priority reversi 15
  execute if data entity @s[type=marker,tag=reversi_marker] {data:{position_type:"c"}} run scoreboard players set priority reversi -5
  execute if data entity @s[type=marker,tag=reversi_marker] {data:{position_type:"x"}} run scoreboard players set priority reversi -10

# weightをかける
  execute if score turn reversi matches ..40 run scoreboard players operation priority reversi *= cpu_priority_weight reversi
  execute if score turn reversi matches 41.. run scoreboard players operation priority reversi *= cpu_priority_weight_ reversi

# 開放度のスコアから引く
  scoreboard players operation @s reversi_cpu_surrounded_temp -= priority reversi

# スコアを初期化しておく
  scoreboard players set priority reversi 0
