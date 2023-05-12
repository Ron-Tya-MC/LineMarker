#> line_marker:core/end
#
# 終端で実行する
#
# @within function line_marker:core/**

# 終端function
    execute unless score $stopend LM.Core matches 1 run function #line_marker:end

# スコアリセット
    scoreboard players reset $repeattemp LM.Core
    scoreboard players reset $range LM.Core
    scoreboard players reset $temp LM.Core
    scoreboard players reset $interval LM.Core
    scoreboard players reset $measure LM.Core
    scoreboard players reset $maxcount LM.Core
    scoreboard players reset $outofrange LM.Core
    scoreboard players reset $blocked LM.Core
    scoreboard players reset $stoprepeat LM.Core
    scoreboard players reset $stopend LM.Core

# Kill
    kill @e[type=armor_stand,tag=LM.Line_core_start]
    kill @e[type=armor_stand,tag=LM.Line_core_end]
    kill @e[type=armor_stand,tag=LM.Line_anchor]
    kill @e[type=armor_stand,tag=LM.Line_core]