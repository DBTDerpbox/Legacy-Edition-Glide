##Run fullcheck for full hungerbars
#execute as @a[scores={4j.rawhealth=20..}] run function 4jglide:game/hunger/beta/fullcheck

##Run midcheck for non-full hungerbars
execute as @a run function 4jglide:game/hunger/beta/midcheck

##Loop
schedule function 4jglide:game/hunger/beta/check 1t