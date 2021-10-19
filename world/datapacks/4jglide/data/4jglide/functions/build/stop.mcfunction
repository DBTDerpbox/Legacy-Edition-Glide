##Clear schedule
schedule clear 4jglide:build/check

##Set gamemode
gamemode adventure @a

##Reset exit score
scoreboard players reset @a 4j.buildexit

##Remove items
#Spawning items
clear @a ghast_spawn_egg{BuilderMode:1}
#Exit option
clear @a carrot_on_a_stick{BuilderMode:1}

##Send to lobby
execute as @a run function 4jglide:lobby/spawn

##Disable damange
function 4jglide:game/damage/disable

##Display message
tellraw @a ["",{"text":"Exiting Builder mode!","color":"blue"},"\n",{"text":"Builder mode stopped by ","color":"blue"},{"selector":"@s ","color":"dark_aqua"}]