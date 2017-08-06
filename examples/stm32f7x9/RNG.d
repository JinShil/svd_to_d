module stm32f7x9.rng;

import stm32f7x9.mmio;

/*****************************************************************************
 Random number generator
*/
final abstract class RNG : Peripheral!(0x50060800)
{
    /*************************************************************************
     control register
    */
    final abstract class CR : Register!(00)
    {
        /*********************************************************************
         Interrupt enable
        */
        alias IE = Bit!(3, Mutability.rw);

        /*********************************************************************
         Random number generator
              enable
        */
        alias RNGEN = Bit!(2, Mutability.rw);
    }

    /*************************************************************************
     status register
    */
    final abstract class SR : Register!(0x4)
    {
        /*********************************************************************
         Seed error interrupt
              status
        */
        alias SEIS = Bit!(6, Mutability.rw);

        /*********************************************************************
         Clock error interrupt
              status
        */
        alias CEIS = Bit!(5, Mutability.rw);

        /*********************************************************************
         Seed error current status
        */
        alias SECS = Bit!(2, Mutability.r);

        /*********************************************************************
         Clock error current status
        */
        alias CECS = Bit!(1, Mutability.r);

        /*********************************************************************
         Data ready
        */
        alias DRDY = Bit!(0, Mutability.r);
    }

    /*************************************************************************
     data register
    */
    final abstract class DR : Register!(0x8)
    {
        /*********************************************************************
         Random data
        */
        alias RNDATA = BitField!(31, 0, Mutability.rw);
    }
}
