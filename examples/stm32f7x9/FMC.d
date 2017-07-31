module stm32f7x9.fmc;

import stm32f7x9.mmio;

/*****************************************************************************
 Flexible memory controller
*/
final abstract class FMC : Peripheral!(0xA0000000)
{
    /*************************************************************************
     SRAM/NOR-Flash chip-select control register
          1
    */
    final abstract class BCR1 : Register!(0x0)
    {
        /*********************************************************************
         CCLKEN
        */
        alias CCLKEN = Bit!(20, Mutability.rw);

        /*********************************************************************
         CBURSTRW
        */
        alias CBURSTRW = Bit!(19, Mutability.rw);

        /*********************************************************************
         ASYNCWAIT
        */
        alias ASYNCWAIT = Bit!(15, Mutability.rw);

        /*********************************************************************
         EXTMOD
        */
        alias EXTMOD = Bit!(14, Mutability.rw);

        /*********************************************************************
         WAITEN
        */
        alias WAITEN = Bit!(13, Mutability.rw);

        /*********************************************************************
         WREN
        */
        alias WREN = Bit!(12, Mutability.rw);

        /*********************************************************************
         WAITCFG
        */
        alias WAITCFG = Bit!(11, Mutability.rw);

        /*********************************************************************
         WAITPOL
        */
        alias WAITPOL = Bit!(9, Mutability.rw);

        /*********************************************************************
         BURSTEN
        */
        alias BURSTEN = Bit!(8, Mutability.rw);

        /*********************************************************************
         FACCEN
        */
        alias FACCEN = Bit!(6, Mutability.rw);

        /*********************************************************************
         MWID
        */
        alias MWID = BitField!(5, 4, Mutability.rw);

        /*********************************************************************
         MTYP
        */
        alias MTYP = BitField!(3, 2, Mutability.rw);

        /*********************************************************************
         MUXEN
        */
        alias MUXEN = Bit!(1, Mutability.rw);

        /*********************************************************************
         MBKEN
        */
        alias MBKEN = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     SRAM/NOR-Flash chip-select timing register
          1
    */
    final abstract class BTR1 : Register!(0x4)
    {
        /*********************************************************************
         ACCMOD
        */
        alias ACCMOD = BitField!(29, 28, Mutability.rw);

        /*********************************************************************
         DATLAT
        */
        alias DATLAT = BitField!(27, 24, Mutability.rw);

        /*********************************************************************
         CLKDIV
        */
        alias CLKDIV = BitField!(23, 20, Mutability.rw);

        /*********************************************************************
         BUSTURN
        */
        alias BUSTURN = BitField!(19, 16, Mutability.rw);

        /*********************************************************************
         DATAST
        */
        alias DATAST = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         ADDHLD
        */
        alias ADDHLD = BitField!(7, 4, Mutability.rw);

        /*********************************************************************
         ADDSET
        */
        alias ADDSET = BitField!(3, 0, Mutability.rw);
    }

    /*************************************************************************
     SRAM/NOR-Flash chip-select control register
          2
    */
    final abstract class BCR2 : Register!(0x8)
    {
        /*********************************************************************
         CBURSTRW
        */
        alias CBURSTRW = Bit!(19, Mutability.rw);

        /*********************************************************************
         ASYNCWAIT
        */
        alias ASYNCWAIT = Bit!(15, Mutability.rw);

        /*********************************************************************
         EXTMOD
        */
        alias EXTMOD = Bit!(14, Mutability.rw);

        /*********************************************************************
         WAITEN
        */
        alias WAITEN = Bit!(13, Mutability.rw);

        /*********************************************************************
         WREN
        */
        alias WREN = Bit!(12, Mutability.rw);

        /*********************************************************************
         WAITCFG
        */
        alias WAITCFG = Bit!(11, Mutability.rw);

        /*********************************************************************
         WRAPMOD
        */
        alias WRAPMOD = Bit!(10, Mutability.rw);

        /*********************************************************************
         WAITPOL
        */
        alias WAITPOL = Bit!(9, Mutability.rw);

        /*********************************************************************
         BURSTEN
        */
        alias BURSTEN = Bit!(8, Mutability.rw);

        /*********************************************************************
         FACCEN
        */
        alias FACCEN = Bit!(6, Mutability.rw);

        /*********************************************************************
         MWID
        */
        alias MWID = BitField!(5, 4, Mutability.rw);

        /*********************************************************************
         MTYP
        */
        alias MTYP = BitField!(3, 2, Mutability.rw);

        /*********************************************************************
         MUXEN
        */
        alias MUXEN = Bit!(1, Mutability.rw);

        /*********************************************************************
         MBKEN
        */
        alias MBKEN = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     SRAM/NOR-Flash chip-select timing register
          2
    */
    final abstract class BTR2 : Register!(0xC)
    {
        /*********************************************************************
         ACCMOD
        */
        alias ACCMOD = BitField!(29, 28, Mutability.rw);

        /*********************************************************************
         DATLAT
        */
        alias DATLAT = BitField!(27, 24, Mutability.rw);

        /*********************************************************************
         CLKDIV
        */
        alias CLKDIV = BitField!(23, 20, Mutability.rw);

        /*********************************************************************
         BUSTURN
        */
        alias BUSTURN = BitField!(19, 16, Mutability.rw);

        /*********************************************************************
         DATAST
        */
        alias DATAST = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         ADDHLD
        */
        alias ADDHLD = BitField!(7, 4, Mutability.rw);

        /*********************************************************************
         ADDSET
        */
        alias ADDSET = BitField!(3, 0, Mutability.rw);
    }

    /*************************************************************************
     SRAM/NOR-Flash chip-select control register
          3
    */
    final abstract class BCR3 : Register!(0x10)
    {
        /*********************************************************************
         CBURSTRW
        */
        alias CBURSTRW = Bit!(19, Mutability.rw);

        /*********************************************************************
         ASYNCWAIT
        */
        alias ASYNCWAIT = Bit!(15, Mutability.rw);

        /*********************************************************************
         EXTMOD
        */
        alias EXTMOD = Bit!(14, Mutability.rw);

        /*********************************************************************
         WAITEN
        */
        alias WAITEN = Bit!(13, Mutability.rw);

        /*********************************************************************
         WREN
        */
        alias WREN = Bit!(12, Mutability.rw);

        /*********************************************************************
         WAITCFG
        */
        alias WAITCFG = Bit!(11, Mutability.rw);

        /*********************************************************************
         WRAPMOD
        */
        alias WRAPMOD = Bit!(10, Mutability.rw);

        /*********************************************************************
         WAITPOL
        */
        alias WAITPOL = Bit!(9, Mutability.rw);

        /*********************************************************************
         BURSTEN
        */
        alias BURSTEN = Bit!(8, Mutability.rw);

        /*********************************************************************
         FACCEN
        */
        alias FACCEN = Bit!(6, Mutability.rw);

        /*********************************************************************
         MWID
        */
        alias MWID = BitField!(5, 4, Mutability.rw);

        /*********************************************************************
         MTYP
        */
        alias MTYP = BitField!(3, 2, Mutability.rw);

        /*********************************************************************
         MUXEN
        */
        alias MUXEN = Bit!(1, Mutability.rw);

        /*********************************************************************
         MBKEN
        */
        alias MBKEN = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     SRAM/NOR-Flash chip-select timing register
          3
    */
    final abstract class BTR3 : Register!(0x14)
    {
        /*********************************************************************
         ACCMOD
        */
        alias ACCMOD = BitField!(29, 28, Mutability.rw);

        /*********************************************************************
         DATLAT
        */
        alias DATLAT = BitField!(27, 24, Mutability.rw);

        /*********************************************************************
         CLKDIV
        */
        alias CLKDIV = BitField!(23, 20, Mutability.rw);

        /*********************************************************************
         BUSTURN
        */
        alias BUSTURN = BitField!(19, 16, Mutability.rw);

        /*********************************************************************
         DATAST
        */
        alias DATAST = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         ADDHLD
        */
        alias ADDHLD = BitField!(7, 4, Mutability.rw);

        /*********************************************************************
         ADDSET
        */
        alias ADDSET = BitField!(3, 0, Mutability.rw);
    }

    /*************************************************************************
     SRAM/NOR-Flash chip-select control register
          4
    */
    final abstract class BCR4 : Register!(0x18)
    {
        /*********************************************************************
         CBURSTRW
        */
        alias CBURSTRW = Bit!(19, Mutability.rw);

        /*********************************************************************
         ASYNCWAIT
        */
        alias ASYNCWAIT = Bit!(15, Mutability.rw);

        /*********************************************************************
         EXTMOD
        */
        alias EXTMOD = Bit!(14, Mutability.rw);

        /*********************************************************************
         WAITEN
        */
        alias WAITEN = Bit!(13, Mutability.rw);

        /*********************************************************************
         WREN
        */
        alias WREN = Bit!(12, Mutability.rw);

        /*********************************************************************
         WAITCFG
        */
        alias WAITCFG = Bit!(11, Mutability.rw);

        /*********************************************************************
         WRAPMOD
        */
        alias WRAPMOD = Bit!(10, Mutability.rw);

        /*********************************************************************
         WAITPOL
        */
        alias WAITPOL = Bit!(9, Mutability.rw);

        /*********************************************************************
         BURSTEN
        */
        alias BURSTEN = Bit!(8, Mutability.rw);

        /*********************************************************************
         FACCEN
        */
        alias FACCEN = Bit!(6, Mutability.rw);

        /*********************************************************************
         MWID
        */
        alias MWID = BitField!(5, 4, Mutability.rw);

        /*********************************************************************
         MTYP
        */
        alias MTYP = BitField!(3, 2, Mutability.rw);

        /*********************************************************************
         MUXEN
        */
        alias MUXEN = Bit!(1, Mutability.rw);

        /*********************************************************************
         MBKEN
        */
        alias MBKEN = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     SRAM/NOR-Flash chip-select timing register
          4
    */
    final abstract class BTR4 : Register!(0x1C)
    {
        /*********************************************************************
         ACCMOD
        */
        alias ACCMOD = BitField!(29, 28, Mutability.rw);

        /*********************************************************************
         DATLAT
        */
        alias DATLAT = BitField!(27, 24, Mutability.rw);

        /*********************************************************************
         CLKDIV
        */
        alias CLKDIV = BitField!(23, 20, Mutability.rw);

        /*********************************************************************
         BUSTURN
        */
        alias BUSTURN = BitField!(19, 16, Mutability.rw);

        /*********************************************************************
         DATAST
        */
        alias DATAST = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         ADDHLD
        */
        alias ADDHLD = BitField!(7, 4, Mutability.rw);

        /*********************************************************************
         ADDSET
        */
        alias ADDSET = BitField!(3, 0, Mutability.rw);
    }

    /*************************************************************************
     PC Card/NAND Flash control
          register
    */
    final abstract class PCR : Register!(0x80)
    {
        /*********************************************************************
         ECCPS
        */
        alias ECCPS = BitField!(19, 17, Mutability.rw);

        /*********************************************************************
         TAR
        */
        alias TAR = BitField!(16, 13, Mutability.rw);

        /*********************************************************************
         TCLR
        */
        alias TCLR = BitField!(12, 9, Mutability.rw);

        /*********************************************************************
         ECCEN
        */
        alias ECCEN = Bit!(6, Mutability.rw);

        /*********************************************************************
         PWID
        */
        alias PWID = BitField!(5, 4, Mutability.rw);

        /*********************************************************************
         PTYP
        */
        alias PTYP = Bit!(3, Mutability.rw);

        /*********************************************************************
         PBKEN
        */
        alias PBKEN = Bit!(2, Mutability.rw);

        /*********************************************************************
         PWAITEN
        */
        alias PWAITEN = Bit!(1, Mutability.rw);
    }

    /*************************************************************************
     FIFO status and interrupt
          register
    */
    final abstract class SR : Register!(0x84)
    {
        /*********************************************************************
         FEMPT
        */
        alias FEMPT = Bit!(6, Mutability.r);

        /*********************************************************************
         IFEN
        */
        alias IFEN = Bit!(5, Mutability.rw);

        /*********************************************************************
         ILEN
        */
        alias ILEN = Bit!(4, Mutability.rw);

        /*********************************************************************
         IREN
        */
        alias IREN = Bit!(3, Mutability.rw);

        /*********************************************************************
         IFS
        */
        alias IFS = Bit!(2, Mutability.rw);

        /*********************************************************************
         ILS
        */
        alias ILS = Bit!(1, Mutability.rw);

        /*********************************************************************
         IRS
        */
        alias IRS = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     Common memory space timing
          register
    */
    final abstract class PMEM : Register!(0x88)
    {
        /*********************************************************************
         MEMHIZx
        */
        alias MEMHIZx = BitField!(31, 24, Mutability.rw);

        /*********************************************************************
         MEMHOLDx
        */
        alias MEMHOLDx = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         MEMWAITx
        */
        alias MEMWAITx = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         MEMSETx
        */
        alias MEMSETx = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     Attribute memory space timing
          register
    */
    final abstract class PATT : Register!(0x8C)
    {
        /*********************************************************************
         ATTHIZx
        */
        alias ATTHIZx = BitField!(31, 24, Mutability.rw);

        /*********************************************************************
         ATTHOLDx
        */
        alias ATTHOLDx = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         ATTWAITx
        */
        alias ATTWAITx = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         ATTSETx
        */
        alias ATTSETx = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     ECC result register
    */
    final abstract class ECCR : Register!(0x94)
    {
        /*********************************************************************
         ECCx
        */
        alias ECCx = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     SRAM/NOR-Flash write timing registers
          1
    */
    final abstract class BWTR1 : Register!(0x104)
    {
        /*********************************************************************
         ACCMOD
        */
        alias ACCMOD = BitField!(29, 28, Mutability.rw);

        /*********************************************************************
         DATLAT
        */
        alias DATLAT = BitField!(27, 24, Mutability.rw);

        /*********************************************************************
         CLKDIV
        */
        alias CLKDIV = BitField!(23, 20, Mutability.rw);

        /*********************************************************************
         DATAST
        */
        alias DATAST = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         ADDHLD
        */
        alias ADDHLD = BitField!(7, 4, Mutability.rw);

        /*********************************************************************
         ADDSET
        */
        alias ADDSET = BitField!(3, 0, Mutability.rw);
    }

    /*************************************************************************
     SRAM/NOR-Flash write timing registers
          2
    */
    final abstract class BWTR2 : Register!(0x10C)
    {
        /*********************************************************************
         ACCMOD
        */
        alias ACCMOD = BitField!(29, 28, Mutability.rw);

        /*********************************************************************
         DATLAT
        */
        alias DATLAT = BitField!(27, 24, Mutability.rw);

        /*********************************************************************
         CLKDIV
        */
        alias CLKDIV = BitField!(23, 20, Mutability.rw);

        /*********************************************************************
         DATAST
        */
        alias DATAST = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         ADDHLD
        */
        alias ADDHLD = BitField!(7, 4, Mutability.rw);

        /*********************************************************************
         ADDSET
        */
        alias ADDSET = BitField!(3, 0, Mutability.rw);
    }

    /*************************************************************************
     SRAM/NOR-Flash write timing registers
          3
    */
    final abstract class BWTR3 : Register!(0x114)
    {
        /*********************************************************************
         ACCMOD
        */
        alias ACCMOD = BitField!(29, 28, Mutability.rw);

        /*********************************************************************
         DATLAT
        */
        alias DATLAT = BitField!(27, 24, Mutability.rw);

        /*********************************************************************
         CLKDIV
        */
        alias CLKDIV = BitField!(23, 20, Mutability.rw);

        /*********************************************************************
         DATAST
        */
        alias DATAST = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         ADDHLD
        */
        alias ADDHLD = BitField!(7, 4, Mutability.rw);

        /*********************************************************************
         ADDSET
        */
        alias ADDSET = BitField!(3, 0, Mutability.rw);
    }

    /*************************************************************************
     SRAM/NOR-Flash write timing registers
          4
    */
    final abstract class BWTR4 : Register!(0x11C)
    {
        /*********************************************************************
         ACCMOD
        */
        alias ACCMOD = BitField!(29, 28, Mutability.rw);

        /*********************************************************************
         DATLAT
        */
        alias DATLAT = BitField!(27, 24, Mutability.rw);

        /*********************************************************************
         CLKDIV
        */
        alias CLKDIV = BitField!(23, 20, Mutability.rw);

        /*********************************************************************
         DATAST
        */
        alias DATAST = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         ADDHLD
        */
        alias ADDHLD = BitField!(7, 4, Mutability.rw);

        /*********************************************************************
         ADDSET
        */
        alias ADDSET = BitField!(3, 0, Mutability.rw);
    }

    /*************************************************************************
     SDRAM Control Register 1
    */
    final abstract class SDCR1 : Register!(0x140)
    {
        /*********************************************************************
         Number of column address
              bits
        */
        alias NC = BitField!(1, 0, Mutability.rw);

        /*********************************************************************
         Number of row address bits
        */
        alias NR = BitField!(3, 2, Mutability.rw);

        /*********************************************************************
         Memory data bus width
        */
        alias MWID = BitField!(5, 4, Mutability.rw);

        /*********************************************************************
         Number of internal banks
        */
        alias NB = Bit!(6, Mutability.rw);

        /*********************************************************************
         CAS latency
        */
        alias CAS = BitField!(8, 7, Mutability.rw);

        /*********************************************************************
         Write protection
        */
        alias WP = Bit!(9, Mutability.rw);

        /*********************************************************************
         SDRAM clock configuration
        */
        alias SDCLK = BitField!(11, 10, Mutability.rw);

        /*********************************************************************
         Burst read
        */
        alias RBURST = Bit!(12, Mutability.rw);

        /*********************************************************************
         Read pipe
        */
        alias RPIPE = BitField!(14, 13, Mutability.rw);
    }

    /*************************************************************************
     SDRAM Control Register 2
    */
    final abstract class SDCR2 : Register!(0x144)
    {
        /*********************************************************************
         Number of column address
              bits
        */
        alias NC = BitField!(1, 0, Mutability.rw);

        /*********************************************************************
         Number of row address bits
        */
        alias NR = BitField!(3, 2, Mutability.rw);

        /*********************************************************************
         Memory data bus width
        */
        alias MWID = BitField!(5, 4, Mutability.rw);

        /*********************************************************************
         Number of internal banks
        */
        alias NB = Bit!(6, Mutability.rw);

        /*********************************************************************
         CAS latency
        */
        alias CAS = BitField!(8, 7, Mutability.rw);

        /*********************************************************************
         Write protection
        */
        alias WP = Bit!(9, Mutability.rw);

        /*********************************************************************
         SDRAM clock configuration
        */
        alias SDCLK = BitField!(11, 10, Mutability.rw);

        /*********************************************************************
         Burst read
        */
        alias RBURST = Bit!(12, Mutability.rw);

        /*********************************************************************
         Read pipe
        */
        alias RPIPE = BitField!(14, 13, Mutability.rw);
    }

    /*************************************************************************
     SDRAM Timing register 1
    */
    final abstract class SDTR1 : Register!(0x148)
    {
        /*********************************************************************
         Load Mode Register to
              Active
        */
        alias TMRD = BitField!(3, 0, Mutability.rw);

        /*********************************************************************
         Exit self-refresh delay
        */
        alias TXSR = BitField!(7, 4, Mutability.rw);

        /*********************************************************************
         Self refresh time
        */
        alias TRAS = BitField!(11, 8, Mutability.rw);

        /*********************************************************************
         Row cycle delay
        */
        alias TRC = BitField!(15, 12, Mutability.rw);

        /*********************************************************************
         Recovery delay
        */
        alias TWR = BitField!(19, 16, Mutability.rw);

        /*********************************************************************
         Row precharge delay
        */
        alias TRP = BitField!(23, 20, Mutability.rw);

        /*********************************************************************
         Row to column delay
        */
        alias TRCD = BitField!(27, 24, Mutability.rw);
    }

    /*************************************************************************
     SDRAM Timing register 2
    */
    final abstract class SDTR2 : Register!(0x14C)
    {
        /*********************************************************************
         Load Mode Register to
              Active
        */
        alias TMRD = BitField!(3, 0, Mutability.rw);

        /*********************************************************************
         Exit self-refresh delay
        */
        alias TXSR = BitField!(7, 4, Mutability.rw);

        /*********************************************************************
         Self refresh time
        */
        alias TRAS = BitField!(11, 8, Mutability.rw);

        /*********************************************************************
         Row cycle delay
        */
        alias TRC = BitField!(15, 12, Mutability.rw);

        /*********************************************************************
         Recovery delay
        */
        alias TWR = BitField!(19, 16, Mutability.rw);

        /*********************************************************************
         Row precharge delay
        */
        alias TRP = BitField!(23, 20, Mutability.rw);

        /*********************************************************************
         Row to column delay
        */
        alias TRCD = BitField!(27, 24, Mutability.rw);
    }

    /*************************************************************************
     SDRAM Command Mode register
    */
    final abstract class SDCMR : Register!(0x150)
    {
        /*********************************************************************
         Command mode
        */
        alias MODE = BitField!(2, 0, Mutability.w);

        /*********************************************************************
         Command target bank 2
        */
        alias CTB2 = Bit!(3, Mutability.w);

        /*********************************************************************
         Command target bank 1
        */
        alias CTB1 = Bit!(4, Mutability.w);

        /*********************************************************************
         Number of Auto-refresh
        */
        alias NRFS = BitField!(8, 5, Mutability.rw);

        /*********************************************************************
         Mode Register definition
        */
        alias MRD = BitField!(21, 9, Mutability.rw);
    }

    /*************************************************************************
     SDRAM Refresh Timer register
    */
    final abstract class SDRTR : Register!(0x154)
    {
        /*********************************************************************
         Clear Refresh error flag
        */
        alias CRE = Bit!(0, Mutability.w);

        /*********************************************************************
         Refresh Timer Count
        */
        alias COUNT = BitField!(13, 1, Mutability.rw);

        /*********************************************************************
         RES Interrupt Enable
        */
        alias REIE = Bit!(14, Mutability.rw);
    }

    /*************************************************************************
     SDRAM Status register
    */
    final abstract class SDSR : Register!(0x158)
    {
        /*********************************************************************
         Refresh error flag
        */
        alias RE = Bit!(0, Mutability.rw);

        /*********************************************************************
         Status Mode for Bank 1
        */
        alias MODES1 = BitField!(2, 1, Mutability.rw);

        /*********************************************************************
         Status Mode for Bank 2
        */
        alias MODES2 = BitField!(4, 3, Mutability.rw);

        /*********************************************************************
         Busy status
        */
        alias BUSY = Bit!(5, Mutability.rw);
    }
}
