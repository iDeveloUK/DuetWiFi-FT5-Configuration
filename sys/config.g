;;
;; Folgertech FT5 Configuration
;;

M111 S0                                        ; Debugging off
G21                                            ; Work in millimetres
G90                                            ; Send absolute coordinates...
M83                                            ; ...but relative extruder moves
M555 P2                                        ; Set firmware compatibility to look like Marlin
M208 X0 Y0 Z0 S1                               ; Set axis minima
M208 X305 Y304 Z410 S0                         ; Set axis maxima

M574 Y2 X2 Z0 S0                               ; Define active high microswitches

M558 P5 X0 Y0 Z1 H5 F120 T6000                 ; Set Z probe type for BLTouch   
G31 P50 X-20.00 Y0 Z1.50                       ; Set Z probe trigger value, offset and trigger height

M584 X0 Y1:4 Z2 E3                             ; Map to specific drives

M569 P0 S0                                     ; Drive 0 - X
M569 P1 S0                                     ; Drive 1 - Y
M569 P2 S1                                     ; Drive 2 - Z
M569 P3 S1                                     ; Drive 3 - E0
M569 P4 S1                                     ; Drive 4 - Y

M350 X16 Y16 Z16 E16 I1                        ; Configure microstepping with interpolation
M92 X80 Y80 Z399 E492.45                       ; Set steps per mm
M566 X1200 Y1200 Z60 E120                      ; Set maximum instantaneous speed changes (mm/min)
M203 X8000 Y8000 Z600 E1200                    ; Set maximum speeds (mm/min)
M201 X1500 Y1500 Z500 E250                     ; Set accelerations (mm/s^2)
M906 X1000 Y1000 Z1200 E900 I30                ; Set motor currents (mA) and motor idle factor in per cent
M84 S30                                        ; Set idle timeout

M143 S260                                      ; Set maximum heater temperature to 260C
M305 P0 T100000 B3950 C0 R4700                 ; Set thermistor + ADC parameters for heated bed (Heater 0)
M305 P1 T100000 B4388 C0 R4700                 ; Set thermistor + ADC parameters for E0 (Heater 1)

M307 H0 A281.7 C430.4 D4.4 B0                  ; Bed PID
M307 H1 A344.7 C122.8 D5.5 B0                  ; Hotend PID
M307 H3 A-1 C-1 D-1                            ; BLTouch

M563 P0 D0 H1                                  ; Define tool 0
G10 P0 X0 Y0                                   ; Set tool 0 axis offsets
G10 P0 R0 S0                                   ; Set initial tool 0 active and standby temperatures to 0C

M550 PFT5                                      ; Set machine name
M552 P0.0.0.0 S1                               ; Enable network and acquire dynamic address via DHCP

M106 P0 S0 I0 F500 H-1                         ; Set fan 0 value, PWM signal inversion and frequency. Thermostatic control is turned off
M106 P1 S255 I0 F500 H1 T50                    ; Set fan 1 value, PWM signal inversion and frequency. Thermostatic control is turned on
M106 P2 S255 I0 F500 H1 T50                    ; Set fan 2 value, PWM signal inversion and frequency. Thermostatic control is turned on

T0                                             ; Select first tool