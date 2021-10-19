##Inform all users that showdown has begun
#Show banner
bossbar set minecraft:pushdown name {"text":"1","font":"4jglide:banner"}
#Show banner textbox
bossbar set minecraft:bannerpushdown2 name {"text":"3","font":"4jglide:banner"}
#Show banner text
bossbar set minecraft:bannerinfo name {"text":"SHOWDOWN!","color":"black"}
#Hide in 5 seconds
schedule function 4jglide:game/globalinfo/hide 5s

##Play sound
execute as @a at @s run playsound 4jglide:sound.game.showdown master @s ~ ~ ~ 99999999

##Enable nametags
function 4jglide:game/namevisibility/enable

##Start showdown check
function 4jglide:game/showdown/check