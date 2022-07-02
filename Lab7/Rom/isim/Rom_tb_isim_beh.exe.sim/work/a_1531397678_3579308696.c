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
static const char *ng0 = "C:/Users/User/Desktop/Lab07-HeliaSadatHashemipour-9831106/Rom/Rom.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1531397678_3579308696_p_0(char *t0)
{
    char t10[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    int t5;
    int t6;
    char *t7;
    int t8;
    int t9;
    char *t11;
    int t12;
    int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    int t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    unsigned char t27;

LAB0:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1472U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB10;

LAB11:
LAB3:    t1 = (t0 + 3712);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(49, ng0);
    t5 = xsi_vhdl_pow(2, 4);
    t6 = (t5 - 1);
    t1 = (t0 + 6551);
    *((int *)t1) = 0;
    t7 = (t0 + 6555);
    *((int *)t7) = t6;
    t8 = 0;
    t9 = t6;

LAB5:    if (t8 <= t9)
        goto LAB6;

LAB8:    goto LAB3;

LAB6:    xsi_set_current_line(50, ng0);
    t11 = (t0 + 6551);
    t12 = (4 - 1);
    t13 = (0 - t12);
    t14 = (t13 * -1);
    t14 = (t14 + 1);
    t15 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t10, *((int *)t11), ((t14)));
    t16 = (t0 + 6551);
    t17 = *((int *)t16);
    t18 = (t17 - 15);
    t19 = (t18 * -1);
    t20 = (4U * t19);
    t21 = (0U + t20);
    t22 = (t0 + 3792);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t15, 4U);
    xsi_driver_first_trans_delta(t22, t21, 4U, 0LL);

LAB7:    t1 = (t0 + 6551);
    t8 = *((int *)t1);
    t2 = (t0 + 6555);
    t9 = *((int *)t2);
    if (t8 == t9)
        goto LAB8;

LAB9:    t5 = (t8 + 1);
    t8 = t5;
    t7 = (t0 + 6551);
    *((int *)t7) = t8;
    goto LAB5;

LAB10:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1032U);
    t7 = *((char **)t2);
    t4 = *((unsigned char *)t7);
    t27 = (t4 == (unsigned char)3);
    if (t27 != 0)
        goto LAB12;

LAB14:
LAB13:    goto LAB3;

LAB12:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1832U);
    t11 = *((char **)t2);
    t2 = (t0 + 1352U);
    t15 = *((char **)t2);
    t2 = (t0 + 6380U);
    t5 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t15, t2);
    t6 = (t5 - 15);
    t14 = (t6 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, t5);
    t19 = (4U * t14);
    t20 = (0 + t19);
    t16 = (t11 + t20);
    t22 = (t0 + 3856);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t16, 4U);
    xsi_driver_first_trans_fast_port(t22);
    goto LAB13;

}


extern void work_a_1531397678_3579308696_init()
{
	static char *pe[] = {(void *)work_a_1531397678_3579308696_p_0};
	xsi_register_didat("work_a_1531397678_3579308696", "isim/Rom_tb_isim_beh.exe.sim/work/a_1531397678_3579308696.didat");
	xsi_register_executes(pe);
}
