view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 1 -period 20ns -dutycycle 50 -starttime 0ms -endtime 1ms sim:/da1_test/clk 
WaveCollapseAll -1
wave clipboard restore
