##Equip boots depending on item held
#Netherite
execute as @s[nbt={SelectedItem:{id:"minecraft:netherite_boots"}}] unless entity @s[nbt={Inventory:[{Slot:100b,tag:{AutoEquipped:1}}]}] at @s run function 4jglide:game/autoequip/boots/swap/netherite