#> line_marker:core/forward
#
# スコア分前進させる
#
# @within function line_marker:api/execute

# tempスコア
    scoreboard players operation $repeattemp LM.Core = $interval LM.Core

# Summon
    execute unless entity @e[tag=LM.Line_anchor] run summon armor_stand ~ ~ ~ {Tags:["LM.Line_anchor"],Invisible:1b,Marker:1b}

# 移動
    execute if score $repeattemp LM.Core matches 8192.. as @e[tag=LM.Line_anchor,limit=1,sort=nearest] at @s facing entity @e[type=armor_stand,tag=LM.Line_core_end,limit=1,sort=nearest] feet run tp @s ^ ^ ^81.92
    execute if score $repeattemp LM.Core matches 8192.. run scoreboard players remove $repeattemp LM.Core 8192
    execute if score $repeattemp LM.Core matches 4096.. as @e[tag=LM.Line_anchor,limit=1,sort=nearest] at @s facing entity @e[type=armor_stand,tag=LM.Line_core_end,limit=1,sort=nearest] feet run tp @s ^ ^ ^40.96
    execute if score $repeattemp LM.Core matches 4096.. run scoreboard players remove $repeattemp LM.Core 4096
    execute if score $repeattemp LM.Core matches 2028.. as @e[tag=LM.Line_anchor,limit=1,sort=nearest] at @s facing entity @e[type=armor_stand,tag=LM.Line_core_end,limit=1,sort=nearest] feet run tp @s ^ ^ ^20.28
    execute if score $repeattemp LM.Core matches 2028.. run scoreboard players remove $repeattemp LM.Core 2028
    execute if score $repeattemp LM.Core matches 1024.. as @e[tag=LM.Line_anchor,limit=1,sort=nearest] at @s facing entity @e[type=armor_stand,tag=LM.Line_core_end,limit=1,sort=nearest] feet run tp @s ^ ^ ^10.24
    execute if score $repeattemp LM.Core matches 1024.. run scoreboard players remove $repeattemp LM.Core 1024
    execute if score $repeattemp LM.Core matches 512.. as @e[tag=LM.Line_anchor,limit=1,sort=nearest] at @s facing entity @e[type=armor_stand,tag=LM.Line_core_end,limit=1,sort=nearest] feet run tp @s ^ ^ ^5.12
    execute if score $repeattemp LM.Core matches 512.. run scoreboard players remove $repeattemp LM.Core 512
    execute if score $repeattemp LM.Core matches 256.. as @e[tag=LM.Line_anchor,limit=1,sort=nearest] at @s facing entity @e[type=armor_stand,tag=LM.Line_core_end,limit=1,sort=nearest] feet run tp @s ^ ^ ^2.56
    execute if score $repeattemp LM.Core matches 256.. run scoreboard players remove $repeattemp LM.Core 256
    execute if score $repeattemp LM.Core matches 128.. as @e[tag=LM.Line_anchor,limit=1,sort=nearest] at @s facing entity @e[type=armor_stand,tag=LM.Line_core_end,limit=1,sort=nearest] feet run tp @s ^ ^ ^1.28
    execute if score $repeattemp LM.Core matches 128.. run scoreboard players remove $repeattemp LM.Core 128
    execute if score $repeattemp LM.Core matches 64.. as @e[tag=LM.Line_anchor,limit=1,sort=nearest] at @s facing entity @e[type=armor_stand,tag=LM.Line_core_end,limit=1,sort=nearest] feet run tp @s ^ ^ ^0.64
    execute if score $repeattemp LM.Core matches 64.. run scoreboard players remove $repeattemp LM.Core 64
    execute if score $repeattemp LM.Core matches 32.. as @e[tag=LM.Line_anchor,limit=1,sort=nearest] at @s facing entity @e[type=armor_stand,tag=LM.Line_core_end,limit=1,sort=nearest] feet run tp @s ^ ^ ^0.32
    execute if score $repeattemp LM.Core matches 32.. run scoreboard players remove $repeattemp LM.Core 32
    execute if score $repeattemp LM.Core matches 16.. as @e[tag=LM.Line_anchor,limit=1,sort=nearest] at @s facing entity @e[type=armor_stand,tag=LM.Line_core_end,limit=1,sort=nearest] feet run tp @s ^ ^ ^0.16
    execute if score $repeattemp LM.Core matches 16.. run scoreboard players remove $repeattemp LM.Core 16
    execute if score $repeattemp LM.Core matches 8.. as @e[tag=LM.Line_anchor,limit=1,sort=nearest] at @s facing entity @e[type=armor_stand,tag=LM.Line_core_end,limit=1,sort=nearest] feet run tp @s ^ ^ ^0.08
    execute if score $repeattemp LM.Core matches 8.. run scoreboard players remove $repeattemp LM.Core 8
    execute if score $repeattemp LM.Core matches 4.. as @e[tag=LM.Line_anchor,limit=1,sort=nearest] at @s facing entity @e[type=armor_stand,tag=LM.Line_core_end,limit=1,sort=nearest] feet run tp @s ^ ^ ^0.04
    execute if score $repeattemp LM.Core matches 4.. run scoreboard players remove $repeattemp LM.Core 4
    execute if score $repeattemp LM.Core matches 2.. as @e[tag=LM.Line_anchor,limit=1,sort=nearest] at @s facing entity @e[type=armor_stand,tag=LM.Line_core_end,limit=1,sort=nearest] feet run tp @s ^ ^ ^0.02
    execute if score $repeattemp LM.Core matches 2.. run scoreboard players remove $repeattemp LM.Core 2
    execute if score $repeattemp LM.Core matches 1.. as @e[tag=LM.Line_anchor,limit=1,sort=nearest] at @s facing entity @e[type=armor_stand,tag=LM.Line_core_end,limit=1,sort=nearest] feet run tp @s ^ ^ ^0.01
    execute if score $repeattemp LM.Core matches 1.. run scoreboard players remove $repeattemp LM.Core 1

# 実行
    execute at @e[tag=LM.Line_anchor,limit=1,sort=nearest] run function #line_marker:repeat

# スコアが0でないなら続ける
    execute if score $maxcount LM.Core matches 1.. run function line_marker:core/repeat

# スコアが0なら終わり
    execute if score $maxcount LM.Core matches ..0 at @e[tag=LM.Line_anchor,limit=1,sort=nearest] run function line_marker:core/end