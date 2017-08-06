module stm32f7x9.dma1;

import stm32f7x9.mmio;

/*****************************************************************************
 
*/
final abstract class DMA1 : Peripheral!(0x40026000)
{
    /*************************************************************************
     low interrupt status register
    */
    final abstract class LISR : Register!(00)
    {
        /*********************************************************************
         Stream x transfer complete interrupt
              flag (x = 3..0)
        */
        alias TCIF3 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Stream x half transfer interrupt flag
              (x=3..0)
        */
        alias HTIF3 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Stream x transfer error interrupt flag
              (x=3..0)
        */
        alias TEIF3 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Stream x direct mode error interrupt
              flag (x=3..0)
        */
        alias DMEIF3 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Stream x FIFO error interrupt flag
              (x=3..0)
        */
        alias FEIF3 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Stream x transfer complete interrupt
              flag (x = 3..0)
        */
        alias TCIF2 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Stream x half transfer interrupt flag
              (x=3..0)
        */
        alias HTIF2 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Stream x transfer error interrupt flag
              (x=3..0)
        */
        alias TEIF2 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Stream x direct mode error interrupt
              flag (x=3..0)
        */
        alias DMEIF2 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Stream x FIFO error interrupt flag
              (x=3..0)
        */
        alias FEIF2 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Stream x transfer complete interrupt
              flag (x = 3..0)
        */
        alias TCIF1 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Stream x half transfer interrupt flag
              (x=3..0)
        */
        alias HTIF1 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Stream x transfer error interrupt flag
              (x=3..0)
        */
        alias TEIF1 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Stream x direct mode error interrupt
              flag (x=3..0)
        */
        alias DMEIF1 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Stream x FIFO error interrupt flag
              (x=3..0)
        */
        alias FEIF1 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Stream x transfer complete interrupt
              flag (x = 3..0)
        */
        alias TCIF0 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Stream x half transfer interrupt flag
              (x=3..0)
        */
        alias HTIF0 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Stream x transfer error interrupt flag
              (x=3..0)
        */
        alias TEIF0 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Stream x direct mode error interrupt
              flag (x=3..0)
        */
        alias DMEIF0 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Stream x FIFO error interrupt flag
              (x=3..0)
        */
        alias FEIF0 = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     high interrupt status register
    */
    final abstract class HISR : Register!(0x4)
    {
        /*********************************************************************
         Stream x transfer complete interrupt
              flag (x=7..4)
        */
        alias TCIF7 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Stream x half transfer interrupt flag
              (x=7..4)
        */
        alias HTIF7 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Stream x transfer error interrupt flag
              (x=7..4)
        */
        alias TEIF7 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Stream x direct mode error interrupt
              flag (x=7..4)
        */
        alias DMEIF7 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Stream x FIFO error interrupt flag
              (x=7..4)
        */
        alias FEIF7 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Stream x transfer complete interrupt
              flag (x=7..4)
        */
        alias TCIF6 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Stream x half transfer interrupt flag
              (x=7..4)
        */
        alias HTIF6 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Stream x transfer error interrupt flag
              (x=7..4)
        */
        alias TEIF6 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Stream x direct mode error interrupt
              flag (x=7..4)
        */
        alias DMEIF6 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Stream x FIFO error interrupt flag
              (x=7..4)
        */
        alias FEIF6 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Stream x transfer complete interrupt
              flag (x=7..4)
        */
        alias TCIF5 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Stream x half transfer interrupt flag
              (x=7..4)
        */
        alias HTIF5 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Stream x transfer error interrupt flag
              (x=7..4)
        */
        alias TEIF5 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Stream x direct mode error interrupt
              flag (x=7..4)
        */
        alias DMEIF5 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Stream x FIFO error interrupt flag
              (x=7..4)
        */
        alias FEIF5 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Stream x transfer complete interrupt
              flag (x=7..4)
        */
        alias TCIF4 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Stream x half transfer interrupt flag
              (x=7..4)
        */
        alias HTIF4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Stream x transfer error interrupt flag
              (x=7..4)
        */
        alias TEIF4 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Stream x direct mode error interrupt
              flag (x=7..4)
        */
        alias DMEIF4 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Stream x FIFO error interrupt flag
              (x=7..4)
        */
        alias FEIF4 = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     low interrupt flag clear
          register
    */
    final abstract class LIFCR : Register!(0x8)
    {
        /*********************************************************************
         Stream x clear transfer complete
              interrupt flag (x = 3..0)
        */
        alias CTCIF3 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Stream x clear half transfer interrupt
              flag (x = 3..0)
        */
        alias CHTIF3 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Stream x clear transfer error interrupt
              flag (x = 3..0)
        */
        alias CTEIF3 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Stream x clear direct mode error
              interrupt flag (x = 3..0)
        */
        alias CDMEIF3 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Stream x clear FIFO error interrupt flag
              (x = 3..0)
        */
        alias CFEIF3 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Stream x clear transfer complete
              interrupt flag (x = 3..0)
        */
        alias CTCIF2 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Stream x clear half transfer interrupt
              flag (x = 3..0)
        */
        alias CHTIF2 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Stream x clear transfer error interrupt
              flag (x = 3..0)
        */
        alias CTEIF2 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Stream x clear direct mode error
              interrupt flag (x = 3..0)
        */
        alias CDMEIF2 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Stream x clear FIFO error interrupt flag
              (x = 3..0)
        */
        alias CFEIF2 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Stream x clear transfer complete
              interrupt flag (x = 3..0)
        */
        alias CTCIF1 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Stream x clear half transfer interrupt
              flag (x = 3..0)
        */
        alias CHTIF1 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Stream x clear transfer error interrupt
              flag (x = 3..0)
        */
        alias CTEIF1 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Stream x clear direct mode error
              interrupt flag (x = 3..0)
        */
        alias CDMEIF1 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Stream x clear FIFO error interrupt flag
              (x = 3..0)
        */
        alias CFEIF1 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Stream x clear transfer complete
              interrupt flag (x = 3..0)
        */
        alias CTCIF0 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Stream x clear half transfer interrupt
              flag (x = 3..0)
        */
        alias CHTIF0 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Stream x clear transfer error interrupt
              flag (x = 3..0)
        */
        alias CTEIF0 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Stream x clear direct mode error
              interrupt flag (x = 3..0)
        */
        alias CDMEIF0 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Stream x clear FIFO error interrupt flag
              (x = 3..0)
        */
        alias CFEIF0 = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     high interrupt flag clear
          register
    */
    final abstract class HIFCR : Register!(0xc)
    {
        /*********************************************************************
         Stream x clear transfer complete
              interrupt flag (x = 7..4)
        */
        alias CTCIF7 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Stream x clear half transfer interrupt
              flag (x = 7..4)
        */
        alias CHTIF7 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Stream x clear transfer error interrupt
              flag (x = 7..4)
        */
        alias CTEIF7 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Stream x clear direct mode error
              interrupt flag (x = 7..4)
        */
        alias CDMEIF7 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Stream x clear FIFO error interrupt flag
              (x = 7..4)
        */
        alias CFEIF7 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Stream x clear transfer complete
              interrupt flag (x = 7..4)
        */
        alias CTCIF6 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Stream x clear half transfer interrupt
              flag (x = 7..4)
        */
        alias CHTIF6 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Stream x clear transfer error interrupt
              flag (x = 7..4)
        */
        alias CTEIF6 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Stream x clear direct mode error
              interrupt flag (x = 7..4)
        */
        alias CDMEIF6 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Stream x clear FIFO error interrupt flag
              (x = 7..4)
        */
        alias CFEIF6 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Stream x clear transfer complete
              interrupt flag (x = 7..4)
        */
        alias CTCIF5 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Stream x clear half transfer interrupt
              flag (x = 7..4)
        */
        alias CHTIF5 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Stream x clear transfer error interrupt
              flag (x = 7..4)
        */
        alias CTEIF5 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Stream x clear direct mode error
              interrupt flag (x = 7..4)
        */
        alias CDMEIF5 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Stream x clear FIFO error interrupt flag
              (x = 7..4)
        */
        alias CFEIF5 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Stream x clear transfer complete
              interrupt flag (x = 7..4)
        */
        alias CTCIF4 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Stream x clear half transfer interrupt
              flag (x = 7..4)
        */
        alias CHTIF4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Stream x clear transfer error interrupt
              flag (x = 7..4)
        */
        alias CTEIF4 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Stream x clear direct mode error
              interrupt flag (x = 7..4)
        */
        alias CDMEIF4 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Stream x clear FIFO error interrupt flag
              (x = 7..4)
        */
        alias CFEIF4 = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     stream x configuration
          register
    */
    final abstract class S0CR : Register!(0x10)
    {
        /*********************************************************************
         Channel selection
        */
        alias CHSEL = BitField!(27, 25, Mutability.rw);

        /*********************************************************************
         Memory burst transfer
              configuration
        */
        alias MBURST = BitField!(24, 23, Mutability.rw);

        /*********************************************************************
         Peripheral burst transfer
              configuration
        */
        alias PBURST = BitField!(22, 21, Mutability.rw);

        /*********************************************************************
         Current target (only in double buffer
              mode)
        */
        alias CT = Bit!(19, Mutability.rw);

        /*********************************************************************
         Double buffer mode
        */
        alias DBM = Bit!(18, Mutability.rw);

        /*********************************************************************
         Priority level
        */
        alias PL = BitField!(17, 16, Mutability.rw);

        /*********************************************************************
         Peripheral increment offset
              size
        */
        alias PINCOS = Bit!(15, Mutability.rw);

        /*********************************************************************
         Memory data size
        */
        alias MSIZE = BitField!(14, 13, Mutability.rw);

        /*********************************************************************
         Peripheral data size
        */
        alias PSIZE = BitField!(12, 11, Mutability.rw);

        /*********************************************************************
         Memory increment mode
        */
        alias MINC = Bit!(10, Mutability.rw);

        /*********************************************************************
         Peripheral increment mode
        */
        alias PINC = Bit!(9, Mutability.rw);

        /*********************************************************************
         Circular mode
        */
        alias CIRC = Bit!(8, Mutability.rw);

        /*********************************************************************
         Data transfer direction
        */
        alias DIR = BitField!(7, 6, Mutability.rw);

        /*********************************************************************
         Peripheral flow controller
        */
        alias PFCTRL = Bit!(5, Mutability.rw);

        /*********************************************************************
         Transfer complete interrupt
              enable
        */
        alias TCIE = Bit!(4, Mutability.rw);

        /*********************************************************************
         Half transfer interrupt
              enable
        */
        alias HTIE = Bit!(3, Mutability.rw);

        /*********************************************************************
         Transfer error interrupt
              enable
        */
        alias TEIE = Bit!(2, Mutability.rw);

        /*********************************************************************
         Direct mode error interrupt
              enable
        */
        alias DMEIE = Bit!(1, Mutability.rw);

        /*********************************************************************
         Stream enable / flag stream ready when
              read low
        */
        alias EN = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     stream x number of data
          register
    */
    final abstract class S0NDTR : Register!(0x14)
    {
        /*********************************************************************
         Number of data items to
              transfer
        */
        alias NDT = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     stream x peripheral address
          register
    */
    final abstract class S0PAR : Register!(0x18)
    {
        /*********************************************************************
         Peripheral address
        */
        alias PA = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     stream x memory 0 address
          register
    */
    final abstract class S0M0AR : Register!(0x1c)
    {
        /*********************************************************************
         Memory 0 address
        */
        alias M0A = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     stream x memory 1 address
          register
    */
    final abstract class S0M1AR : Register!(0x20)
    {
        /*********************************************************************
         Memory 1 address (used in case of Double
              buffer mode)
        */
        alias M1A = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     stream x FIFO control register
    */
    final abstract class S0FCR : Register!(0x24)
    {
        /*********************************************************************
         FIFO error interrupt
              enable
        */
        alias FEIE = Bit!(7, Mutability.rw);

        /*********************************************************************
         FIFO status
        */
        alias FS = BitField!(5, 3, Mutability.r);

        /*********************************************************************
         Direct mode disable
        */
        alias DMDIS = Bit!(2, Mutability.rw);

        /*********************************************************************
         FIFO threshold selection
        */
        alias FTH = BitField!(1, 0, Mutability.rw);
    }

    /*************************************************************************
     stream x configuration
          register
    */
    final abstract class S1CR : Register!(0x28)
    {
        /*********************************************************************
         Channel selection
        */
        alias CHSEL = BitField!(27, 25, Mutability.rw);

        /*********************************************************************
         Memory burst transfer
              configuration
        */
        alias MBURST = BitField!(24, 23, Mutability.rw);

        /*********************************************************************
         Peripheral burst transfer
              configuration
        */
        alias PBURST = BitField!(22, 21, Mutability.rw);

        /*********************************************************************
         ACK
        */
        alias ACK = Bit!(20, Mutability.rw);

        /*********************************************************************
         Current target (only in double buffer
              mode)
        */
        alias CT = Bit!(19, Mutability.rw);

        /*********************************************************************
         Double buffer mode
        */
        alias DBM = Bit!(18, Mutability.rw);

        /*********************************************************************
         Priority level
        */
        alias PL = BitField!(17, 16, Mutability.rw);

        /*********************************************************************
         Peripheral increment offset
              size
        */
        alias PINCOS = Bit!(15, Mutability.rw);

        /*********************************************************************
         Memory data size
        */
        alias MSIZE = BitField!(14, 13, Mutability.rw);

        /*********************************************************************
         Peripheral data size
        */
        alias PSIZE = BitField!(12, 11, Mutability.rw);

        /*********************************************************************
         Memory increment mode
        */
        alias MINC = Bit!(10, Mutability.rw);

        /*********************************************************************
         Peripheral increment mode
        */
        alias PINC = Bit!(9, Mutability.rw);

        /*********************************************************************
         Circular mode
        */
        alias CIRC = Bit!(8, Mutability.rw);

        /*********************************************************************
         Data transfer direction
        */
        alias DIR = BitField!(7, 6, Mutability.rw);

        /*********************************************************************
         Peripheral flow controller
        */
        alias PFCTRL = Bit!(5, Mutability.rw);

        /*********************************************************************
         Transfer complete interrupt
              enable
        */
        alias TCIE = Bit!(4, Mutability.rw);

        /*********************************************************************
         Half transfer interrupt
              enable
        */
        alias HTIE = Bit!(3, Mutability.rw);

        /*********************************************************************
         Transfer error interrupt
              enable
        */
        alias TEIE = Bit!(2, Mutability.rw);

        /*********************************************************************
         Direct mode error interrupt
              enable
        */
        alias DMEIE = Bit!(1, Mutability.rw);

        /*********************************************************************
         Stream enable / flag stream ready when
              read low
        */
        alias EN = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     stream x number of data
          register
    */
    final abstract class S1NDTR : Register!(0x2c)
    {
        /*********************************************************************
         Number of data items to
              transfer
        */
        alias NDT = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     stream x peripheral address
          register
    */
    final abstract class S1PAR : Register!(0x30)
    {
        /*********************************************************************
         Peripheral address
        */
        alias PA = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     stream x memory 0 address
          register
    */
    final abstract class S1M0AR : Register!(0x34)
    {
        /*********************************************************************
         Memory 0 address
        */
        alias M0A = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     stream x memory 1 address
          register
    */
    final abstract class S1M1AR : Register!(0x38)
    {
        /*********************************************************************
         Memory 1 address (used in case of Double
              buffer mode)
        */
        alias M1A = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     stream x FIFO control register
    */
    final abstract class S1FCR : Register!(0x3c)
    {
        /*********************************************************************
         FIFO error interrupt
              enable
        */
        alias FEIE = Bit!(7, Mutability.rw);

        /*********************************************************************
         FIFO status
        */
        alias FS = BitField!(5, 3, Mutability.r);

        /*********************************************************************
         Direct mode disable
        */
        alias DMDIS = Bit!(2, Mutability.rw);

        /*********************************************************************
         FIFO threshold selection
        */
        alias FTH = BitField!(1, 0, Mutability.rw);
    }

    /*************************************************************************
     stream x configuration
          register
    */
    final abstract class S2CR : Register!(0x40)
    {
        /*********************************************************************
         Channel selection
        */
        alias CHSEL = BitField!(27, 25, Mutability.rw);

        /*********************************************************************
         Memory burst transfer
              configuration
        */
        alias MBURST = BitField!(24, 23, Mutability.rw);

        /*********************************************************************
         Peripheral burst transfer
              configuration
        */
        alias PBURST = BitField!(22, 21, Mutability.rw);

        /*********************************************************************
         ACK
        */
        alias ACK = Bit!(20, Mutability.rw);

        /*********************************************************************
         Current target (only in double buffer
              mode)
        */
        alias CT = Bit!(19, Mutability.rw);

        /*********************************************************************
         Double buffer mode
        */
        alias DBM = Bit!(18, Mutability.rw);

        /*********************************************************************
         Priority level
        */
        alias PL = BitField!(17, 16, Mutability.rw);

        /*********************************************************************
         Peripheral increment offset
              size
        */
        alias PINCOS = Bit!(15, Mutability.rw);

        /*********************************************************************
         Memory data size
        */
        alias MSIZE = BitField!(14, 13, Mutability.rw);

        /*********************************************************************
         Peripheral data size
        */
        alias PSIZE = BitField!(12, 11, Mutability.rw);

        /*********************************************************************
         Memory increment mode
        */
        alias MINC = Bit!(10, Mutability.rw);

        /*********************************************************************
         Peripheral increment mode
        */
        alias PINC = Bit!(9, Mutability.rw);

        /*********************************************************************
         Circular mode
        */
        alias CIRC = Bit!(8, Mutability.rw);

        /*********************************************************************
         Data transfer direction
        */
        alias DIR = BitField!(7, 6, Mutability.rw);

        /*********************************************************************
         Peripheral flow controller
        */
        alias PFCTRL = Bit!(5, Mutability.rw);

        /*********************************************************************
         Transfer complete interrupt
              enable
        */
        alias TCIE = Bit!(4, Mutability.rw);

        /*********************************************************************
         Half transfer interrupt
              enable
        */
        alias HTIE = Bit!(3, Mutability.rw);

        /*********************************************************************
         Transfer error interrupt
              enable
        */
        alias TEIE = Bit!(2, Mutability.rw);

        /*********************************************************************
         Direct mode error interrupt
              enable
        */
        alias DMEIE = Bit!(1, Mutability.rw);

        /*********************************************************************
         Stream enable / flag stream ready when
              read low
        */
        alias EN = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     stream x number of data
          register
    */
    final abstract class S2NDTR : Register!(0x44)
    {
        /*********************************************************************
         Number of data items to
              transfer
        */
        alias NDT = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     stream x peripheral address
          register
    */
    final abstract class S2PAR : Register!(0x48)
    {
        /*********************************************************************
         Peripheral address
        */
        alias PA = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     stream x memory 0 address
          register
    */
    final abstract class S2M0AR : Register!(0x4c)
    {
        /*********************************************************************
         Memory 0 address
        */
        alias M0A = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     stream x memory 1 address
          register
    */
    final abstract class S2M1AR : Register!(0x50)
    {
        /*********************************************************************
         Memory 1 address (used in case of Double
              buffer mode)
        */
        alias M1A = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     stream x FIFO control register
    */
    final abstract class S2FCR : Register!(0x54)
    {
        /*********************************************************************
         FIFO error interrupt
              enable
        */
        alias FEIE = Bit!(7, Mutability.rw);

        /*********************************************************************
         FIFO status
        */
        alias FS = BitField!(5, 3, Mutability.r);

        /*********************************************************************
         Direct mode disable
        */
        alias DMDIS = Bit!(2, Mutability.rw);

        /*********************************************************************
         FIFO threshold selection
        */
        alias FTH = BitField!(1, 0, Mutability.rw);
    }

    /*************************************************************************
     stream x configuration
          register
    */
    final abstract class S3CR : Register!(0x58)
    {
        /*********************************************************************
         Channel selection
        */
        alias CHSEL = BitField!(27, 25, Mutability.rw);

        /*********************************************************************
         Memory burst transfer
              configuration
        */
        alias MBURST = BitField!(24, 23, Mutability.rw);

        /*********************************************************************
         Peripheral burst transfer
              configuration
        */
        alias PBURST = BitField!(22, 21, Mutability.rw);

        /*********************************************************************
         ACK
        */
        alias ACK = Bit!(20, Mutability.rw);

        /*********************************************************************
         Current target (only in double buffer
              mode)
        */
        alias CT = Bit!(19, Mutability.rw);

        /*********************************************************************
         Double buffer mode
        */
        alias DBM = Bit!(18, Mutability.rw);

        /*********************************************************************
         Priority level
        */
        alias PL = BitField!(17, 16, Mutability.rw);

        /*********************************************************************
         Peripheral increment offset
              size
        */
        alias PINCOS = Bit!(15, Mutability.rw);

        /*********************************************************************
         Memory data size
        */
        alias MSIZE = BitField!(14, 13, Mutability.rw);

        /*********************************************************************
         Peripheral data size
        */
        alias PSIZE = BitField!(12, 11, Mutability.rw);

        /*********************************************************************
         Memory increment mode
        */
        alias MINC = Bit!(10, Mutability.rw);

        /*********************************************************************
         Peripheral increment mode
        */
        alias PINC = Bit!(9, Mutability.rw);

        /*********************************************************************
         Circular mode
        */
        alias CIRC = Bit!(8, Mutability.rw);

        /*********************************************************************
         Data transfer direction
        */
        alias DIR = BitField!(7, 6, Mutability.rw);

        /*********************************************************************
         Peripheral flow controller
        */
        alias PFCTRL = Bit!(5, Mutability.rw);

        /*********************************************************************
         Transfer complete interrupt
              enable
        */
        alias TCIE = Bit!(4, Mutability.rw);

        /*********************************************************************
         Half transfer interrupt
              enable
        */
        alias HTIE = Bit!(3, Mutability.rw);

        /*********************************************************************
         Transfer error interrupt
              enable
        */
        alias TEIE = Bit!(2, Mutability.rw);

        /*********************************************************************
         Direct mode error interrupt
              enable
        */
        alias DMEIE = Bit!(1, Mutability.rw);

        /*********************************************************************
         Stream enable / flag stream ready when
              read low
        */
        alias EN = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     stream x number of data
          register
    */
    final abstract class S3NDTR : Register!(0x5c)
    {
        /*********************************************************************
         Number of data items to
              transfer
        */
        alias NDT = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     stream x peripheral address
          register
    */
    final abstract class S3PAR : Register!(0x60)
    {
        /*********************************************************************
         Peripheral address
        */
        alias PA = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     stream x memory 0 address
          register
    */
    final abstract class S3M0AR : Register!(0x64)
    {
        /*********************************************************************
         Memory 0 address
        */
        alias M0A = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     stream x memory 1 address
          register
    */
    final abstract class S3M1AR : Register!(0x68)
    {
        /*********************************************************************
         Memory 1 address (used in case of Double
              buffer mode)
        */
        alias M1A = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     stream x FIFO control register
    */
    final abstract class S3FCR : Register!(0x6c)
    {
        /*********************************************************************
         FIFO error interrupt
              enable
        */
        alias FEIE = Bit!(7, Mutability.rw);

        /*********************************************************************
         FIFO status
        */
        alias FS = BitField!(5, 3, Mutability.r);

        /*********************************************************************
         Direct mode disable
        */
        alias DMDIS = Bit!(2, Mutability.rw);

        /*********************************************************************
         FIFO threshold selection
        */
        alias FTH = BitField!(1, 0, Mutability.rw);
    }

    /*************************************************************************
     stream x configuration
          register
    */
    final abstract class S4CR : Register!(0x70)
    {
        /*********************************************************************
         Channel selection
        */
        alias CHSEL = BitField!(27, 25, Mutability.rw);

        /*********************************************************************
         Memory burst transfer
              configuration
        */
        alias MBURST = BitField!(24, 23, Mutability.rw);

        /*********************************************************************
         Peripheral burst transfer
              configuration
        */
        alias PBURST = BitField!(22, 21, Mutability.rw);

        /*********************************************************************
         ACK
        */
        alias ACK = Bit!(20, Mutability.rw);

        /*********************************************************************
         Current target (only in double buffer
              mode)
        */
        alias CT = Bit!(19, Mutability.rw);

        /*********************************************************************
         Double buffer mode
        */
        alias DBM = Bit!(18, Mutability.rw);

        /*********************************************************************
         Priority level
        */
        alias PL = BitField!(17, 16, Mutability.rw);

        /*********************************************************************
         Peripheral increment offset
              size
        */
        alias PINCOS = Bit!(15, Mutability.rw);

        /*********************************************************************
         Memory data size
        */
        alias MSIZE = BitField!(14, 13, Mutability.rw);

        /*********************************************************************
         Peripheral data size
        */
        alias PSIZE = BitField!(12, 11, Mutability.rw);

        /*********************************************************************
         Memory increment mode
        */
        alias MINC = Bit!(10, Mutability.rw);

        /*********************************************************************
         Peripheral increment mode
        */
        alias PINC = Bit!(9, Mutability.rw);

        /*********************************************************************
         Circular mode
        */
        alias CIRC = Bit!(8, Mutability.rw);

        /*********************************************************************
         Data transfer direction
        */
        alias DIR = BitField!(7, 6, Mutability.rw);

        /*********************************************************************
         Peripheral flow controller
        */
        alias PFCTRL = Bit!(5, Mutability.rw);

        /*********************************************************************
         Transfer complete interrupt
              enable
        */
        alias TCIE = Bit!(4, Mutability.rw);

        /*********************************************************************
         Half transfer interrupt
              enable
        */
        alias HTIE = Bit!(3, Mutability.rw);

        /*********************************************************************
         Transfer error interrupt
              enable
        */
        alias TEIE = Bit!(2, Mutability.rw);

        /*********************************************************************
         Direct mode error interrupt
              enable
        */
        alias DMEIE = Bit!(1, Mutability.rw);

        /*********************************************************************
         Stream enable / flag stream ready when
              read low
        */
        alias EN = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     stream x number of data
          register
    */
    final abstract class S4NDTR : Register!(0x74)
    {
        /*********************************************************************
         Number of data items to
              transfer
        */
        alias NDT = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     stream x peripheral address
          register
    */
    final abstract class S4PAR : Register!(0x78)
    {
        /*********************************************************************
         Peripheral address
        */
        alias PA = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     stream x memory 0 address
          register
    */
    final abstract class S4M0AR : Register!(0x7c)
    {
        /*********************************************************************
         Memory 0 address
        */
        alias M0A = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     stream x memory 1 address
          register
    */
    final abstract class S4M1AR : Register!(0x80)
    {
        /*********************************************************************
         Memory 1 address (used in case of Double
              buffer mode)
        */
        alias M1A = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     stream x FIFO control register
    */
    final abstract class S4FCR : Register!(0x84)
    {
        /*********************************************************************
         FIFO error interrupt
              enable
        */
        alias FEIE = Bit!(7, Mutability.rw);

        /*********************************************************************
         FIFO status
        */
        alias FS = BitField!(5, 3, Mutability.r);

        /*********************************************************************
         Direct mode disable
        */
        alias DMDIS = Bit!(2, Mutability.rw);

        /*********************************************************************
         FIFO threshold selection
        */
        alias FTH = BitField!(1, 0, Mutability.rw);
    }

    /*************************************************************************
     stream x configuration
          register
    */
    final abstract class S5CR : Register!(0x88)
    {
        /*********************************************************************
         Channel selection
        */
        alias CHSEL = BitField!(27, 25, Mutability.rw);

        /*********************************************************************
         Memory burst transfer
              configuration
        */
        alias MBURST = BitField!(24, 23, Mutability.rw);

        /*********************************************************************
         Peripheral burst transfer
              configuration
        */
        alias PBURST = BitField!(22, 21, Mutability.rw);

        /*********************************************************************
         ACK
        */
        alias ACK = Bit!(20, Mutability.rw);

        /*********************************************************************
         Current target (only in double buffer
              mode)
        */
        alias CT = Bit!(19, Mutability.rw);

        /*********************************************************************
         Double buffer mode
        */
        alias DBM = Bit!(18, Mutability.rw);

        /*********************************************************************
         Priority level
        */
        alias PL = BitField!(17, 16, Mutability.rw);

        /*********************************************************************
         Peripheral increment offset
              size
        */
        alias PINCOS = Bit!(15, Mutability.rw);

        /*********************************************************************
         Memory data size
        */
        alias MSIZE = BitField!(14, 13, Mutability.rw);

        /*********************************************************************
         Peripheral data size
        */
        alias PSIZE = BitField!(12, 11, Mutability.rw);

        /*********************************************************************
         Memory increment mode
        */
        alias MINC = Bit!(10, Mutability.rw);

        /*********************************************************************
         Peripheral increment mode
        */
        alias PINC = Bit!(9, Mutability.rw);

        /*********************************************************************
         Circular mode
        */
        alias CIRC = Bit!(8, Mutability.rw);

        /*********************************************************************
         Data transfer direction
        */
        alias DIR = BitField!(7, 6, Mutability.rw);

        /*********************************************************************
         Peripheral flow controller
        */
        alias PFCTRL = Bit!(5, Mutability.rw);

        /*********************************************************************
         Transfer complete interrupt
              enable
        */
        alias TCIE = Bit!(4, Mutability.rw);

        /*********************************************************************
         Half transfer interrupt
              enable
        */
        alias HTIE = Bit!(3, Mutability.rw);

        /*********************************************************************
         Transfer error interrupt
              enable
        */
        alias TEIE = Bit!(2, Mutability.rw);

        /*********************************************************************
         Direct mode error interrupt
              enable
        */
        alias DMEIE = Bit!(1, Mutability.rw);

        /*********************************************************************
         Stream enable / flag stream ready when
              read low
        */
        alias EN = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     stream x number of data
          register
    */
    final abstract class S5NDTR : Register!(0x8c)
    {
        /*********************************************************************
         Number of data items to
              transfer
        */
        alias NDT = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     stream x peripheral address
          register
    */
    final abstract class S5PAR : Register!(0x90)
    {
        /*********************************************************************
         Peripheral address
        */
        alias PA = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     stream x memory 0 address
          register
    */
    final abstract class S5M0AR : Register!(0x94)
    {
        /*********************************************************************
         Memory 0 address
        */
        alias M0A = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     stream x memory 1 address
          register
    */
    final abstract class S5M1AR : Register!(0x98)
    {
        /*********************************************************************
         Memory 1 address (used in case of Double
              buffer mode)
        */
        alias M1A = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     stream x FIFO control register
    */
    final abstract class S5FCR : Register!(0x9c)
    {
        /*********************************************************************
         FIFO error interrupt
              enable
        */
        alias FEIE = Bit!(7, Mutability.rw);

        /*********************************************************************
         FIFO status
        */
        alias FS = BitField!(5, 3, Mutability.r);

        /*********************************************************************
         Direct mode disable
        */
        alias DMDIS = Bit!(2, Mutability.rw);

        /*********************************************************************
         FIFO threshold selection
        */
        alias FTH = BitField!(1, 0, Mutability.rw);
    }

    /*************************************************************************
     stream x configuration
          register
    */
    final abstract class S6CR : Register!(0xa0)
    {
        /*********************************************************************
         Channel selection
        */
        alias CHSEL = BitField!(27, 25, Mutability.rw);

        /*********************************************************************
         Memory burst transfer
              configuration
        */
        alias MBURST = BitField!(24, 23, Mutability.rw);

        /*********************************************************************
         Peripheral burst transfer
              configuration
        */
        alias PBURST = BitField!(22, 21, Mutability.rw);

        /*********************************************************************
         ACK
        */
        alias ACK = Bit!(20, Mutability.rw);

        /*********************************************************************
         Current target (only in double buffer
              mode)
        */
        alias CT = Bit!(19, Mutability.rw);

        /*********************************************************************
         Double buffer mode
        */
        alias DBM = Bit!(18, Mutability.rw);

        /*********************************************************************
         Priority level
        */
        alias PL = BitField!(17, 16, Mutability.rw);

        /*********************************************************************
         Peripheral increment offset
              size
        */
        alias PINCOS = Bit!(15, Mutability.rw);

        /*********************************************************************
         Memory data size
        */
        alias MSIZE = BitField!(14, 13, Mutability.rw);

        /*********************************************************************
         Peripheral data size
        */
        alias PSIZE = BitField!(12, 11, Mutability.rw);

        /*********************************************************************
         Memory increment mode
        */
        alias MINC = Bit!(10, Mutability.rw);

        /*********************************************************************
         Peripheral increment mode
        */
        alias PINC = Bit!(9, Mutability.rw);

        /*********************************************************************
         Circular mode
        */
        alias CIRC = Bit!(8, Mutability.rw);

        /*********************************************************************
         Data transfer direction
        */
        alias DIR = BitField!(7, 6, Mutability.rw);

        /*********************************************************************
         Peripheral flow controller
        */
        alias PFCTRL = Bit!(5, Mutability.rw);

        /*********************************************************************
         Transfer complete interrupt
              enable
        */
        alias TCIE = Bit!(4, Mutability.rw);

        /*********************************************************************
         Half transfer interrupt
              enable
        */
        alias HTIE = Bit!(3, Mutability.rw);

        /*********************************************************************
         Transfer error interrupt
              enable
        */
        alias TEIE = Bit!(2, Mutability.rw);

        /*********************************************************************
         Direct mode error interrupt
              enable
        */
        alias DMEIE = Bit!(1, Mutability.rw);

        /*********************************************************************
         Stream enable / flag stream ready when
              read low
        */
        alias EN = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     stream x number of data
          register
    */
    final abstract class S6NDTR : Register!(0xa4)
    {
        /*********************************************************************
         Number of data items to
              transfer
        */
        alias NDT = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     stream x peripheral address
          register
    */
    final abstract class S6PAR : Register!(0xa8)
    {
        /*********************************************************************
         Peripheral address
        */
        alias PA = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     stream x memory 0 address
          register
    */
    final abstract class S6M0AR : Register!(0xac)
    {
        /*********************************************************************
         Memory 0 address
        */
        alias M0A = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     stream x memory 1 address
          register
    */
    final abstract class S6M1AR : Register!(0xb0)
    {
        /*********************************************************************
         Memory 1 address (used in case of Double
              buffer mode)
        */
        alias M1A = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     stream x FIFO control register
    */
    final abstract class S6FCR : Register!(0xb4)
    {
        /*********************************************************************
         FIFO error interrupt
              enable
        */
        alias FEIE = Bit!(7, Mutability.rw);

        /*********************************************************************
         FIFO status
        */
        alias FS = BitField!(5, 3, Mutability.r);

        /*********************************************************************
         Direct mode disable
        */
        alias DMDIS = Bit!(2, Mutability.rw);

        /*********************************************************************
         FIFO threshold selection
        */
        alias FTH = BitField!(1, 0, Mutability.rw);
    }

    /*************************************************************************
     stream x configuration
          register
    */
    final abstract class S7CR : Register!(0xb8)
    {
        /*********************************************************************
         Channel selection
        */
        alias CHSEL = BitField!(27, 25, Mutability.rw);

        /*********************************************************************
         Memory burst transfer
              configuration
        */
        alias MBURST = BitField!(24, 23, Mutability.rw);

        /*********************************************************************
         Peripheral burst transfer
              configuration
        */
        alias PBURST = BitField!(22, 21, Mutability.rw);

        /*********************************************************************
         ACK
        */
        alias ACK = Bit!(20, Mutability.rw);

        /*********************************************************************
         Current target (only in double buffer
              mode)
        */
        alias CT = Bit!(19, Mutability.rw);

        /*********************************************************************
         Double buffer mode
        */
        alias DBM = Bit!(18, Mutability.rw);

        /*********************************************************************
         Priority level
        */
        alias PL = BitField!(17, 16, Mutability.rw);

        /*********************************************************************
         Peripheral increment offset
              size
        */
        alias PINCOS = Bit!(15, Mutability.rw);

        /*********************************************************************
         Memory data size
        */
        alias MSIZE = BitField!(14, 13, Mutability.rw);

        /*********************************************************************
         Peripheral data size
        */
        alias PSIZE = BitField!(12, 11, Mutability.rw);

        /*********************************************************************
         Memory increment mode
        */
        alias MINC = Bit!(10, Mutability.rw);

        /*********************************************************************
         Peripheral increment mode
        */
        alias PINC = Bit!(9, Mutability.rw);

        /*********************************************************************
         Circular mode
        */
        alias CIRC = Bit!(8, Mutability.rw);

        /*********************************************************************
         Data transfer direction
        */
        alias DIR = BitField!(7, 6, Mutability.rw);

        /*********************************************************************
         Peripheral flow controller
        */
        alias PFCTRL = Bit!(5, Mutability.rw);

        /*********************************************************************
         Transfer complete interrupt
              enable
        */
        alias TCIE = Bit!(4, Mutability.rw);

        /*********************************************************************
         Half transfer interrupt
              enable
        */
        alias HTIE = Bit!(3, Mutability.rw);

        /*********************************************************************
         Transfer error interrupt
              enable
        */
        alias TEIE = Bit!(2, Mutability.rw);

        /*********************************************************************
         Direct mode error interrupt
              enable
        */
        alias DMEIE = Bit!(1, Mutability.rw);

        /*********************************************************************
         Stream enable / flag stream ready when
              read low
        */
        alias EN = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     stream x number of data
          register
    */
    final abstract class S7NDTR : Register!(0xbc)
    {
        /*********************************************************************
         Number of data items to
              transfer
        */
        alias NDT = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     stream x peripheral address
          register
    */
    final abstract class S7PAR : Register!(0xc0)
    {
        /*********************************************************************
         Peripheral address
        */
        alias PA = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     stream x memory 0 address
          register
    */
    final abstract class S7M0AR : Register!(0xc4)
    {
        /*********************************************************************
         Memory 0 address
        */
        alias M0A = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     stream x memory 1 address
          register
    */
    final abstract class S7M1AR : Register!(0xc8)
    {
        /*********************************************************************
         Memory 1 address (used in case of Double
              buffer mode)
        */
        alias M1A = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     stream x FIFO control register
    */
    final abstract class S7FCR : Register!(0xcc)
    {
        /*********************************************************************
         FIFO error interrupt
              enable
        */
        alias FEIE = Bit!(7, Mutability.rw);

        /*********************************************************************
         FIFO status
        */
        alias FS = BitField!(5, 3, Mutability.r);

        /*********************************************************************
         Direct mode disable
        */
        alias DMDIS = Bit!(2, Mutability.rw);

        /*********************************************************************
         FIFO threshold selection
        */
        alias FTH = BitField!(1, 0, Mutability.rw);
    }
}
