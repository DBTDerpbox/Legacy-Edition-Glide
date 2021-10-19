##Stop check
schedule clear 4jglide:lobby/timer/check

##Set timer to 60 seconds
scoreboard players set #Store 4j.timer 60

##Start counting
function 4jglide:lobby/timer/run/check
