##Equip chestplate depending on item held
#Netherite
execute as @s[nbt={SelectedItem:{id:"minecraft:netherite_chestplate"}}] unless entity @s[nbt={Inventory:[{Slot:102b,tag:{AutoEquipped:1}}]}] at @s run function 4jglide:game/autoequip/chestplate/swap/netherite