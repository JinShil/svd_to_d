module stm32f7x9.tim7;

import stm32f7x9.mmio;

/*****************************************************************************
 
*/
final abstract class TIM7 : Peripheral!(0x40001400)
{
    /*************************************************************************
     control register 1
    */
    final abstract class CR1 : Register!(0x0)
    {
        /*********************************************************************
         Auto-reload preload enable
        */
        alias ARPE = Bit!(7, Mutability.rw);

        /*********************************************************************
         One-pulse mode
        */
        alias OPM = Bit!(3, Mutability.rw);

        /*********************************************************************
         Update request source
        */
        alias URS = Bit!(2, Mutability.rw);

        /*********************************************************************
         Update disable
        */
        alias UDIS = Bit!(1, Mutability.rw);

        /*********************************************************************
         Counter enable
        */
        alias CEN = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     control register 2
    */
    final abstract class CR2 : Register!(0x4)
    {
        /*********************************************************************
         Master mode selection
        */
        alias MMS = BitField!(6, 4, Mutability.rw);
    }

    /*************************************************************************
     DMA/Interrupt enable register
    */
    final abstract class DIER : Register!(0xC)
    {
        /*********************************************************************
         Update DMA request enable
        */
        alias UDE = Bit!(8, Mutability.rw);

        /*********************************************************************
         Update interrupt enable
        */
        alias UIE = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     status register
    */
    final abstract class SR : Register!(0x10)
    {
        /*********************************************************************
         Update interrupt flag
        */
        alias UIF = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     event generation register
    */
    final abstract class EGR : Register!(0x14)
    {
        /*********************************************************************
         Update generation
        */
        alias UG = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     counter
    */
    final abstract class CNT : Register!(0x24)
    {
        /*********************************************************************
         Low counter value
        */
        alias CNT = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     prescaler
    */
    final abstract class PSC : Register!(0x28)
    {
        /*********************************************************************
         Prescaler value
        */
        alias PSC = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     auto-reload register
    */
    final abstract class ARR : Register!(0x2C)
    {
        /*********************************************************************
         Low Auto-reload value
        */
        alias ARR = BitField!(15, 0, Mutability.rw);
    }
}
