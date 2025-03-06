execute as @a at @s if entity @e[type=wither,distance=..150] run tag @s add witherthemeplays
scoreboard players add @a[tag=witherthemeplays] withertheme 1

#------------------------------------------------------------------------------------------------------------------------------------------------------------------
execute as @a at @s if score @s withertheme matches 2500.. run scoreboard players set @s withertheme 2
#------------------------------------------------------------------------------------------------------------------------------------------------------------------

execute as @a at @s if score @s withertheme matches 1.. run stopsound @s music
execute as @a at @s if score @s withertheme matches 1 run title @s actionbar [{"bold":true,"color":"light_purple","text":"Now playing: "},{"bold":false,"color":"white","text":"84tangelo - "},{"bold":false,"color":"white","italic":true,"text":"\"Der Hexenkönig\""}]
execute as @a at @s if score @s withertheme matches 2 run playsound boss_music_mod:witherboss record @s ~ ~ ~ 0.7
execute as @a at @s unless entity @e[type=wither,distance=..300] run stopsound @s record boss_music_mod:witherboss
execute as @a at @s unless entity @e[type=wither,distance=..300] run scoreboard players set @s withertheme 0
execute as @a at @s unless entity @e[type=wither,distance=..300] run tag @s remove witherthemeplays
execute as @a at @s if entity @e[type=ender_dragon,distance=..500] run tag @s add dragonthemeplays
scoreboard players add @a[tag=dragonthemeplays] dragontheme 1

#------------------------------------------------------------------------------------------------------------------------------------------------------------------
execute as @a at @s if score @s dragontheme matches 5480.. run scoreboard players set @s dragontheme 2
#------------------------------------------------------------------------------------------------------------------------------------------------------------------

execute as @a at @s if score @s dragontheme matches 1.. run stopsound @s music
execute as @a at @s if score @s dragontheme matches 1 run title @s actionbar [{"bold":true,"color":"light_purple","text":"Now playing: "},{"bold":false,"color":"white","text":"solunary - "},{"bold":false,"color":"white","italic":true,"text":"\"Afterglow\""}]
execute as @a at @s if score @s dragontheme matches 2 run playsound boss_music_mod:enderdragonbosstheme record @s ~ ~ ~ 0.65
execute as @a at @s unless entity @e[type=ender_dragon,distance=..500] run stopsound @s record boss_music_mod:enderdragonbosstheme
execute as @a at @s unless entity @e[type=ender_dragon,distance=..500] run scoreboard players set @s dragontheme 0
execute as @a at @s unless entity @e[type=ender_dragon,distance=..500] run tag @s remove dragonthemeplays
scoreboard objectives add withertheme dummy
scoreboard objectives add dragontheme dummy
scoreboard objectives add bosmjoinmes dummy
scoreboard players add @a bosmjoinmes 1
execute as @a at @s if score @s bosmjoinmes matches 100 run tellraw @s ["",{"text":"BOSS BATTLE THEME MOD","color":"gold"}," CODE BỞI ",{"text":"KUROKAMI FUBUKI","underlined":true,"color":"dark_red","bold":true},",CHÚC BẠN CHƠI GAME VUI VẺ!"]
execute as @a at @s if score @s bosmjoinmes matches 5000.. run scoreboard players set @s bosmjoinmes 101
