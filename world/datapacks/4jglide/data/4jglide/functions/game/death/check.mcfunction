##Check for eliminated players
execute as @a[scores={4j.eliminated=1..}] run function 4jglide:game/respawn/check

##Loop this function
schedule function 4jglide:game/death/check 10t
