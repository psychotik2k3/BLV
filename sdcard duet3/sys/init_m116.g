if (move.axes[0].homed=false ) 
	echo "homing all axes"
	M98 P"homeall.g"
; init Tool 0
M109 S41 T0
T0
G10 P0 S0 R0

; init Tool 1
M109 S41 T1
T1
G10 P1 S0 R0

; init Tool 2
M109 S41 T2
T2
G10 P2 S0 R0
T-1