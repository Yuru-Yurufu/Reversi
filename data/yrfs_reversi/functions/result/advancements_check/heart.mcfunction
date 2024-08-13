#> yrfs_reversi:result/advancements_check/heart
#
# ハートのチェック
#
# @within function yrfs_reversi:result/gui/1

# 超ゴリ押し実装
  execute positioned -3.5 0 -1.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] positioned -3.5 0 -0.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] positioned -3.5 0 0.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] positioned -3.5 0 1.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] positioned -2.5 0 -0.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] positioned -2.5 0 0.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] positioned 1.5 0 -3.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] positioned 2.5 0 -2.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] positioned 3.5 0 -1.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] positioned 1.5 0 3.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] positioned 2.5 0 2.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] positioned 3.5 0 1.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] run advancement grant @s only yrfs_reversi:reversi/big_heart
  execute positioned -1.5 0 -3.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] positioned -0.5 0 -3.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] positioned 0.5 0 -3.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] positioned 1.5 0 -3.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] positioned -0.5 0 -2.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] positioned 0.5 0 -2.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] positioned -3.5 0 1.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] positioned -2.5 0 2.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] positioned -1.5 0 3.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] positioned 1.5 0 3.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] positioned 2.5 0 2.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] positioned 3.5 0 1.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] run advancement grant @s only yrfs_reversi:reversi/big_heart
  execute positioned 3.5 0 -1.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] positioned 3.5 0 -0.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] positioned 3.5 0 0.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] positioned 3.5 0 1.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] positioned 2.5 0 -0.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] positioned 2.5 0 0.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] positioned -1.5 0 -3.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] positioned -2.5 0 -2.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] positioned -3.5 0 -1.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] positioned -1.5 0 3.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] positioned -2.5 0 2.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] positioned -3.5 0 1.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] run advancement grant @s only yrfs_reversi:reversi/big_heart
  execute positioned -1.5 0 3.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] positioned -0.5 0 3.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] positioned 0.5 0 3.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] positioned 1.5 0 3.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] positioned -0.5 0 2.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] positioned 0.5 0 2.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] positioned -3.5 0 -1.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] positioned -2.5 0 -2.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] positioned -1.5 0 -3.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] positioned 1.5 0 -3.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] positioned 2.5 0 -2.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] positioned 3.5 0 -1.5 if entity @e[type=marker,tag=reversi_marker,nbt={data:{disc:""}},distance=...01,sort=nearest,limit=1] run advancement grant @s only yrfs_reversi:reversi/big_heart
