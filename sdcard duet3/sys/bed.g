; bed.g
; called to perform automatic bed compensation via G32
;

if (move.axes[2].homed=false ) 
	echo "homing Z axis"
	M98 P"homez.g"
G30 P0 X293 Y154 Z-99999 s-1
G30 ; home

;for bltouch
; old support at the back
;G30 P0 X297 Y154 Z-99999 ; probe near a leadscrew, half way along Y axis
;G30 P1 X9 Y154 Z-99999 S2 ; probe near a leadscrew and calibrate 2 motors
; new support in front
G30 P0 X293 Y154 Z-99999 ; probe near a leadscrew, half way along Y axis
G30 P1 X17 Y154 Z-99999 S2 ; probe near a leadscrew and calibrate 2 motors

