##Pick Song
#Canyon
execute if score #Store 4j.map matches 1 run function 4jglide:game/music/canyon/pick
#Vanilla
execute if score #Store 4j.map matches 2..3 run function 4jglide:game/music/vanilla/pick
#Default to vanilla if not set
execute if score #Store 4j.map matches 4.. run function 4jglide:game/music/vanilla/pick

##Debug Info
tellraw @a[tag=debug] ["",{"text":"[Debug] ","bold":true,"color":"red"},{"text":"Picking song for ","color":"gold"},{"selector":"@s","color":"yellow"}]