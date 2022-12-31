#> line_marker:core/repeat
#
# 反復で実行する
#
# @within function line_marker:core/**

# スコア管理
    scoreboard players remove $maxcount LM.Core 1
    scoreboard players add $index LM.Core 1

# 前進
    function line_marker:core/forward