##Check in 1 second
schedule function 4jglide:game/timer/start/count 1s

##Count down
scoreboard players remove #Store 4j.timer 1

##Start game if timer hits 1
execute if score #Store 4j.timer matches 1 run schedule function 4jglide:game/timer/start/run 1s

##Set Global Info
bossbar set minecraft:globalinfo name ["",{"text":"Time to start: "},{"score":{"name":"#Store","objective":"4j.timer"}},{"text":" seconds."}]

##Play Sound
execute if score #Store 4j.timer matches 1..5 as @a at @s run playsound 4jglide:sound.game.count1 master @s ~ ~ ~ 999999
