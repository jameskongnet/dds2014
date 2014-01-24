view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 1 -starttime 0ps -endtime 1000ps sim:/DDS_CONFIG/CEN 
wave create -driver freeze -pattern clock -initialvalue 0 -period 10ps -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/DDS_CONFIG/CLK 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns Edit:/DDS_CONFIG/CEN 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps Edit:/DDS_CONFIG/CEN 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 10ps -dutycycle 50 -starttime 0ps -endtime 1000ps Edit:/DDS_CONFIG/CLK 
wave create -driver freeze -pattern constant -value 111 -range 15 0 -starttime 0ps -endtime 1000ps sim:/DDS_CONFIG/F1H 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 101 -range 31 0 -starttime 0ps -endtime 1000ps sim:/DDS_CONFIG/F1L 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 110 -range 15 0 -starttime 0ps -endtime 1000ps sim:/DDS_CONFIG/F2H 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 000 -range 31 0 -starttime 0ps -endtime 1000ps sim:/DDS_CONFIG/F2L 
WaveExpandAll -1
wave create -driver freeze -pattern constant -value 000 -range 2 0 -starttime 0ps -endtime 1000ps sim:/DDS_CONFIG/MODE 
WaveExpandAll -1
wave edit invert -start 19ps -end 49ps Edit:/DDS_CONFIG/CEN 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 10ps -dutycycle 50 -starttime 0ns -endtime 1000ns Edit:/DDS_CONFIG/CLK 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns Edit:/DDS_CONFIG/CEN 
wave edit invert -start 19ps -end 55ps Edit:/DDS_CONFIG/CEN 
wave modify -driver freeze -pattern clock -initialvalue St0 -period 100ps -dutycycle 50 -starttime 0ns -endtime 1000ns Edit:/DDS_CONFIG/CLK 
wave create -driver freeze -pattern constant -value 0 -starttime 0ps -endtime 1000ps sim:/DDS_CONFIG/TRAIANGLE 
wave create -driver freeze -pattern constant -value 0000 -range 13 0 -starttime 0ps -endtime 1000ps sim:/DDS_CONFIG/PTW1 
WaveExpandAll -1
wave modify -driver freeze -pattern constant -value 001 -range 2 0 -starttime 0ps -endtime 1000ps Edit:/DDS_CONFIG/MODE 
wave create -driver freeze -pattern constant -value 000 -range 13 0 -starttime 0ps -endtime 1000ps sim:/DDS_CONFIG/PTW2 
WaveExpandAll -1
wave modify -driver freeze -pattern constant -value 010 -range 2 0 -starttime 0ps -endtime 1000ps Edit:/DDS_CONFIG/MODE 
wave modify -driver freeze -pattern random -initialvalue 0 -period 50ps -random_type Uniform -seed 5 -range 15 0 -starttime 0ps -endtime 1000ps Edit:/DDS_CONFIG/F1H 
wave modify -driver freeze -pattern random -initialvalue 0000000000000000 -period 50ps -random_type Uniform -seed 5 -range 15 0 -starttime 0ns -endtime 1000ns Edit:/DDS_CONFIG/F1H 
wave modify -driver freeze -pattern constant -value 00000000000000000000000000000101 -range 31 0 -starttime 0ns -endtime 1000ns Edit:/DDS_CONFIG/F1L 
wave modify -driver freeze -pattern constant -value 0000000000000110 -range 15 0 -starttime 0ns -endtime 1000ns Edit:/DDS_CONFIG/F2H 
wave modify -driver freeze -pattern constant -value 00000000000000000000000000000000 -range 31 0 -starttime 0ns -endtime 1000ns Edit:/DDS_CONFIG/F2L 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 20ns -dutycycle 50 -starttime 0ns -endtime 1000ns Edit:/DDS_CONFIG/CLK 
wave edit invert -start 3979ps -end 30840ps Edit:/DDS_CONFIG/CEN 
wave edit change_value -start 0ps -end 1990ps -value 0 Edit:/DDS_CONFIG/CEN 
wave modify -driver freeze -pattern constant -value 010 -range 2 0 -starttime 0ns -endtime 1000ns Edit:/DDS_CONFIG/MODE 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 1000ns Edit:/DDS_CONFIG/TRAIANGLE 
wave modify -driver freeze -pattern constant -value 00000000000000 -range 13 0 -starttime 0ns -endtime 1000ns Edit:/DDS_CONFIG/PTW1 
wave modify -driver freeze -pattern constant -value 00000000000000 -range 13 0 -starttime 0ns -endtime 1000ns Edit:/DDS_CONFIG/PTW2 
wave modify -driver freeze -pattern constant -value 000 -range 15 0 -starttime 0ns -endtime 1000ns Edit:/DDS_CONFIG/F1H 
wave edit extend -extend to -time 1032.831ns 
wave edit extend -extend to -time 1032.831ns 
wave edit extend -extend to -time 1032.831ns 
wave edit extend -extend to -time 1032.831ns 
wave edit extend -extend to -time 1032.831ns 
wave edit extend -extend to -time 1032.831ns 
wave edit extend -extend to -time 1032.831ns 
wave edit extend -extend to -time 1032.831ns 
wave edit extend -extend to -time 1032.831ns 
wave edit extend -extend to -time 1032.831ns 
wave edit extend -extend to -time 1303.908ns 
wave edit extend -extend to -time 1303.908ns 
wave edit extend -extend to -time 1303.908ns 
wave edit extend -extend to -time 1303.908ns 
wave edit extend -extend to -time 1303.908ns 
wave edit extend -extend to -time 1303.908ns 
wave edit extend -extend to -time 1303.908ns 
wave edit extend -extend to -time 1303.908ns 
wave edit extend -extend to -time 1303.908ns 
wave edit extend -extend to -time 1303.908ns 
wave edit extend -extend to -time 1799.89ns 
wave edit extend -extend to -time 1799.89ns 
wave edit extend -extend to -time 1799.89ns 
wave edit extend -extend to -time 1799.89ns 
wave edit extend -extend to -time 1799.89ns 
wave edit extend -extend to -time 1799.89ns 
wave edit extend -extend to -time 1799.89ns 
wave edit extend -extend to -time 1799.89ns 
wave edit extend -extend to -time 1799.89ns 
wave edit extend -extend to -time 1799.89ns 
wave modify -driver freeze -pattern constant -value 011 -range 2 0 -starttime 0ns -endtime 1000ns Edit:/DDS_CONFIG/MODE 
wave modify -driver freeze -pattern constant -value 011 -range 2 0 -starttime 0ns -endtime 1000ns Edit:/DDS_CONFIG/MODE 
wave modify -driver freeze -pattern constant -value 010 -range 2 0 -starttime 0ns -endtime 1000ns Edit:/DDS_CONFIG/MODE 
wave modify -driver freeze -pattern constant -value 011 -range 2 0 -starttime 0ns -endtime 1000ns Edit:/DDS_CONFIG/MODE 
wave edit change_value -start 0ps -end 1799890ps -value 011 Edit:/DDS_CONFIG/MODE 
wave modify -driver freeze -pattern constant -value 100 -range 2 0 -starttime 0ns -endtime 1000ns Edit:/DDS_CONFIG/MODE 
wave modify -driver freeze -pattern constant -value 100 -range 2 0 -starttime 0ns -endtime 2000ns Edit:/DDS_CONFIG/MODE 
WaveCollapseAll -1
wave clipboard restore
