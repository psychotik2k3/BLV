G30 P0 X321 Y176 Z-99999 s-1
G30 ; home

;for bltouch
G30 P0 X321 Y176 Z-99999 ; probe near a leadscrew, half way along Y axis
G30 P1 X33 Y176 Z-99999 S2 ; probe near a leadscrew and calibrate 2 motors


G30 P0 X321 Y176 Z-99999 ; probe near a leadscrew, half way along Y axis
G30 P1 X33 Y176 Z-99999  ; probe near a leadscrew and calibrate 2 motors
G30 P2 X295 Y278 Z-99999 ; probe far right
G30 P3 X59 Y278 Z-99999 ; probe far left
G30 P4 X59 Y69 Z-99999 ; probe front left
G30 P5 X295 Y69 Z-99999 S-1 ; probe near an adjusting screw and report adjustments needed