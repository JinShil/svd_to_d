module stm32f7x9.exti;

import stm32f7x9.mmio;

/*****************************************************************************
 External interrupt/event
      controller
*/
final abstract class EXTI : Peripheral!(0x40013C00)
{
    /*************************************************************************
     Interrupt mask register
          (EXTI_IMR)
    */
    final abstract class IMR : Register!(00)
    {
        /*********************************************************************
         Interrupt Mask on line 0
        */
        alias MR0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Interrupt Mask on line 1
        */
        alias MR1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Interrupt Mask on line 2
        */
        alias MR2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Interrupt Mask on line 3
        */
        alias MR3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Interrupt Mask on line 4
        */
        alias MR4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Interrupt Mask on line 5
        */
        alias MR5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Interrupt Mask on line 6
        */
        alias MR6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Interrupt Mask on line 7
        */
        alias MR7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Interrupt Mask on line 8
        */
        alias MR8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Interrupt Mask on line 9
        */
        alias MR9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Interrupt Mask on line 10
        */
        alias MR10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Interrupt Mask on line 11
        */
        alias MR11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Interrupt Mask on line 12
        */
        alias MR12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Interrupt Mask on line 13
        */
        alias MR13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Interrupt Mask on line 14
        */
        alias MR14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Interrupt Mask on line 15
        */
        alias MR15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Interrupt Mask on line 16
        */
        alias MR16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Interrupt Mask on line 17
        */
        alias MR17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Interrupt Mask on line 18
        */
        alias MR18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Interrupt Mask on line 19
        */
        alias MR19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Interrupt Mask on line 20
        */
        alias MR20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Interrupt Mask on line 21
        */
        alias MR21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Interrupt Mask on line 22
        */
        alias MR22 = Bit!(22, Mutability.rw);
    }

    /*************************************************************************
     Event mask register (EXTI_EMR)
    */
    final abstract class EMR : Register!(0x4)
    {
        /*********************************************************************
         Event Mask on line 0
        */
        alias MR0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Event Mask on line 1
        */
        alias MR1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Event Mask on line 2
        */
        alias MR2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Event Mask on line 3
        */
        alias MR3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Event Mask on line 4
        */
        alias MR4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Event Mask on line 5
        */
        alias MR5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Event Mask on line 6
        */
        alias MR6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Event Mask on line 7
        */
        alias MR7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Event Mask on line 8
        */
        alias MR8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Event Mask on line 9
        */
        alias MR9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Event Mask on line 10
        */
        alias MR10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Event Mask on line 11
        */
        alias MR11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Event Mask on line 12
        */
        alias MR12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Event Mask on line 13
        */
        alias MR13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Event Mask on line 14
        */
        alias MR14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Event Mask on line 15
        */
        alias MR15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Event Mask on line 16
        */
        alias MR16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Event Mask on line 17
        */
        alias MR17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Event Mask on line 18
        */
        alias MR18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Event Mask on line 19
        */
        alias MR19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Event Mask on line 20
        */
        alias MR20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Event Mask on line 21
        */
        alias MR21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Event Mask on line 22
        */
        alias MR22 = Bit!(22, Mutability.rw);
    }

    /*************************************************************************
     Rising Trigger selection register
          (EXTI_RTSR)
    */
    final abstract class RTSR : Register!(0x8)
    {
        /*********************************************************************
         Rising trigger event configuration of
              line 0
        */
        alias TR0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Rising trigger event configuration of
              line 1
        */
        alias TR1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Rising trigger event configuration of
              line 2
        */
        alias TR2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Rising trigger event configuration of
              line 3
        */
        alias TR3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Rising trigger event configuration of
              line 4
        */
        alias TR4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Rising trigger event configuration of
              line 5
        */
        alias TR5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Rising trigger event configuration of
              line 6
        */
        alias TR6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Rising trigger event configuration of
              line 7
        */
        alias TR7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Rising trigger event configuration of
              line 8
        */
        alias TR8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Rising trigger event configuration of
              line 9
        */
        alias TR9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Rising trigger event configuration of
              line 10
        */
        alias TR10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Rising trigger event configuration of
              line 11
        */
        alias TR11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Rising trigger event configuration of
              line 12
        */
        alias TR12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Rising trigger event configuration of
              line 13
        */
        alias TR13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Rising trigger event configuration of
              line 14
        */
        alias TR14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Rising trigger event configuration of
              line 15
        */
        alias TR15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Rising trigger event configuration of
              line 16
        */
        alias TR16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Rising trigger event configuration of
              line 17
        */
        alias TR17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Rising trigger event configuration of
              line 18
        */
        alias TR18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Rising trigger event configuration of
              line 19
        */
        alias TR19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Rising trigger event configuration of
              line 20
        */
        alias TR20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Rising trigger event configuration of
              line 21
        */
        alias TR21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Rising trigger event configuration of
              line 22
        */
        alias TR22 = Bit!(22, Mutability.rw);
    }

    /*************************************************************************
     Falling Trigger selection register
          (EXTI_FTSR)
    */
    final abstract class FTSR : Register!(0xc)
    {
        /*********************************************************************
         Falling trigger event configuration of
              line 0
        */
        alias TR0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Falling trigger event configuration of
              line 1
        */
        alias TR1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Falling trigger event configuration of
              line 2
        */
        alias TR2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Falling trigger event configuration of
              line 3
        */
        alias TR3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Falling trigger event configuration of
              line 4
        */
        alias TR4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Falling trigger event configuration of
              line 5
        */
        alias TR5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Falling trigger event configuration of
              line 6
        */
        alias TR6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Falling trigger event configuration of
              line 7
        */
        alias TR7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Falling trigger event configuration of
              line 8
        */
        alias TR8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Falling trigger event configuration of
              line 9
        */
        alias TR9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Falling trigger event configuration of
              line 10
        */
        alias TR10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Falling trigger event configuration of
              line 11
        */
        alias TR11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Falling trigger event configuration of
              line 12
        */
        alias TR12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Falling trigger event configuration of
              line 13
        */
        alias TR13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Falling trigger event configuration of
              line 14
        */
        alias TR14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Falling trigger event configuration of
              line 15
        */
        alias TR15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Falling trigger event configuration of
              line 16
        */
        alias TR16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Falling trigger event configuration of
              line 17
        */
        alias TR17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Falling trigger event configuration of
              line 18
        */
        alias TR18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Falling trigger event configuration of
              line 19
        */
        alias TR19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Falling trigger event configuration of
              line 20
        */
        alias TR20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Falling trigger event configuration of
              line 21
        */
        alias TR21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Falling trigger event configuration of
              line 22
        */
        alias TR22 = Bit!(22, Mutability.rw);
    }

    /*************************************************************************
     Software interrupt event register
          (EXTI_SWIER)
    */
    final abstract class SWIER : Register!(0x10)
    {
        /*********************************************************************
         Software Interrupt on line
              0
        */
        alias SWIER0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Software Interrupt on line
              1
        */
        alias SWIER1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Software Interrupt on line
              2
        */
        alias SWIER2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Software Interrupt on line
              3
        */
        alias SWIER3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Software Interrupt on line
              4
        */
        alias SWIER4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Software Interrupt on line
              5
        */
        alias SWIER5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Software Interrupt on line
              6
        */
        alias SWIER6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Software Interrupt on line
              7
        */
        alias SWIER7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Software Interrupt on line
              8
        */
        alias SWIER8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Software Interrupt on line
              9
        */
        alias SWIER9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Software Interrupt on line
              10
        */
        alias SWIER10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Software Interrupt on line
              11
        */
        alias SWIER11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Software Interrupt on line
              12
        */
        alias SWIER12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Software Interrupt on line
              13
        */
        alias SWIER13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Software Interrupt on line
              14
        */
        alias SWIER14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Software Interrupt on line
              15
        */
        alias SWIER15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Software Interrupt on line
              16
        */
        alias SWIER16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Software Interrupt on line
              17
        */
        alias SWIER17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Software Interrupt on line
              18
        */
        alias SWIER18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Software Interrupt on line
              19
        */
        alias SWIER19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Software Interrupt on line
              20
        */
        alias SWIER20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Software Interrupt on line
              21
        */
        alias SWIER21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Software Interrupt on line
              22
        */
        alias SWIER22 = Bit!(22, Mutability.rw);
    }

    /*************************************************************************
     Pending register (EXTI_PR)
    */
    final abstract class PR : Register!(0x14)
    {
        /*********************************************************************
         Pending bit 0
        */
        alias PR0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Pending bit 1
        */
        alias PR1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Pending bit 2
        */
        alias PR2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Pending bit 3
        */
        alias PR3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Pending bit 4
        */
        alias PR4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Pending bit 5
        */
        alias PR5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Pending bit 6
        */
        alias PR6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Pending bit 7
        */
        alias PR7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Pending bit 8
        */
        alias PR8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Pending bit 9
        */
        alias PR9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Pending bit 10
        */
        alias PR10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Pending bit 11
        */
        alias PR11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Pending bit 12
        */
        alias PR12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Pending bit 13
        */
        alias PR13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Pending bit 14
        */
        alias PR14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Pending bit 15
        */
        alias PR15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Pending bit 16
        */
        alias PR16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Pending bit 17
        */
        alias PR17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Pending bit 18
        */
        alias PR18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Pending bit 19
        */
        alias PR19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Pending bit 20
        */
        alias PR20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Pending bit 21
        */
        alias PR21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Pending bit 22
        */
        alias PR22 = Bit!(22, Mutability.rw);
    }
}
