module atsamd21g18a.dmac;

import atsamd21g18a.mmio;

/*****************************************************************************
 Direct Memory Access Controller
*/
final abstract class DMAC : Peripheral!(0x41004800)
{
    /*************************************************************************
     Active Channel and Levels
    */
    final abstract class ACTIVE : Register!(0x30)
    {
        /*********************************************************************
         Level 0 Channel Trigger Request Executing
        */
        alias LVLEX0 = Bit!(0, Mutability.r);

        /*********************************************************************
         Level 1 Channel Trigger Request Executing
        */
        alias LVLEX1 = Bit!(1, Mutability.r);

        /*********************************************************************
         Level 2 Channel Trigger Request Executing
        */
        alias LVLEX2 = Bit!(2, Mutability.r);

        /*********************************************************************
         Level 3 Channel Trigger Request Executing
        */
        alias LVLEX3 = Bit!(3, Mutability.r);

        /*********************************************************************
         Active Channel ID
        */
        alias ID = BitField!(12, 8, Mutability.r);

        /*********************************************************************
         Active Channel Busy
        */
        alias ABUSY = Bit!(15, Mutability.r);

        /*********************************************************************
         Active Channel Block Transfer Count
        */
        alias BTCNT = BitField!(31, 16, Mutability.r);
    }

    /*************************************************************************
     Descriptor Memory Section Base Address
    */
    final abstract class BASEADDR : Register!(0x34)
    {
        /*********************************************************************
         Descriptor Memory Base Address
        */
        alias BASEADDR = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Busy Channels
    */
    final abstract class BUSYCH : Register!(0x28)
    {
        /*********************************************************************
         Busy Channel 0
        */
        alias BUSYCH0 = Bit!(0, Mutability.r);

        /*********************************************************************
         Busy Channel 1
        */
        alias BUSYCH1 = Bit!(1, Mutability.r);

        /*********************************************************************
         Busy Channel 2
        */
        alias BUSYCH2 = Bit!(2, Mutability.r);

        /*********************************************************************
         Busy Channel 3
        */
        alias BUSYCH3 = Bit!(3, Mutability.r);

        /*********************************************************************
         Busy Channel 4
        */
        alias BUSYCH4 = Bit!(4, Mutability.r);

        /*********************************************************************
         Busy Channel 5
        */
        alias BUSYCH5 = Bit!(5, Mutability.r);

        /*********************************************************************
         Busy Channel 6
        */
        alias BUSYCH6 = Bit!(6, Mutability.r);

        /*********************************************************************
         Busy Channel 7
        */
        alias BUSYCH7 = Bit!(7, Mutability.r);

        /*********************************************************************
         Busy Channel 8
        */
        alias BUSYCH8 = Bit!(8, Mutability.r);

        /*********************************************************************
         Busy Channel 9
        */
        alias BUSYCH9 = Bit!(9, Mutability.r);

        /*********************************************************************
         Busy Channel 10
        */
        alias BUSYCH10 = Bit!(10, Mutability.r);

        /*********************************************************************
         Busy Channel 11
        */
        alias BUSYCH11 = Bit!(11, Mutability.r);
    }

    /*************************************************************************
     Channel Control A
    */
    final abstract class CHCTRLA : Register!(0x40)
    {
        /*********************************************************************
         Channel Software Reset
        */
        alias SWRST = Bit!(0, Mutability.rw);

        /*********************************************************************
         Channel Enable
        */
        alias ENABLE = Bit!(1, Mutability.rw);
    }

    /*************************************************************************
     Channel Control B
    */
    final abstract class CHCTRLB : Register!(0x44)
    {
        /*********************************************************************
         Event Input Action
        */
        final abstract class EVACT
        {
            /*****************************************************************
             EVACT's possible values
            */
            enum Values
            {
                /*************************************************************
                 No action
                */
                NOACT = 0x0,

                /*************************************************************
                 Transfer and periodic transfer trigger
                */
                TRIG = 0x1,

                /*************************************************************
                 Conditional transfer trigger
                */
                CTRIG = 0x2,

                /*************************************************************
                 Conditional block transfer
                */
                CBLOCK = 0x3,

                /*************************************************************
                 Channel suspend operation
                */
                SUSPEND = 0x4,

                /*************************************************************
                 Channel resume operation
                */
                RESUME = 0x5,

                /*************************************************************
                 Skip next block suspend action
                */
                SSKIP = 0x6,
            }
            mixin BitFieldImplementation!(2, 0, Mutability.rw, values);
        }

        /*********************************************************************
         Channel Event Input Enable
        */
        alias EVIE = Bit!(3, Mutability.rw);

        /*********************************************************************
         Channel Event Output Enable
        */
        alias EVOE = Bit!(4, Mutability.rw);

        /*********************************************************************
         Channel Arbitration Level
        */
        alias LVL = BitField!(6, 5, Mutability.rw);

        /*********************************************************************
         Peripheral Trigger Source
        */
        final abstract class TRIGSRC
        {
            /*****************************************************************
             TRIGSRC's possible values
            */
            enum Values
            {
                /*************************************************************
                 Only software/event triggers
                */
                DISABLE = 0x0,
            }
            mixin BitFieldImplementation!(13, 8, Mutability.rw, values);
        }

        /*********************************************************************
         Trigger Action
        */
        final abstract class TRIGACT
        {
            /*****************************************************************
             TRIGACT's possible values
            */
            enum Values
            {
                /*************************************************************
                 One trigger required for each block transfer
                */
                BLOCK = 0x0,

                /*************************************************************
                 One trigger required for each beat transfer
                */
                BEAT = 0x2,

                /*************************************************************
                 One trigger required for each transaction
                */
                TRANSACTION = 0x3,
            }
            mixin BitFieldImplementation!(23, 22, Mutability.rw, values);
        }

        /*********************************************************************
         Software Command
        */
        final abstract class CMD
        {
            /*****************************************************************
             CMD's possible values
            */
            enum Values
            {
                /*************************************************************
                 No action
                */
                NOACT = 0x0,

                /*************************************************************
                 Channel suspend operation
                */
                SUSPEND = 0x1,

                /*************************************************************
                 Channel resume operation
                */
                RESUME = 0x2,
            }
            mixin BitFieldImplementation!(25, 24, Mutability.rw, values);
        }
    }

    /*************************************************************************
     Channel ID
    */
    final abstract class CHID : Register!(0x3F)
    {
        /*********************************************************************
         Channel ID
        */
        alias ID = BitField!(3, 0, Mutability.rw);
    }

    /*************************************************************************
     Channel Interrupt Enable Clear
    */
    final abstract class CHINTENCLR : Register!(0x4C)
    {
        /*********************************************************************
         Transfer Error Interrupt Enable
        */
        alias TERR = Bit!(0, Mutability.rw);

        /*********************************************************************
         Transfer Complete Interrupt Enable
        */
        alias TCMPL = Bit!(1, Mutability.rw);

        /*********************************************************************
         Channel Suspend Interrupt Enable
        */
        alias SUSP = Bit!(2, Mutability.rw);
    }

    /*************************************************************************
     Channel Interrupt Enable Set
    */
    final abstract class CHINTENSET : Register!(0x4D)
    {
        /*********************************************************************
         Transfer Error Interrupt Enable
        */
        alias TERR = Bit!(0, Mutability.rw);

        /*********************************************************************
         Transfer Complete Interrupt Enable
        */
        alias TCMPL = Bit!(1, Mutability.rw);

        /*********************************************************************
         Channel Suspend Interrupt Enable
        */
        alias SUSP = Bit!(2, Mutability.rw);
    }

    /*************************************************************************
     Channel Interrupt Flag Status and Clear
    */
    final abstract class CHINTFLAG : Register!(0x4E)
    {
        /*********************************************************************
         Transfer Error
        */
        alias TERR = Bit!(0, Mutability.rw);

        /*********************************************************************
         Transfer Complete
        */
        alias TCMPL = Bit!(1, Mutability.rw);

        /*********************************************************************
         Channel Suspend
        */
        alias SUSP = Bit!(2, Mutability.rw);
    }

    /*************************************************************************
     Channel Status
    */
    final abstract class CHSTATUS : Register!(0x4F)
    {
        /*********************************************************************
         Channel Pending
        */
        alias PEND = Bit!(0, Mutability.r);

        /*********************************************************************
         Channel Busy
        */
        alias BUSY = Bit!(1, Mutability.r);

        /*********************************************************************
         Fetch Error
        */
        alias FERR = Bit!(2, Mutability.r);
    }

    /*************************************************************************
     CRC Checksum
    */
    final abstract class CRCCHKSUM : Register!(0x08)
    {
        /*********************************************************************
         CRC Checksum
        */
        alias CRCCHKSUM = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     CRC Control
    */
    final abstract class CRCCTRL : Register!(0x02)
    {
        /*********************************************************************
         CRC Beat Size
        */
        final abstract class CRCBEATSIZE
        {
            /*****************************************************************
             CRCBEATSIZE's possible values
            */
            enum Values
            {
                /*************************************************************
                 Byte bus access
                */
                BYTE = 0x0,

                /*************************************************************
                 Half-word bus access
                */
                HWORD = 0x1,

                /*************************************************************
                 Word bus access
                */
                WORD = 0x2,
            }
            mixin BitFieldImplementation!(1, 0, Mutability.rw, values);
        }

        /*********************************************************************
         CRC Polynomial Type
        */
        final abstract class CRCPOLY
        {
            /*****************************************************************
             CRCPOLY's possible values
            */
            enum Values
            {
                /*************************************************************
                 CRC-16 (CRC-CCITT)
                */
                CRC16 = 0x0,

                /*************************************************************
                 CRC32 (IEEE 802.3)
                */
                CRC32 = 0x1,
            }
            mixin BitFieldImplementation!(3, 2, Mutability.rw, values);
        }

        /*********************************************************************
         CRC Input Source
        */
        final abstract class CRCSRC
        {
            /*****************************************************************
             CRCSRC's possible values
            */
            enum Values
            {
                /*************************************************************
                 No action
                */
                NOACT = 0x0,

                /*************************************************************
                 I/O interface
                */
                IO = 0x1,
            }
            mixin BitFieldImplementation!(13, 8, Mutability.rw, values);
        }
    }

    /*************************************************************************
     CRC Data Input
    */
    final abstract class CRCDATAIN : Register!(0x04)
    {
        /*********************************************************************
         CRC Data Input
        */
        alias CRCDATAIN = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     CRC Status
    */
    final abstract class CRCSTATUS : Register!(0x0C)
    {
        /*********************************************************************
         CRC Module Busy
        */
        alias CRCBUSY = Bit!(0, Mutability.rw);

        /*********************************************************************
         CRC Zero
        */
        alias CRCZERO = Bit!(1, Mutability.r);
    }

    /*************************************************************************
     Control
    */
    final abstract class CTRL : Register!(0x00)
    {
        /*********************************************************************
         Software Reset
        */
        alias SWRST = Bit!(0, Mutability.rw);

        /*********************************************************************
         DMA Enable
        */
        alias DMAENABLE = Bit!(1, Mutability.rw);

        /*********************************************************************
         CRC Enable
        */
        alias CRCENABLE = Bit!(2, Mutability.rw);

        /*********************************************************************
         Priority Level 0 Enable
        */
        alias LVLEN0 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Priority Level 1 Enable
        */
        alias LVLEN1 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Priority Level 2 Enable
        */
        alias LVLEN2 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Priority Level 3 Enable
        */
        alias LVLEN3 = Bit!(11, Mutability.rw);
    }

    /*************************************************************************
     Debug Control
    */
    final abstract class DBGCTRL : Register!(0x0D)
    {
        /*********************************************************************
         Debug Run
        */
        alias DBGRUN = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Pending
    */
    final abstract class INTPEND : Register!(0x20)
    {
        /*********************************************************************
         Channel ID
        */
        alias ID = BitField!(3, 0, Mutability.rw);

        /*********************************************************************
         Transfer Error
        */
        alias TERR = Bit!(8, Mutability.rw);

        /*********************************************************************
         Transfer Complete
        */
        alias TCMPL = Bit!(9, Mutability.rw);

        /*********************************************************************
         Channel Suspend
        */
        alias SUSP = Bit!(10, Mutability.rw);

        /*********************************************************************
         Fetch Error
        */
        alias FERR = Bit!(13, Mutability.r);

        /*********************************************************************
         Busy
        */
        alias BUSY = Bit!(14, Mutability.r);

        /*********************************************************************
         Pending
        */
        alias PEND = Bit!(15, Mutability.r);
    }

    /*************************************************************************
     Interrupt Status
    */
    final abstract class INTSTATUS : Register!(0x24)
    {
        /*********************************************************************
         Channel 0 Pending Interrupt
        */
        alias CHINT0 = Bit!(0, Mutability.r);

        /*********************************************************************
         Channel 1 Pending Interrupt
        */
        alias CHINT1 = Bit!(1, Mutability.r);

        /*********************************************************************
         Channel 2 Pending Interrupt
        */
        alias CHINT2 = Bit!(2, Mutability.r);

        /*********************************************************************
         Channel 3 Pending Interrupt
        */
        alias CHINT3 = Bit!(3, Mutability.r);

        /*********************************************************************
         Channel 4 Pending Interrupt
        */
        alias CHINT4 = Bit!(4, Mutability.r);

        /*********************************************************************
         Channel 5 Pending Interrupt
        */
        alias CHINT5 = Bit!(5, Mutability.r);

        /*********************************************************************
         Channel 6 Pending Interrupt
        */
        alias CHINT6 = Bit!(6, Mutability.r);

        /*********************************************************************
         Channel 7 Pending Interrupt
        */
        alias CHINT7 = Bit!(7, Mutability.r);

        /*********************************************************************
         Channel 8 Pending Interrupt
        */
        alias CHINT8 = Bit!(8, Mutability.r);

        /*********************************************************************
         Channel 9 Pending Interrupt
        */
        alias CHINT9 = Bit!(9, Mutability.r);

        /*********************************************************************
         Channel 10 Pending Interrupt
        */
        alias CHINT10 = Bit!(10, Mutability.r);

        /*********************************************************************
         Channel 11 Pending Interrupt
        */
        alias CHINT11 = Bit!(11, Mutability.r);
    }

    /*************************************************************************
     Pending Channels
    */
    final abstract class PENDCH : Register!(0x2C)
    {
        /*********************************************************************
         Pending Channel 0
        */
        alias PENDCH0 = Bit!(0, Mutability.r);

        /*********************************************************************
         Pending Channel 1
        */
        alias PENDCH1 = Bit!(1, Mutability.r);

        /*********************************************************************
         Pending Channel 2
        */
        alias PENDCH2 = Bit!(2, Mutability.r);

        /*********************************************************************
         Pending Channel 3
        */
        alias PENDCH3 = Bit!(3, Mutability.r);

        /*********************************************************************
         Pending Channel 4
        */
        alias PENDCH4 = Bit!(4, Mutability.r);

        /*********************************************************************
         Pending Channel 5
        */
        alias PENDCH5 = Bit!(5, Mutability.r);

        /*********************************************************************
         Pending Channel 6
        */
        alias PENDCH6 = Bit!(6, Mutability.r);

        /*********************************************************************
         Pending Channel 7
        */
        alias PENDCH7 = Bit!(7, Mutability.r);

        /*********************************************************************
         Pending Channel 8
        */
        alias PENDCH8 = Bit!(8, Mutability.r);

        /*********************************************************************
         Pending Channel 9
        */
        alias PENDCH9 = Bit!(9, Mutability.r);

        /*********************************************************************
         Pending Channel 10
        */
        alias PENDCH10 = Bit!(10, Mutability.r);

        /*********************************************************************
         Pending Channel 11
        */
        alias PENDCH11 = Bit!(11, Mutability.r);
    }

    /*************************************************************************
     Priority Control 0
    */
    final abstract class PRICTRL0 : Register!(0x14)
    {
        /*********************************************************************
         Level 0 Channel Priority Number
        */
        alias LVLPRI0 = BitField!(3, 0, Mutability.rw);

        /*********************************************************************
         Level 0 Round-Robin Scheduling Enable
        */
        alias RRLVLEN0 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Level 1 Channel Priority Number
        */
        alias LVLPRI1 = BitField!(11, 8, Mutability.rw);

        /*********************************************************************
         Level 1 Round-Robin Scheduling Enable
        */
        alias RRLVLEN1 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Level 2 Channel Priority Number
        */
        alias LVLPRI2 = BitField!(19, 16, Mutability.rw);

        /*********************************************************************
         Level 2 Round-Robin Scheduling Enable
        */
        alias RRLVLEN2 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Level 3 Channel Priority Number
        */
        alias LVLPRI3 = BitField!(27, 24, Mutability.rw);

        /*********************************************************************
         Level 3 Round-Robin Scheduling Enable
        */
        alias RRLVLEN3 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Software Trigger Control
    */
    final abstract class SWTRIGCTRL : Register!(0x10)
    {
        /*********************************************************************
         Channel 0 Software Trigger
        */
        alias SWTRIG0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Channel 1 Software Trigger
        */
        alias SWTRIG1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Channel 2 Software Trigger
        */
        alias SWTRIG2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Channel 3 Software Trigger
        */
        alias SWTRIG3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Channel 4 Software Trigger
        */
        alias SWTRIG4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Channel 5 Software Trigger
        */
        alias SWTRIG5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Channel 6 Software Trigger
        */
        alias SWTRIG6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Channel 7 Software Trigger
        */
        alias SWTRIG7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Channel 8 Software Trigger
        */
        alias SWTRIG8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Channel 9 Software Trigger
        */
        alias SWTRIG9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Channel 10 Software Trigger
        */
        alias SWTRIG10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Channel 11 Software Trigger
        */
        alias SWTRIG11 = Bit!(11, Mutability.rw);
    }

    /*************************************************************************
     Write-Back Memory Section Base Address
    */
    final abstract class WRBADDR : Register!(0x38)
    {
        /*********************************************************************
         Write-Back Memory Base Address
        */
        alias WRBADDR = BitField!(31, 0, Mutability.rw);
    }
}
