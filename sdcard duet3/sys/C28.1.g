if (move.axes[0].homed=false ) 
	M118 S"homing X axis"
	M98 P"homex.g"
if (move.axes[1].homed=false ) 
	M118 S"homing Y axis"
	M98 P"homey.g"
