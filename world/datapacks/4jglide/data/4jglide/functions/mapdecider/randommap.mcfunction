##RNG
execute store result score #Store 4j.maprandom run loot spawn ~ -2 ~ loot 4jglide:maprandom

##Set map to 0
scoreboard players set #Store 4j.map 0

##Find selected map
#Canyon
execute if score #Canyon 4j.enablemap matches 1 if score #Store 4j.maprandom matches 1 run scoreboard players set #Store 4j.map 1
#Temple
execute if score #Temple 4j.enablemap matches 1 if score #Store 4j.maprandom matches 2 run scoreboard players set #Store 4j.map 2
#Cavern
execute if score #Cavern 4j.enablemap matches 1 if score #Store 4j.maprandom matches 3 run scoreboard players set #Store 4j.map 3

##Roll again if map not found
execute if score #Store 4j.map matches ..0 run function 4jglide:mapdecider/randommap

##Load map
execute if score #Store 4j.map matches 1.. run function 4jglide:mapdecider/check