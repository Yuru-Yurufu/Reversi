#> yrfs_reversi:black/player/find_can_place/_
#
# 置ける場所を探す
#
# @within function
#           yrfs_reversi:black/player/turn_start
#           yrfs_reversi:white/pass

# 方角ごとに置けるか確認
  execute positioned ~-1 ~ ~-1 as @e[type=marker,tag=reversi_marker,distance=..0.01,limit=1] if data entity @s {data:{disc:""}} positioned ~2 ~ ~2 unless data entity @e[type=marker,tag=reversi_marker,distance=..0.01,limit=1] {data:{disc:""}} store result entity @s data.can_reverse_direction.nw byte 1 run function yrfs_reversi:black/player/find_can_place/loop {position:"~1 ~ ~1",direction:"nw"}
  execute positioned ~ ~ ~-1 as @e[type=marker,tag=reversi_marker,distance=..0.01,limit=1] if data entity @s {data:{disc:""}} positioned ~ ~ ~2 unless data entity @e[type=marker,tag=reversi_marker,distance=..0.01,limit=1] {data:{disc:""}} store result entity @s data.can_reverse_direction.n byte 1 run function yrfs_reversi:black/player/find_can_place/loop {position:"~ ~ ~1",direction:"n"}
  execute positioned ~1 ~ ~-1 as @e[type=marker,tag=reversi_marker,distance=..0.01,limit=1] if data entity @s {data:{disc:""}} positioned ~-2 ~ ~2 unless data entity @e[type=marker,tag=reversi_marker,distance=..0.01,limit=1] {data:{disc:""}} store result entity @s data.can_reverse_direction.ne byte 1 run function yrfs_reversi:black/player/find_can_place/loop {position:"~-1 ~ ~1",direction:"ne"}
  execute positioned ~-1 ~ ~ as @e[type=marker,tag=reversi_marker,distance=..0.01,limit=1] if data entity @s {data:{disc:""}} positioned ~2 ~ ~ unless data entity @e[type=marker,tag=reversi_marker,distance=..0.01,limit=1] {data:{disc:""}} store result entity @s data.can_reverse_direction.w byte 1 run function yrfs_reversi:black/player/find_can_place/loop {position:"~1 ~ ~",direction:"w"}
  execute positioned ~1 ~ ~ as @e[type=marker,tag=reversi_marker,distance=..0.01,limit=1] if data entity @s {data:{disc:""}} positioned ~-2 ~ ~ unless data entity @e[type=marker,tag=reversi_marker,distance=..0.01,limit=1] {data:{disc:""}} store result entity @s data.can_reverse_direction.e byte 1 run function yrfs_reversi:black/player/find_can_place/loop {position:"~-1 ~ ~",direction:"e"}
  execute positioned ~-1 ~ ~1 as @e[type=marker,tag=reversi_marker,distance=..0.01,limit=1] if data entity @s {data:{disc:""}} positioned ~2 ~ ~-2 unless data entity @e[type=marker,tag=reversi_marker,distance=..0.01,limit=1] {data:{disc:""}} store result entity @s data.can_reverse_direction.sw byte 1 run function yrfs_reversi:black/player/find_can_place/loop {position:"~1 ~ ~-1",direction:"sw"}
  execute positioned ~ ~ ~1 as @e[type=marker,tag=reversi_marker,distance=..0.01,limit=1] if data entity @s {data:{disc:""}} positioned ~ ~ ~-2 unless data entity @e[type=marker,tag=reversi_marker,distance=..0.01,limit=1] {data:{disc:""}} store result entity @s data.can_reverse_direction.s byte 1 run function yrfs_reversi:black/player/find_can_place/loop {position:"~ ~ ~-1",direction:"s"}
  execute positioned ~1 ~ ~1 as @e[type=marker,tag=reversi_marker,distance=..0.01,limit=1] if data entity @s {data:{disc:""}} positioned ~-2 ~ ~-2 unless data entity @e[type=marker,tag=reversi_marker,distance=..0.01,limit=1] {data:{disc:""}} store result entity @s data.can_reverse_direction.se byte 1 run function yrfs_reversi:black/player/find_can_place/loop {position:"~-1 ~ ~-1",direction:"se"}
