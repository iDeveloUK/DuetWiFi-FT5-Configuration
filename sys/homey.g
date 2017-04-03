; /sys/homey.g

M402                                     ; make sure the probe is retracted

G1 Y310 F6000 S1                         ; move quickly to Y axis endstop and stop there (first pass)

G91                                      ; relative moves
G1 Y-5 F6000                             ; go back a 5mm
G90                                      ; absolute moves
M400                                     ; wait for the move to complete

G1 Y310 F360 S1                          ; move slowly to Y axis endstop once more (second pass)
