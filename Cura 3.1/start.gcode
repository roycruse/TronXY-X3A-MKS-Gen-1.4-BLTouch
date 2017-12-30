G21 ;                        Metric Values
G90 ;                        Absolute Positioning
M107 ;                       Start with the Fan Off
M117 Home Axis. ;            Display Message
G28;                         Home Axis
M117 Leveling. ;             Display Message
G29 ;                        Z-Probe the bed (requires Z-Probe!)
M117 Cleaning. ;             Display Message
G92 E0 ;                     Zero the Extruded Length
G1 X110 Y0 Z30 ;             Move half way along the front edge and up 30mm
G1 F300 E30 F1000 ;          Extrude 30 mm of Filament
G92 E0 ;                     Zero the Extruded Length
G4 P20000 ;                  Wait 20 seconds to manually remove extruded filament
M117 Purging. ;              Display Message
G92 E0 ;                     Zero the Extruded Length
G1 X180 Y7.5 Z0.3 ;          Move X to 40mm and Y to 7.5mm to prep for purge
G1 X40 E16 F4000 ;           Move X-carriage 140mm while purging 16mm of filament
G92 E0 ;                     Zero the Extruded Length
G1 E-1 ;                     A tiny bit of retraction to minimize stringing across bed when moving to print start position
G92 E0 ;                     Zero the Extruded Length
M117 Printing. ;             Display Message
