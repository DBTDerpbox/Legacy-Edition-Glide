##Respawn if you have any lives left
execute as @s[scores={4j.lives=1..}] run function 4jglide:game/respawn/run

##Spectate if there are no more lives left
execute as @s[scores={4j.lives=..0}] run function 4jglide:game/death/run

##Play sound
execute as @a at @s run playsound 4jglide:sound.game.die master @s ~ ~ ~ 99999999