#> line_marker:core/get_far
#
# 二分探索でどうにかして距離を引っ張り出す
#
# @within function line_marker:core/**

# 一次的なスコアセット
    scoreboard players set $measure LM.Core 0

# アマスタ召喚
    summon armor_stand ~ ~ ~ {Tags:["LM.Line_measure"],Invisible:1b,Marker:1b}

# 二部探索
    execute as @e[tag=LM.Line_measure,limit=1,sort=nearest] at @s facing entity @e[type=armor_stand,tag=LM.Line_core_end,limit=1,sort=nearest] feet unless entity @e[type=armor_stand,tag=LM.Line_core_end,distance=..81.92] run scoreboard players add $measure LM.Core 8192
    execute as @e[tag=LM.Line_measure,limit=1,sort=nearest] at @s facing entity @e[type=armor_stand,tag=LM.Line_core_end,limit=1,sort=nearest] feet unless entity @e[type=armor_stand,tag=LM.Line_core_end,distance=..81.92] run tp @s ^ ^ ^81.92 ~ ~
    execute as @e[tag=LM.Line_measure,limit=1,sort=nearest] at @s facing entity @e[type=armor_stand,tag=LM.Line_core_end,limit=1,sort=nearest] feet unless entity @e[type=armor_stand,tag=LM.Line_core_end,distance=..40.96] run scoreboard players add $measure LM.Core 4096
    execute as @e[tag=LM.Line_measure,limit=1,sort=nearest] at @s facing entity @e[type=armor_stand,tag=LM.Line_core_end,limit=1,sort=nearest] feet unless entity @e[type=armor_stand,tag=LM.Line_core_end,distance=..40.96] run tp @s ^ ^ ^40.96 ~ ~
    execute as @e[tag=LM.Line_measure,limit=1,sort=nearest] at @s facing entity @e[type=armor_stand,tag=LM.Line_core_end,limit=1,sort=nearest] feet unless entity @e[type=armor_stand,tag=LM.Line_core_end,distance=..20.48] run scoreboard players add $measure LM.Core 2048
    execute as @e[tag=LM.Line_measure,limit=1,sort=nearest] at @s facing entity @e[type=armor_stand,tag=LM.Line_core_end,limit=1,sort=nearest] feet unless entity @e[type=armor_stand,tag=LM.Line_core_end,distance=..20.48] run tp @s ^ ^ ^20.48 ~ ~
    execute as @e[tag=LM.Line_measure,limit=1,sort=nearest] at @s facing entity @e[type=armor_stand,tag=LM.Line_core_end,limit=1,sort=nearest] feet unless entity @e[type=armor_stand,tag=LM.Line_core_end,distance=..10.24] run scoreboard players add $measure LM.Core 1024
    execute as @e[tag=LM.Line_measure,limit=1,sort=nearest] at @s facing entity @e[type=armor_stand,tag=LM.Line_core_end,limit=1,sort=nearest] feet unless entity @e[type=armor_stand,tag=LM.Line_core_end,distance=..10.24] run tp @s ^ ^ ^10.24 ~ ~
    execute as @e[tag=LM.Line_measure,limit=1,sort=nearest] at @s facing entity @e[type=armor_stand,tag=LM.Line_core_end,limit=1,sort=nearest] feet unless entity @e[type=armor_stand,tag=LM.Line_core_end,distance=..5.12] run scoreboard players add $measure LM.Core 512
    execute as @e[tag=LM.Line_measure,limit=1,sort=nearest] at @s facing entity @e[type=armor_stand,tag=LM.Line_core_end,limit=1,sort=nearest] feet unless entity @e[type=armor_stand,tag=LM.Line_core_end,distance=..5.12] run tp @s ^ ^ ^5.12 ~ ~
    execute as @e[tag=LM.Line_measure,limit=1,sort=nearest] at @s facing entity @e[type=armor_stand,tag=LM.Line_core_end,limit=1,sort=nearest] feet unless entity @e[type=armor_stand,tag=LM.Line_core_end,distance=..2.56] run scoreboard players add $measure LM.Core 256
    execute as @e[tag=LM.Line_measure,limit=1,sort=nearest] at @s facing entity @e[type=armor_stand,tag=LM.Line_core_end,limit=1,sort=nearest] feet unless entity @e[type=armor_stand,tag=LM.Line_core_end,distance=..2.56] run tp @s ^ ^ ^2.56 ~ ~
    execute as @e[tag=LM.Line_measure,limit=1,sort=nearest] at @s facing entity @e[type=armor_stand,tag=LM.Line_core_end,limit=1,sort=nearest] feet unless entity @e[type=armor_stand,tag=LM.Line_core_end,distance=..1.28] run scoreboard players add $measure LM.Core 128
    execute as @e[tag=LM.Line_measure,limit=1,sort=nearest] at @s facing entity @e[type=armor_stand,tag=LM.Line_core_end,limit=1,sort=nearest] feet unless entity @e[type=armor_stand,tag=LM.Line_core_end,distance=..1.28] run tp @s ^ ^ ^1.28 ~ ~
    execute as @e[tag=LM.Line_measure,limit=1,sort=nearest] at @s facing entity @e[type=armor_stand,tag=LM.Line_core_end,limit=1,sort=nearest] feet unless entity @e[type=armor_stand,tag=LM.Line_core_end,distance=..0.64] run scoreboard players add $measure LM.Core 64
    execute as @e[tag=LM.Line_measure,limit=1,sort=nearest] at @s facing entity @e[type=armor_stand,tag=LM.Line_core_end,limit=1,sort=nearest] feet unless entity @e[type=armor_stand,tag=LM.Line_core_end,distance=..0.64] run tp @s ^ ^ ^0.64 ~ ~
    execute as @e[tag=LM.Line_measure,limit=1,sort=nearest] at @s facing entity @e[type=armor_stand,tag=LM.Line_core_end,limit=1,sort=nearest] feet unless entity @e[type=armor_stand,tag=LM.Line_core_end,distance=..0.32] run scoreboard players add $measure LM.Core 32
    execute as @e[tag=LM.Line_measure,limit=1,sort=nearest] at @s facing entity @e[type=armor_stand,tag=LM.Line_core_end,limit=1,sort=nearest] feet unless entity @e[type=armor_stand,tag=LM.Line_core_end,distance=..0.32] run tp @s ^ ^ ^0.02 ~ ~
    execute as @e[tag=LM.Line_measure,limit=1,sort=nearest] at @s facing entity @e[type=armor_stand,tag=LM.Line_core_end,limit=1,sort=nearest] feet unless entity @e[type=armor_stand,tag=LM.Line_core_end,distance=..0.16] run scoreboard players add $measure LM.Core 16
    execute as @e[tag=LM.Line_measure,limit=1,sort=nearest] at @s facing entity @e[type=armor_stand,tag=LM.Line_core_end,limit=1,sort=nearest] feet unless entity @e[type=armor_stand,tag=LM.Line_core_end,distance=..0.16] run tp @s ^ ^ ^00.16 ~ ~
    execute as @e[tag=LM.Line_measure,limit=1,sort=nearest] at @s facing entity @e[type=armor_stand,tag=LM.Line_core_end,limit=1,sort=nearest] feet unless entity @e[type=armor_stand,tag=LM.Line_core_end,distance=..0.08] run scoreboard players add $measure LM.Core 8
    execute as @e[tag=LM.Line_measure,limit=1,sort=nearest] at @s facing entity @e[type=armor_stand,tag=LM.Line_core_end,limit=1,sort=nearest] feet unless entity @e[type=armor_stand,tag=LM.Line_core_end,distance=..0.08] run tp @s ^ ^ ^0.08 ~ ~
    execute as @e[tag=LM.Line_measure,limit=1,sort=nearest] at @s facing entity @e[type=armor_stand,tag=LM.Line_core_end,limit=1,sort=nearest] feet unless entity @e[type=armor_stand,tag=LM.Line_core_end,distance=..0.04] run scoreboard players add $measure LM.Core 4
    execute as @e[tag=LM.Line_measure,limit=1,sort=nearest] at @s facing entity @e[type=armor_stand,tag=LM.Line_core_end,limit=1,sort=nearest] feet unless entity @e[type=armor_stand,tag=LM.Line_core_end,distance=..0.04] run tp @s ^ ^ ^0.04 ~ ~
    execute as @e[tag=LM.Line_measure,limit=1,sort=nearest] at @s facing entity @e[type=armor_stand,tag=LM.Line_core_end,limit=1,sort=nearest] feet unless entity @e[type=armor_stand,tag=LM.Line_core_end,distance=..0.02] run scoreboard players add $measure LM.Core 2
    execute as @e[tag=LM.Line_measure,limit=1,sort=nearest] at @s facing entity @e[type=armor_stand,tag=LM.Line_core_end,limit=1,sort=nearest] feet unless entity @e[type=armor_stand,tag=LM.Line_core_end,distance=..0.02] run tp @s ^ ^ ^0.02 ~ ~
    execute as @e[tag=LM.Line_measure,limit=1,sort=nearest] at @s facing entity @e[type=armor_stand,tag=LM.Line_core_end,limit=1,sort=nearest] feet unless entity @e[type=armor_stand,tag=LM.Line_core_end,distance=..0.01] run scoreboard players add $measure LM.Core 1
    execute as @e[tag=LM.Line_measure,limit=1,sort=nearest] at @s facing entity @e[type=armor_stand,tag=LM.Line_core_end,limit=1,sort=nearest] feet unless entity @e[type=armor_stand,tag=LM.Line_core_end,distance=..0.01] run tp @s ^ ^ ^0.01 ~ ~

# アマスタは消しておく
    kill @e[tag=LM.Line_measure,limit=1,sort=nearest]