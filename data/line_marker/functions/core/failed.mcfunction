#> line_marker:core/failed
#
# 終端で実行する
#
# @within function line_marker:core/**

# スコアリセット
    scoreboard players reset $repeattemp LM.Core
    scoreboard players reset $range LM.Core
    scoreboard players reset $temp LM.Core
    scoreboard players reset $interval LM.Core
    scoreboard players reset $measure LM.Core
    scoreboard players reset $maxcount LM.Core
    scoreboard players reset $outofrange LM.Core
    scoreboard players reset $failed LM.Core

# Kill
    kill @e[type=armor_stand,tag=LM.Line_core_start]
    kill @e[type=armor_stand,tag=LM.Line_core_end]
    kill @e[type=armor_stand,tag=LM.Line_anchor]
    kill @e[type=armor_stand,tag=LM.Line_core]