if heat.heaters[1].current<200
	echo Temperature is too cold heat to 200 degres first
    abort
else
	M400				;Wait for current moves to finish
	M83				;Set extruder to relative mode
	G1 E10 F600 			;Feed 10mm of filament at 600mm/min - Init Load
	G1 E100 F600 			;Feed 700mm of filament at 3000mm/min - Quick Load
	G1 E50 F400
    G1 E20 F200 			;Feed 200mm of filament at 200mm/min - Load and Purge
	G1 E-5 F1800 			;Retract 5mm of filament at 1800mm/min - Prevent Ooze
