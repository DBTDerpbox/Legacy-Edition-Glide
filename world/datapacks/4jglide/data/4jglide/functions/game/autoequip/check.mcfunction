##Helmet check
function 4jglide:game/autoequip/helmet/check/run

##Chestplate check
function 4jglide:game/autoequip/chestplate/check/run

##Legging check
function 4jglide:game/autoequip/leggings/check/run

##Boots check
function 4jglide:game/autoequip/boots/check/run

##Remove AutoEquipped tag from dropped items
execute as @e[type=item,tag=!aeprocessed,nbt={Item:{tag:{AutoEquipped:1}}}] run function 4jglide:game/autoequip/removetag

##Loop
schedule function 4jglide:game/autoequip/check 3t