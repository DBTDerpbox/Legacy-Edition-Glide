##Stop timer check
schedule clear 4jglide:lobby/timer/check

##Stop timer if there are not enough players
execute unless score #Store 4j.plist >= #Store 4j.prec run function 4jglide:lobby/timer/stop

##Count down if there are enough players
execute if score #Store 4j.plist >= #Store 4j.prec run function 4jglide:lobby/timer/run/count

##Give effects
function 4jglide:lobby/timer/effects

##Run ready check
function 4jglide:lobby/ready/check