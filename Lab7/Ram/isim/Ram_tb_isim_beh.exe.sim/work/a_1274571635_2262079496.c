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
static const char *ng0 = "C:/Users/User/Desktop/Lab07-HeliaSadatHashemipour-9831106/Ram/Ram.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1274571635_2262079496_p_0(char *t0)
{
    char t9[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    int t5;
    char *t6;
    int t7;
    int t8;
    char *t10;
    int t11;
    int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    int t16;
    int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned char t26;
    unsigned char t27;
    unsigned char t28;
    unsigned char t29;
    char *t30;

LAB0:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1632U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB10;

LAB11:
LAB3:    t1 = (t0 + 3992);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(50, ng0);
    t5 = (32 - 1);
    t1 = (t0 + 7086);
    *((int *)t1) = 0;
    t6 = (t0 + 7090);
    *((int *)t6) = t5;
    t7 = 0;
    t8 = t5;

LAB5:    if (t7 <= t8)
        goto LAB6;

LAB8:    goto LAB3;

LAB6:    xsi_set_current_line(51, ng0);
    t10 = (t0 + 7086);
    t11 = (5 - 1);
    t12 = (0 - t11);
    t13 = (t12 * -1);
    t13 = (t13 + 1);
    t14 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t9, *((int *)t10), ((t13)));
    t15 = (t0 + 7086);
    t16 = *((int *)t15);
    t17 = (t16 - 31);
    t18 = (t17 * -1);
    t19 = (5U * t18);
    t20 = (0U + t19);
    t21 = (t0 + 4072);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t14, 5U);
    xsi_driver_first_trans_delta(t21, t20, 5U, 0LL);

LAB7:    t1 = (t0 + 7086);
    t7 = *((int *)t1);
    t2 = (t0 + 7090);
    t8 = *((int *)t2);
    if (t7 == t8)
        goto LAB8;

LAB9:    t5 = (t7 + 1);
    t7 = t5;
    t6 = (t0 + 7086);
    *((int *)t6) = t7;
    goto LAB5;

LAB10:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1032U);
    t6 = *((char **)t2);
    t26 = *((unsigned char *)t6);
    t27 = (t26 == (unsigned char)3);
    if (t27 == 1)
        goto LAB15;

LAB16:    t4 = (unsigned char)0;

LAB17:    if (t4 != 0)
        goto LAB12;

LAB14:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t26 = (t4 == (unsigned char)3);
    if (t26 == 1)
        goto LAB20;

LAB21:    t3 = (unsigned char)0;

LAB22:    if (t3 != 0)
        goto LAB18;

LAB19:
LAB13:    goto LAB3;

LAB12:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1992U);
    t14 = *((char **)t2);
    t2 = (t0 + 1512U);
    t15 = *((char **)t2);
    t2 = (t0 + 6812U);
    t5 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t15, t2);
    t7 = (t5 - 31);
    t13 = (t7 * -1);
    xsi_vhdl_check_range_of_index(31, 0, -1, t5);
    t18 = (5U * t13);
    t19 = (0 + t18);
    t21 = (t14 + t19);
    t22 = (t0 + 4136);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t30 = *((char **)t25);
    memcpy(t30, t21, 5U);
    xsi_driver_first_trans_fast_port(t22);
    goto LAB13;

LAB15:    t2 = (t0 + 1192U);
    t10 = *((char **)t2);
    t28 = *((unsigned char *)t10);
    t29 = (t28 == (unsigned char)2);
    t4 = t29;
    goto LAB17;

LAB18:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1832U);
    t10 = *((char **)t1);
    t1 = (t0 + 1512U);
    t14 = *((char **)t1);
    t1 = (t0 + 6812U);
    t5 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t14, t1);
    t7 = (t5 - 31);
    t13 = (t7 * -1);
    t18 = (5U * t13);
    t19 = (0U + t18);
    t15 = (t0 + 4072);
    t21 = (t15 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t10, 5U);
    xsi_driver_first_trans_delta(t15, t19, 5U, 0LL);
    goto LAB13;

LAB20:    t1 = (t0 + 1032U);
    t6 = *((char **)t1);
    t27 = *((unsigned char *)t6);
    t28 = (t27 == (unsigned char)2);
    t3 = t28;
    goto LAB22;

}


extern void work_a_1274571635_2262079496_init()
{
	static char *pe[] = {(void *)work_a_1274571635_2262079496_p_0};
	xsi_register_didat("work_a_1274571635_2262079496", "isim/Ram_tb_isim_beh.exe.sim/work/a_1274571635_2262079496.didat");
	xsi_register_executes(pe);
}
