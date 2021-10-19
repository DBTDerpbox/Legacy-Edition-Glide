##Load menu as host
execute as @a[tag=host] run function 4jglide:menu/load/host

##Load standard user menu
execute as @a[tag=!host] run function 4jglide:menu/load/user
