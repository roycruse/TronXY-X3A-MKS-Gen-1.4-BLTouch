M117 Pre Heat Bed 120 seconds. ;     Display Message
M140 S{material_bed_temperature} ;   Set the bed temperature and continue on
G4 P120000 ;                         Wait 120 seconds to let bed start to warm up
M117 Pre Heating HotEnd. ;           Display Message
M104 S{material_print_temperature} ; Set the extruder temperature and continue on
G21 ;                                Metric Values
G90 ;                                Absolute Positioning
M107 ;                               Start with the Fan Off
M117 Home Axis. ;                    Display Message
G28;                                 Home Axis
M117 Leveling. ;                     Display Message
G29 ;                                Z-Probe the bed (requires Z-Probe!)
M117 Cleaning. ;                     Display Message
G92 E0 ;                             Zero the Extruded Length
G1 X110 Y0 Z30 ;                     Move half way along the front edge and up 30mm
M109 S{material_print_temperature} ; Ensure Extruder is at temperature
G1 F300 E30 F1000 ;                  Extrude 30 mm of Filament
G92 E0 ;                             Zero the Extruded Length
G4 P20000 ;                          Wait 20 seconds to manually remove extruded filament
M117 Purging. ;                      Display Message
G92 E0 ;                             Zero the Extruded Length
G1 X180 Y7.5 Z0.3 ;                  Move X to 40mm and Y to 7.5mm to prep for purge
G1 X40 E16 F3000 ;                   Move X-carriage 140mm while purging 16mm of filament
G92 E0 ;                             Zero the Extruded Length
M117 Printing. ;                     Display Message
