/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
IKI_DLLESPEC extern void execute_2(char*, char *);
IKI_DLLESPEC extern void execute_3(char*, char *);
IKI_DLLESPEC extern void execute_4(char*, char *);
IKI_DLLESPEC extern void execute_5(char*, char *);
IKI_DLLESPEC extern void execute_6(char*, char *);
IKI_DLLESPEC extern void execute_7(char*, char *);
IKI_DLLESPEC extern void execute_8(char*, char *);
IKI_DLLESPEC extern void execute_9(char*, char *);
IKI_DLLESPEC extern void execute_10(char*, char *);
IKI_DLLESPEC extern void execute_11(char*, char *);
IKI_DLLESPEC extern void execute_1158(char*, char *);
IKI_DLLESPEC extern void execute_1159(char*, char *);
IKI_DLLESPEC extern void execute_29(char*, char *);
IKI_DLLESPEC extern void execute_30(char*, char *);
IKI_DLLESPEC extern void execute_31(char*, char *);
IKI_DLLESPEC extern void execute_32(char*, char *);
IKI_DLLESPEC extern void execute_33(char*, char *);
IKI_DLLESPEC extern void execute_34(char*, char *);
IKI_DLLESPEC extern void execute_35(char*, char *);
IKI_DLLESPEC extern void execute_36(char*, char *);
IKI_DLLESPEC extern void execute_37(char*, char *);
IKI_DLLESPEC extern void execute_38(char*, char *);
IKI_DLLESPEC extern void execute_39(char*, char *);
IKI_DLLESPEC extern void execute_40(char*, char *);
IKI_DLLESPEC extern void execute_41(char*, char *);
IKI_DLLESPEC extern void execute_42(char*, char *);
IKI_DLLESPEC extern void execute_43(char*, char *);
IKI_DLLESPEC extern void execute_44(char*, char *);
IKI_DLLESPEC extern void execute_46(char*, char *);
IKI_DLLESPEC extern void execute_471(char*, char *);
IKI_DLLESPEC extern void execute_895(char*, char *);
IKI_DLLESPEC extern void execute_871(char*, char *);
IKI_DLLESPEC extern void execute_872(char*, char *);
IKI_DLLESPEC extern void execute_873(char*, char *);
IKI_DLLESPEC extern void execute_874(char*, char *);
IKI_DLLESPEC extern void execute_899(char*, char *);
IKI_DLLESPEC extern void execute_1126(char*, char *);
IKI_DLLESPEC extern void execute_1127(char*, char *);
IKI_DLLESPEC extern void execute_1128(char*, char *);
IKI_DLLESPEC extern void execute_1129(char*, char *);
IKI_DLLESPEC extern void execute_1010(char*, char *);
IKI_DLLESPEC extern void execute_1011(char*, char *);
IKI_DLLESPEC extern void execute_1012(char*, char *);
IKI_DLLESPEC extern void execute_1013(char*, char *);
IKI_DLLESPEC extern void execute_986(char*, char *);
IKI_DLLESPEC extern void execute_987(char*, char *);
IKI_DLLESPEC extern void execute_989(char*, char *);
IKI_DLLESPEC extern void execute_990(char*, char *);
IKI_DLLESPEC extern void execute_992(char*, char *);
IKI_DLLESPEC extern void execute_993(char*, char *);
IKI_DLLESPEC extern void execute_995(char*, char *);
IKI_DLLESPEC extern void execute_996(char*, char *);
IKI_DLLESPEC extern void execute_998(char*, char *);
IKI_DLLESPEC extern void execute_999(char*, char *);
IKI_DLLESPEC extern void execute_1001(char*, char *);
IKI_DLLESPEC extern void execute_1002(char*, char *);
IKI_DLLESPEC extern void execute_1004(char*, char *);
IKI_DLLESPEC extern void execute_1005(char*, char *);
IKI_DLLESPEC extern void execute_1007(char*, char *);
IKI_DLLESPEC extern void execute_1008(char*, char *);
IKI_DLLESPEC extern void execute_925(char*, char *);
IKI_DLLESPEC extern void execute_926(char*, char *);
IKI_DLLESPEC extern void execute_983(char*, char *);
IKI_DLLESPEC extern void execute_930(char*, char *);
IKI_DLLESPEC extern void execute_931(char*, char *);
IKI_DLLESPEC extern void execute_1084(char*, char *);
IKI_DLLESPEC extern void execute_1086(char*, char *);
IKI_DLLESPEC extern void execute_1088(char*, char *);
IKI_DLLESPEC extern void execute_1090(char*, char *);
IKI_DLLESPEC extern void execute_1092(char*, char *);
IKI_DLLESPEC extern void execute_1094(char*, char *);
IKI_DLLESPEC extern void execute_1096(char*, char *);
IKI_DLLESPEC extern void execute_1098(char*, char *);
IKI_DLLESPEC extern void execute_1018(char*, char *);
IKI_DLLESPEC extern void execute_1023(char*, char *);
IKI_DLLESPEC extern void execute_1027(char*, char *);
IKI_DLLESPEC extern void execute_1031(char*, char *);
IKI_DLLESPEC extern void execute_1035(char*, char *);
IKI_DLLESPEC extern void execute_1039(char*, char *);
IKI_DLLESPEC extern void execute_1043(char*, char *);
IKI_DLLESPEC extern void execute_1047(char*, char *);
IKI_DLLESPEC extern void execute_1053(char*, char *);
IKI_DLLESPEC extern void execute_1057(char*, char *);
IKI_DLLESPEC extern void execute_1061(char*, char *);
IKI_DLLESPEC extern void execute_1065(char*, char *);
IKI_DLLESPEC extern void execute_1069(char*, char *);
IKI_DLLESPEC extern void execute_1073(char*, char *);
IKI_DLLESPEC extern void execute_1077(char*, char *);
IKI_DLLESPEC extern void execute_1080(char*, char *);
IKI_DLLESPEC extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
IKI_DLLESPEC extern void transaction_41(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[92] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_4, (funcp)execute_5, (funcp)execute_6, (funcp)execute_7, (funcp)execute_8, (funcp)execute_9, (funcp)execute_10, (funcp)execute_11, (funcp)execute_1158, (funcp)execute_1159, (funcp)execute_29, (funcp)execute_30, (funcp)execute_31, (funcp)execute_32, (funcp)execute_33, (funcp)execute_34, (funcp)execute_35, (funcp)execute_36, (funcp)execute_37, (funcp)execute_38, (funcp)execute_39, (funcp)execute_40, (funcp)execute_41, (funcp)execute_42, (funcp)execute_43, (funcp)execute_44, (funcp)execute_46, (funcp)execute_471, (funcp)execute_895, (funcp)execute_871, (funcp)execute_872, (funcp)execute_873, (funcp)execute_874, (funcp)execute_899, (funcp)execute_1126, (funcp)execute_1127, (funcp)execute_1128, (funcp)execute_1129, (funcp)execute_1010, (funcp)execute_1011, (funcp)execute_1012, (funcp)execute_1013, (funcp)execute_986, (funcp)execute_987, (funcp)execute_989, (funcp)execute_990, (funcp)execute_992, (funcp)execute_993, (funcp)execute_995, (funcp)execute_996, (funcp)execute_998, (funcp)execute_999, (funcp)execute_1001, (funcp)execute_1002, (funcp)execute_1004, (funcp)execute_1005, (funcp)execute_1007, (funcp)execute_1008, (funcp)execute_925, (funcp)execute_926, (funcp)execute_983, (funcp)execute_930, (funcp)execute_931, (funcp)execute_1084, (funcp)execute_1086, (funcp)execute_1088, (funcp)execute_1090, (funcp)execute_1092, (funcp)execute_1094, (funcp)execute_1096, (funcp)execute_1098, (funcp)execute_1018, (funcp)execute_1023, (funcp)execute_1027, (funcp)execute_1031, (funcp)execute_1035, (funcp)execute_1039, (funcp)execute_1043, (funcp)execute_1047, (funcp)execute_1053, (funcp)execute_1057, (funcp)execute_1061, (funcp)execute_1065, (funcp)execute_1069, (funcp)execute_1073, (funcp)execute_1077, (funcp)execute_1080, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_41, (funcp)vhdl_transfunc_eventcallback};
const int NumRelocateId= 92;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/Black_box_datapath_tb_behav/xsim.reloc",  (void **)funcTab, 92);
	iki_vhdl_file_variable_register(dp + 52608);
	iki_vhdl_file_variable_register(dp + 52664);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/Black_box_datapath_tb_behav/xsim.reloc");
}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/Black_box_datapath_tb_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/Black_box_datapath_tb_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/Black_box_datapath_tb_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/Black_box_datapath_tb_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, (void*)0, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
