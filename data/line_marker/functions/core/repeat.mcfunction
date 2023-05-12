#> line_marker:core/repeat
#
# 反復で実行する
#
# @within function line_marker:core/**

# スコア管理
    scoreboard players remove $maxcount LM.Core 1
    scoreboard players add $index LM.Core 1

# ブロックチェック
    execute if data storage line_marker: Argument{StopAtBlock:1b} unless data storage line_marker: Argument{StopAtbetterCollision:1b} at @e[tag=LM.Line_anchor,limit=1,sort=nearest] unless block ~ ~ ~ #line_marker:skip_blocks run scoreboard players set $blocked LM.Core 1
    execute if data storage line_marker: Argument{StopAtBlock:1b} if data storage line_marker: Argument{StopAtbetterCollision:1b} at @e[tag=LM.Line_anchor,limit=1,sort=nearest] run function line_marker:core/stop_at_better_collision
    execute if score $blocked LM.Core matches 1 unless data storage line_marker: Argument{RepeatFunctionAtBlock:1b} run scoreboard players set $stoprepeat LM.Core 1
    execute if score $blocked LM.Core matches 1 unless data storage line_marker: Argument{EndFunctionAtBlock:1b} run scoreboard players set $stopend LM.Core 1
tellraw @s {"score":{"name":"$blocked","objective":"LM.Core"}}
# 前進
    function line_marker:core/forward