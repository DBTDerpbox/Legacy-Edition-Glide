##Clear Schedules
#End check
schedule clear 4jglide:game/end/check
#Elimination check
schedule clear 4jglide:game/death/check
#Chests
schedule clear 4jglide:game/chests/regen
#Potion checks
schedule clear 4jglide:game/potion/runner
#Extras
schedule function 4jglide:game/end/clearextras 1s
#Achievements
schedule clear 4jglide:game/achievement/check
#Showdown
schedule clear 4jglide:game/showdown/check
#Small Inventory
schedule clear 4jglide:game/inventory/check
#Spectator check
function 4jglide:game/spectator/stop
#Hunger
function 4jglide:game/hunger/stop
#Custom checks
function 4jglide:game/custom/stop
#Auto Equip
schedule clear 4jglide:game/autoequip/check

##Clear Scores
#Cupid
scoreboard players reset @a 4j.cupid
#Scratch
scoreboard players reset @a 4j.scratch

##Map specific schedules
#Cove
#execute if score #Store 4j.map matches 2 run function 4jglide:cove/clearschedule

##Debug Info
tellraw @a[tag=debug] ["",{"text":"[Debug] ","bold":true,"color":"red"},{"text":"Cleared schedules","color":"gold"}]
