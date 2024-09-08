#> yrfs_reversi:result/gui/ja_jp/2
#
# GUI 2
#
# @within function yrfs_reversi:result/gui/1

# respectate_loopを止める
  data modify storage yrfs_reversi: root.can_respectate_loop set value 0b

# ループ部分
  function yrfs_reversi:result/gui/leave_detection

# title
  title @a[tag=reversi_result_viewer] actionbar [{"translate":"yrf_system:space_56","font":"reversi"},{"storage":"yrfs_reversi:","nbt":"root.title.result.winner","interpret":true},{"translate":"yrf_system:space_-195"},{"text":"く","color":"#18188D"},{"translate":"yrf_system:space_100"},{"text":"し","color":"#18188A"},{"translate":"yrf_system:space_-158"},{"storage":"yrfs_reversi:","nbt":"root.title.result.black_count","interpret":true,"color":"#18188B"},{"translate":"yrf_system:space_117"},{"storage":"yrfs_reversi:","nbt":"root.title.result.white_count","interpret":true,"color":"#18188A"},{"translate":"yrf_system:space_-236"},{"storage":"yrfs_reversi:","nbt":"root.title.gage_background","interpret":true},{"translate":"yrf_system:space_-323"},{"storage":"yrfs_reversi:","nbt":"root.title.result.gage[]","interpret":true,"separator":"","color":"#181882"},{"translate":"yrf_system:space_-223"},{"text":"＜ スニークで結果を閉じる ＞","color":"#190000","font":"default"},{"translate":"yrf_system:space_109"}]

# 3へ
  execute if entity @a[tag=reversi_result_viewer] run schedule function yrfs_reversi:result/gui/ja_jp/3 4
