set moduleName FFT_Pipeline_VITIS_LOOP_58_1
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
set C_modelName {FFT_Pipeline_VITIS_LOOP_58_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_IN int 32 regular {axi_s 0 volatile  { data_IN Data } }  }
	{ xin_M_real_V int 16 regular {array 32 { 0 3 } 0 1 } {global 1}  }
	{ xin_M_imag_V int 16 regular {array 32 { 0 3 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_IN", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "xin_M_real_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "xin_M_imag_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_IN_TVALID sc_in sc_logic 1 invld 0 } 
	{ data_IN_TDATA sc_in sc_lv 32 signal 0 } 
	{ data_IN_TREADY sc_out sc_logic 1 inacc 0 } 
	{ xin_M_real_V_address0 sc_out sc_lv 5 signal 1 } 
	{ xin_M_real_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ xin_M_real_V_we0 sc_out sc_logic 1 signal 1 } 
	{ xin_M_real_V_d0 sc_out sc_lv 16 signal 1 } 
	{ xin_M_imag_V_address0 sc_out sc_lv 5 signal 2 } 
	{ xin_M_imag_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ xin_M_imag_V_we0 sc_out sc_logic 1 signal 2 } 
	{ xin_M_imag_V_d0 sc_out sc_lv 16 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_IN_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "data_IN", "role": "TVALID" }} , 
 	{ "name": "data_IN_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_IN", "role": "TDATA" }} , 
 	{ "name": "data_IN_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "data_IN", "role": "TREADY" }} , 
 	{ "name": "xin_M_real_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "xin_M_real_V", "role": "address0" }} , 
 	{ "name": "xin_M_real_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xin_M_real_V", "role": "ce0" }} , 
 	{ "name": "xin_M_real_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xin_M_real_V", "role": "we0" }} , 
 	{ "name": "xin_M_real_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "xin_M_real_V", "role": "d0" }} , 
 	{ "name": "xin_M_imag_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "xin_M_imag_V", "role": "address0" }} , 
 	{ "name": "xin_M_imag_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xin_M_imag_V", "role": "ce0" }} , 
 	{ "name": "xin_M_imag_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "xin_M_imag_V", "role": "we0" }} , 
 	{ "name": "xin_M_imag_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "xin_M_imag_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "FFT_Pipeline_VITIS_LOOP_58_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "data_IN", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_IN_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "xin_M_real_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "xin_M_imag_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_58_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	FFT_Pipeline_VITIS_LOOP_58_1 {
		data_IN {Type I LastRead 0 FirstWrite -1}
		xin_M_real_V {Type O LastRead -1 FirstWrite 0}
		xin_M_imag_V {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "34", "Max" : "34"}
	, {"Name" : "Interval", "Min" : "34", "Max" : "34"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_IN { axis {  { data_IN_TVALID in_vld 0 1 }  { data_IN_TDATA in_data 0 32 }  { data_IN_TREADY in_acc 1 1 } } }
	xin_M_real_V { ap_memory {  { xin_M_real_V_address0 mem_address 1 5 }  { xin_M_real_V_ce0 mem_ce 1 1 }  { xin_M_real_V_we0 mem_we 1 1 }  { xin_M_real_V_d0 mem_din 1 16 } } }
	xin_M_imag_V { ap_memory {  { xin_M_imag_V_address0 mem_address 1 5 }  { xin_M_imag_V_ce0 mem_ce 1 1 }  { xin_M_imag_V_we0 mem_we 1 1 }  { xin_M_imag_V_d0 mem_din 1 16 } } }
}
