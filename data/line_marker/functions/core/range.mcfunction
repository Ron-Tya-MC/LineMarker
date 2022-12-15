#> line_marker:core/range
#
# Rangeと距離を比較する
#
# @within function line_marker:core/**

# 比較
    execute store result score $range LM.Core run data get storage line_marker: Argument.Range 100
    scoreboard players operation $temp LM.Core = $measure LM.Core
    scoreboard players add $temp LM.Core 1
    execute store success score $outofrange LM.Core if score $range LM.Core <= $temp LM.Core