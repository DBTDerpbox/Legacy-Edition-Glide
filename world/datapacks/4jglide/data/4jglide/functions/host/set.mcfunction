##Add Tag
tag @s add host

##Load menu
function 4jglide:menu/load/host

##Load Configure trigger
execute if score #Store 4j.gamestatus matches 0..1 run function 4jglide:menu/configure/runner