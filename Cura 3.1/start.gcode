G21 ;metric values
G90 ;absolute positioning
M107 ;start with the fan off
M117 Home All Axis.;
G28; Home Axis
M117 Auto Bed Leveling.;
G29; Z-Probe the bed (requires Z-Probe!)
M117 Cleaning.;
G92 E0 ;zero the extruded length
G1 X110 Y0 Z30 F4000 ;move half way along the front edge and up 30mm
G1 E30 ;extrude 30 mm of filament
G92 E0 ;zero the extruded length
G4 P20000 ; wait 20 seconds to manually remove extruded filament
M117 Purging.;
G92 E0 ;zero the extruded length
G1 X40 Y3 Z0.3; move X to 40mm and Y to 3mm to prep for purge
G1 X180 E16 F600 ; move X-carriage 140mm while purging 16mm of filament
G92 E0 ; reset extrusion distance
G1 E-2 ;just a tiny bit of retraction to minimize stringing across bed when moving to print start position
G92 E0 ; reset extrusion distance
M117 Printing.;
