##Remove empty potions
clear @a glass_bottle

##Modify thrown potion velocity
execute as @e[type=potion,tag=!potionmodified] at @s run function 4jglide:game/potion/modify/prep

##Loop
schedule function 4jglide:game/potion/runner 1t
