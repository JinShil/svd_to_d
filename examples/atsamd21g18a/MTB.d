module atsamd21g18a.mtb;

import atsamd21g18a.mmio;

/*****************************************************************************
 Cortex-M0+ Micro-Trace Buffer
*/
final abstract class MTB : Peripheral!(0x41006000)
{
    /*************************************************************************
     MTB Authentication Status
    */
    final abstract class AUTHSTATUS : Register!(0xFB8)
    {
    }

    /*************************************************************************
     MTB Base
    */
    final abstract class BASE : Register!(0x00C)
    {
    }

    /*************************************************************************
     CoreSight
    */
    final abstract class CID0 : Register!(0xFF0)
    {
    }

    /*************************************************************************
     CoreSight
    */
    final abstract class CID1 : Register!(0xFF4)
    {
    }

    /*************************************************************************
     CoreSight
    */
    final abstract class CID2 : Register!(0xFF8)
    {
    }

    /*************************************************************************
     CoreSight
    */
    final abstract class CID3 : Register!(0xFFC)
    {
    }

    /*************************************************************************
     MTB Claim Clear
    */
    final abstract class CLAIMCLR : Register!(0xFA4)
    {
    }

    /*************************************************************************
     MTB Claim Set
    */
    final abstract class CLAIMSET : Register!(0xFA0)
    {
    }

    /*************************************************************************
     MTB Device Architecture
    */
    final abstract class DEVARCH : Register!(0xFBC)
    {
    }

    /*************************************************************************
     MTB Device Configuration
    */
    final abstract class DEVID : Register!(0xFC8)
    {
    }

    /*************************************************************************
     MTB Device Type
    */
    final abstract class DEVTYPE : Register!(0xFCC)
    {
    }

    /*************************************************************************
     MTB Flow
    */
    final abstract class FLOW : Register!(0x008)
    {
        /*********************************************************************
         Auto Stop Tracing
        */
        alias AUTOSTOP = Bit!(0, Mutability.rw);

        /*********************************************************************
         Auto Halt Request
        */
        alias AUTOHALT = Bit!(1, Mutability.rw);

        /*********************************************************************
         Watermark value
        */
        alias WATERMARK = BitField!(31, 3, Mutability.rw);
    }

    /*************************************************************************
     MTB Integration Mode Control
    */
    final abstract class ITCTRL : Register!(0xF00)
    {
    }

    /*************************************************************************
     MTB Lock Access
    */
    final abstract class LOCKACCESS : Register!(0xFB0)
    {
    }

    /*************************************************************************
     MTB Lock Status
    */
    final abstract class LOCKSTATUS : Register!(0xFB4)
    {
    }

    /*************************************************************************
     MTB Master
    */
    final abstract class MASTER : Register!(0x004)
    {
        /*********************************************************************
         Maximum Value of the Trace Buffer in SRAM
        */
        alias MASK = BitField!(4, 0, Mutability.rw);

        /*********************************************************************
         Trace Start Input Enable
        */
        alias TSTARTEN = Bit!(5, Mutability.rw);

        /*********************************************************************
         Trace Stop Input Enable
        */
        alias TSTOPEN = Bit!(6, Mutability.rw);

        /*********************************************************************
         Special Function Register Write Privilege
        */
        alias SFRWPRIV = Bit!(7, Mutability.rw);

        /*********************************************************************
         SRAM Privilege
        */
        alias RAMPRIV = Bit!(8, Mutability.rw);

        /*********************************************************************
         Halt Request
        */
        alias HALTREQ = Bit!(9, Mutability.rw);

        /*********************************************************************
         Main Trace Enable
        */
        alias EN = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     CoreSight
    */
    final abstract class PID0 : Register!(0xFE0)
    {
    }

    /*************************************************************************
     CoreSight
    */
    final abstract class PID1 : Register!(0xFE4)
    {
    }

    /*************************************************************************
     CoreSight
    */
    final abstract class PID2 : Register!(0xFE8)
    {
    }

    /*************************************************************************
     CoreSight
    */
    final abstract class PID3 : Register!(0xFEC)
    {
    }

    /*************************************************************************
     CoreSight
    */
    final abstract class PID4 : Register!(0xFD0)
    {
    }

    /*************************************************************************
     CoreSight
    */
    final abstract class PID5 : Register!(0xFD4)
    {
    }

    /*************************************************************************
     CoreSight
    */
    final abstract class PID6 : Register!(0xFD8)
    {
    }

    /*************************************************************************
     CoreSight
    */
    final abstract class PID7 : Register!(0xFDC)
    {
    }

    /*************************************************************************
     MTB Position
    */
    final abstract class POSITION : Register!(0x000)
    {
        /*********************************************************************
         Pointer Value Wraps
        */
        alias WRAP = Bit!(2, Mutability.rw);

        /*********************************************************************
         Trace Packet Location Pointer
        */
        alias POINTER = BitField!(31, 3, Mutability.rw);
    }
}
