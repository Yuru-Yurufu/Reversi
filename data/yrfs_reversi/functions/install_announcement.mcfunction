#> yrfs_reversi:install_announcement
#
# インストール通知
#
# @within function yrfs_reversi:load

# 通知
  tellraw @a ["",{"text":"ERROR\n","color":"#800000"},{"translate":"yrfs_reversi:tellraw.datapack_load_in_unsupported_version","fallback":"このMinecraftのバージョンはサポート対象外の可能性があります。\n以下のバージョンで読み込み直してください。\nThis version of Minecraft may not be supported.\nPlease reload with the following version."},{"text":"\n\nSupported Minecraft Versions:\n- 1.21.1\n- 1.21\n- 1.20.6\n- 1.20.5\n- 1.20.4\n- 1.20.3"}]

# 確実に伝えたい
  execute unless entity @a run schedule function yrfs_reversi:install_announcement 10
