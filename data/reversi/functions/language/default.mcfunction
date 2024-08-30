#> reversi:language/default
#
# 言語設定をデフォルト(自動切替)にする
#
# @user

# 言語を設定
  data modify storage yrfs_reversi: root.language_force set value 0b
  function yrfs_reversi:language/sync
