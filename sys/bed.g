; /sys/bed.g

M561
M280 P3 S160 I1                          ; reset gcode for bltouch
M558 F200                                ; set probe speed to 200mm/min
G28                                      ; home all axis
M557 X25:304 Y0:303 S30                  ; define levelling grid
M401                                     ; deploy probe
G29                                      ; probe levelling grid save height map
M402                                     ; retract probe
G28                                      ; home all axis