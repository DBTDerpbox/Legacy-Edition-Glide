##Menu
execute if score #Store 4j.gamestatus matches 0 run function 4jglide:menu/load

##Lobby
execute if score #Store 4j.gamestatus matches 1 run function 4jglide:lobby/relog

##In Game
execute if score #Store 4j.gamestatus matches 2 run function 4jglide:game/death/relog
