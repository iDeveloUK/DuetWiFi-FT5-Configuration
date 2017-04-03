; /sys/homez.g

M280 P3 S160 I1                          ; reset gcode for bltouch
M400                                     ; wait for reset to complete
M558 F300                                ; set probe speed to 300mm/min

G91                                      ; relative moves
G1 Z10 F8000                             ; move bed down 10mm
G90                                      ; absolute moves
M400                                     ; wait for the move to complete

G1 X300 Y300 F8000                       ; move to probe position
M400                                     ; wait for the move to complete

M401                                     ; deploy probe

G30                                      ; probe

M402                                     ; retect probe

G91                                      ; relative moves
G1 Z4 F8000                              ; move bed down 4mm
G90                                      ; absolute moves
M400                                     ; wait for the move to complete

M558 F80                                 ; set probe speed to 80mm/min
M401                                     ; deploy probe

G30                                      ; probe

M402                                     ; retract probe

G91                                      ; relative moves
G1 Z4 F8000                              ; move bed down 4mm
G90                                      ; absolute moves
M400                                     ; wait for the move to complete

M558 F200                                ; set probe speed to 300mm/min
