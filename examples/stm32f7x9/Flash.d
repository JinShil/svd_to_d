module stm32f7x9.flash;

import stm32f7x9.mmio;

/*****************************************************************************
 FLASH
*/
final abstract class Flash : Peripheral!(0x40023C00)
{
    /*************************************************************************
     Flash access control register
    */
    final abstract class ACR : Register!(0x0)
    {
        /*********************************************************************
         Latency
        */
        alias LATENCY = BitField!(2, 0, Mutability.rw);

        /*********************************************************************
         Prefetch enable
        */
        alias PRFTEN = Bit!(8, Mutability.rw);

        /*********************************************************************
         Instruction cache enable
        */
        alias ICEN = Bit!(9, Mutability.rw);

        /*********************************************************************
         Data cache enable
        */
        alias DCEN = Bit!(10, Mutability.rw);

        /*********************************************************************
         Instruction cache reset
        */
        alias ICRST = Bit!(11, Mutability.w);

        /*********************************************************************
         Data cache reset
        */
        alias DCRST = Bit!(12, Mutability.rw);
    }

    /*************************************************************************
     Flash key register
    */
    final abstract class KEYR : Register!(0x4)
    {
        /*********************************************************************
         FPEC key
        */
        alias KEY = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Flash option key register
    */
    final abstract class OPTKEYR : Register!(0x8)
    {
        /*********************************************************************
         Option byte key
        */
        alias OPTKEY = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Status register
    */
    final abstract class SR : Register!(0xC)
    {
        /*********************************************************************
         End of operation
        */
        alias EOP = Bit!(0, Mutability.rw);

        /*********************************************************************
         Operation error
        */
        alias OPERR = Bit!(1, Mutability.rw);

        /*********************************************************************
         Write protection error
        */
        alias WRPERR = Bit!(4, Mutability.rw);

        /*********************************************************************
         Programming alignment
              error
        */
        alias PGAERR = Bit!(5, Mutability.rw);

        /*********************************************************************
         Programming parallelism
              error
        */
        alias PGPERR = Bit!(6, Mutability.rw);

        /*********************************************************************
         Programming sequence error
        */
        alias PGSERR = Bit!(7, Mutability.rw);

        /*********************************************************************
         Busy
        */
        alias BSY = Bit!(16, Mutability.r);
    }

    /*************************************************************************
     Control register
    */
    final abstract class CR : Register!(0x10)
    {
        /*********************************************************************
         Programming
        */
        alias PG = Bit!(0, Mutability.rw);

        /*********************************************************************
         Sector Erase
        */
        alias SER = Bit!(1, Mutability.rw);

        /*********************************************************************
         Mass Erase of sectors 0 to
              11
        */
        alias MER = Bit!(2, Mutability.rw);

        /*********************************************************************
         Sector number
        */
        alias SNB = BitField!(7, 3, Mutability.rw);

        /*********************************************************************
         Program size
        */
        alias PSIZE = BitField!(9, 8, Mutability.rw);

        /*********************************************************************
         Mass Erase of sectors 12 to
              23
        */
        alias MER1 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Start
        */
        alias STRT = Bit!(16, Mutability.rw);

        /*********************************************************************
         End of operation interrupt
              enable
        */
        alias EOPIE = Bit!(24, Mutability.rw);

        /*********************************************************************
         Error interrupt enable
        */
        alias ERRIE = Bit!(25, Mutability.rw);

        /*********************************************************************
         Lock
        */
        alias LOCK = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Flash option control register
    */
    final abstract class OPTCR : Register!(0x14)
    {
        /*********************************************************************
         Option lock
        */
        alias OPTLOCK = Bit!(0, Mutability.rw);

        /*********************************************************************
         Option start
        */
        alias OPTSTRT = Bit!(1, Mutability.rw);

        /*********************************************************************
         BOR reset Level
        */
        alias BOR_LEV = BitField!(3, 2, Mutability.rw);

        /*********************************************************************
         WDG_SW User option bytes
        */
        alias WDG_SW = Bit!(5, Mutability.rw);

        /*********************************************************************
         nRST_STOP User option
              bytes
        */
        alias nRST_STOP = Bit!(6, Mutability.rw);

        /*********************************************************************
         nRST_STDBY User option
              bytes
        */
        alias nRST_STDBY = Bit!(7, Mutability.rw);

        /*********************************************************************
         Read protect
        */
        alias RDP = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         Not write protect
        */
        alias nWRP = BitField!(27, 16, Mutability.rw);
    }

    /*************************************************************************
     Flash option control register
          1
    */
    final abstract class OPTCR1 : Register!(0x18)
    {
        /*********************************************************************
         Not write protect
        */
        alias nWRP = BitField!(27, 16, Mutability.rw);
    }
}
