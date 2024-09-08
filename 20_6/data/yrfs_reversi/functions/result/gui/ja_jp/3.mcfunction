#> yrfs_reversi:result/gui/ja_jp/3
#
# GUI 3
# 違和感を軽減させるためのfunction
#
# @within function
#           yrfs_reversi:result/gui/ja_jp/2
#           yrfs_reversi:result/gui/ja_jp/3

# title
  title @a[tag=reversi_result_viewer] title {"text":"背","font":"reversi","color":"#180000"}
  title @a[tag=reversi_result_viewer] actionbar [{"translate":"yrf_system:space_56","font":"reversi"},{"storage":"yrfs_reversi:","nbt":"root.title.result.winner","interpret":true},{"translate":"yrf_system:space_-195"},{"text":"く","color":"#18188D"},{"translate":"yrf_system:space_100"},{"text":"し","color":"#18188A"},{"translate":"yrf_system:space_-158"},{"storage":"yrfs_reversi:","nbt":"root.title.result.black_count","interpret":true,"color":"#18188B"},{"translate":"yrf_system:space_117"},{"storage":"yrfs_reversi:","nbt":"root.title.result.white_count","interpret":true,"color":"#18188A"},{"translate":"yrf_system:space_-236"},{"storage":"yrfs_reversi:","nbt":"root.title.gage_background","interpret":true},{"translate":"yrf_system:space_-323"},{"storage":"yrfs_reversi:","nbt":"root.title.result.gage[]","interpret":true,"separator":"","color":"#181882"},{"translate":"yrf_system:space_-223"},{"text":"＜ スニークで結果を閉じる ＞","color":"#1A0000","font":"default"},{"translate":"yrf_system:space_109"}]

# 繰り返し
  execute if entity @a[tag=reversi_result_viewer] run schedule function yrfs_reversi:result/gui/ja_jp/3 1
