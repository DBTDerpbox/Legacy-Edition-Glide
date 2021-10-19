##Open chest access if all item frames are correct
execute unless entity @e[type=item_frame,tag=playerhead,tag=!correct] run function 4jglide:lobby/secret/playerhead/open

##Close chest access if item frames are not correct
execute if entity @e[type=item_frame,tag=playerhead,tag=!correct] run function 4jglide:lobby/secret/playerhead/close