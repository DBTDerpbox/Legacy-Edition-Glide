##Set hungertemp
scoreboard players operation @s 4j.hungertemp = @s 4j.rawhunger

##Add tag
tag @s add hungertemp

##Add to hungerbar
function 4jglide:game/hunger/normal/add/calcadd

##Calculate amount to add
function 4jglide:game/hunger/normal/add/calculate