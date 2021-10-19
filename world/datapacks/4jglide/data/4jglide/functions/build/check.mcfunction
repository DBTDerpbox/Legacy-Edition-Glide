##Spawn boosters
#Center
execute as @e[type=bat,tag=spawnyellowbooster] at @s run function 4jglide:build/spawn/booster/yellow
#Standard
execute as @e[type=bat,tag=spawnorangebooster] at @s run function 4jglide:build/spawn/booster/orange

##Spawnpoints
#checkpoint
execute as @e[type=bat,tag=spawncheckpointtp] at @s run function 4jglide:build/spawn/spawnpoint/checkpoint
#start
execute as @e[type=bat,tag=spawnstarttp] at @s run function 4jglide:build/spawn/spawnpoint/start
#New Lobby
#execute as @e[type=bat,tag=spawnrandomtp] at @s run function 4jglide:build/spawn/spawnpoint/lobby/new
#Old Lobby
#execute as @e[type=bat,tag=spawncentertp] at @s run function 4jglide:build/spawn/spawnpoint/lobby/old

##Center
#execute as @e[type=bat,tag=spawncenter] at @s run function 4jglide:build/spawn/center

##Remove tool
execute as @e[type=bat,tag=removeaec] at @s run function 4jglide:build/removeaec

##Display particles
function 4jglide:build/particle

##Loop
schedule function 4jglide:build/check 5t

##Exit option
execute as @a[scores={4j.buildexit=1..},nbt={SelectedItem:{tag:{BuilderMode:1}}}] run function 4jglide:build/stop