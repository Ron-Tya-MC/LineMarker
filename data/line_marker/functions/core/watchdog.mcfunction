#> line_marker:core/watchdog
#
# バグを検知する
#
# @within function line_marker:api/execute

# マーカーが残っていたら
    execute if entity @e[type=armor_stand,tag=LM.Line_core] run tellraw @a [{"text":"[","color":"white"},{"text":"LineMarker","color":"green"},{"text":"] ","color":"white"},{"text":"ERROR >>","color":"red"},{"text":"何らかの要因により処理が中断されました。 (MarkerID:"},{"nbt":"Argument.ID","storage":"line_marker:"},{"text":")\n(コマンドの実行間隔が短すぎてコマンド数がオーバーした可能性があります)","color":"white"}]
    execute if entity @e[type=armor_stand,tag=LM.Line_core] run scoreboard players reset $repeattemp LM.Core
    execute if entity @e[type=armor_stand,tag=LM.Line_core] run kill @e[tag=LM.Line_core_start]
    execute if entity @e[type=armor_stand,tag=LM.Line_core] run kill @e[tag=LM.Line_core_end]
    execute if entity @e[type=armor_stand,tag=LM.Line_core] run kill @e[tag=LM.Line_core_anchor]
    execute if entity @e[type=armor_stand,tag=LM.Line_core] run kill @e[tag=LM.Line_core]