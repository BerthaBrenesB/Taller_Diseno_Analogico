set_global_assignment -entity "suma_flotante" -library "lib_suma_flotante" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "suma_flotante" -library "lib_suma_flotante" -name IP_TOOL_VERSION "20.1"
set_global_assignment -entity "suma_flotante" -library "lib_suma_flotante" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_suma_flotante" -name SPD_FILE [file join $::quartus(sip_path) "../suma_flotante.spd"]
set_global_assignment -library "lib_suma_flotante" -name MISC_FILE [file join $::quartus(sip_path) "../../suma_flotante.qsys"]

set_global_assignment -library "lib_suma_flotante" -name MISC_FILE [file join $::quartus(sip_path) "suma_flotante.v"]
set_global_assignment -library "lib_suma_flotante" -name MISC_FILE [file join $::quartus(sip_path) "submodules/fpoint2_combi.vhd"]
set_global_assignment -library "lib_suma_flotante" -name MISC_FILE [file join $::quartus(sip_path) "submodules/FPMinMaxFused/FPMinMaxFused.vhd"]
set_global_assignment -library "lib_suma_flotante" -name MISC_FILE [file join $::quartus(sip_path) "submodules/FPCompareFused/FPCompareFused.vhd"]
set_global_assignment -library "lib_suma_flotante" -name MISC_FILE [file join $::quartus(sip_path) "submodules/FPNeg_Abs/FPNeg.vhd"]
set_global_assignment -library "lib_suma_flotante" -name MISC_FILE [file join $::quartus(sip_path) "submodules/FPNeg_Abs/FPAbs.vhd"]
