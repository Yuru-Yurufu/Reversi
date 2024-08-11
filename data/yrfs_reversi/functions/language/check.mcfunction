#> yrfs_reversi:language/check
#
# 現在の言語を確認してstorageに入れる
#
# @within function yrfs_reversi:language/sync

# 呼び出し元で既にkillされているのでそのままsummon
  summon item -15 2 -7 {Tags:["reversi","reversi_lang_item"],NoGravity:1b,Age:32768,PickupDelay:32767,Invulnerable:1b,Item:{id:"minecraft:command_block",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:10s}]}}}

# 言語検知（日本語でなければ英語扱いにする）
  execute if entity @e[type=item,tag=reversi_lang_item,name="コマンドブロック"] run data modify storage yrfs_reversi: root.language set value "ja_jp"
  execute unless entity @e[type=item,tag=reversi_lang_item,name="コマンドブロック"] run data modify storage yrfs_reversi: root.language set value "en_us"
