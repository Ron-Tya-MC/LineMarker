#> line_marker:api/execute
#
# 線状の範囲でコマンドを連続実行するAPI
#
# @input storage line_marker:
#   Argument.ID: any
#       どの型を入れてもok。実行コマンドでの判別用。
#   Argument.Range: float
#       射程。0以下に設定するか未設定で初期値になる。
#   Argument.Interval: float
#       何ブロックごとにコマンドを実行するかの引数。小さくしすぎると最大コマンド数を超える恐れあり。
#   Argument.StartYOffset: float
#       開始するときのY座標上のオフセット。
#   Argument.StartSideOffset: float
#       開始するときの視点を基準とした横方向のオフセット。
#   Argument.StartForwardOffset: float
#       開始するときの視点を基準とした前後方向のオフセット。
#   Argument.TargetYOffset: float
#       終点のY座標上のオフセット。
#   Argument.EnableOutOfRange: boolean
#       射程が足りないとき実行するか否か。
# @api

# 始点終点チェック
    execute unless entity @e[tag=LM.Line_start] run tellraw @a [{"text":"[","color":"white"},{"text":"LineMarker","color":"green"},{"text":"] ","color":"white"},{"text":"ERROR >>","color":"red"},{"text":"始点の指定がされていないようです","color":"white"}]
    execute unless entity @e[tag=LM.Line_end] run tellraw @a [{"text":"[","color":"white"},{"text":"LineMarker","color":"green"},{"text":"] ","color":"white"},{"text":"ERROR >>","color":"red"},{"text":"終点の指定がされていないようです","color":"white"}]

# スコアチェック
    execute unless score $installed LM.Core matches 1 run tellraw @a [{"text":"[","color":"white"},{"text":"LineMarker","color":"green"},{"text":"] ","color":"white"},{"text":"ERROR >>","color":"red"},{"text":"linemarker:core/load関数が実行されていないようです","color":"white"}]

# 引数チェック
    execute unless data storage line_marker: Argument.Range run data modify storage line_marker: Argument.Range set value 40.0f
    execute if data storage line_marker: Argument.Range store result score $range LM.Core run data get storage line_marker: Argument.Range 100
    execute if score $range LM.Core matches ..0 run data modify storage line_marker: Argument.Range set value 40.0f
    execute if score $range LM.Core matches 12800.. run data modify storage line_marker: Argument.Range set value 128.0f
    execute unless data storage line_marker: Argument.Interval run data modify storage line_marker: Argument.Interval set value 0.25f
    execute if data storage line_marker: Argument.Interval store result score $interval LM.Core run data get storage line_marker: Argument.Interval 100
    execute if score $interval LM.Core matches ..0 run data modify storage line_marker: Argument.Interval set value 0.25f
    execute if data storage line_marker: Argument{StartYOffset:0.0f} run data remove storage line_marker: Argument.StartYOffset
    execute if data storage line_marker: Argument{StartSideOffset:0.0f} run data remove storage line_marker: Argument.StartSideOffset
    execute if data storage line_marker: Argument{StartForwardOffset:0.0f} run data remove storage line_marker: Argument.StartForwardOffset
    execute if data storage line_marker: Argument{TargetYOffset:0.0f} run data remove storage line_marker: Argument.TargetYOffset
    execute unless data storage line_marker: Argument.EnableOutOfRange run data modify storage line_marker: Argument.EnableOutOfRange set value 1b

# リセット
    scoreboard players reset $range LM.Core
    scoreboard players reset $interval LM.Core

# 条件を満たしていれば実行
    execute if score $installed LM.Core matches 1 if entity @e[tag=LM.Line_start] if entity @e[tag=LM.Line_end] run function line_marker:core/main