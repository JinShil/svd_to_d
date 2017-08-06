module stm32f7x9.nvic;

import stm32f7x9.mmio;

/*****************************************************************************
 Nested Vectored Interrupt
      Controller
*/
final abstract class NVIC : Peripheral!(0xE000E000)
{
    /*************************************************************************
     Interrupt Controller Type
          Register
    */
    final abstract class ICTR : Register!(0x4)
    {
        /*********************************************************************
         Total number of interrupt lines in
              groups
        */
        alias INTLINESNUM = BitField!(3, 0, Mutability.rw);
    }

    /*************************************************************************
     Software Triggered Interrupt
          Register
    */
    final abstract class STIR : Register!(0xf00)
    {
        /*********************************************************************
         interrupt to be triggered
        */
        alias INTID = BitField!(8, 0, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Set-Enable Register
    */
    final abstract class ISER0 : Register!(0x100)
    {
        /*********************************************************************
         SETENA
        */
        alias SETENA = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Set-Enable Register
    */
    final abstract class ISER1 : Register!(0x104)
    {
        /*********************************************************************
         SETENA
        */
        alias SETENA = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Set-Enable Register
    */
    final abstract class ISER2 : Register!(0x108)
    {
        /*********************************************************************
         SETENA
        */
        alias SETENA = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Clear-Enable
          Register
    */
    final abstract class ICER0 : Register!(0x180)
    {
        /*********************************************************************
         CLRENA
        */
        alias CLRENA = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Clear-Enable
          Register
    */
    final abstract class ICER1 : Register!(0x184)
    {
        /*********************************************************************
         CLRENA
        */
        alias CLRENA = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Clear-Enable
          Register
    */
    final abstract class ICER2 : Register!(0x188)
    {
        /*********************************************************************
         CLRENA
        */
        alias CLRENA = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Set-Pending Register
    */
    final abstract class ISPR0 : Register!(0x200)
    {
        /*********************************************************************
         SETPEND
        */
        alias SETPEND = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Set-Pending Register
    */
    final abstract class ISPR1 : Register!(0x204)
    {
        /*********************************************************************
         SETPEND
        */
        alias SETPEND = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Set-Pending Register
    */
    final abstract class ISPR2 : Register!(0x208)
    {
        /*********************************************************************
         SETPEND
        */
        alias SETPEND = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Clear-Pending
          Register
    */
    final abstract class ICPR0 : Register!(0x280)
    {
        /*********************************************************************
         CLRPEND
        */
        alias CLRPEND = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Clear-Pending
          Register
    */
    final abstract class ICPR1 : Register!(0x284)
    {
        /*********************************************************************
         CLRPEND
        */
        alias CLRPEND = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Clear-Pending
          Register
    */
    final abstract class ICPR2 : Register!(0x288)
    {
        /*********************************************************************
         CLRPEND
        */
        alias CLRPEND = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Active Bit Register
    */
    final abstract class IABR0 : Register!(0x300)
    {
        /*********************************************************************
         ACTIVE
        */
        alias ACTIVE = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Active Bit Register
    */
    final abstract class IABR1 : Register!(0x304)
    {
        /*********************************************************************
         ACTIVE
        */
        alias ACTIVE = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Active Bit Register
    */
    final abstract class IABR2 : Register!(0x308)
    {
        /*********************************************************************
         ACTIVE
        */
        alias ACTIVE = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Priority Register
    */
    final abstract class IPR0 : Register!(0x400)
    {
        /*********************************************************************
         IPR_N0
        */
        alias IPR_N0 = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         IPR_N1
        */
        alias IPR_N1 = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         IPR_N2
        */
        alias IPR_N2 = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         IPR_N3
        */
        alias IPR_N3 = BitField!(31, 24, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Priority Register
    */
    final abstract class IPR1 : Register!(0x404)
    {
        /*********************************************************************
         IPR_N0
        */
        alias IPR_N0 = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         IPR_N1
        */
        alias IPR_N1 = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         IPR_N2
        */
        alias IPR_N2 = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         IPR_N3
        */
        alias IPR_N3 = BitField!(31, 24, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Priority Register
    */
    final abstract class IPR2 : Register!(0x408)
    {
        /*********************************************************************
         IPR_N0
        */
        alias IPR_N0 = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         IPR_N1
        */
        alias IPR_N1 = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         IPR_N2
        */
        alias IPR_N2 = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         IPR_N3
        */
        alias IPR_N3 = BitField!(31, 24, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Priority Register
    */
    final abstract class IPR3 : Register!(0x40c)
    {
        /*********************************************************************
         IPR_N0
        */
        alias IPR_N0 = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         IPR_N1
        */
        alias IPR_N1 = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         IPR_N2
        */
        alias IPR_N2 = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         IPR_N3
        */
        alias IPR_N3 = BitField!(31, 24, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Priority Register
    */
    final abstract class IPR4 : Register!(0x410)
    {
        /*********************************************************************
         IPR_N0
        */
        alias IPR_N0 = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         IPR_N1
        */
        alias IPR_N1 = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         IPR_N2
        */
        alias IPR_N2 = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         IPR_N3
        */
        alias IPR_N3 = BitField!(31, 24, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Priority Register
    */
    final abstract class IPR5 : Register!(0x414)
    {
        /*********************************************************************
         IPR_N0
        */
        alias IPR_N0 = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         IPR_N1
        */
        alias IPR_N1 = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         IPR_N2
        */
        alias IPR_N2 = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         IPR_N3
        */
        alias IPR_N3 = BitField!(31, 24, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Priority Register
    */
    final abstract class IPR6 : Register!(0x418)
    {
        /*********************************************************************
         IPR_N0
        */
        alias IPR_N0 = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         IPR_N1
        */
        alias IPR_N1 = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         IPR_N2
        */
        alias IPR_N2 = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         IPR_N3
        */
        alias IPR_N3 = BitField!(31, 24, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Priority Register
    */
    final abstract class IPR7 : Register!(0x41c)
    {
        /*********************************************************************
         IPR_N0
        */
        alias IPR_N0 = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         IPR_N1
        */
        alias IPR_N1 = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         IPR_N2
        */
        alias IPR_N2 = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         IPR_N3
        */
        alias IPR_N3 = BitField!(31, 24, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Priority Register
    */
    final abstract class IPR8 : Register!(0x420)
    {
        /*********************************************************************
         IPR_N0
        */
        alias IPR_N0 = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         IPR_N1
        */
        alias IPR_N1 = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         IPR_N2
        */
        alias IPR_N2 = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         IPR_N3
        */
        alias IPR_N3 = BitField!(31, 24, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Priority Register
    */
    final abstract class IPR9 : Register!(0x424)
    {
        /*********************************************************************
         IPR_N0
        */
        alias IPR_N0 = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         IPR_N1
        */
        alias IPR_N1 = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         IPR_N2
        */
        alias IPR_N2 = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         IPR_N3
        */
        alias IPR_N3 = BitField!(31, 24, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Priority Register
    */
    final abstract class IPR10 : Register!(0x428)
    {
        /*********************************************************************
         IPR_N0
        */
        alias IPR_N0 = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         IPR_N1
        */
        alias IPR_N1 = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         IPR_N2
        */
        alias IPR_N2 = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         IPR_N3
        */
        alias IPR_N3 = BitField!(31, 24, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Priority Register
    */
    final abstract class IPR11 : Register!(0x42c)
    {
        /*********************************************************************
         IPR_N0
        */
        alias IPR_N0 = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         IPR_N1
        */
        alias IPR_N1 = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         IPR_N2
        */
        alias IPR_N2 = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         IPR_N3
        */
        alias IPR_N3 = BitField!(31, 24, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Priority Register
    */
    final abstract class IPR12 : Register!(0x430)
    {
        /*********************************************************************
         IPR_N0
        */
        alias IPR_N0 = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         IPR_N1
        */
        alias IPR_N1 = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         IPR_N2
        */
        alias IPR_N2 = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         IPR_N3
        */
        alias IPR_N3 = BitField!(31, 24, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Priority Register
    */
    final abstract class IPR13 : Register!(0x434)
    {
        /*********************************************************************
         IPR_N0
        */
        alias IPR_N0 = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         IPR_N1
        */
        alias IPR_N1 = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         IPR_N2
        */
        alias IPR_N2 = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         IPR_N3
        */
        alias IPR_N3 = BitField!(31, 24, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Priority Register
    */
    final abstract class IPR14 : Register!(0x438)
    {
        /*********************************************************************
         IPR_N0
        */
        alias IPR_N0 = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         IPR_N1
        */
        alias IPR_N1 = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         IPR_N2
        */
        alias IPR_N2 = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         IPR_N3
        */
        alias IPR_N3 = BitField!(31, 24, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Priority Register
    */
    final abstract class IPR15 : Register!(0x43c)
    {
        /*********************************************************************
         IPR_N0
        */
        alias IPR_N0 = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         IPR_N1
        */
        alias IPR_N1 = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         IPR_N2
        */
        alias IPR_N2 = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         IPR_N3
        */
        alias IPR_N3 = BitField!(31, 24, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Priority Register
    */
    final abstract class IPR16 : Register!(0x440)
    {
        /*********************************************************************
         IPR_N0
        */
        alias IPR_N0 = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         IPR_N1
        */
        alias IPR_N1 = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         IPR_N2
        */
        alias IPR_N2 = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         IPR_N3
        */
        alias IPR_N3 = BitField!(31, 24, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Priority Register
    */
    final abstract class IPR17 : Register!(0x444)
    {
        /*********************************************************************
         IPR_N0
        */
        alias IPR_N0 = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         IPR_N1
        */
        alias IPR_N1 = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         IPR_N2
        */
        alias IPR_N2 = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         IPR_N3
        */
        alias IPR_N3 = BitField!(31, 24, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Priority Register
    */
    final abstract class IPR18 : Register!(0x448)
    {
        /*********************************************************************
         IPR_N0
        */
        alias IPR_N0 = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         IPR_N1
        */
        alias IPR_N1 = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         IPR_N2
        */
        alias IPR_N2 = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         IPR_N3
        */
        alias IPR_N3 = BitField!(31, 24, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Priority Register
    */
    final abstract class IPR19 : Register!(0x44c)
    {
        /*********************************************************************
         IPR_N0
        */
        alias IPR_N0 = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         IPR_N1
        */
        alias IPR_N1 = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         IPR_N2
        */
        alias IPR_N2 = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         IPR_N3
        */
        alias IPR_N3 = BitField!(31, 24, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Priority Register
    */
    final abstract class IPR20 : Register!(0x450)
    {
        /*********************************************************************
         IPR_N0
        */
        alias IPR_N0 = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         IPR_N1
        */
        alias IPR_N1 = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         IPR_N2
        */
        alias IPR_N2 = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         IPR_N3
        */
        alias IPR_N3 = BitField!(31, 24, Mutability.rw);
    }
}
