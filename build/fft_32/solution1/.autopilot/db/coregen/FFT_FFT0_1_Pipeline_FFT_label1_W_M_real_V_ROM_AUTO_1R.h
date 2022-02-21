// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __FFT_FFT0_1_Pipeline_FFT_label1_W_M_real_V_ROM_AUTO_1R_H__
#define __FFT_FFT0_1_Pipeline_FFT_label1_W_M_real_V_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct FFT_FFT0_1_Pipeline_FFT_label1_W_M_real_V_ROM_AUTO_1R_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 10;
  static const unsigned AddressRange = 16;
  static const unsigned AddressWidth = 4;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(FFT_FFT0_1_Pipeline_FFT_label1_W_M_real_V_ROM_AUTO_1R_ram) {
        ram[0] = "0b0100000000";
        ram[1] = "0b0011111011";
        ram[2] = "0b0011101100";
        ram[3] = "0b0011010100";
        ram[4] = "0b0010110101";
        ram[5] = "0b0010001110";
        ram[6] = "0b0001100001";
        ram[7] = "0b0000110001";
        ram[8] = "0b0000000000";
        ram[9] = "0b1111001110";
        ram[10] = "0b1110011110";
        ram[11] = "0b1101110001";
        ram[12] = "0b1101001010";
        ram[13] = "0b1100101011";
        ram[14] = "0b1100010011";
        ram[15] = "0b1100000100";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(FFT_FFT0_1_Pipeline_FFT_label1_W_M_real_V_ROM_AUTO_1R) {


static const unsigned DataWidth = 10;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


FFT_FFT0_1_Pipeline_FFT_label1_W_M_real_V_ROM_AUTO_1R_ram* meminst;


SC_CTOR(FFT_FFT0_1_Pipeline_FFT_label1_W_M_real_V_ROM_AUTO_1R) {
meminst = new FFT_FFT0_1_Pipeline_FFT_label1_W_M_real_V_ROM_AUTO_1R_ram("FFT_FFT0_1_Pipeline_FFT_label1_W_M_real_V_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~FFT_FFT0_1_Pipeline_FFT_label1_W_M_real_V_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif