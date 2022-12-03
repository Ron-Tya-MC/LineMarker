#> line_marker:core/main
#
# メイン部分
#
# @within function line_marker:api/execute

# 監査
    schedule function line_marker:core/watchdog 1t append

# _
    scoreboard players reset $failed LM.Core

# 始点が複数あるならランダムで解除
    execute as @e[tag=LM.Line_start,limit=1,sort=random] run tag @s add LM.Line_start_temp
    execute as @e[tag=LM.Line_start_temp] run tag @e[tag=LM.Line_start] remove LM.Line_start
    execute as @e[tag=LM.Line_start_temp] run tag @s add LM.Line_start
    execute as @e[tag=LM.Line_start_temp] run tag @s remove LM.Line_start_temp

# 終点が複数あるならランダムで解除
    execute as @e[tag=LM.Line_end,limit=1,sort=random] run tag @s add LM.Line_end_temp
    execute as @e[tag=LM.Line_end_temp] run tag @e[tag=LM.Line_end] remove LM.Line_end
    execute as @e[tag=LM.Line_end_temp] run tag @s add LM.Line_end
    execute as @e[tag=LM.Line_end_temp] run tag @s remove LM.Line_end_temp

# 始点終点のマーカー設置
    execute at @e[tag=LM.Line_start] run summon armor_stand ~ ~ ~ {Tags:["LM.Line_core_start_init"],Invisible:1b,Marker:1b}
    execute at @e[tag=LM.Line_end] run summon armor_stand ~ ~ ~ {Tags:["LM.Line_core_end_init"],Invisible:1b,Marker:1b}

# TargetOffsetが設定されていればオフセットをいじる
    execute if data storage line_marker: Argument.TargetYOffset at @e[tag=LM.Line_core_end_init] run function line_marker:core/set_tyo
    execute unless data storage line_marker: Argument.TargetYOffset at @e[tag=LM.Line_core_end_init] run summon armor_stand ~ ~ ~ {Tags:["LM.Line_core_end"],Invisible:1b,Marker:1b}

# StartOffsetが設定されていればオフセットをいじる
    execute if data storage line_marker: Argument.StartForwardOffset at @e[tag=LM.Line_core_start_init] run function line_marker:core/set_sfo
    execute unless data storage line_marker: Argument.StartForwardOffset if data storage line_marker: Argument.StartSideOffset at @e[tag=LM.Line_core_start_init] run function line_marker:core/set_sso
    execute unless data storage line_marker: Argument.StartForwardOffset unless data storage line_marker: Argument.StartSideOffset if data storage line_marker: Argument.StartYOffset at @e[tag=LM.Line_core_start_init] run function line_marker:core/set_syo
    execute unless data storage line_marker: Argument.StartForwardOffset unless data storage line_marker: Argument.StartSideOffset unless data storage line_marker: Argument.StartYOffset at @e[tag=LM.Line_core_start_init] run summon armor_stand ~ ~ ~ {Tags:["LM.Line_core_start"],Invisible:1b,Marker:1b}

# 後処理
    kill @e[tag=LM.Line_core_start_init]
    kill @e[tag=LM.Line_core_start_init2]
    kill @e[tag=LM.Line_core_start_init3]
    kill @e[tag=LM.Line_core_end_init]

# 距離測定
    execute at @e[tag=LM.Line_core_start] run function line_marker:core/get_far

# 射程と比較
    execute if data storage line_marker: Argument.Range run function line_marker:core/range

# OutOfRangeが無効かつ射程外なら実行しない
    execute if score $outofrange LM.Core matches 1 if data storage line_marker: Argument{EnableOutOfRange:0b} run scoreboard players set $failed LM.Core 1

# 最大実行回数を計算
    execute store result score $interval LM.Core run data get storage line_marker: Argument.Interval 100
    execute unless score $failed LM.Core matches 1 if score $outofrange LM.Core matches 0 store result score $maxcount LM.Core run scoreboard players operation $measure LM.Core /= $interval LM.Core
    execute unless score $failed LM.Core matches 1 if score $outofrange LM.Core matches 1 store result score $maxcount LM.Core run scoreboard players operation $range LM.Core /= $interval LM.Core

# 反復実行
    execute unless score $failed LM.Core matches 1 at @e[tag=LM.Line_core_start] run summon armor_stand ~ ~ ~ {Tags:["LM.Line_core"],Invisible:1b,Marker:1b}
    execute unless score $failed LM.Core matches 1 at @e[tag=LM.Line_core] run function line_marker:core/repeat
    execute if score $failed LM.Core matches 1 run function line_marker:core/failed