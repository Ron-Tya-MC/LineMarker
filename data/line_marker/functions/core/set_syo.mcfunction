#> line_marker:core/set_syo
#
# SYOを設定する
#
# @within function line_marker:core/**

# アマスタ召喚
    summon armor_stand ~ ~ ~ {Tags:["LM.Line_core_start"],Invisible:1b,Marker:1b}

# スコアに代入
    execute store result score $syo LM.Core run data get storage line_marker: Argument.StartYOffset 100

# 上限下限
    execute if score $syo LM.Core matches 1601.. run scoreboard players set $syo LM.Core 1600
    execute if score $syo LM.Core matches ..-1601 run scoreboard players set $syo LM.Core -1600

# フラグ切り替え
    execute if score $syo LM.Core matches 1.. run scoreboard players set $flag LM.Core 1
    execute if score $syo LM.Core matches ..-1 run scoreboard players set $flag LM.Core 2

# 二分探索 +方向
    execute if score $flag LM.Core matches 1 if score $syo LM.Core matches 1024.. as @e[tag=LM.Line_core_start] at @s run tp @s ~ ~10.24 ~
    execute if score $flag LM.Core matches 1 if score $syo LM.Core matches 1024.. run scoreboard players remove $syo LM.Core 1024
    execute if score $flag LM.Core matches 1 if score $syo LM.Core matches 512.. as @e[tag=LM.Line_core_start] at @s run tp @s ~ ~5.12 ~
    execute if score $flag LM.Core matches 1 if score $syo LM.Core matches 512.. run scoreboard players remove $syo LM.Core 512
    execute if score $flag LM.Core matches 1 if score $syo LM.Core matches 256.. as @e[tag=LM.Line_core_start] at @s run tp @s ~ ~2.56 ~
    execute if score $flag LM.Core matches 1 if score $syo LM.Core matches 256.. run scoreboard players remove $syo LM.Core 256
    execute if score $flag LM.Core matches 1 if score $syo LM.Core matches 128.. as @e[tag=LM.Line_core_start] at @s run tp @s ~ ~1.28 ~
    execute if score $flag LM.Core matches 1 if score $syo LM.Core matches 128.. run scoreboard players remove $syo LM.Core 128
    execute if score $flag LM.Core matches 1 if score $syo LM.Core matches 64.. as @e[tag=LM.Line_core_start] at @s run tp @s ~ ~0.64 ~
    execute if score $flag LM.Core matches 1 if score $syo LM.Core matches 64.. run scoreboard players remove $syo LM.Core 64
    execute if score $flag LM.Core matches 1 if score $syo LM.Core matches 32.. as @e[tag=LM.Line_core_start] at @s run tp @s ~ ~0.32 ~
    execute if score $flag LM.Core matches 1 if score $syo LM.Core matches 32.. run scoreboard players remove $syo LM.Core 32
    execute if score $flag LM.Core matches 1 if score $syo LM.Core matches 16.. as @e[tag=LM.Line_core_start] at @s run tp @s ~ ~0.16 ~
    execute if score $flag LM.Core matches 1 if score $syo LM.Core matches 16.. run scoreboard players remove $syo LM.Core 16
    execute if score $flag LM.Core matches 1 if score $syo LM.Core matches 8.. as @e[tag=LM.Line_core_start] at @s run tp @s ~ ~0.08 ~
    execute if score $flag LM.Core matches 1 if score $syo LM.Core matches 8.. run scoreboard players remove $syo LM.Core 8
    execute if score $flag LM.Core matches 1 if score $syo LM.Core matches 4.. as @e[tag=LM.Line_core_start] at @s run tp @s ~ ~0.04 ~
    execute if score $flag LM.Core matches 1 if score $syo LM.Core matches 4.. run scoreboard players remove $syo LM.Core 4
    execute if score $flag LM.Core matches 1 if score $syo LM.Core matches 2.. as @e[tag=LM.Line_core_start] at @s run tp @s ~ ~0.02 ~
    execute if score $flag LM.Core matches 1 if score $syo LM.Core matches 2.. run scoreboard players remove $syo LM.Core 2
    execute if score $flag LM.Core matches 1 if score $syo LM.Core matches 1.. as @e[tag=LM.Line_core_start] at @s run tp @s ~ ~0.01 ~
    execute if score $flag LM.Core matches 1 if score $syo LM.Core matches 1.. run scoreboard players remove $syo LM.Core 1

# 二分探索 -方向
    execute if score $flag LM.Core matches 2 if score $syo LM.Core matches ..-1024 as @e[tag=LM.Line_core_start] at @s run tp @s ~ ~-10.24 ~
    execute if score $flag LM.Core matches 2 if score $syo LM.Core matches ..-1024 run scoreboard players add $syo LM.Core 1024
    execute if score $flag LM.Core matches 2 if score $syo LM.Core matches ..-512 as @e[tag=LM.Line_core_start] at @s run tp @s ~ ~-5.12 ~
    execute if score $flag LM.Core matches 2 if score $syo LM.Core matches ..-512 run scoreboard players add $syo LM.Core 512
    execute if score $flag LM.Core matches 2 if score $syo LM.Core matches ..-256 as @e[tag=LM.Line_core_start] at @s run tp @s ~ ~-2.56 ~
    execute if score $flag LM.Core matches 2 if score $syo LM.Core matches ..-256 run scoreboard players add $syo LM.Core 256
    execute if score $flag LM.Core matches 2 if score $syo LM.Core matches ..-128 as @e[tag=LM.Line_core_start] at @s run tp @s ~ ~-1.28 ~
    execute if score $flag LM.Core matches 2 if score $syo LM.Core matches ..-128 run scoreboard players add $syo LM.Core 128
    execute if score $flag LM.Core matches 2 if score $syo LM.Core matches ..-64 as @e[tag=LM.Line_core_start] at @s run tp @s ~ ~-0.64 ~
    execute if score $flag LM.Core matches 2 if score $syo LM.Core matches ..-64 run scoreboard players add $syo LM.Core 64
    execute if score $flag LM.Core matches 2 if score $syo LM.Core matches ..-32 as @e[tag=LM.Line_core_start] at @s run tp @s ~ ~-0.32 ~
    execute if score $flag LM.Core matches 2 if score $syo LM.Core matches ..-32 run scoreboard players add $syo LM.Core 32
    execute if score $flag LM.Core matches 2 if score $syo LM.Core matches ..-16 as @e[tag=LM.Line_core_start] at @s run tp @s ~ ~-0.16 ~
    execute if score $flag LM.Core matches 2 if score $syo LM.Core matches ..-16 run scoreboard players add $syo LM.Core 16
    execute if score $flag LM.Core matches 2 if score $syo LM.Core matches ..-8 as @e[tag=LM.Line_core_start] at @s run tp @s ~ ~-0.08 ~
    execute if score $flag LM.Core matches 2 if score $syo LM.Core matches ..-8 run scoreboard players add $syo LM.Core 8
    execute if score $flag LM.Core matches 2 if score $syo LM.Core matches ..-4 as @e[tag=LM.Line_core_start] at @s run tp @s ~ ~-0.04 ~
    execute if score $flag LM.Core matches 2 if score $syo LM.Core matches ..-4 run scoreboard players add $syo LM.Core 4
    execute if score $flag LM.Core matches 2 if score $syo LM.Core matches ..-2 as @e[tag=LM.Line_core_start] at @s run tp @s ~ ~-0.02 ~
    execute if score $flag LM.Core matches 2 if score $syo LM.Core matches ..-2 run scoreboard players add $syo LM.Core 2
    execute if score $flag LM.Core matches 2 if score $syo LM.Core matches ..-1 as @e[tag=LM.Line_core_start] at @s run tp @s ~ ~-0.01 ~
    execute if score $flag LM.Core matches 2 if score $syo LM.Core matches ..-1 run scoreboard players add $syo LM.Core 1

# スコアリセット
    scoreboard players reset $syo LM.Core
    scoreboard players reset $flag LM.Core