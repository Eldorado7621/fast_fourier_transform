set moduleName FFT
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {FFT}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_IN int 32 regular {axi_s 0 volatile  { data_IN Data } }  }
	{ data_OUT int 32 regular {axi_s 1 volatile  { data_OUT Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_IN", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_OUT", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_local_block sc_out sc_logic 1 signal -1 } 
	{ ap_local_deadlock sc_out sc_logic 1 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_IN_TDATA sc_in sc_lv 32 signal 0 } 
	{ data_IN_TVALID sc_in sc_logic 1 invld 0 } 
	{ data_IN_TREADY sc_out sc_logic 1 inacc 0 } 
	{ data_OUT_TDATA sc_out sc_lv 32 signal 1 } 
	{ data_OUT_TVALID sc_out sc_logic 1 outvld 1 } 
	{ data_OUT_TREADY sc_in sc_logic 1 outacc 1 } 
}
set NewPortList {[ 
	{ "name": "ap_local_block", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_local_block", "role": "default" }} , 
 	{ "name": "ap_local_deadlock", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_local_deadlock", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_IN_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_IN", "role": "TDATA" }} , 
 	{ "name": "data_IN_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "data_IN", "role": "TVALID" }} , 
 	{ "name": "data_IN_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "data_IN", "role": "TREADY" }} , 
 	{ "name": "data_OUT_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_OUT", "role": "TDATA" }} , 
 	{ "name": "data_OUT_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_OUT", "role": "TVALID" }} , 
 	{ "name": "data_OUT_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "data_OUT", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "19", "22", "31", "37", "39", "40"],
		"CDFG" : "FFT",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "302", "EstimateLatencyMax" : "302",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "data_IN", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_FFT_Pipeline_VITIS_LOOP_58_1_fu_86", "Port" : "data_IN", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "data_OUT", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_FFT_Pipeline_VITIS_LOOP_68_2_fu_174", "Port" : "data_OUT", "Inst_start_state" : "16", "Inst_end_state" : "17"}]},
			{"Name" : "xin_M_real_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_FFT_Pipeline_VITIS_LOOP_58_1_fu_86", "Port" : "xin_M_real_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "19", "SubInstance" : "grp_FFT_Pipeline_bitreversal_label1_fu_96", "Port" : "xin_M_real_V", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "xin_M_imag_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_FFT_Pipeline_VITIS_LOOP_58_1_fu_86", "Port" : "xin_M_imag_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "19", "SubInstance" : "grp_FFT_Pipeline_bitreversal_label1_fu_96", "Port" : "xin_M_imag_V", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "rev_32", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_FFT_Pipeline_bitreversal_label1_fu_96", "Port" : "rev_32", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "data_OUT0_M_real_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_FFT_Pipeline_bitreversal_label1_fu_96", "Port" : "data_OUT0_M_real_V", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "22", "SubInstance" : "grp_FFT0_1_fu_110", "Port" : "data_IN_M_real_0_0_0", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "data_OUT0_M_imag_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_FFT_Pipeline_bitreversal_label1_fu_96", "Port" : "data_OUT0_M_imag_V", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "22", "SubInstance" : "grp_FFT0_1_fu_110", "Port" : "data_IN_M_imag_0_0_0", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "W_M_real_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_FFT0_1_fu_110", "Port" : "W_M_real_V", "Inst_start_state" : "12", "Inst_end_state" : "13"},
					{"ID" : "31", "SubInstance" : "grp_FFT_Pipeline_FFT_label1_fu_158", "Port" : "W_M_real_V", "Inst_start_state" : "14", "Inst_end_state" : "15"}]},
			{"Name" : "W_M_imag_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_FFT0_1_fu_110", "Port" : "W_M_imag_V", "Inst_start_state" : "12", "Inst_end_state" : "13"},
					{"ID" : "31", "SubInstance" : "grp_FFT_Pipeline_FFT_label1_fu_158", "Port" : "W_M_imag_V", "Inst_start_state" : "14", "Inst_end_state" : "15"}]},
			{"Name" : "data_OUT1_M_real_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_FFT0_1_fu_110", "Port" : "data_IN_M_real_0_0_0", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "data_OUT1_M_imag_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_FFT0_1_fu_110", "Port" : "data_IN_M_imag_0_0_0", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "data_OUT2_M_real_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_FFT0_1_fu_110", "Port" : "data_IN_M_real_0_0_0", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "data_OUT2_M_imag_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_FFT0_1_fu_110", "Port" : "data_IN_M_imag_0_0_0", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "data_OUT3_M_real_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_FFT0_1_fu_110", "Port" : "data_IN_M_real_0_0_0", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "data_OUT3_M_imag_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_FFT0_1_fu_110", "Port" : "data_IN_M_imag_0_0_0", "Inst_start_state" : "12", "Inst_end_state" : "13"}]},
			{"Name" : "data_OUT4_M_real_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_FFT0_1_fu_110", "Port" : "data_OUT_M_real_0_0_0", "Inst_start_state" : "12", "Inst_end_state" : "13"},
					{"ID" : "31", "SubInstance" : "grp_FFT_Pipeline_FFT_label1_fu_158", "Port" : "data_OUT4_M_real_V", "Inst_start_state" : "14", "Inst_end_state" : "15"}]},
			{"Name" : "data_OUT4_M_imag_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_FFT0_1_fu_110", "Port" : "data_OUT_M_imag_0_0_0", "Inst_start_state" : "12", "Inst_end_state" : "13"},
					{"ID" : "31", "SubInstance" : "grp_FFT_Pipeline_FFT_label1_fu_158", "Port" : "data_OUT4_M_imag_V", "Inst_start_state" : "14", "Inst_end_state" : "15"}]},
			{"Name" : "xout_M_real_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_FFT_Pipeline_FFT_label1_fu_158", "Port" : "xout_M_real_V", "Inst_start_state" : "14", "Inst_end_state" : "15"},
					{"ID" : "37", "SubInstance" : "grp_FFT_Pipeline_VITIS_LOOP_68_2_fu_174", "Port" : "xout_M_real_V", "Inst_start_state" : "16", "Inst_end_state" : "17"}]},
			{"Name" : "xout_M_imag_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_FFT_Pipeline_FFT_label1_fu_158", "Port" : "xout_M_imag_V", "Inst_start_state" : "14", "Inst_end_state" : "15"},
					{"ID" : "37", "SubInstance" : "grp_FFT_Pipeline_VITIS_LOOP_68_2_fu_174", "Port" : "xout_M_imag_V", "Inst_start_state" : "16", "Inst_end_state" : "17"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xin_M_real_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xin_M_imag_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT0_M_real_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT0_M_imag_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.W_M_real_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.W_M_imag_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT1_M_real_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT1_M_imag_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT2_M_real_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT2_M_imag_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT3_M_real_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT3_M_imag_V_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT4_M_real_V_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_OUT4_M_imag_V_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xout_M_real_V_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xout_M_imag_V_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_FFT_Pipeline_VITIS_LOOP_58_1_fu_86", "Parent" : "0", "Child" : ["18"],
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
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_Pipeline_VITIS_LOOP_58_1_fu_86.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_FFT_Pipeline_bitreversal_label1_fu_96", "Parent" : "0", "Child" : ["20", "21"],
		"CDFG" : "FFT_Pipeline_bitreversal_label1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "35", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "rev_32", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "xin_M_real_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "xin_M_imag_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_OUT0_M_real_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_OUT0_M_imag_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "bitreversal_label1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_Pipeline_bitreversal_label1_fu_96.rev_32_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_Pipeline_bitreversal_label1_fu_96.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_FFT0_1_fu_110", "Parent" : "0", "Child" : ["23"],
		"CDFG" : "FFT0_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "40", "EstimateLatencyMax" : "40",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "FFT_stage_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "pass_check_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "index_shift_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "pass_shift_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_IN_M_real_0_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_FFT0_1_Pipeline_FFT_label1_fu_52", "Port" : "data_IN_M_real_0_0_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "data_IN_M_imag_0_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_FFT0_1_Pipeline_FFT_label1_fu_52", "Port" : "data_IN_M_imag_0_0_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "data_OUT_M_real_0_0_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_FFT0_1_Pipeline_FFT_label1_fu_52", "Port" : "data_OUT_M_real_0_0_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "data_OUT_M_imag_0_0_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_FFT0_1_Pipeline_FFT_label1_fu_52", "Port" : "data_OUT_M_imag_0_0_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "W_M_real_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_FFT0_1_Pipeline_FFT_label1_fu_52", "Port" : "W_M_real_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "W_M_imag_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_FFT0_1_Pipeline_FFT_label1_fu_52", "Port" : "W_M_imag_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT0_1_fu_110.grp_FFT0_1_Pipeline_FFT_label1_fu_52", "Parent" : "22", "Child" : ["24", "25", "26", "27", "28", "29", "30"],
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
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_FFT0_1_fu_110.grp_FFT0_1_Pipeline_FFT_label1_fu_52.W_M_real_V_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_FFT0_1_fu_110.grp_FFT0_1_Pipeline_FFT_label1_fu_52.W_M_imag_V_U", "Parent" : "23"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_FFT0_1_fu_110.grp_FFT0_1_Pipeline_FFT_label1_fu_52.mul_mul_16s_10s_24_4_1_U9", "Parent" : "23"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_FFT0_1_fu_110.grp_FFT0_1_Pipeline_FFT_label1_fu_52.mul_mul_16s_10s_24_4_1_U10", "Parent" : "23"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_FFT0_1_fu_110.grp_FFT0_1_Pipeline_FFT_label1_fu_52.mac_mulsub_16s_9s_24s_24_4_1_U11", "Parent" : "23"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_FFT0_1_fu_110.grp_FFT0_1_Pipeline_FFT_label1_fu_52.mac_muladd_16s_9s_24s_24_4_1_U12", "Parent" : "23"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_FFT0_1_fu_110.grp_FFT0_1_Pipeline_FFT_label1_fu_52.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_FFT_Pipeline_FFT_label1_fu_158", "Parent" : "0", "Child" : ["32", "33", "34", "35", "36"],
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
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_Pipeline_FFT_label1_fu_158.mul_mul_16s_10s_24_4_1_U35", "Parent" : "31"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_Pipeline_FFT_label1_fu_158.mul_mul_16s_10s_24_4_1_U36", "Parent" : "31"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_Pipeline_FFT_label1_fu_158.mac_mulsub_16s_9s_24s_24_4_1_U37", "Parent" : "31"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_Pipeline_FFT_label1_fu_158.mac_muladd_16s_9s_24s_24_4_1_U38", "Parent" : "31"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_Pipeline_FFT_label1_fu_158.flow_control_loop_pipe_sequential_init_U", "Parent" : "31"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_FFT_Pipeline_VITIS_LOOP_68_2_fu_174", "Parent" : "0", "Child" : ["38"],
		"CDFG" : "FFT_Pipeline_VITIS_LOOP_68_2",
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
			{"Name" : "data_OUT", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "data_OUT_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "xout_M_real_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "xout_M_imag_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_68_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_FFT_Pipeline_VITIS_LOOP_68_2_fu_174.flow_control_loop_pipe_sequential_init_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_IN_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_data_OUT_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	FFT {
		data_IN {Type I LastRead 0 FirstWrite -1}
		data_OUT {Type O LastRead -1 FirstWrite 1}
		xin_M_real_V {Type IO LastRead -1 FirstWrite -1}
		xin_M_imag_V {Type IO LastRead -1 FirstWrite -1}
		rev_32 {Type I LastRead -1 FirstWrite -1}
		data_OUT0_M_real_V {Type IO LastRead -1 FirstWrite -1}
		data_OUT0_M_imag_V {Type IO LastRead -1 FirstWrite -1}
		W_M_real_V {Type I LastRead -1 FirstWrite -1}
		W_M_imag_V {Type I LastRead -1 FirstWrite -1}
		data_OUT1_M_real_V {Type IO LastRead -1 FirstWrite -1}
		data_OUT1_M_imag_V {Type IO LastRead -1 FirstWrite -1}
		data_OUT2_M_real_V {Type IO LastRead -1 FirstWrite -1}
		data_OUT2_M_imag_V {Type IO LastRead -1 FirstWrite -1}
		data_OUT3_M_real_V {Type IO LastRead -1 FirstWrite -1}
		data_OUT3_M_imag_V {Type IO LastRead -1 FirstWrite -1}
		data_OUT4_M_real_V {Type IO LastRead -1 FirstWrite -1}
		data_OUT4_M_imag_V {Type IO LastRead -1 FirstWrite -1}
		xout_M_real_V {Type IO LastRead -1 FirstWrite -1}
		xout_M_imag_V {Type IO LastRead -1 FirstWrite -1}}
	FFT_Pipeline_VITIS_LOOP_58_1 {
		data_IN {Type I LastRead 0 FirstWrite -1}
		xin_M_real_V {Type O LastRead -1 FirstWrite 0}
		xin_M_imag_V {Type O LastRead -1 FirstWrite 0}}
	FFT_Pipeline_bitreversal_label1 {
		rev_32 {Type I LastRead -1 FirstWrite -1}
		xin_M_real_V {Type I LastRead 1 FirstWrite -1}
		xin_M_imag_V {Type I LastRead 1 FirstWrite -1}
		data_OUT0_M_real_V {Type O LastRead -1 FirstWrite 2}
		data_OUT0_M_imag_V {Type O LastRead -1 FirstWrite 2}}
	FFT0_1 {
		FFT_stage_offset {Type I LastRead 0 FirstWrite -1}
		pass_check_offset {Type I LastRead 0 FirstWrite -1}
		index_shift_offset {Type I LastRead 0 FirstWrite -1}
		pass_shift_offset {Type I LastRead 0 FirstWrite -1}
		data_IN_M_real_0_0_0 {Type I LastRead 6 FirstWrite -1}
		data_IN_M_imag_0_0_0 {Type I LastRead 6 FirstWrite -1}
		data_OUT_M_real_0_0_0 {Type O LastRead -1 FirstWrite 7}
		data_OUT_M_imag_0_0_0 {Type O LastRead -1 FirstWrite 7}
		W_M_real_V {Type I LastRead -1 FirstWrite -1}
		W_M_imag_V {Type I LastRead -1 FirstWrite -1}}
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
		W_M_imag_V {Type I LastRead -1 FirstWrite -1}}
	FFT_Pipeline_FFT_label1 {
		W_M_real_V {Type I LastRead 1 FirstWrite -1}
		W_M_imag_V {Type I LastRead 1 FirstWrite -1}
		data_OUT4_M_real_V {Type I LastRead 5 FirstWrite -1}
		data_OUT4_M_imag_V {Type I LastRead 5 FirstWrite -1}
		xout_M_real_V {Type O LastRead -1 FirstWrite 6}
		xout_M_imag_V {Type O LastRead -1 FirstWrite 6}}
	FFT_Pipeline_VITIS_LOOP_68_2 {
		data_OUT {Type O LastRead -1 FirstWrite 1}
		xout_M_real_V {Type I LastRead 0 FirstWrite -1}
		xout_M_imag_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "302", "Max" : "302"}
	, {"Name" : "Interval", "Min" : "303", "Max" : "303"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	data_IN { axis {  { data_IN_TDATA in_data 0 32 }  { data_IN_TVALID in_vld 0 1 }  { data_IN_TREADY in_acc 1 1 } } }
	data_OUT { axis {  { data_OUT_TDATA out_data 1 32 }  { data_OUT_TVALID out_vld 1 1 }  { data_OUT_TREADY out_acc 0 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
