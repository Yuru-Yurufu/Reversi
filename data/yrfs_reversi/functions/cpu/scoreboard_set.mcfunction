#> yrfs_reversi:cpu/scoreboard_set
#
# 開始時のスコア設定を一括化するためのもの
#
# @within function
#           yrfs_reversi:command/start_cpu_black
#           yrfs_reversi:command/start_cpu_white
#           yrfs_reversi:command/start_cpu_both

scoreboard players set cpu_surrounded_weight reversi 30
scoreboard players set cpu_priority_weight reversi 20
scoreboard players set cpu_priority_weight_ reversi 15
scoreboard players set cpu_disc_count reversi 3
