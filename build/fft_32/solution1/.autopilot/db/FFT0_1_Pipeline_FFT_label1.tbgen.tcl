set moduleName FFT0_1_Pipeline_FFT_label1
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
set C_modelName {FFT0.1_Pipeline_FFT_label1}
set C_modelType { void 0 }
set C_modelArgList {
	{ index_shift_offset_cast int 3 regular  }
	{ pass_shift_offset_cast int 3 regular  }
	{ FFT_stage_offset_cast int 4 regular  }
	{ data_IN_M_real_0_0_0 int 16 regular {array 32 { 1 1 } 1 1 }  }
	{ data_IN_M_imag_0_0_0 int 16 regular {array 32 { 1 1 } 1 1 }  }
	{ data_OUT_M_real_0_0_0 int 16 regular {array 32 { 0 3 } 0 1 }  }
	{ data_OUT_M_imag_0_0_0 int 16 regular {array 32 { 0 3 } 0 1 }  }
	{ sub_cast int 4 regular  }
	{ zext_ln26 int 4 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "index_shift_offset_cast", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "pass_shift_offset_cast", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "FFT_stage_offset_cast", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "data_IN_M_real_0_0_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "data_IN_M_imag_0_0_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "data_OUT_M_real_0_0_0", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_OUT_M_imag_0_0_0", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sub_cast", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln26", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ index_shift_offset_cast sc_in sc_lv 3 signal 0 } 
	{ pass_shift_offset_cast sc_in sc_lv 3 signal 1 } 
	{ FFT_stage_offset_cast sc_in sc_lv 4 signal 2 } 
	{ data_IN_M_real_0_0_0_address0 sc_out sc_lv 5 signal 3 } 
	{ data_IN_M_real_0_0_0_ce0 sc_out sc_logic 1 signal 3 } 
	{ data_IN_M_real_0_0_0_q0 sc_in sc_lv 16 signal 3 } 
	{ data_IN_M_real_0_0_0_address1 sc_out sc_lv 5 signal 3 } 
	{ data_IN_M_real_0_0_0_ce1 sc_out sc_logic 1 signal 3 } 
	{ data_IN_M_real_0_0_0_q1 sc_in sc_lv 16 signal 3 } 
	{ data_IN_M_imag_0_0_0_address0 sc_out sc_lv 5 signal 4 } 
	{ data_IN_M_imag_0_0_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ data_IN_M_imag_0_0_0_q0 sc_in sc_lv 16 signal 4 } 
	{ data_IN_M_imag_0_0_0_address1 sc_out sc_lv 5 signal 4 } 
	{ data_IN_M_imag_0_0_0_ce1 sc_out sc_logic 1 signal 4 } 
	{ data_IN_M_imag_0_0_0_q1 sc_in sc_lv 16 signal 4 } 
	{ data_OUT_M_real_0_0_0_address0 sc_out sc_lv 5 signal 5 } 
	{ data_OUT_M_real_0_0_0_ce0 sc_out sc_logic 1 signal 5 } 
	{ data_OUT_M_real_0_0_0_we0 sc_out sc_logic 1 signal 5 } 
	{ data_OUT_M_real_0_0_0_d0 sc_out sc_lv 16 signal 5 } 
	{ data_OUT_M_imag_0_0_0_address0 sc_out sc_lv 5 signal 6 } 
	{ data_OUT_M_imag_0_0_0_ce0 sc_out sc_logic 1 signal 6 } 
	{ data_OUT_M_imag_0_0_0_we0 sc_out sc_logic 1 signal 6 } 
	{ data_OUT_M_imag_0_0_0_d0 sc_out sc_lv 16 signal 6 } 
	{ sub_cast sc_in sc_lv 4 signal 7 } 
	{ zext_ln26 sc_in sc_lv 4 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "index_shift_offset_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "index_shift_offset_cast", "role": "default" }} , 
 	{ "name": "pass_shift_offset_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pass_shift_offset_cast", "role": "default" }} , 
 	{ "name": "FFT_stage_offset_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "FFT_stage_offset_cast", "role": "default" }} , 
 	{ "name": "data_IN_M_real_0_0_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_IN_M_real_0_0_0", "role": "address0" }} , 
 	{ "name": "data_IN_M_real_0_0_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_IN_M_real_0_0_0", "role": "ce0" }} , 
 	{ "name": "data_IN_M_real_0_0_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_IN_M_real_0_0_0", "role": "q0" }} , 
 	{ "name": "data_IN_M_real_0_0_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_IN_M_real_0_0_0", "role": "address1" }} , 
 	{ "name": "data_IN_M_real_0_0_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_IN_M_real_0_0_0", "role": "ce1" }} , 
 	{ "name": "data_IN_M_real_0_0_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_IN_M_real_0_0_0", "role": "q1" }} , 
 	{ "name": "data_IN_M_imag_0_0_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_IN_M_imag_0_0_0", "role": "address0" }} , 
 	{ "name": "data_IN_M_imag_0_0_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_IN_M_imag_0_0_0", "role": "ce0" }} , 
 	{ "name": "data_IN_M_imag_0_0_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_IN_M_imag_0_0_0", "role": "q0" }} , 
 	{ "name": "data_IN_M_imag_0_0_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_IN_M_imag_0_0_0", "role": "address1" }} , 
 	{ "name": "data_IN_M_imag_0_0_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_IN_M_imag_0_0_0", "role": "ce1" }} , 
 	{ "name": "data_IN_M_imag_0_0_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_IN_M_imag_0_0_0", "role": "q1" }} , 
 	{ "name": "data_OUT_M_real_0_0_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_OUT_M_real_0_0_0", "role": "address0" }} , 
 	{ "name": "data_OUT_M_real_0_0_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_OUT_M_real_0_0_0", "role": "ce0" }} , 
 	{ "name": "data_OUT_M_real_0_0_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_OUT_M_real_0_0_0", "role": "we0" }} , 
 	{ "name": "data_OUT_M_real_0_0_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_OUT_M_real_0_0_0", "role": "d0" }} , 
 	{ "name": "data_OUT_M_imag_0_0_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_OUT_M_imag_0_0_0", "role": "address0" }} , 
 	{ "name": "data_OUT_M_imag_0_0_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_OUT_M_imag_0_0_0", "role": "ce0" }} , 
 	{ "name": "data_OUT_M_imag_0_0_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_OUT_M_imag_0_0_0", "role": "we0" }} , 
 	{ "name": "data_OUT_M_imag_0_0_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_OUT_M_imag_0_0_0", "role": "d0" }} , 
 	{ "name": "sub_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sub_cast", "role": "default" }} , 
 	{ "name": "zext_ln26", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "zext_ln26", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7"],
		"CDFG" : "FFT0_1_Pipeline_FFT_label1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "39", "EstimateLatencyMax" : "39",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "index_shift_offset_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "pass_shift_offset_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "FFT_stage_offset_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_IN_M_real_0_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_IN_M_imag_0_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_OUT_M_real_0_0_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_OUT_M_imag_0_0_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sub_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln26", "Type" : "None", "Direction" : "I"},
			{"Name" : "W_M_real_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_M_imag_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "FFT_label1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.W_M_real_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.W_M_imag_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_10s_24_4_1_U9", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_10s_24_4_1_U10", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_mulsub_16s_9s_24s_24_4_1_U11", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_9s_24s_24_4_1_U12", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	FFT0_1_Pipeline_FFT_label1 {
		index_shift_offset_cast {Type I LastRead 0 FirstWrite -1}
		pass_shift_offset_cast {Type I LastRead 0 FirstWrite -1}
		FFT_stage_offset_cast {Type I LastRead 0 FirstWrite -1}
		data_IN_M_real_0_0_0 {Type I LastRead 6 FirstWrite -1}
		data_IN_M_imag_0_0_0 {Type I LastRead 6 FirstWrite -1}
		data_OUT_M_real_0_0_0 {Type O LastRead -1 FirstWrite 7}
		data_OUT_M_imag_0_0_0 {Type O LastRead -1 FirstWrite 7}
		sub_cast {Type I LastRead 0 FirstWrite -1}
		zext_ln26 {Type I LastRead 0 FirstWrite -1}
		W_M_real_V {Type I LastRead -1 FirstWrite -1}
		W_M_imag_V {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "39", "Max" : "39"}
	, {"Name" : "Interval", "Min" : "39", "Max" : "39"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	index_shift_offset_cast { ap_none {  { index_shift_offset_cast in_data 0 3 } } }
	pass_shift_offset_cast { ap_none {  { pass_shift_offset_cast in_data 0 3 } } }
	FFT_stage_offset_cast { ap_none {  { FFT_stage_offset_cast in_data 0 4 } } }
	data_IN_M_real_0_0_0 { ap_memory {  { data_IN_M_real_0_0_0_address0 mem_address 1 5 }  { data_IN_M_real_0_0_0_ce0 mem_ce 1 1 }  { data_IN_M_real_0_0_0_q0 in_data 0 16 }  { data_IN_M_real_0_0_0_address1 MemPortADDR2 1 5 }  { data_IN_M_real_0_0_0_ce1 MemPortCE2 1 1 }  { data_IN_M_real_0_0_0_q1 in_data 0 16 } } }
	data_IN_M_imag_0_0_0 { ap_memory {  { data_IN_M_imag_0_0_0_address0 mem_address 1 5 }  { data_IN_M_imag_0_0_0_ce0 mem_ce 1 1 }  { data_IN_M_imag_0_0_0_q0 in_data 0 16 }  { data_IN_M_imag_0_0_0_address1 MemPortADDR2 1 5 }  { data_IN_M_imag_0_0_0_ce1 MemPortCE2 1 1 }  { data_IN_M_imag_0_0_0_q1 in_data 0 16 } } }
	data_OUT_M_real_0_0_0 { ap_memory {  { data_OUT_M_real_0_0_0_address0 mem_address 1 5 }  { data_OUT_M_real_0_0_0_ce0 mem_ce 1 1 }  { data_OUT_M_real_0_0_0_we0 mem_we 1 1 }  { data_OUT_M_real_0_0_0_d0 mem_din 1 16 } } }
	data_OUT_M_imag_0_0_0 { ap_memory {  { data_OUT_M_imag_0_0_0_address0 mem_address 1 5 }  { data_OUT_M_imag_0_0_0_ce0 mem_ce 1 1 }  { data_OUT_M_imag_0_0_0_we0 mem_we 1 1 }  { data_OUT_M_imag_0_0_0_d0 mem_din 1 16 } } }
	sub_cast { ap_none {  { sub_cast in_data 0 4 } } }
	zext_ln26 { ap_none {  { zext_ln26 in_data 0 4 } } }
}
