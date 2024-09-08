#> reversi:command/end
#
# ゲームをやめる
#
# @user

# game_statusの変更
  data modify storage yrfs_reversi: root.game_status.turn set value "kill_process"
