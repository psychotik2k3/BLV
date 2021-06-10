; homex.g
; called to home the X axis
;
; generated by RepRapFirmware Configuration Tool v3.2.3 on Thu May 13 2021 17:38:36 GMT+0200 (heure d’été d’Europe centrale)
M98 P"retractprobe.g"                                                       ; force a retract in case of restart when pin deployed
G91               ; relative positioning
G1 H2 Z5 F6000    ; lift Z relative to current position
if (move.axes[1].homed=false ) 
    G1 H1 Y369 F1800 ; move quickly to Y axis endstop and stop there (first pass)
    G1 Y-30 F6000     ; go back a few mm

G1 H1 X-358 F1800 ; move quickly to X axis endstop and stop there (first pass)
G1 X5 F6000       ; go back a few mm
G1 H1 X-358 F360  ; move slowly to X axis endstop once more (second pass)
G1 H2 Z-5 F6000   ; lower Z again
G90               ; absolute positioning

