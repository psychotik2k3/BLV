; tpost1.g
; called after tool 1 has been selected
;
; generated by RepRapFirmware Configuration Tool v3.2.3 on Thu May 13 2021 17:38:36 GMT+0200 (heure d’été d’Europe centrale)
; Wait for set temperatures to be reached
M116 P1
G90
if (move.axes[1].userPosition<100)
	G0 Y100 F3600
G0 X244 Y55 F3600
G0 Y15
;M400
;M291 P"continue ?" S3 
G0 Y-3.5 F600
;M400
;M291 P"continue ?" S3 
G0 X234
;M400
;M291 P"continue ?" S3 
G0 Y55 F6000

M400
;M118 S{sensors.gpIn[1].value=1 && state.currentTool=2}
if sensors.gpIn[1].value=1 && state.currentTool=1
  ;M118 S"writing file"
  M560 P"/sys/SetTool.g"
  T1 P0
  <!-- **EoF** -->