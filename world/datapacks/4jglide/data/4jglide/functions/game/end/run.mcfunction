##Clear
#schedule function 4jglide:game/end/clear 2t

##Determine Winner
function 4jglide:game/end/winner

##Send all players to lobby
execute as @a run function 4jglide:game/end/leave

##Set game status to Lobby
scoreboard players set #Store 4j.gamestatus 1

##Load Lobby
function 4jglide:lobby/start

##Stop Music
#Music
function 4jglide:game/music/stop
