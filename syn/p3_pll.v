`timescale 1 ns/100 ps
// Version: v11.1 11.1.0.14


module p3_pll(
       POWERDOWN,
       CLKA,
       LOCK,
       GLA,
       GLB,
       GLC
    );
input  POWERDOWN;
input  CLKA;
output LOCK;
output GLA;
output GLB;
output GLC;

    wire VCC, GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    
    PLL #( .VCOFREQUENCY(200.000) )  Core (.CLKA(CLKA), .EXTFB(GND), 
        .POWERDOWN(POWERDOWN), .GLA(GLA), .LOCK(LOCK), .GLB(GLB), .YB()
        , .GLC(GLC), .YC(), .OADIV0(VCC), .OADIV1(VCC), .OADIV2(GND), 
        .OADIV3(GND), .OADIV4(GND), .OAMUX0(GND), .OAMUX1(GND), 
        .OAMUX2(VCC), .DLYGLA0(VCC), .DLYGLA1(GND), .DLYGLA2(GND), 
        .DLYGLA3(GND), .DLYGLA4(GND), .OBDIV0(VCC), .OBDIV1(GND), 
        .OBDIV2(GND), .OBDIV3(GND), .OBDIV4(GND), .OBMUX0(GND), 
        .OBMUX1(VCC), .OBMUX2(GND), .DLYYB0(GND), .DLYYB1(GND), 
        .DLYYB2(GND), .DLYYB3(GND), .DLYYB4(GND), .DLYGLB0(GND), 
        .DLYGLB1(GND), .DLYGLB2(GND), .DLYGLB3(GND), .DLYGLB4(GND), 
        .OCDIV0(GND), .OCDIV1(VCC), .OCDIV2(GND), .OCDIV3(GND), 
        .OCDIV4(GND), .OCMUX0(GND), .OCMUX1(VCC), .OCMUX2(GND), 
        .DLYYC0(GND), .DLYYC1(GND), .DLYYC2(GND), .DLYYC3(GND), 
        .DLYYC4(GND), .DLYGLC0(GND), .DLYGLC1(GND), .DLYGLC2(GND), 
        .DLYGLC3(GND), .DLYGLC4(GND), .FINDIV0(VCC), .FINDIV1(GND), 
        .FINDIV2(GND), .FINDIV3(VCC), .FINDIV4(GND), .FINDIV5(GND), 
        .FINDIV6(GND), .FBDIV0(VCC), .FBDIV1(VCC), .FBDIV2(VCC), 
        .FBDIV3(GND), .FBDIV4(GND), .FBDIV5(VCC), .FBDIV6(GND), 
        .FBDLY0(VCC), .FBDLY1(GND), .FBDLY2(GND), .FBDLY3(GND), 
        .FBDLY4(GND), .FBSEL0(VCC), .FBSEL1(GND), .XDLYSEL(GND), 
        .VCOSEL0(GND), .VCOSEL1(VCC), .VCOSEL2(VCC));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule

// _Disclaimer: Please leave the following comments in the file, they are for internal purposes only._


// _GEN_File_Contents_

// Version:11.1.0.14
// ACTGENU_CALL:1
// BATCH:T
// FAM:ProASIC3
// OUTFORMAT:VERILOG
// LPMTYPE:LPM_PLL_STATIC
// LPM_HINT:NONE
// INSERT_PAD:NO
// INSERT_IOREG:NO
// GEN_BHV_VHDL_VAL:F
// GEN_BHV_VERILOG_VAL:F
// MGNTIMER:F
// MGNCMPL:F
// DESDIR:C:/Users/Dmitry Nedospasov/Documents/ddk-fpga/syn/ddk_smartgen\p3_pll
// GEN_BEHV_MODULE:F
// SMARTGEN_DIE:UM4X2M1N
// SMARTGEN_PACKAGE:vq100
// AGENIII_IS_SUBPROJECT_LIBERO:F
// FIN:50.000000
// CLKASRC:0
// FBDLY:2
// FBMUX:1
// XDLYSEL:0
// PRIMFREQ:50.000000
// PPHASESHIFT:0
// DLYAVAL:2
// OAMUX:4
// SEC1FREQ:100.000000
// UGLB:1
// UYB:0
// GLBDLYVAL:1
// YBDLYVAL:1
// S1PHASESHIFT:0
// OBMUX:2
// SEC2FREQ:66.000000
// UGLC:1
// UYC:0
// GLCDLYVAL:1
// YCDLYVAL:1
// S2PHASESHIFT:0
// OCMUX:2
// POWERDOWN_POLARITY:0
// LOCK_POLARITY:1
// LOCK_CTL:0
// VOLTAGE:1.5

// _End_Comments_

