; /sys/homex.g
 
M402                                     ; make sure the probe is retracted

G1 X310 F5000 S1                         ; move quickly to X axis endstop and stop there (first pass)

G91                                      ; relative moves
G1 X-5 F6000                             ; go back a 5mm
G90                                      ; absolute moves
M400                                     ; wait for the move to complete

G1 X310 F360 S1                          ; move slowly to X axis endstop once more (second pass)
