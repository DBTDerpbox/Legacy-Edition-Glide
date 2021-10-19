##Change gamemode to spectator
gamemode spectator @s

##Display Death message
tellraw @s "A game is in progress"

##Switch tags to spectator
tag @s add spectator

##Remove from playerbar
function 4jglide:game/gui/playerbar/elim/run

##Reset scores
function 4jglide:game/death/scores
