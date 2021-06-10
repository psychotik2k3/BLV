var toolnumber = 1
var targettemp = 60
G28
if sensors.gpIn[1].value=0
    T-1 P0
else
    T-1
	
G10 P1 S{var.targettemp} R0
G10 P2 S{var.targettemp} R0
G4 P50
T1
G0 X155 Y155
M400
T2
G0 X155 Y155
M400
T-1
G10 P{var.toolnumber} S0 R0