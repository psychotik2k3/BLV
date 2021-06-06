; bed.g
; called to perform automatic bed compensation via G32
;
;M671 X372:-62 Y154:154 S3				; for auto dual Z bed leveling

if (move.axes[2].homed=false ) 
	echo "homing Z axis"
	M98 P"homez.g"
else
	G1 Z{sensors.probes[0].diveHeight+5} F360 ; if axes homed move to dive height
G0 X{293 - sensors.probes[0].offsets[0]} Y{154 - sensors.probes[0].offsets[1]} F3600
;G30 P0 X293 Y154 Z-99999 s-1
G30 ; home

;for bltouch
; old support at the back
;G30 P0 X297 Y154 Z-99999 ; probe near a leadscrew, half way along Y axis
;G30 P1 X9 Y154 Z-99999 S2 ; probe near a leadscrew and calibrate 2 motors
; new support in front
G30 P0 X293 Y154 Z-99999 ; probe near a leadscrew, half way along Y axis
G30 P1 X17 Y154 Z-99999 S2 ; probe near a leadscrew and calibrate 2 motors

