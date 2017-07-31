module stm32f7x9.wwdg;

import stm32f7x9.mmio;

/*****************************************************************************
 Window watchdog
*/
final abstract class WWDG : Peripheral!(0x40002C00)
{
    /*************************************************************************
     Control register
    */
    final abstract class CR : Register!(0x0)
    {
        /*********************************************************************
         Activation bit
        */
        alias WDGA = Bit!(7, Mutability.rw);

        /*********************************************************************
         7-bit counter (MSB to LSB)
        */
        alias T = BitField!(6, 0, Mutability.rw);
    }

    /*************************************************************************
     Configuration register
    */
    final abstract class CFR : Register!(0x4)
    {
        /*********************************************************************
         Early wakeup interrupt
        */
        alias EWI = Bit!(9, Mutability.rw);

        /*********************************************************************
         Timer base
        */
        alias WDGTB1 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Timer base
        */
        alias WDGTB0 = Bit!(7, Mutability.rw);

        /*********************************************************************
         7-bit window value
        */
        alias W = BitField!(6, 0, Mutability.rw);
    }

    /*************************************************************************
     Status register
    */
    final abstract class SR : Register!(0x8)
    {
        /*********************************************************************
         Early wakeup interrupt
              flag
        */
        alias EWIF = Bit!(0, Mutability.rw);
    }
}
