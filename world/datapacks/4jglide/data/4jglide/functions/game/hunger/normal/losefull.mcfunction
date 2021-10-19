##Remove one from hungerbar if no saturation
execute if score @s 4j.hungersat matches ..1 run function 4jglide:game/hunger/normal/lose/nosat

##Remove one from saturation if there is still any saturation left
execute if score @s 4j.hungersat matches 2.. run scoreboard players remove @s 4j.hungersat 1

##Restore rawhunger to half
execute if score @s 4j.hungersat matches 2.. run effect give @s saturation

##Give hunger
execute if score @s 4j.hungersat matches ..1 run effect give @s hunger 4 255 true