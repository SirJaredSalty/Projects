/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Jared/Desktop/School/UMBC/Fall 2020/CMSC 313/Xilinx Projects/Project 1/SimpleProcessor/ALU_tb.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );


static void work_a_2387207229_3212880686_p_0(char *t0)
{
    char t11[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int t9;
    int t10;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    int64 t19;
    int t20;

LAB0:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 6140);
    t4 = (t0 + 3336);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(53, ng0);
    t2 = (t0 + 6148);
    t4 = (t0 + 3400);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 6156);
    *((int *)t2) = 0;
    t3 = (t0 + 6160);
    *((int *)t3) = 7;
    t9 = 0;
    t10 = 7;

LAB4:    if (t9 <= t10)
        goto LAB5;

LAB7:    xsi_set_current_line(60, ng0);

LAB17:    *((char **)t1) = &&LAB18;

LAB1:    return;
LAB5:    xsi_set_current_line(55, ng0);
    t4 = (t0 + 1672U);
    t5 = *((char **)t4);
    t4 = (t0 + 6076U);
    t6 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t11, t5, t4, 1);
    t7 = (t11 + 12U);
    t12 = *((unsigned int *)t7);
    t13 = (1U * t12);
    t14 = (3U != t13);
    if (t14 == 1)
        goto LAB8;

LAB9:    t8 = (t0 + 3464);
    t15 = (t8 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t6, 3U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t2 = (t0 + 3528);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 3U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1968U);
    t3 = *((char **)t2);
    t19 = *((int64 *)t3);
    t2 = (t0 + 2760);
    xsi_process_wait(t2, t19);

LAB12:    *((char **)t1) = &&LAB13;
    goto LAB1;

LAB6:    t2 = (t0 + 6156);
    t9 = *((int *)t2);
    t3 = (t0 + 6160);
    t10 = *((int *)t3);
    if (t9 == t10)
        goto LAB7;

LAB14:    t20 = (t9 + 1);
    t9 = t20;
    t4 = (t0 + 6156);
    *((int *)t4) = t9;
    goto LAB4;

LAB8:    xsi_size_not_matching(3U, t13, 0);
    goto LAB9;

LAB10:    goto LAB6;

LAB11:    goto LAB10;

LAB13:    goto LAB11;

LAB15:    goto LAB2;

LAB16:    goto LAB15;

LAB18:    goto LAB16;

}


extern void work_a_2387207229_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2387207229_3212880686_p_0};
	xsi_register_didat("work_a_2387207229_3212880686", "isim/ALU_ALU_sch_tb_isim_beh.exe.sim/work/a_2387207229_3212880686.didat");
	xsi_register_executes(pe);
}
