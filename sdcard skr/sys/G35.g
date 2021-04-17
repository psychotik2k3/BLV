M564 S1 H0  
M671 X295:59:59:295 Y299:299:55:55 P0.7	; for manual screw positionning
;M671 X295:59:59:295 Y294:294:69:69 P0.7	; for manual screw positionning
G28 Z
G30 P0 X295 Y278 Z-99999 ; probe far right
G30 P1 X59 Y278 Z-99999 ; probe far left
G30 P2 X59 Y69 Z-99999 ; probe front left
G30 P3 X295 Y69 Z-99999 S4 ; probe near an adjusting screw and report adjustments needed
;G30 P0 X326 Y177 Z-99999 ; probe near a leadscrew, half way along Y axis
;G30 P1 X28 Y177 Z-99999 S2 ; probe near a leadscrew and calibrate 2 motors
G0 X175 Y175 Z40 F4800

M671 X396:-38 Y177:177 S3				; for auto dual Z bed leveling
