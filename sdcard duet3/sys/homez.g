; homez.g
; called to home the Z axis
;
; generated by RepRapFirmware Configuration Tool v3.2.3 on Thu May 13 2021 17:38:36 GMT+0200 (heure d’été d’Europe centrale)
M98 P"retractprobe.g"                                                       ; force a retract in case of restart when pin deployed
echo "X homed:", (move.axes[0].homed=true), " Y Homed:", (move.axes[1].homed=true)
if (move.axes[0].homed=false ) 
	echo "homing X axis"
	M98 P"homex.g"
if (move.axes[1].homed=false ) 
	echo "homing Y axis"
	M98 P"homey.g"
echo "Homing Z axis"
M400
G91                    ; relative positioning
G1 H2 Z5 F6000         ; lift Z relative to current position
G90                    ; absolute positioning
;G1 X155 Y155 F6000 ; go to middle of bed
G1 X{155 - sensors.probes[0].offsets[0]} Y{155 - sensors.probes[0].offsets[1]} F6000
M558 F250 			   ; Set the probing speed
G30
M558 F30 			   ; Set the probing speed
G30

; Uncomment the following lines to lift Z after probing
G91                   ; relative positioning
G1 Z5 F100            ; lift Z relative to current position
G90                   ; absolute positioning

