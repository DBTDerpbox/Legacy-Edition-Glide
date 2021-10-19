##Check for eliminated players
function 4jglide:game/death/check

##Check for if the game should end
function 4jglide:game/end/check

##Handle Potion checks
function 4jglide:game/potion/runner

##Check for Achievements
function 4jglide:game/achievement/check

##Unfreeze players
function 4jglide:game/setup/freeze/stop

##Inform users the game has started
bossbar set minecraft:globalinfo name "The game has started!"

##Play sound
execute as @a at @s run playsound 4jglide:sound.game.count2 master @s ~ ~ ~ 9999999

##Run invulnerability timer
schedule function 4jglide:game/timer/invulnerability/start 1s

##Fill chests
function 4jglide:game/chests/start

##Remove combat cooldown
execute as @a run function 4jglide:game/combat/cooldown

##Start spectator check
execute positioned -343 4 -342 run function 4jglide:game/spectator/start

##TNT Check
function 4jglide:game/tnt/check

##Fire check
function 4jglide:game/fire/check

##Set spawnpoints
execute as @a at @s run spawnpoint @s ~ ~ ~

##Remove items
kill @e[type=item]

##Load AutoEquip
function 4jglide:game/autoequip/check

##Unlock chests
function 4jglide:game/chests/unlock