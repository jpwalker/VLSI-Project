###################################################################

# Created by write_sdc on Tue Apr 16 18:30:54 2019

###################################################################
set sdc_version 2.1

set_units -time ns -resistance 1.000000e+04kOhm -capacitance 1.000000e-04pF    \
-voltage V -current uA
create_clock [get_ports clk]  -period 10  -waveform {0 5}
set_input_delay -clock clk  2  [get_ports D]
