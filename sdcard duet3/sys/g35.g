M671 X271:35:35:271 Y277:277:33:33 P0.7	; for manual screw positionning
M564 S1 H0  

if (move.axes[2].homed=false ) 
	echo "homing Z axis"
	M98 P"homez.g"
else
	G1 Z{sensors.probes[0].diveHeight+5} F360 ; if axes homed move to dive height
G0 X{271 - sensors.probes[0].offsets[0]} Y{277 - sensors.probes[0].offsets[1]} F3600
G30 ; home z at current position (on screw far right)

G30 P0 X271 Y277 Z-99999 ; probe far right
G30 P1 X35 Y277 Z-99999 ; probe far left
G30 P2 X35 Y33 Z-99999 ; probe front left
G30 P3 X271 Y33 Z-99999 S4 ; probe near an adjusting screw and report adjustments needed
G0 X155 Y155 Z{sensors.probes[0].diveHeight+10} F4800

M98 P"/sys/set_screw_dual_z.g"