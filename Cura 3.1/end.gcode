M104 S0 ;                    Extruder heater off
M140 S0 ;                    Heated bed heater off (if you have it)
G91 ;                        Relative positioning
G1 E-1 F300  ;               Retract the filament a bit before lifting the nozzle, to release some of the pressure
G1 Z+1 E-5 X-20 Y-20 F9000 ; Move Z up a bit and retract filament even more
G28 X0 Y0 ;                  Move X/Y to min endstops, so the head is out of the way
G90 ;                        Absolute positioning
G1 Y230 F5000 ;              Move completed part out
M84 ;                        Steppers off
