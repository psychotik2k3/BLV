T-1
M400
var currentTool=0
var currentTemp=0
var currentHeater=0
while var.currentTool<=2
    set var.currentHeater=tools[var.currentTool].heaters[0]
    set var.currentTemp=heat.heaters[var.currentHeater].active
    M118 S{"Checking Tool " ^ var.currentTool ^ " heater " ^ var.currentHeater ^ " =>" ^ var.currentTemp}
    if (var.currentTemp >150)
        M118 S{"Preparing Tool " ^ var.currentTool ^ " " ^ var.currentTemp ^ "/150°C"}
        G10 P{var.currentTool} S{var.currentTemp} R{150}
        T{var.currentTool}
        M98 P"/macros/purge_wipe_prime"
        M400
        G0 Z5
    else
        M118 S{"Tool " ^ var.currentTool ^ " temp set to less than 150°C, skipping"}
    set var.currentTool=var.currentTool+1
    G4 S1
    continue
T-1