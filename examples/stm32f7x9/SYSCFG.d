module stm32f7x9.syscfg;

import stm32f7x9.mmio;

/*****************************************************************************
 System configuration controller
*/
final abstract class SYSCFG : Peripheral!(0x40013800)
{
    /*************************************************************************
     memory remap register
    */
    final abstract class MEMRM : Register!(00)
    {
        /*********************************************************************
         Memory mapping selection
        */
        alias MEM_MODE = BitField!(2, 0, Mutability.rw);

        /*********************************************************************
         Flash bank mode selection
        */
        alias FB_MODE = Bit!(8, Mutability.rw);

        /*********************************************************************
         FMC memory mapping swap
        */
        alias SWP_FMC = BitField!(11, 10, Mutability.rw);
    }

    /*************************************************************************
     peripheral mode configuration
          register
    */
    final abstract class PMC : Register!(0x4)
    {
        /*********************************************************************
         Ethernet PHY interface
              selection
        */
        alias MII_RMII_SEL = Bit!(23, Mutability.rw);

        /*********************************************************************
         ADC1DC2
        */
        alias ADC1DC2 = Bit!(16, Mutability.rw);

        /*********************************************************************
         ADC2DC2
        */
        alias ADC2DC2 = Bit!(17, Mutability.rw);

        /*********************************************************************
         ADC3DC2
        */
        alias ADC3DC2 = Bit!(18, Mutability.rw);
    }

    /*************************************************************************
     external interrupt configuration register
          1
    */
    final abstract class EXTICR1 : Register!(0x8)
    {
        /*********************************************************************
         EXTI x configuration (x = 0 to
              3)
        */
        alias EXTI3 = BitField!(15, 12, Mutability.rw);

        /*********************************************************************
         EXTI x configuration (x = 0 to
              3)
        */
        alias EXTI2 = BitField!(11, 8, Mutability.rw);

        /*********************************************************************
         EXTI x configuration (x = 0 to
              3)
        */
        alias EXTI1 = BitField!(7, 4, Mutability.rw);

        /*********************************************************************
         EXTI x configuration (x = 0 to
              3)
        */
        alias EXTI0 = BitField!(3, 0, Mutability.rw);
    }

    /*************************************************************************
     external interrupt configuration register
          2
    */
    final abstract class EXTICR2 : Register!(0xc)
    {
        /*********************************************************************
         EXTI x configuration (x = 4 to
              7)
        */
        alias EXTI7 = BitField!(15, 12, Mutability.rw);

        /*********************************************************************
         EXTI x configuration (x = 4 to
              7)
        */
        alias EXTI6 = BitField!(11, 8, Mutability.rw);

        /*********************************************************************
         EXTI x configuration (x = 4 to
              7)
        */
        alias EXTI5 = BitField!(7, 4, Mutability.rw);

        /*********************************************************************
         EXTI x configuration (x = 4 to
              7)
        */
        alias EXTI4 = BitField!(3, 0, Mutability.rw);
    }

    /*************************************************************************
     external interrupt configuration register
          3
    */
    final abstract class EXTICR3 : Register!(0x10)
    {
        /*********************************************************************
         EXTI x configuration (x = 8 to
              11)
        */
        alias EXTI11 = BitField!(15, 12, Mutability.rw);

        /*********************************************************************
         EXTI10
        */
        alias EXTI10 = BitField!(11, 8, Mutability.rw);

        /*********************************************************************
         EXTI x configuration (x = 8 to
              11)
        */
        alias EXTI9 = BitField!(7, 4, Mutability.rw);

        /*********************************************************************
         EXTI x configuration (x = 8 to
              11)
        */
        alias EXTI8 = BitField!(3, 0, Mutability.rw);
    }

    /*************************************************************************
     external interrupt configuration register
          4
    */
    final abstract class EXTICR4 : Register!(0x14)
    {
        /*********************************************************************
         EXTI x configuration (x = 12 to
              15)
        */
        alias EXTI15 = BitField!(15, 12, Mutability.rw);

        /*********************************************************************
         EXTI x configuration (x = 12 to
              15)
        */
        alias EXTI14 = BitField!(11, 8, Mutability.rw);

        /*********************************************************************
         EXTI x configuration (x = 12 to
              15)
        */
        alias EXTI13 = BitField!(7, 4, Mutability.rw);

        /*********************************************************************
         EXTI x configuration (x = 12 to
              15)
        */
        alias EXTI12 = BitField!(3, 0, Mutability.rw);
    }

    /*************************************************************************
     Compensation cell control
          register
    */
    final abstract class CMPCR : Register!(0x20)
    {
        /*********************************************************************
         READY
        */
        alias READY = Bit!(8, Mutability.rw);

        /*********************************************************************
         Compensation cell
              power-down
        */
        alias CMP_PD = Bit!(0, Mutability.rw);
    }
}
