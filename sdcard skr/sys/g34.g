; will perform 2 bed levelling on the screws then a meshbed at current temperature
M118 S"erase current meshbed"
G29 S2
M118 S"First G32"
G32
M118 S"Second G32"
G32
M118 S"probe Mesh bed"
G29 S0 ; probe bed