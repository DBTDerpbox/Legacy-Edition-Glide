##Start timer if enough players are online
execute if score #Store 4j.plist >= #Store 4j.prec run function 4jglide:lobby/timer/run/start

##Run ready check
function 4jglide:lobby/ready/check

##Give effects
function 4jglide:lobby/timer/effects

##Run this function again in 1 second
schedule function 4jglide:lobby/timer/check 1s
