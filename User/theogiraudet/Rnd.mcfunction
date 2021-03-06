#------------ Fonction permettant de tirer un nombre aléatoire entre 0 et la borne choisie ------------

#@Author: theogiraudet/Oromis

#Constantes
scoreboard players set 360 Constant 360

#Initialisation
scoreboard players add @s rndBorne 0

#Tirage du nombre
summon bat ~ ~100 ~ {Tags:["rndBat"],HandItems:[{id:slime_ball,Count:1b,tag:{display:{Name:"rnd"}}}],HandDropChances:[1.0F,0.0F],NoAI:1,Silent:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:19980,ShowParticles:0b}]}
kill @e[tag=rndBat]
scoreboard players tag @e[name=rnd] add searchTilt
execute @e[tag=searchTilt] ~ ~ ~ function operation:tilt
scoreboard players operation @s Tilt = @e[tag=getTilt,type=item] Operation 
kill @e[type=item,tag=getTilt]
scoreboard players set @s[score_Operation_min=360] Operation 0

#Réduire
scoreboard players set @s[score_rndBorne=0,score_rndBorne_min=0] rndBorne 360
scoreboard players tag @s[score_rndBorne_min=361] add stopRnd
scoreboard players tag @s[score_rndBorne=-1] add stopRnd
scoreboard players operation @s[tag=!stopRnd] Operation *= @s[tag=!stopRnd] rndBorne
scoreboard players operation @s[tag=!stopRnd] Operation /= 360 Constant
tellraw @s[tag=stopRnd] {"text":"Your value isn't in the range [0;360]!","color":"dark_red"}

#Output
scoreboard players tag @s[tag=!stopRnd] add getNumber
scoreboard players tag @s[tag=stopRnd] remove stopRnd
scoreboard players tag @s remove rnd

#------------------------------------------------------------------------------------------------------