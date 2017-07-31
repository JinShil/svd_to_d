module atsamd21g18a.dsu;

import atsamd21g18a.mmio;

/*****************************************************************************
 Device Service Unit
*/
final abstract class DSU : Peripheral!(0x41002000)
{
    /*************************************************************************
     Address
    */
    final abstract class ADDR : Register!(0x0004)
    {
        /*********************************************************************
         Address
        */
        alias ADDR = BitField!(31, 2, Mutability.rw);
    }

    /*************************************************************************
     Component Identification 0
    */
    final abstract class CID0 : Register!(0x1FF0)
    {
        /*********************************************************************
         Preamble Byte 0
        */
        alias PREAMBLEB0 = BitField!(7, 0, Mutability.r);
    }

    /*************************************************************************
     Component Identification 1
    */
    final abstract class CID1 : Register!(0x1FF4)
    {
        /*********************************************************************
         Preamble
        */
        alias PREAMBLE = BitField!(3, 0, Mutability.r);

        /*********************************************************************
         Component Class
        */
        alias CCLASS = BitField!(7, 4, Mutability.r);
    }

    /*************************************************************************
     Component Identification 2
    */
    final abstract class CID2 : Register!(0x1FF8)
    {
        /*********************************************************************
         Preamble Byte 2
        */
        alias PREAMBLEB2 = BitField!(7, 0, Mutability.r);
    }

    /*************************************************************************
     Component Identification 3
    */
    final abstract class CID3 : Register!(0x1FFC)
    {
        /*********************************************************************
         Preamble Byte 3
        */
        alias PREAMBLEB3 = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     Control
    */
    final abstract class CTRL : Register!(0x0000)
    {
        /*********************************************************************
         Software Reset
        */
        alias SWRST = Bit!(0, Mutability.w);

        /*********************************************************************
         32-bit Cyclic Redundancy Check
        */
        alias CRC = Bit!(2, Mutability.w);

        /*********************************************************************
         Memory Built-In Self-Test
        */
        alias MBIST = Bit!(3, Mutability.w);

        /*********************************************************************
         Chip Erase
        */
        alias CE = Bit!(4, Mutability.w);
    }

    /*************************************************************************
     Data
    */
    final abstract class DATA : Register!(0x000C)
    {
        /*********************************************************************
         Data
        */
        alias DATA = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Debug Communication Channel n
    */
    final abstract class DCC%s : Register!(0x0010)
    {
        /*********************************************************************
         Data
        */
        alias DATA = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Device Identification
    */
    final abstract class DID : Register!(0x0018)
    {
        /*********************************************************************
         Device Select
        */
        alias DEVSEL = BitField!(7, 0, Mutability.r);

        /*********************************************************************
         Revision
        */
        alias REVISION = BitField!(11, 8, Mutability.r);

        /*********************************************************************
         Die Identification
        */
        alias DIE = BitField!(15, 12, Mutability.r);

        /*********************************************************************
         Product Series
        */
        alias SERIES = BitField!(21, 16, Mutability.r);

        /*********************************************************************
         Product Family
        */
        alias FAMILY = BitField!(27, 23, Mutability.r);

        /*********************************************************************
         Processor
        */
        alias PROCESSOR = BitField!(31, 28, Mutability.r);
    }

    /*************************************************************************
     Coresight ROM Table End
    */
    final abstract class END : Register!(0x1008)
    {
        /*********************************************************************
         End Marker
        */
        alias END = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Coresight ROM Table Entry n
    */
    final abstract class ENTRY%s : Register!(0x1000)
    {
        /*********************************************************************
         Entry Present
        */
        alias EPRES = Bit!(0, Mutability.rw);

        /*********************************************************************
         Format
        */
        alias FMT = Bit!(1, Mutability.r);

        /*********************************************************************
         Address Offset
        */
        alias ADDOFF = BitField!(31, 12, Mutability.r);
    }

    /*************************************************************************
     Length
    */
    final abstract class LENGTH : Register!(0x0008)
    {
        /*********************************************************************
         Length
        */
        alias LENGTH = BitField!(31, 2, Mutability.rw);
    }

    /*************************************************************************
     Coresight ROM Table Memory Type
    */
    final abstract class MEMTYPE : Register!(0x1FCC)
    {
        /*********************************************************************
         System Memory Present
        */
        alias SMEMP = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     Peripheral Identification 0
    */
    final abstract class PID0 : Register!(0x1FE0)
    {
        /*********************************************************************
         Part Number Low
        */
        alias PARTNBL = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     Peripheral Identification 1
    */
    final abstract class PID1 : Register!(0x1FE4)
    {
        /*********************************************************************
         Part Number High
        */
        alias PARTNBH = BitField!(3, 0, Mutability.rw);

        /*********************************************************************
         Low part of the JEP-106 Identity Code
        */
        alias JEPIDCL = BitField!(7, 4, Mutability.r);
    }

    /*************************************************************************
     Peripheral Identification 2
    */
    final abstract class PID2 : Register!(0x1FE8)
    {
        /*********************************************************************
         JEP-106 Identity Code High
        */
        alias JEPIDCH = BitField!(2, 0, Mutability.rw);

        /*********************************************************************
         JEP-106 Identity Code is used
        */
        alias JEPU = Bit!(3, Mutability.r);

        /*********************************************************************
         Revision Number
        */
        alias REVISION = BitField!(7, 4, Mutability.r);
    }

    /*************************************************************************
     Peripheral Identification 3
    */
    final abstract class PID3 : Register!(0x1FEC)
    {
        /*********************************************************************
         ARM CUSMOD
        */
        alias CUSMOD = BitField!(3, 0, Mutability.rw);

        /*********************************************************************
         Revision Number
        */
        alias REVAND = BitField!(7, 4, Mutability.r);
    }

    /*************************************************************************
     Peripheral Identification 4
    */
    final abstract class PID4 : Register!(0x1FD0)
    {
        /*********************************************************************
         JEP-106 Continuation Code
        */
        alias JEPCC = BitField!(3, 0, Mutability.rw);

        /*********************************************************************
         4KB Count
        */
        alias FKBC = BitField!(7, 4, Mutability.r);
    }

    /*************************************************************************
     Status A
    */
    final abstract class STATUSA : Register!(0x0001)
    {
        /*********************************************************************
         Done
        */
        alias DONE = Bit!(0, Mutability.rw);

        /*********************************************************************
         CPU Reset Phase Extension
        */
        alias CRSTEXT = Bit!(1, Mutability.rw);

        /*********************************************************************
         Bus Error
        */
        alias BERR = Bit!(2, Mutability.rw);

        /*********************************************************************
         Failure
        */
        alias FAIL = Bit!(3, Mutability.rw);

        /*********************************************************************
         Protection Error
        */
        alias PERR = Bit!(4, Mutability.rw);
    }

    /*************************************************************************
     Status B
    */
    final abstract class STATUSB : Register!(0x0002)
    {
        /*********************************************************************
         Protected
        */
        alias PROT = Bit!(0, Mutability.rw);

        /*********************************************************************
         Debugger Present
        */
        alias DBGPRES = Bit!(1, Mutability.rw);

        /*********************************************************************
         Debug Communication Channel 0 Dirty
        */
        alias DCCD0 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Debug Communication Channel 1 Dirty
        */
        alias DCCD1 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Hot-Plugging Enable
        */
        alias HPE = Bit!(4, Mutability.rw);
    }
}
