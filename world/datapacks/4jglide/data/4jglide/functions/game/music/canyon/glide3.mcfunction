##Play song unless this was the last song
playsound 4jglide:music.canyon.2 music @s

##Set timer
scoreboard players set @s 4j.mustimer 124

##Mark as last song
#scoreboard players set @s 4j.muslast 1

##Debug Info
tellraw @a[tag=debug] ["",{"text":"[Debug] ","bold":true,"color":"red"},{"text":"Playing song ","color":"gold"},{"text":"canyon3","color":"yellow"},{"text":" for ","color":"gold"},{"selector":"@s","color":"yellow"}]