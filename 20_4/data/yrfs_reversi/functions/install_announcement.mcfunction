#> yrfs_reversi:install_announcement
#
# インストール通知
#
# @within function yrfs_reversi:load

# 通知
  tellraw @a {"translate":"yrfs_reversi:tellraw.datapack_load_success","with":["1.20.3~1.20.4","\n\nDatapack Version: v1.1.0\nResourcepack Version: "],"fallback":"リソースパックの読み込みに失敗しました。\nリソースパックの再読み込みやアップデートをお試しください。\nFailed to load the Resourcepack.\nPlease try reloading or updating the Resourcepack."}
