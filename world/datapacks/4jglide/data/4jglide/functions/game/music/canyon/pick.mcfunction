##RNG
execute store result score @s 4j.musrandom run loot spawn ~ -2 ~ loot 4jglide:musrandom/vanilla

#Battle1
execute if score @s 4j.musrandom matches 1 run function 4jglide:game/music/vanilla/glide1
#glide2
execute if score @s 4j.musrandom matches 2 run function 4jglide:game/music/vanilla/glide2
#glide3
execute if score @s 4j.musrandom matches 3 run function 4jglide:game/music/vanilla/glide3