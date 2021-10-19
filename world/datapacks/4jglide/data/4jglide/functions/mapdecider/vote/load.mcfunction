##Load players
execute as @a run function 4jglide:mapdecider/vote/join

##Load MapVote
#Remove score to reset it
scoreboard objectives remove 4j.mapvote
#Add score back
scoreboard objectives add 4j.mapvote dummy {"text":"Map Voting","bold":true,"color":"blue"}
#Set display
scoreboard objectives setdisplay sidebar 4j.mapvote

##Set map display
#Canyon
execute if score #Canyon 4j.enablemap matches 1 run scoreboard players set §a0-1:Canyon 4j.mapvote 0
#Temple
execute if score #Temple 4j.enablemap matches 1 run scoreboard players set §a0-2:Temple 4j.mapvote 0
#Cavern
execute if score #Cavern 4j.enablemap matches 1 run scoreboard players set §a0-3:Cavern 4j.mapvote 0

##Start runner
function 4jglide:mapdecider/vote/check

##Debug info
tellraw @a[tag=debug] ["",{"text":"[Debug] ","bold":true,"color":"red"},{"text":"Map Voting loaded","color":"gold"}]