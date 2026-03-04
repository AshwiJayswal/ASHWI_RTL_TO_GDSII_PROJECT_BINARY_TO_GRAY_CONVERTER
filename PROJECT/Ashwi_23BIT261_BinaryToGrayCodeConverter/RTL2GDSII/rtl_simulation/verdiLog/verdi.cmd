simSetSimulator "-vcssv" -exec \
           "/home/student/Ashwi_23BIT261_BinaryToGrayCodeConverter/RTL2GDSII/rtl_simulation/simv" \
           -args
debImport "-dbdir" \
          "/home/student/Ashwi_23BIT261_BinaryToGrayCodeConverter/RTL2GDSII/rtl_simulation/simv.daidir"
debLoadSimResult \
           /home/student/Ashwi_23BIT261_BinaryToGrayCodeConverter/RTL2GDSII/rtl_simulation/simulation.fsdb
wvCreateWindow
verdiSetActWin -win $_nWave2
verdiWindowResize -win $_Verdi_1 "0" "27" "1366" "704"
verdiWindowResize -win $_Verdi_1 "0" "27" "1366" "704"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {6 11 1 1 4 1}
wvAddSignal -win $_nWave2 "/testbench/clk" "/testbench/rst" \
           "/testbench/binary_in\[3:0\]" "/testbench/gray_out\[3:0\]"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 4)}
srcHBSelect "testbench" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
schCreateWindow -delim "." -win $_nSchema1 -scope "testbench"
verdiSetActWin -win $_nSchema_3
verdiDockWidgetMaximize -dock windowDock_nSchema_3
schSelect -win $_nSchema3 -inst "dut"
schPushViewIn -win $_nSchema3
schSelect -win $_nSchema3 -inst "BinaryToGray_Sequential:Always0:8:17:RegCombo"
schPushViewIn -win $_nSchema3
srcSetScope "testbench.dut" -delim "." -win $_nTrace1
srcSelect -win $_nTrace1 -range {8 17 1 3 1 1}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
schSelect -win $_nSchema3 -inst "BinaryToGray_Sequential:Always0:8:17:RegCombo"
schPushViewIn -win $_nSchema3
srcSelect -win $_nTrace1 -range {8 17 1 3 1 1}
verdiSetActWin -win $_nSchema_3
schCloseWindow -win $_nSchema3
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
schCreateWindow -delim "." -win $_nSchema1 -scope "testbench.dut"
verdiSetActWin -win $_nSchema_4
schSelect -win $_nSchema4 -inst "BinaryToGray_Sequential:Always0:8:17:RegCombo"
schSelect -win $_nSchema4 -inst "BinaryToGray_Sequential:Always0:8:17:RegCombo"
schPushViewIn -win $_nSchema4
srcSelect -win $_nTrace1 -range {8 17 1 3 1 1}
schCreateWindow -delim "." -win $_nSchema1 -scope "testbench.dut"
verdiSetActWin -win $_nSchema_5
schSelect -win $_nSchema5 -inst "BinaryToGray_Sequential:Always0:8:17:RegCombo"
schSelect -win $_nSchema5 -inst "BinaryToGray_Sequential:Always0:8:17:RegCombo"
schSelect -win $_nSchema5 -inst "BinaryToGray_Sequential:Always0:8:17:RegCombo"
schPushViewIn -win $_nSchema5
srcSelect -win $_nTrace1 -range {8 17 1 3 1 1}
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
debExit
