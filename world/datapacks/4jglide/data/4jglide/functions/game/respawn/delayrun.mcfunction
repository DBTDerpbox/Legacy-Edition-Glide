##Teleport
execute as @a[tag=respawndelay] run function 4jglide:game/setup/teleport/random

##Remove cooldown
execute as @a[tag=respawndelay] run function 4jglide:game/combat/cooldown

##Remove respawndelay tag
tag @a[tag=respawndelay] remove respawndelay