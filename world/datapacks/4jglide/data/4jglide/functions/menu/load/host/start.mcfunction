##If gamestatus is not set to menu, do not start (very broken, cant be bothered to fix)
#execute if score #Store 4j.gamestatus matches 1.. run tellraw @s {"text":"Game has already started!","color":"red"}

##If there are 0 maps enabled, display error message
execute if score #Store 4j.mapcount matches 0 run tellraw @s {"text":"You need at least 1 map enabled!","color":"red"}

##If gamestatus is set to menu and there are more than 0 maps enabled, start
execute as @a unless score #Store 4j.mapcount matches 0 if score #Store 4j.gamestatus matches 0 run function 4jglide:lobby/start