##Decide Victor
tag @a[tag=player] add Victor

##Add score
scoreboard players add @a[tag=Victor] 4j.score 1

##Spectate Victor
function 4jglide:game/end/spectate/spectate

##Disable Damage
#Gamerules
function 4jglide:game/damage/disable
#Resistance
effect give @a[tag=Victor] resistance 7 255 true

##Show Victor
#Show banner
bossbar set minecraft:pushdown name {"text":"1","font":"4jglide:banner"}
#Show banner textbox
bossbar set minecraft:bannerpushdown2 name {"text":"2","font":"4jglide:banner"}
#Show Victor
bossbar set minecraft:bannerinfo name ["",{"selector":"@a[tag=Victor]","color":"black"},{"text":" has won!","color":"black"}]

##Play sound
execute as @a[tag=!Victor] at @s run playsound 4jglide:sound.game.end master @s ~ ~ ~ 99999999
execute as @a[tag=Victor] at @s run playsound 4jglide:sound.game.win master @s ~ ~ ~ 99999999

##Display particles
function 4jglide:game/particle/victory

##Clear showdown schedule
schedule clear 4jglide:game/timer/showdown/run

##Enable nametags
function 4jglide:game/namevisibility/enable

##Check if the game should end or go to the next round
schedule function 4jglide:game/end/roundcheck 7s

##Clear all schedules
schedule function 4jglide:game/end/clear 2t

##Hide GlobalInfo
schedule function 4jglide:game/globalinfo/hide 7s

##Reset playerbar
schedule function 4jglide:game/gui/playerbar/load 7s

##Stop TNT Check
schedule function 4jglide:game/tnt/stop 8s

##Stop Fire Check
schedule function 4jglide:game/tnt/stop 8s