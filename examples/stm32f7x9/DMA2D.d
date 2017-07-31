module stm32f7x9.dma2d;

import stm32f7x9.mmio;

/*****************************************************************************
 DMA2D controller
*/
final abstract class DMA2D : Peripheral!(0x4002B000)
{
    /*************************************************************************
     control register
    */
    final abstract class CR : Register!(0x0)
    {
        /*********************************************************************
         DMA2D mode
        */
        alias MODE = BitField!(17, 16, Mutability.rw);

        /*********************************************************************
         Configuration Error Interrupt
              Enable
        */
        alias CEIE = Bit!(13, Mutability.rw);

        /*********************************************************************
         CLUT transfer complete interrupt
              enable
        */
        alias CTCIE = Bit!(12, Mutability.rw);

        /*********************************************************************
         CLUT access error interrupt
              enable
        */
        alias CAEIE = Bit!(11, Mutability.rw);

        /*********************************************************************
         Transfer watermark interrupt
              enable
        */
        alias TWIE = Bit!(10, Mutability.rw);

        /*********************************************************************
         Transfer complete interrupt
              enable
        */
        alias TCIE = Bit!(9, Mutability.rw);

        /*********************************************************************
         Transfer error interrupt
              enable
        */
        alias TEIE = Bit!(8, Mutability.rw);

        /*********************************************************************
         Abort
        */
        alias ABORT = Bit!(2, Mutability.rw);

        /*********************************************************************
         Suspend
        */
        alias SUSP = Bit!(1, Mutability.rw);

        /*********************************************************************
         Start
        */
        alias START = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Status Register
    */
    final abstract class ISR : Register!(0x4)
    {
        /*********************************************************************
         Configuration error interrupt
              flag
        */
        alias CEIF = Bit!(5, Mutability.rw);

        /*********************************************************************
         CLUT transfer complete interrupt
              flag
        */
        alias CTCIF = Bit!(4, Mutability.rw);

        /*********************************************************************
         CLUT access error interrupt
              flag
        */
        alias CAEIF = Bit!(3, Mutability.rw);

        /*********************************************************************
         Transfer watermark interrupt
              flag
        */
        alias TWIF = Bit!(2, Mutability.rw);

        /*********************************************************************
         Transfer complete interrupt
              flag
        */
        alias TCIF = Bit!(1, Mutability.rw);

        /*********************************************************************
         Transfer error interrupt
              flag
        */
        alias TEIF = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     interrupt flag clear register
    */
    final abstract class IFCR : Register!(0x8)
    {
        /*********************************************************************
         Clear configuration error interrupt
              flag
        */
        alias CCEIF = Bit!(5, Mutability.rw);

        /*********************************************************************
         Clear CLUT transfer complete interrupt
              flag
        */
        alias CCTCIF = Bit!(4, Mutability.rw);

        /*********************************************************************
         Clear CLUT access error interrupt
              flag
        */
        alias CAECIF = Bit!(3, Mutability.rw);

        /*********************************************************************
         Clear transfer watermark interrupt
              flag
        */
        alias CTWIF = Bit!(2, Mutability.rw);

        /*********************************************************************
         Clear transfer complete interrupt
              flag
        */
        alias CTCIF = Bit!(1, Mutability.rw);

        /*********************************************************************
         Clear Transfer error interrupt
              flag
        */
        alias CTEIF = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     foreground memory address
          register
    */
    final abstract class FGMAR : Register!(0xC)
    {
        /*********************************************************************
         Memory address
        */
        alias MA = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     foreground offset register
    */
    final abstract class FGOR : Register!(0x10)
    {
        /*********************************************************************
         Line offset
        */
        alias LO = BitField!(13, 0, Mutability.rw);
    }

    /*************************************************************************
     background memory address
          register
    */
    final abstract class BGMAR : Register!(0x14)
    {
        /*********************************************************************
         Memory address
        */
        alias MA = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     background offset register
    */
    final abstract class BGOR : Register!(0x18)
    {
        /*********************************************************************
         Line offset
        */
        alias LO = BitField!(13, 0, Mutability.rw);
    }

    /*************************************************************************
     foreground PFC control
          register
    */
    final abstract class FGPFCCR : Register!(0x1C)
    {
        /*********************************************************************
         Alpha value
        */
        alias ALPHA = BitField!(31, 24, Mutability.rw);

        /*********************************************************************
         Alpha mode
        */
        alias AM = BitField!(17, 16, Mutability.rw);

        /*********************************************************************
         CLUT size
        */
        alias CS = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         Start
        */
        alias START = Bit!(5, Mutability.rw);

        /*********************************************************************
         CLUT color mode
        */
        alias CCM = Bit!(4, Mutability.rw);

        /*********************************************************************
         Color mode
        */
        alias CM = BitField!(3, 0, Mutability.rw);
    }

    /*************************************************************************
     foreground color register
    */
    final abstract class FGCOLR : Register!(0x20)
    {
        /*********************************************************************
         Red Value
        */
        alias RED = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         Green Value
        */
        alias GREEN = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         Blue Value
        */
        alias BLUE = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     background PFC control
          register
    */
    final abstract class BGPFCCR : Register!(0x24)
    {
        /*********************************************************************
         Alpha value
        */
        alias ALPHA = BitField!(31, 24, Mutability.rw);

        /*********************************************************************
         Alpha mode
        */
        alias AM = BitField!(17, 16, Mutability.rw);

        /*********************************************************************
         CLUT size
        */
        alias CS = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         Start
        */
        alias START = Bit!(5, Mutability.rw);

        /*********************************************************************
         CLUT Color mode
        */
        alias CCM = Bit!(4, Mutability.rw);

        /*********************************************************************
         Color mode
        */
        alias CM = BitField!(3, 0, Mutability.rw);
    }

    /*************************************************************************
     background color register
    */
    final abstract class BGCOLR : Register!(0x28)
    {
        /*********************************************************************
         Red Value
        */
        alias RED = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         Green Value
        */
        alias GREEN = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         Blue Value
        */
        alias BLUE = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     foreground CLUT memory address
          register
    */
    final abstract class FGCMAR : Register!(0x2C)
    {
        /*********************************************************************
         Memory Address
        */
        alias MA = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     background CLUT memory address
          register
    */
    final abstract class BGCMAR : Register!(0x30)
    {
        /*********************************************************************
         Memory address
        */
        alias MA = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     output PFC control register
    */
    final abstract class OPFCCR : Register!(0x34)
    {
        /*********************************************************************
         Color mode
        */
        alias CM = BitField!(2, 0, Mutability.rw);
    }

    /*************************************************************************
     output color register
    */
    final abstract class OCOLR : Register!(0x38)
    {
        /*********************************************************************
         Alpha Channel Value
        */
        alias APLHA = BitField!(31, 24, Mutability.rw);

        /*********************************************************************
         Red Value
        */
        alias RED = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         Green Value
        */
        alias GREEN = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         Blue Value
        */
        alias BLUE = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     output memory address register
    */
    final abstract class OMAR : Register!(0x3C)
    {
        /*********************************************************************
         Memory Address
        */
        alias MA = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     output offset register
    */
    final abstract class OOR : Register!(0x40)
    {
        /*********************************************************************
         Line Offset
        */
        alias LO = BitField!(13, 0, Mutability.rw);
    }

    /*************************************************************************
     number of line register
    */
    final abstract class NLR : Register!(0x44)
    {
        /*********************************************************************
         Pixel per lines
        */
        alias PL = BitField!(29, 16, Mutability.rw);

        /*********************************************************************
         Number of lines
        */
        alias NL = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     line watermark register
    */
    final abstract class LWR : Register!(0x48)
    {
        /*********************************************************************
         Line watermark
        */
        alias LW = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     AHB master timer configuration
          register
    */
    final abstract class AMTCR : Register!(0x4C)
    {
        /*********************************************************************
         Dead Time
        */
        alias DT = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         Enable
        */
        alias EN = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     FGCLUT
    */
    final abstract class FGCLUT : Register!(0x400)
    {
        /*********************************************************************
         APLHA
        */
        alias APLHA = BitField!(31, 24, Mutability.rw);

        /*********************************************************************
         RED
        */
        alias RED = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         GREEN
        */
        alias GREEN = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         BLUE
        */
        alias BLUE = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     BGCLUT
    */
    final abstract class BGCLUT : Register!(0x800)
    {
        /*********************************************************************
         APLHA
        */
        alias APLHA = BitField!(31, 24, Mutability.rw);

        /*********************************************************************
         RED
        */
        alias RED = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         GREEN
        */
        alias GREEN = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         BLUE
        */
        alias BLUE = BitField!(7, 0, Mutability.rw);
    }
}
