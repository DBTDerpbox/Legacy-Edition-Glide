##Play music when timer runs out
execute as @a[scores={4j.mustimer=..0}] at @s run function 4jglide:game/music/pick

##Decrease timer
scoreboard players remove @a 4j.mustimer 1

##Block vanilla music
function 4jglide:game/music/block

##Loop
schedule function 4jglide:game/music/runner 1s
