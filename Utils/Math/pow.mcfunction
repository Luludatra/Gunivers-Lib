#------------ Fonction permettant de calculer un nombre élevé à la puissance ------------

#@Author: theogiraudet/Oromis

#Initialisation
execute @s[tag=!launchPow] ~ ~ ~ scoreboard players operation @s[tag=setPow,score_pow_min=1] Temp = @s[tag=setPow,score_pow_min=1] Operation
scoreboard players tag @s[tag=setPow,score_pow_min=1] add launchPow

#Code
scoreboard players remove @s[tag=setPow,score_pow_min=1] pow 1
scoreboard players operation @s[tag=setPow,score_pow_min=1] Operation *= @s[tag=setPow,score_pow_min=1,c=1,r=0] Temp
scoreboard players tag @s[tag=setPow,score_pow=0] add getPow
scoreboard players tag @s[tag=getPow] remove setPow
scoreboard players tag @s[tag=getPow] remove launchPow


#----------------------------------------------------------------------------------------
