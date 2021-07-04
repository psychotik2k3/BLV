if heat.heaters[1].current<200
	M291 P"Temperature is too cold, heat to 205 degres ?" S3
	M104 S205
	M109 R205
	
if (move.axes[0].homed=false || move.axes[1].homed=false || move.axes[2].homed=false) 
	G28 XY
G0 X0 Y0 Z30 F4800
M400				;Wait for current moves to finish
G0 X0 Y17 F4800
M83				;Set extruder to relative mode
M291 P"Filament is ready to Load" S2
G1 E10 F600 			;Feed 10mm of filament at 600mm/min - Init Load
G1 E100 F600 			;Feed 700mm of filament at 3000mm/min - Quick Load
G1 E50 F400
	G1 E20 F200 			;Feed 20mm of filament at 200mm/min - Load and Purge
G1 E-5 F1800 			;Retract 5mm of filament at 1800mm/min - Prevent Ooze
