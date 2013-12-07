################################################################################
#  SDC WRITER VERSION "3.1";
#  DESIGN "ddk_designer";
#  Timing constraints scenario: "Primary";
#  DATE "Sat Dec 07 13:40:31 2013";
#  VENDOR "Actel";
#  PROGRAM "Microsemi Libero Software Release v11.1";
#  VERSION "11.1.0.14"  Copyright (C) 1989-2013 Actel Corp. 
################################################################################


set sdc_version 1.7


########  Clock Constraints  ########

create_clock  -name { plli/Core:GLA } -period 20.000 -waveform { 0.000 10.000  }  { plli/Core:GLA  } 
#
# *** Note *** This constraint was converted from a create_generated_clock constraint
#              which used both -divide_by and -multiply_by options:
#              create_generated_clock  -name { plli/Core:GLA } -divide_by 40  -multiply_by 40  -source { plli/Core:CLKA } { plli/Core:GLA  } 


create_clock  -name { SysClk } -period 20.000 -waveform { 0.000 10.000  }  { SysClk  } 



########  Generated Clock Constraints  ########




########  Clock Source Latency Constraints #########



########  Input Delay Constraints  ########



########  Output Delay Constraints  ########



########   Delay Constraints  ########



########   Delay Constraints  ########



########   Multicycle Constraints  ########



########   False Path Constraints  ########



########   Output load Constraints  ########



########  Disable Timing Constraints #########



########  Clock Uncertainty Constraints #########

set_clock_uncertainty 0.8 -from { SysClk } -to { plli/Core:GLA }

set_clock_uncertainty 0.8 -from { plli/Core:GLA } -to { SysClk }



