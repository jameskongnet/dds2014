view wave 
wave clipboard store
wave create -driver expectedOutput -pattern clock -initialvalue 0 -period 20ns -dutycycle 50 -starttime 0ms -endtime 1ms sim:/system/c0 
wave create -driver freeze -pattern clock -initialvalue 1 -period 20ns -dutycycle 50 -starttime 0ms -endtime 1ms sim:/system/inclk0 
WaveCollapseAll -1
wave clipboard restore
