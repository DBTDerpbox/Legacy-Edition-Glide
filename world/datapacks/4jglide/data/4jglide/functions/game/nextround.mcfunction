##Remove 1 round
scoreboard players remove #Store 4j.round 1

##Announce victor
tellraw @a ["",{"selector":"@a[tag=player]"},{"text":" has won this round!"}]

##Set gamemode
#Hide message (i have no clue why just this instance of the gamemode command causes this please help)
gamerule sendCommandFeedback false
#Set gamemode
gamemode adventure @a
#Enable message
gamerule sendCommandFeedback true

##Load Canyon
execute if score #Store 4j.map matches 1 in 4jglide:canyon run function 4jglide:game/setup/teleport/check

##Load Temple
execute if score #Store 4j.map matches 2 in 4jglide:temple run function 4jglide:game/setup/teleport/check

##Load Cavern
execute if score #Store 4j.map matches 3 in 4jglide:cavern run function 4jglide:game/setup/teleport/check

##Join player team
tag @a remove spectator
tag @a add player

##Remove Victor tag
tag @a remove Victor

##Reset player
function 4jglide:game/playerreset

##Set lives
scoreboard players operation @a 4j.lives = #Store 4j.lives

##Disable chest timer
function 4jglide:game/chests/clear

##Load timer
function 4jglide:game/timer/start/start
