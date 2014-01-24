view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 1 -period 20ns -dutycycle 50 -starttime 0us -endtime 100us sim:/system/inclk0 
WaveCollapseAll -1
wave clipboard restore
