##Enable trigger
scoreboard players enable @a 4j.playermapvote

##add 1 to Canyon's vote count if voted for
#If user has voted for this map
execute if score #Canyon 4j.enablemap matches 1 as @a[scores={4j.playermapvote=1},tag=votecanyon] run function 4jbattle:mapdecider/vote/error
#If user hasnt voted for this map yet
execute if score #Canyon 4j.enablemap matches 1 as @a[scores={4j.playermapvote=1}] run function 4jbattle:mapdecider/vote/add/canyon

##add 1 to Temple's vote count if voted for
#If user has voted for this map
execute if score #Temple 4j.enablemap matches 1 as @a[scores={4j.playermapvote=2},tag=votetemple] run function 4jbattle:mapdecider/vote/error
#If user hasnt voted for this map yet
execute if score #Temple 4j.enablemap matches 1 as @a[scores={4j.playermapvote=2}] run function 4jbattle:mapdecider/vote/add/temple

##add 1 to Cavern's vote count if voted for
#If user has voted for this map
execute if score #Cavern 4j.enablemap matches 1 as @a[scores={4j.playermapvote=3},tag=votecavern] run function 4jbattle:mapdecider/vote/error
#If user hasnt voted for this map yet
execute if score #Cavern 4j.enablemap matches 1 as @a[scores={4j.playermapvote=3}] run function 4jbattle:mapdecider/vote/add/cavern

##Play sound
execute as @a[scores={4j.playermapvote=1..}] at @s run playsound ui.button.click master @s ~ ~ ~ 0.25

##Reset score
scoreboard players reset @a[scores={4j.playermapvote=1..}] 4j.playermapvote

##Loop
schedule function 4jglide:mapdecider/vote/check 3t