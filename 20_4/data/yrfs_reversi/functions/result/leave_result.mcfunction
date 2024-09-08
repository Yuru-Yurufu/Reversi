#> yrfs_reversi:result/leave_result
#
# 結果表示のエリアから帰る
#
# @within function yrfs_reversi:result/uuid_copy

# タグリセット
  tag @s remove reversi_result_viewer
  tag @s remove reversi_camera_spectator

# 元の場所に帰る
  $tp @s @e[type=marker,tag=reversi_spectate_portal,nbt={data:{player_uuid:$(uuid)}},limit=1]

# gamemodeをadventureに戻す
  gamemode adventure

# 目印を削除
  $kill @e[type=marker,tag=reversi_spectate_portal,nbt={data:{player_uuid:$(uuid)}},limit=1]

# titleリセット
  title @s title ""
  title @s actionbar ""
