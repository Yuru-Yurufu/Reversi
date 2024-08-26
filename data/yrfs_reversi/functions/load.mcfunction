#> yrfs_reversi:load
#
# #loadから実行されるfunction
#
# @within tag/function minecraft:load

# scoreboard
  scoreboard objectives add reversi dummy
  scoreboard objectives add reversi_rotation_delay dummy
  scoreboard objectives add reversi_cpu_surrounded dummy
  scoreboard objectives add reversi_cpu_surrounded_temp dummy
  scoreboard objectives add reversi_game_start_time dummy
  scoreboard objectives add reversi_sneak_check minecraft.custom:sneak_time
  scoreboard objectives add reversi_leave_world minecraft.custom:leave_game
  scoreboard objectives add reversi_win_count dummy
  scoreboard objectives setdisplay list reversi_win_count

# forceload
  forceload add -1 -1 0 0

# sc_load
  schedule function yrfs_reversi:sc_load 10
