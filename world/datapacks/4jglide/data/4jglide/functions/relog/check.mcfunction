##Setup users on a relog
#New users
execute as @a[tag=!relog] run function 4jglide:relog/setup/new
#Existing users
execute as @a[scores={4j.relog=1..}] run function 4jglide:relog/setup/existing

##Run again in 10 ticks
schedule function 4jglide:relog/check 5t
