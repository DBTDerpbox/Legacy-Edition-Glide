##If there is no host, create one
execute unless entity @a[tag=host] as @r run function 4jglide:host/set

##If there is a host, run success check
#execute as @a[tag=host] run function 4jglide:host/success/check

##Loop
schedule function 4jglide:host/check 5t
