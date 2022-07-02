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
static const char *ng0 = "C:/Users/User/Desktop/Lab07-HeliaSadatHashemipour-9831106/Cam/Cam.vhd";



static void work_a_2005368973_3459945088_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    int t5;
    int t6;
    char *t7;
    int t8;
    int t9;
    char *t10;
    char *t11;
    int t12;
    int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    unsigned char t22;
    unsigned char t23;
    unsigned char t24;
    unsigned char t25;
    unsigned int t26;
    char *t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;

LAB0:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1472U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB12;

LAB13:    t3 = (unsigned char)0;

LAB14:    if (t3 != 0)
        goto LAB10;

LAB11:
LAB3:    t1 = (t0 + 3832);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(44, ng0);
    t5 = xsi_vhdl_pow(2, 4);
    t6 = (t5 - 1);
    t1 = (t0 + 6768);
    *((int *)t1) = 0;
    t7 = (t0 + 6772);
    *((int *)t7) = t6;
    t8 = 0;
    t9 = t6;

LAB5:    if (t8 <= t9)
        goto LAB6;

LAB8:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 3976);
    t2 = (t1 + 56U);
    t7 = *((char **)t2);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB6:    xsi_set_current_line(45, ng0);
    t10 = (t0 + 2528U);
    t11 = *((char **)t10);
    t10 = (t0 + 6768);
    t12 = *((int *)t10);
    t13 = (t12 - 15);
    t14 = (t13 * -1);
    t15 = (4U * t14);
    t16 = (0U + t15);
    t17 = (t0 + 3912);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t11, 4U);
    xsi_driver_first_trans_delta(t17, t16, 4U, 0LL);

LAB7:    t1 = (t0 + 6768);
    t8 = *((int *)t1);
    t2 = (t0 + 6772);
    t9 = *((int *)t2);
    if (t8 == t9)
        goto LAB8;

LAB9:    t5 = (t8 + 1);
    t8 = t5;
    t7 = (t0 + 6768);
    *((int *)t7) = t8;
    goto LAB5;

LAB10:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1032U);
    t10 = *((char **)t2);
    t24 = *((unsigned char *)t10);
    t25 = (t24 == (unsigned char)3);
    if (t25 != 0)
        goto LAB15;

LAB17:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB33;

LAB34:
LAB16:    goto LAB3;

LAB12:    t2 = (t0 + 1512U);
    t7 = *((char **)t2);
    t22 = *((unsigned char *)t7);
    t23 = (t22 == (unsigned char)3);
    t3 = t23;
    goto LAB14;

LAB15:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 3976);
    t11 = (t2 + 56U);
    t17 = *((char **)t11);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(51, ng0);
    t5 = xsi_vhdl_pow(2, 4);
    t6 = (t5 - 1);
    t1 = (t0 + 6776);
    *((int *)t1) = 0;
    t2 = (t0 + 6780);
    *((int *)t2) = t6;
    t8 = 0;
    t9 = t6;

LAB18:    if (t8 <= t9)
        goto LAB19;

LAB21:    goto LAB16;

LAB19:    xsi_set_current_line(52, ng0);
    t7 = (t0 + 1832U);
    t10 = *((char **)t7);
    t7 = (t0 + 1992U);
    t11 = *((char **)t7);
    t7 = (t0 + 6776);
    t12 = *((int *)t7);
    t13 = (t12 - 15);
    t14 = (t13 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, *((int *)t7));
    t15 = (4U * t14);
    t16 = (0 + t15);
    t17 = (t11 + t16);
    t3 = 1;
    if (4U == 4U)
        goto LAB25;

LAB26:    t3 = 0;

LAB27:    if (t3 != 0)
        goto LAB22;

LAB24:
LAB23:
LAB20:    t1 = (t0 + 6776);
    t8 = *((int *)t1);
    t2 = (t0 + 6780);
    t9 = *((int *)t2);
    if (t8 == t9)
        goto LAB21;

LAB32:    t5 = (t8 + 1);
    t8 = t5;
    t7 = (t0 + 6776);
    *((int *)t7) = t8;
    goto LAB18;

LAB22:    xsi_set_current_line(53, ng0);
    t20 = (t0 + 3976);
    t21 = (t20 + 56U);
    t27 = *((char **)t21);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    *((unsigned char *)t29) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t20);
    xsi_set_current_line(54, ng0);
    goto LAB21;

LAB25:    t26 = 0;

LAB28:    if (t26 < 4U)
        goto LAB29;
    else
        goto LAB27;

LAB29:    t18 = (t10 + t26);
    t19 = (t17 + t26);
    if (*((unsigned char *)t18) != *((unsigned char *)t19))
        goto LAB26;

LAB30:    t26 = (t26 + 1);
    goto LAB28;

LAB31:    goto LAB23;

LAB33:    xsi_set_current_line(58, ng0);
    t5 = xsi_vhdl_pow(2, 4);
    t6 = (t5 - 1);
    t1 = (t0 + 6784);
    *((int *)t1) = 0;
    t7 = (t0 + 6788);
    *((int *)t7) = t6;
    t8 = 0;
    t9 = t6;

LAB35:    if (t8 <= t9)
        goto LAB36;

LAB38:    goto LAB16;

LAB36:    xsi_set_current_line(59, ng0);
    t10 = (t0 + 1832U);
    t11 = *((char **)t10);
    t10 = (t0 + 1992U);
    t17 = *((char **)t10);
    t10 = (t0 + 6784);
    t12 = *((int *)t10);
    t13 = (t12 - 15);
    t14 = (t13 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, *((int *)t10));
    t15 = (4U * t14);
    t16 = (0 + t15);
    t18 = (t17 + t16);
    t22 = 1;
    if (4U == 4U)
        goto LAB42;

LAB43:    t22 = 0;

LAB44:    if (t22 != 0)
        goto LAB39;

LAB41:    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    t1 = (t0 + 1992U);
    t7 = *((char **)t1);
    t1 = (t0 + 6784);
    t5 = *((int *)t1);
    t6 = (t5 - 15);
    t14 = (t6 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, *((int *)t1));
    t15 = (4U * t14);
    t16 = (0 + t15);
    t10 = (t7 + t16);
    t3 = 1;
    if (4U == 4U)
        goto LAB51;

LAB52:    t3 = 0;

LAB53:    if (t3 != 0)
        goto LAB49;

LAB50:
LAB40:
LAB37:    t1 = (t0 + 6784);
    t8 = *((int *)t1);
    t2 = (t0 + 6788);
    t9 = *((int *)t2);
    if (t8 == t9)
        goto LAB38;

LAB58:    t5 = (t8 + 1);
    t8 = t5;
    t7 = (t0 + 6784);
    *((int *)t7) = t8;
    goto LAB35;

LAB39:    xsi_set_current_line(60, ng0);
    goto LAB38;

LAB42:    t26 = 0;

LAB45:    if (t26 < 4U)
        goto LAB46;
    else
        goto LAB44;

LAB46:    t19 = (t11 + t26);
    t20 = (t18 + t26);
    if (*((unsigned char *)t19) != *((unsigned char *)t20))
        goto LAB43;

LAB47:    t26 = (t26 + 1);
    goto LAB45;

LAB48:    goto LAB40;

LAB49:    xsi_set_current_line(62, ng0);
    t18 = (t0 + 1832U);
    t19 = *((char **)t18);
    t18 = (t0 + 6784);
    t12 = *((int *)t18);
    t13 = (t12 - 15);
    t30 = (t13 * -1);
    t31 = (4U * t30);
    t32 = (0U + t31);
    t20 = (t0 + 3912);
    t21 = (t20 + 56U);
    t27 = *((char **)t21);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t19, 4U);
    xsi_driver_first_trans_delta(t20, t32, 4U, 0LL);
    xsi_set_current_line(63, ng0);
    goto LAB38;

LAB51:    t26 = 0;

LAB54:    if (t26 < 4U)
        goto LAB55;
    else
        goto LAB53;

LAB55:    t11 = (t2 + t26);
    t17 = (t10 + t26);
    if (*((unsigned char *)t11) != *((unsigned char *)t17))
        goto LAB52;

LAB56:    t26 = (t26 + 1);
    goto LAB54;

LAB57:    goto LAB40;

}


extern void work_a_2005368973_3459945088_init()
{
	static char *pe[] = {(void *)work_a_2005368973_3459945088_p_0};
	xsi_register_didat("work_a_2005368973_3459945088", "isim/tb_cam_isim_beh.exe.sim/work/a_2005368973_3459945088.didat");
	xsi_register_executes(pe);
}
