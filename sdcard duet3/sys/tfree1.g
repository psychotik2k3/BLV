; tfree1.g
; called when tool 1 is freed
;
; generated by RepRapFirmware Configuration Tool v3.2.3 on Thu May 13 2021 17:38:36 GMT+0200 (heure d’été d’Europe centrale)

; check that X and Y are homed in case of power loss or reset with tool loaded
M98 P"/sys/C28.1.g"
G90
if (move.axes[1].userPosition<(100+tools[1].offsets[1]))
	G0 Y{100+tools[1].offsets[1]} F3600
; dock the tool
G0 X{234+tools[1].offsets[0]} Y{55+tools[1].offsets[1]} F3600
G0 Y{20+tools[1].offsets[1]}
;M400
;M291 P"continue ?" S3 
G0 Y{-3.5+tools[1].offsets[1]} F600
;M400
;M291 P"continue ?" S3 
G0 X{244+tools[1].offsets[0]}
;M400
;M291 P"continue ?" S3 
G0 Y{55+tools[1].offsets[1]} F6000

M400
; we cannot check state.currentTool as it is changed after Tfreex.g so we just rely on the tool loaded probe
if sensors.gpIn[1].value=0
  ;M118 S"writing file 2"
  M560 P"/sys/SetTool.g"
  T-1 P0
  <!-- **EoF** -->