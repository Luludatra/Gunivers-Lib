# Calcul Vectors Addition

# @Author: Leirof

# Version: 1.0
# Minecraft Version: 1.12

# Imports: Vectors & Tmp8

# Input values:
# - VectorX (score dummy)
# - Vectory (score dummy)
# - Vectorz (score dummy)
# - Tmp (score dummy)
# - Tmp2 (score dummy)
# - Tmp3 (score dummy)
# - Tmp4 (score dummy)
# - Tmp5 (score dummy)

# Output values:
# - VectorX (score dummy)
# - VectorY (score dummy)
# - VectorZ (score dummy)


# Note:
#
# Tmp = second VectorX
# Tmp2 = second VectorY
# Tmp3 = second VectorZ
# Tmp4 = coefficient first Vector
# Tmp4 = coefficient second Vector

tellraw @a[tag=DebugVectorsAdd] ["",{"text":"   -=[ Debug Vector Addition ]=-","color":"green"}]
tellraw @a[tag=DebugVectorsAdd] ["",{"text":"INPUT -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"VectorX"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"VectorY"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"VectorZ"}}]
tellraw @a[tag=DebugVectorsAdd] ["",{"text":"INPUT -> ","color":"gray"},{"text":"X2: ","color":"red"},{"score":{"name":"@s","objective":"Tmp"}},{"text":".   Y2: ","color":"red"},{"score":{"name":"@s","objective":"Tmp2"}},{"text":".   Z2: ","color":"red"},{"score":{"name":"@s","objective":"Tmp3"}}]
tellraw @a[tag=DebugVectorsAdd] ["",{"text":"INPUT -> ","color":"gray"},{"text":"M1: ","color":"red"},{"score":{"name":"@s","objective":"Tmp4"}},{"text":".   M2: ","color":"red"},{"score":{"name":"@s","objective":"Tmp5"}}]

scoreboard players operation @s Tmp6 = @s VectorX 
scoreboard players operation @s Tmp7 = @s VectorY 
scoreboard players operation @s Tmp8 = @s VectorZ 

scoreboard players operation @s VectorX = @s Tmp 
scoreboard players operation @s VectorY = @s Tmp2 
scoreboard players operation @s VectorZ = @s Tmp3 

function Gunivers-Lib:Entity/Calcul/VectorsNormalized

scoreboard players operation @s Tmp = @s VectorX 
scoreboard players operation @s Tmp2 = @s VectorY 
scoreboard players operation @s Tmp3 = @s VectorZ 

scoreboard players operation @s VectorX = @s Tmp6
scoreboard players operation @s VectorY = @s Tmp7
scoreboard players operation @s VectorZ = @s Tmp8

tellraw @a[tag=DebugVectorsAdd] ["",{"text":"INPUT (normalized) -> ","color":"gray"},{"text":"X2: ","color":"red"},{"score":{"name":"@s","objective":"Tmp"}},{"text":".   Y2: ","color":"red"},{"score":{"name":"@s","objective":"Tmp2"}},{"text":".   Z2: ","color":"red"},{"score":{"name":"@s","objective":"Tmp3"}}]

scoreboard players operation @s VectorX *= @s Tmp4
scoreboard players operation @s VectorY *= @s Tmp4
scoreboard players operation @s VectorZ *= @s Tmp4

scoreboard players operation @s Tmp *= @s Tmp5
scoreboard players operation @s Tmp2 *= @s Tmp5
scoreboard players operation @s Tmp3 *= @s Tmp5

scoreboard players operation @s VectorX += @s Tmp
scoreboard players operation @s VectorY += @s Tmp2
scoreboard players operation @s VectorZ += @s Tmp3

tellraw @a[tag=DebugVectorsAdd] ["",{"text":"OUTPUT -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"VectorX"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"VectorY"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"VectorZ"}}]


function Gunivers-Lib:Entity/Calcul/VectorsNormalized

tellraw @a[tag=DebugVectorsAdd] ["",{"text":"OUTPUT (normalized) -> ","color":"gray"},{"text":"X: ","color":"red"},{"score":{"name":"@s","objective":"VectorX"}},{"text":".   Y: ","color":"red"},{"score":{"name":"@s","objective":"VectorY"}},{"text":".   Z: ","color":"red"},{"score":{"name":"@s","objective":"VectorZ"}}]
