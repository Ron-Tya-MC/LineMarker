#> line_marker:core/stop_at_better_collision
#
# BetterCollisionを使う
#
# @within function line_marker:core/**

execute unless score $installed BCollision.core matches 1 run tellraw @a [{"text":"[","color":"white"},{"text":"LineMarker","color":"green"},{"text":"] ","color":"white"},{"text":"ERROR >>","color":"red"},{"text":"BetterCollisionが導入されていません。 (MarkerID:"},{"nbt":"Argument.ID","storage":"line_marker:"},{"text":")\n(導入している場合はバージョンを確認してください)","color":"white"}]

execute if score $installed BCollision.core matches 1 run function better_collision:api/
execute if score $installed BCollision.core matches 1 if score $Hit BCollision.core matches 1 run scoreboard players set $blocked LM.Core 1