 *****CMOS INVERTER******
*****by ravishankar_2204205

.option list node post

.INCLUDE '10nm_NMOS_bulk.pm'
.INCLUDE '10nm_PMOS_bulk.pm'

v1 vdd gnd dc 1v
v2 Vin gnd pulse(0 1 0n 0.1n 0.1n 3.9n 8n)
*v2 Vin gnd dc 1v

Mp1 Vout Vin vdd vdd pmos w=20nm l=10nm
Mn1 Vout Vin gnd gnd nmos w=10nm l=10nm

*.op
.options nomod post=2 autostop

.tran 20p 500n
*********rise delay from low to high of output
.measure delayLH TRIG V(Vin) VAL=0.5V FALL=3 TARG V(Vout) VAL=0.5V RISE=3
**************fall delay from high to low of output
.measure delayHL TRIG V(Vin) VAL=0.3V RISE=3 TARG V(Vout) VAL=0.3V FALL=3


*********risetime calculation
.measure tran rise_time TRIG V(Vout) VAL=0.1 RISE=1 TARG V(Vout) VAL=0.9 RISE=1
***************8fall time calculation
.measure tran fall_time TRIG V(Vout) VAL=0.9 FALL=1 TARG V(Vout) VAL=0.1 FALL=1



.measure tran averagepower AVG POWER FROM 0N TO 48N

.measure tran supplycurrent avg i(v1) from 0n to 48n

.measure tran staticpower PARAM='-supplycurrent*1v'

*.dc v2 0v 1v 0.01v


.print V(Vout) V(Vin)
.end