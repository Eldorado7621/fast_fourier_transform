set moduleName FFT_Pipeline_FFT_label1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {FFT_Pipeline_FFT_label1}
set C_modelType { void 0 }
set C_modelArgList {
	{ W_M_real_V int 10 regular {array 16 { 1 } 1 1 } {global 0}  }
	{ W_M_imag_V int 9 regular {array 16 { 1 } 1 1 } {global 0}  }
	{ data_OUT4_M_real_V int 16 regular {array 32 { 1 1 } 1 1 } {global 0}  }
	{ data_OUT4_M_imag_V int 16 regular {array 32 { 1 1 } 1 1 } {global 0}  }
	{ xout_M_real_V int 16 regular {array 32 { 0 0 } 0 1 } {global 1}  }
	{ xout_M_imag_V int 16 regular {array 32 { 0 0 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "W_M_real_V", "interface" : "memory", "bitwidth" : 10, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "W_M_imag_V", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "data_OUT4_M_real_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "data_OUT4_M_imag_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "xout_M_real_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "xout_M_imag_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 40
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ W_M_real_V_address0 sc_out sc_lv 4 signal 0 } 
	{ W_M_real_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ W_M_real_V_q0 sc_in sc_lv 10 signal 0 } 
	{ W_M_imag_V_address0 sc_out sc_lv 4 signal 1 } 
	{ W_M_imag_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ W_M_imag_V_q0 sc_in sc_lv 9 signal 1 } 
	{ data_OUT4_M_real_V_address0 sc_out sc_lv 5 signal 2 } 
	{ data_OUT4_M_real_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ data_OUT4_M_real_V_q0 sc_in sc_lv 16 signal 2 } 
	{ data_OUT4_M_real_V_address1 sc_out sc_lv 5 signal 2 } 
	{ data_OUT4_M_real_V_ce1 sc_out sc_logic 1 signal 2 } 
	{ data_OUT4_M_real_V_q1 sc_in sc_lv 16 signal 2 } 
	{ data_OUT4_M_imag_V_address0 sc_out sc_lv 5 signal 3 } 
	{ data_OUT4_M_imag_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ data_OUT4_M_imag_V_q0 sc_in sc_lv 16 signal 3 } 
	{ data_OUT4_M_imag_V_address1 sc_out sc_lv 5 signal 3 } 
	{ data_OUT4_M_imag_V_ce1 sc_out sc_logic 1 signal 3 } 
	{ data_OUT4_M_imag_V_q1 sc_in sc_lv 16 signal 3 } 
	{ xout_M_real_V_address0 sc_out sc_lv 5 signal 4 } 
	{ xout_M_real_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ xout_M_real_V_we0 sc_out sc_logic 1 signal 4 } 
	{ xout_M_real_V_d0 sc_out sc_lv 16 signal 4 } 
	{ xout_M_real_V_address1 sc_out sc_lv 5 signal 4 } 
	{ xout_M_real_V_ce1 sc_out sc_logic 1 signal 4 } 
	{ xout_M_real_V_we1 sc_out sc_logic 1 signal 4 } 
	{ xout_M_real_V_d1 sc_out sc_lv 16 signal 4 } 
	{ xout_M_imag_V_address0 sc_out sc_lv 5 signal 5 } 
	{ xout_M_imag_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ xout_M_imag_V_we0 sc_out sc_logic 1 signal 5 } 
	{ xout_M_imag_V_d0 sc_out sc_lv 16 signal 5 } 
	{ xout_M_imag_V_address1 sc_out sc_lv 5 signal 5 } 
	{ xout_M_imag_V_ce1 sc_out sc_logic 1 signal 5 } 
	{ xout_M_imag_V_we1 sc_out sc_logic 1 signal 5 } 
	{ xout_M_imag_V_d1 sc_out sc_lv 16 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "W_M_real_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_M_real_V", "role": "address0" }} , 
 	{ "name": "W_M_real_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_M_real_V", "role": "ce0" }} , 
 	{ "name": "W_M_real_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "W_M_real_V", "role": "q0" }} , 
 	{ "name": "W_M_imag_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "W_M_imag_V", "role": "address0" }} , 
 	{ "name": "W_M_imag_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_M_imag_V", "role": "ce0" }} , 
 	{ "name": "W_M_imag_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "W_M_imag_V", "role": "q0" }} , 
 	{ "name": "data_OUT4_M_real_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_OUT4_M_real_V", "role": "address0" }} , 
 	{ "name": "data_OUT4_M_real_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_OUT4_M_real_V", "role": "ce0" }} , 
 	{ "name": "data_OUT4_M_real_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_OUT4_M_real_V", "role": "q0" }} , 
 	{ "name": "data_OUT4_M_real_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_OUT4_M_real_V", "role": "address1" }} , 
 	{ "name": "data_OUT4_M_real_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_OUT4_M_real_V", "role": "ce1" }} , 
 	{ "name": "data_OUT4_M_real_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_OUT4_M_real_V", "role": "q1" }} , 
 	{ "name": "data_OUT4_M_imag_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_OUT4_M_imag_V", "role": "address0" }} , 
 	{ "name": "data_OUT4_M_imag_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_OUT4_M_imag_V", "role": "ce0" }} , 
 	{ "name": "data_OUT4_M_imag_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_OUT4_M_imag_V", "role": "q0" }} , 
 	{ "name": "data_OUT4_M_imag_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_OUT4_M_imag_V", "role": "address1" }} , 
 	{ "name": "data_OUT4_M_imag_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_OUT4_M_imag_V", "role": "ce1" }} , 
 	{ "name": "data_OUT4_M_imag_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_OUT4_M_imag_V", "role": "q1" }} , 
 	{ "name": "xout_M_real_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "xout_M_real_V", "role": "address0" }} , 
 	{ "name": "xout_M_real_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xout_M_real_V", "role": "ce0" }} , 
 	{ "name": "xout_M_real_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xout_M_real_V", "role": "we0" }} , 
 	{ "name": "xout_M_real_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "xout_M_real_V", "role": "d0" }} , 
 	{ "name": "xout_M_real_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "xout_M_real_V", "role": "address1" }} , 
 	{ "name": "xout_M_real_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xout_M_real_V", "role": "ce1" }} , 
 	{ "name": "xout_M_real_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xout_M_real_V", "role": "we1" }} , 
 	{ "name": "xout_M_real_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "xout_M_real_V", "role": "d1" }} , 
 	{ "name": "xout_M_imag_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "xout_M_imag_V", "role": "address0" }} , 
 	{ "name": "xout_M_imag_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xout_M_imag_V", "role": "ce0" }} , 
 	{ "name": "xout_M_imag_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xout_M_imag_V", "role": "we0" }} , 
 	{ "name": "xout_M_imag_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "xout_M_imag_V", "role": "d0" }} , 
 	{ "name": "xout_M_imag_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "xout_M_imag_V", "role": "address1" }} , 
 	{ "name": "xout_M_imag_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xout_M_imag_V", "role": "ce1" }} , 
 	{ "name": "xout_M_imag_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xout_M_imag_V", "role": "we1" }} , 
 	{ "name": "xout_M_imag_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "xout_M_imag_V", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "FFT_Pipeline_FFT_label1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "22",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "W_M_real_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_M_imag_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_OUT4_M_real_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_OUT4_M_imag_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "xout_M_real_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "xout_M_imag_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "FFT_label1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter6", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter6", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_10s_24_4_1_U35", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_10s_24_4_1_U36", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_mulsub_16s_9s_24s_24_4_1_U37", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_9s_24s_24_4_1_U38", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	FFT_Pipeline_FFT_label1 {
		W_M_real_V {Type I LastRead 1 FirstWrite -1}
		W_M_imag_V {Type I LastRead 1 FirstWrite -1}
		data_OUT4_M_real_V {Type I LastRead 5 FirstWrite -1}
		data_OUT4_M_imag_V {Type I LastRead 5 FirstWrite -1}
		xout_M_real_V {Type O LastRead -1 FirstWrite 6}
		xout_M_imag_V {Type O LastRead -1 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "22", "Max" : "22"}
	, {"Name" : "Interval", "Min" : "22", "Max" : "22"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	W_M_real_V { ap_memory {  { W_M_real_V_address0 mem_address 1 4 }  { W_M_real_V_ce0 mem_ce 1 1 }  { W_M_real_V_q0 in_data 0 10 } } }
	W_M_imag_V { ap_memory {  { W_M_imag_V_address0 mem_address 1 4 }  { W_M_imag_V_ce0 mem_ce 1 1 }  { W_M_imag_V_q0 mem_dout 0 9 } } }
	data_OUT4_M_real_V { ap_memory {  { data_OUT4_M_real_V_address0 mem_address 1 5 }  { data_OUT4_M_real_V_ce0 mem_ce 1 1 }  { data_OUT4_M_real_V_q0 in_data 0 16 }  { data_OUT4_M_real_V_address1 MemPortADDR2 1 5 }  { data_OUT4_M_real_V_ce1 MemPortCE2 1 1 }  { data_OUT4_M_real_V_q1 in_data 0 16 } } }
	data_OUT4_M_imag_V { ap_memory {  { data_OUT4_M_imag_V_address0 mem_address 1 5 }  { data_OUT4_M_imag_V_ce0 mem_ce 1 1 }  { data_OUT4_M_imag_V_q0 in_data 0 16 }  { data_OUT4_M_imag_V_address1 MemPortADDR2 1 5 }  { data_OUT4_M_imag_V_ce1 MemPortCE2 1 1 }  { data_OUT4_M_imag_V_q1 in_data 0 16 } } }
	xout_M_real_V { ap_memory {  { xout_M_real_V_address0 mem_address 1 5 }  { xout_M_real_V_ce0 mem_ce 1 1 }  { xout_M_real_V_we0 mem_we 1 1 }  { xout_M_real_V_d0 mem_din 1 16 }  { xout_M_real_V_address1 MemPortADDR2 1 5 }  { xout_M_real_V_ce1 MemPortCE2 1 1 }  { xout_M_real_V_we1 MemPortWE2 1 1 }  { xout_M_real_V_d1 MemPortDIN2 1 16 } } }
	xout_M_imag_V { ap_memory {  { xout_M_imag_V_address0 mem_address 1 5 }  { xout_M_imag_V_ce0 mem_ce 1 1 }  { xout_M_imag_V_we0 mem_we 1 1 }  { xout_M_imag_V_d0 mem_din 1 16 }  { xout_M_imag_V_address1 MemPortADDR2 1 5 }  { xout_M_imag_V_ce1 MemPortCE2 1 1 }  { xout_M_imag_V_we1 MemPortWE2 1 1 }  { xout_M_imag_V_d1 MemPortDIN2 1 16 } } }
}
