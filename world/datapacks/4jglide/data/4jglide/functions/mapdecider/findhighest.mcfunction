# But fakeplayers can't be resolved using selectors, so you'll have to hardcode those
##Find highest voted map
#Canyon
execute if score #Canyon 4j.enablemap matches 1 if score §a0-1:Canyon 4j.mapvote = #highestScore 4j.mapvote run scoreboard players set #Store 4j.map 1
#Temple
execute if score #Temple 4j.enablemap matches 1 if score §a0-2:Temple 4j.mapvote = #highestScore 4j.mapvote run scoreboard players set #Store 4j.map 2
#Cavern
execute if score #Cavern 4j.enablemap matches 1 if score §a0-3:Cavern 4j.mapvote = #highestScore 4j.mapvote run scoreboard players set #Store 4j.map 3

##Load map
function 4jglide:mapdecider/check