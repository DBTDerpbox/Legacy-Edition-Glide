##Run the check function as the host for optimization
execute as @a[tag=host,scores={4j.gamecfg=1..}] run function 4jglide:menu/configure/check

##Enable trigger
scoreboard players enable @a[tag=host] 4j.gamecfg

##Loop
schedule function 4jglide:menu/configure/runner 5t