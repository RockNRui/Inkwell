#--------------------------------------------------#
#
# Original function made by 14er,
# modified for use in Inkwell.
#
#--------------------------------------------------#

# Generate next random number using a LCG
scoreboard players set $prngMult InkW_RNG 1087134287
scoreboard players set $prngAdd InkW_RNG 1170644129
scoreboard players operation $prng InkW_RNG *= $prngMult InkW_RNG
scoreboard players operation $prng InkW_RNG += $prngAdd InkW_RNG

#Generate a number between 1 - 100
scoreboard players operation $prngSample InkW_RNG = $prng InkW_RNG
scoreboard players set $prngSampleMod InkW_RNG 100
scoreboard players set $prngSampleAdd InkW_RNG 0
scoreboard players operation $prngSample InkW_RNG %= $prngSampleMod InkW_RNG
scoreboard players operation $prngSample InkW_RNG += $prngSampleAdd InkW_RNG
