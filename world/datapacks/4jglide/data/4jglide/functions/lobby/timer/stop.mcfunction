##Stop counter
schedule clear 4jglide:lobby/timer/run/check

##Start timer check
function 4jglide:lobby/timer/check

##Set GlobalInfo
bossbar set minecraft:globalinfo name "1 or more additional players are required to start the round..."
