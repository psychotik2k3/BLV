; check that X and Y are homed in case of power loss or reset with tool loaded
M98 P"/sys/C28.1.g"
G0 X75 Y120 F6000
G0 Y10
G0 Y-15 F1200
M400
G4 S2
G0 Y120 F3600