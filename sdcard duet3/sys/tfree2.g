; tfree2.g
; called when tool 2 is freed
;
; generated by RepRapFirmware Configuration Tool v3.2.3 on Thu May 13 2021 17:38:36 GMT+0200 (heure d’été d’Europe centrale)

; check that X and Y are homed in case of power loss or reset with tool loaded
M98 P"/sys/C28.1.g"

;dock
G0 X143 Y55 F3600
G0 Y15
;M400
;M291 P"continue ?" S3 
G0 Y-4 F600
;M400
;M291 P"continue ?" S3 
G0 X153
;M400
;M291 P"continue ?" S3 
G0 Y55 F6000
M400
; we cannot check state.currentTool as it is changed after Tfreex.g so we just rely on the tool loaded probe
if sensors.gpIn[1].value=0
  ;M118 S"writing file 2"
  M560 P"/sys/SetTool.g"
  T-1 P0
  <!-- **EoF** -->