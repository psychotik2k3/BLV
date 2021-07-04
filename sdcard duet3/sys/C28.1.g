
if (move.axes[0].homed=false || move.axes[1].homed=false) 
	M118 S"homing all axis"
	M98 P"homeall.g"
	M400
if (move.axes[2].homed=false ) 
	M118 S"homing Z axis"
	M98 P"homeZ.g"
