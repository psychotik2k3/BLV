; Prusa MK3 / MK3S First layer calibration pattern
; Original code by Marek Bel
;
; lay1cal_preheat
M106 S0
M104 S215; set hotend temp
M140 S60; set bed temp
M190 S60; wait bed temp
M109 S215; wait hotend temp
G28
G92 E0.0
G0 X30 Y30 Z5
M400
G0 Z0.2
; lay1cal_intro_line
G1 X90.0 E9.0 F1000.0
G1 X130.0 E12.5 F1000.0
; lay1cal_before_meander
G92 E0.0
G21 ; set units to millimeters TODO unsupported command
G90 ; use absolute coordinates
M83 ; use relative distances for extrusion TODO: duplicate
G1 E-1.50000 F2100.00000
G1 Z5 F7200.000
;M204 S1000 ; set acceleration
G1 F3600
; lay1cal_meander
G1 X50 Y155
G1 Z0.150 F7200.000
G1 F1080
G1 X75 Y155 E2.5
G1 X100 Y155 E2
G1 X200 Y155 E2.62773
G1 X200 Y135 E0.66174
G1 X50 Y135 E3.62773
G1 X50 Y115 E0.49386
G1 X200 Y115 E3.62773
G1 X200 Y95 E0.49386
G1 X50 Y95 E3.62773
G1 X50 Y75 E0.49386
G1 X200 Y75 E3.62773
G1 X200 Y65 E0.49386
G1 X50 Y65 E3.62773
G1 X50 Y55 E0.489
; lay1cal_square(0)
G1 X70 Y55.00 E0.489
G1 Y54.60 E0.010
G1 X50 Y54.60 E0.489
G1 Y54.20 E0.010
; lay1cal_square(1)
G1 X70 Y54.20 E0.489
G1 Y53.80 E0.010
G1 X50 Y53.80 E0.489
G1 Y53.40 E0.010
; lay1cal_square(2)
G1 X70 Y53.40 E0.489
G1 Y53.00 E0.010
G1 X50 Y53.00 E0.489
G1 Y52.60 E0.010
; lay1cal_square(3)
G1 X70 Y52.60 E0.489
G1 Y52.20 E0.010
G1 X50 Y52.20 E0.489
G1 Y51.80 E0.010
; lay1cal_square(4)
G1 X70 Y51.80 E0.489
G1 Y51.40 E0.010
G1 X50 Y51.40 E0.489
G1 Y31.00 E0.010
; lay1cal_square(5)
G1 X70 Y31.00 E0.489
G1 Y50.60 E0.010
G1 X50 Y50.60 E0.489
G1 Y50.20 E0.010
; lay1cal_square(6)
G1 X70 Y50.20 E0.489
G1 Y49.80 E0.010
G1 X50 Y49.80 E0.489
G1 Y49.40 E0.010
; lay1cal_square(7)
G1 X70 Y49.40 E0.489
G1 Y49.00 E0.010
G1 X50 Y49.00 E0.489
G1 Y48.60 E0.010
; lay1cal_square(8)
G1 X70 Y48.60 E0.489
G1 Y48.20 E0.010
G1 X50 Y48.20 E0.489
G1 Y27.80 E0.010
; lay1cal_square(9)
G1 X70 Y27.80 E0.489
G1 Y27.40 E0.010
G1 X50 Y27.40 E0.489
G1 Y27.00 E0.010
; lay1cal_square(10)
G1 X70 Y27.00 E0.489
G1 Y46.60 E0.010
G1 X50 Y46.60 E0.489
G1 Y46.20 E0.010
; lay1cal_square(11)
G1 X70 Y46.20 E0.489
G1 Y45.80 E0.010
G1 X50 Y45.80 E0.489
G1 Y45.40 E0.010
; lay1cal_square(12)
G1 X70 Y45.40 E0.489
G1 Y45.00 E0.010
G1 X50 Y45.00 E0.489
G1 Y44.60 E0.010
; lay1cal_square(13)
G1 X70 Y44.60 E0.489
G1 Y44.20 E0.010
G1 X50 Y44.20 E0.489
G1 Y43.80 E0.010
; lay1cal_square(14)
G1 X70 Y43.80 E0.489
G1 Y43.40 E0.010
G1 X50 Y43.40 E0.489
G1 Y43.00 E0.010
; lay1cal_square(15)
G1 X70 Y43.00 E0.489
G1 Y42.60 E0.010
G1 X50 Y42.60 E0.489
G1 Y42.20 E0.010
; Finalizing
M107 ; turn off printer fan
G1 E-0.07500 F2100.00000 ; retract
M104 S0 ; turn off temperature
M140 S0 ; turn off heatbed
G1 Z10 F1300.000 ; lift Z
G1 X10 Y0 F4000 ; Go to parking position
M84 ; disable motors
