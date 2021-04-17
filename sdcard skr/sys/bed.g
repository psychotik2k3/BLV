G28 Z ; home
;G30 P0 X295 Y299 Z-99999 ; probe far right
;G30 P1 X59 Y299 Z-99999 ; probe far left
;G30 P2 X59 Y55 Z-99999 ; probe front left
;G30 P3 X295 Y55 Z-99999 S4 ; probe near an adjusting screw and report adjustments needed
; before bltouch
;G30 P0 X314 Y177 Z-99999 ; probe near a leadscrew, half way along Y axis
;G30 P1 X40 Y177 Z-99999 S2 ; probe near a leadscrew and calibrate 2 motors
bltouch
G30 P0 X289 Y176 Z-99999 ; probe near a leadscrew, half way along Y axis
G30 P1 X33 Y176 Z-99999 S2 ; probe near a leadscrew and calibrate 2 motors
;M671 X330:28 Y177:177 
;G0 X175 Y175 Z40 F4800
