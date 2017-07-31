module stm32f7x9.quadspi;

import stm32f7x9.mmio;

/*****************************************************************************
 QuadSPI interface
*/
final abstract class QUADSPI : Peripheral!(0xA0001000)
{
    /*************************************************************************
     control register
    */
    final abstract class CR : Register!(0x0)
    {
        /*********************************************************************
         Clock prescaler
        */
        alias PRESCALER = BitField!(31, 24, Mutability.rw);

        /*********************************************************************
         Polling match mode
        */
        alias PMM = Bit!(23, Mutability.rw);

        /*********************************************************************
         Automatic poll mode stop
        */
        alias APMS = Bit!(22, Mutability.rw);

        /*********************************************************************
         TimeOut interrupt enable
        */
        alias TOIE = Bit!(20, Mutability.rw);

        /*********************************************************************
         Status match interrupt
              enable
        */
        alias SMIE = Bit!(19, Mutability.rw);

        /*********************************************************************
         FIFO threshold interrupt
              enable
        */
        alias FTIE = Bit!(18, Mutability.rw);

        /*********************************************************************
         Transfer complete interrupt
              enable
        */
        alias TCIE = Bit!(17, Mutability.rw);

        /*********************************************************************
         Transfer error interrupt
              enable
        */
        alias TEIE = Bit!(16, Mutability.rw);

        /*********************************************************************
         IFO threshold level
        */
        alias FTHRES = BitField!(12, 8, Mutability.rw);

        /*********************************************************************
         FLASH memory selection
        */
        alias FSEL = Bit!(7, Mutability.rw);

        /*********************************************************************
         Dual-flash mode
        */
        alias DFM = Bit!(6, Mutability.rw);

        /*********************************************************************
         Sample shift
        */
        alias SSHIFT = Bit!(4, Mutability.rw);

        /*********************************************************************
         Timeout counter enable
        */
        alias TCEN = Bit!(3, Mutability.rw);

        /*********************************************************************
         DMA enable
        */
        alias DMAEN = Bit!(2, Mutability.rw);

        /*********************************************************************
         Abort request
        */
        alias ABORT = Bit!(1, Mutability.rw);

        /*********************************************************************
         Enable
        */
        alias EN = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     device configuration register
    */
    final abstract class DCR : Register!(0x4)
    {
        /*********************************************************************
         FLASH memory size
        */
        alias FSIZE = BitField!(20, 16, Mutability.rw);

        /*********************************************************************
         Chip select high time
        */
        alias CSHT = BitField!(10, 8, Mutability.rw);

        /*********************************************************************
         Mode 0 / mode 3
        */
        alias CKMODE = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     status register
    */
    final abstract class SR : Register!(0x8)
    {
        /*********************************************************************
         FIFO level
        */
        alias FLEVEL = BitField!(14, 8, Mutability.rw);

        /*********************************************************************
         Busy
        */
        alias BUSY = Bit!(5, Mutability.rw);

        /*********************************************************************
         Timeout flag
        */
        alias TOF = Bit!(4, Mutability.rw);

        /*********************************************************************
         Status match flag
        */
        alias SMF = Bit!(3, Mutability.rw);

        /*********************************************************************
         FIFO threshold flag
        */
        alias FTF = Bit!(2, Mutability.rw);

        /*********************************************************************
         Transfer complete flag
        */
        alias TCF = Bit!(1, Mutability.rw);

        /*********************************************************************
         Transfer error flag
        */
        alias TEF = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     flag clear register
    */
    final abstract class FCR : Register!(0xC)
    {
        /*********************************************************************
         Clear timeout flag
        */
        alias CTOF = Bit!(4, Mutability.rw);

        /*********************************************************************
         Clear status match flag
        */
        alias CSMF = Bit!(3, Mutability.rw);

        /*********************************************************************
         Clear transfer complete
              flag
        */
        alias CTCF = Bit!(1, Mutability.rw);

        /*********************************************************************
         Clear transfer error flag
        */
        alias CTEF = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     data length register
    */
    final abstract class DLR : Register!(0x10)
    {
        /*********************************************************************
         Data length
        */
        alias DL = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     communication configuration
          register
    */
    final abstract class CCR : Register!(0x14)
    {
        /*********************************************************************
         Double data rate mode
        */
        alias DDRM = Bit!(31, Mutability.rw);

        /*********************************************************************
         DDR hold half cycle
        */
        alias DHHC = Bit!(30, Mutability.rw);

        /*********************************************************************
         Send instruction only once
              mode
        */
        alias SIOO = Bit!(28, Mutability.rw);

        /*********************************************************************
         Functional mode
        */
        alias FMODE = BitField!(27, 26, Mutability.rw);

        /*********************************************************************
         Data mode
        */
        alias DMODE = BitField!(25, 24, Mutability.rw);

        /*********************************************************************
         Number of dummy cycles
        */
        alias DCYC = BitField!(22, 18, Mutability.rw);

        /*********************************************************************
         Alternate bytes size
        */
        alias ABSIZE = BitField!(17, 16, Mutability.rw);

        /*********************************************************************
         Alternate bytes mode
        */
        alias ABMODE = BitField!(15, 14, Mutability.rw);

        /*********************************************************************
         Address size
        */
        alias ADSIZE = BitField!(13, 12, Mutability.rw);

        /*********************************************************************
         Address mode
        */
        alias ADMODE = BitField!(11, 10, Mutability.rw);

        /*********************************************************************
         Instruction mode
        */
        alias IMODE = BitField!(9, 8, Mutability.rw);

        /*********************************************************************
         Instruction
        */
        alias INSTRUCTION = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     address register
    */
    final abstract class AR : Register!(0x18)
    {
        /*********************************************************************
         Address
        */
        alias ADDRESS = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     ABR
    */
    final abstract class ABR : Register!(0x1C)
    {
        /*********************************************************************
         ALTERNATE
        */
        alias ALTERNATE = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     data register
    */
    final abstract class DR : Register!(0x20)
    {
        /*********************************************************************
         Data
        */
        alias DATA = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     polling status mask register
    */
    final abstract class PSMKR : Register!(0x24)
    {
        /*********************************************************************
         Status mask
        */
        alias MASK = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     polling status match register
    */
    final abstract class PSMAR : Register!(0x28)
    {
        /*********************************************************************
         Status match
        */
        alias MATCH = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     polling interval register
    */
    final abstract class PIR : Register!(0x2C)
    {
        /*********************************************************************
         Polling interval
        */
        alias INTERVAL = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     low-power timeout register
    */
    final abstract class LPTR : Register!(0x30)
    {
        /*********************************************************************
         Timeout period
        */
        alias TIMEOUT = BitField!(15, 0, Mutability.rw);
    }
}
