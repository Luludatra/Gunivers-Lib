#------------ Fonction permettant de calculer l'angle horizontal d'une entité ------------

#@Author: Leirof

#Constantes
scoreboard players set 360 Constant 360

#Initialisation
scoreboard players set @s Tilt 0

#Dichotomie
scoreboard players add @s[rym=256] Tilt 256
tp @s[rym=256] ~ ~ ~ ~-256 ~
scoreboard players add @s[rym=128] Tilt 128
tp @s[rym=128] ~ ~ ~ ~-128 ~
scoreboard players add @s[rym=64] Tilt 64
tp @s[rym=64] ~ ~ ~ ~-64 ~
scoreboard players add @s[rym=32] Tilt 32
tp @s[rym=32] ~ ~ ~ ~-32 ~
scoreboard players add @s[rym=16] Tilt 16
tp @s[rym=16] ~ ~ ~ ~-16 ~
scoreboard players add @s[rym=8] Tilt 8
tp @s[rym=8] ~ ~ ~ ~-8 ~
scoreboard players add @s[rym=4] Tilt 4
tp @s[rym=4] ~ ~ ~ ~-4 ~
scoreboard players add @s[rym=2] Tilt 2
tp @s[rym=2] ~ ~ ~ ~-2 ~
scoreboard players add @s[rym=1] Tilt 1
tp @s[rym=1] ~ ~ ~ ~-1 ~ 

#Output
scoreboard players tag @s add getTilt
scoreboard players tag @s remove searchTilt


#----------------------------------------------------------------------------------------
