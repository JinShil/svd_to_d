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
    final abstract class AUTHSTATUS : Register!(0xfb8)
    {
    }

    /*************************************************************************
     MTB Base
    */
    final abstract class BASE : Register!(0xc)
    {
    }

    /*************************************************************************
     CoreSight
    */
    final abstract class CID0 : Register!(0xff0)
    {
    }

    /*************************************************************************
     CoreSight
    */
    final abstract class CID1 : Register!(0xff4)
    {
    }

    /*************************************************************************
     CoreSight
    */
    final abstract class CID2 : Register!(0xff8)
    {
    }

    /*************************************************************************
     CoreSight
    */
    final abstract class CID3 : Register!(0xffc)
    {
    }

    /*************************************************************************
     MTB Claim Clear
    */
    final abstract class CLAIMCLR : Register!(0xfa4)
    {
    }

    /*************************************************************************
     MTB Claim Set
    */
    final abstract class CLAIMSET : Register!(0xfa0)
    {
    }

    /*************************************************************************
     MTB Device Architecture
    */
    final abstract class DEVARCH : Register!(0xfbc)
    {
    }

    /*************************************************************************
     MTB Device Configuration
    */
    final abstract class DEVID : Register!(0xfc8)
    {
    }

    /*************************************************************************
     MTB Device Type
    */
    final abstract class DEVTYPE : Register!(0xfcc)
    {
    }

    /*************************************************************************
     MTB Flow
    */
    final abstract class FLOW : Register!(0x8)
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
    final abstract class ITCTRL : Register!(0xf00)
    {
    }

    /*************************************************************************
     MTB Lock Access
    */
    final abstract class LOCKACCESS : Register!(0xfb0)
    {
    }

    /*************************************************************************
     MTB Lock Status
    */
    final abstract class LOCKSTATUS : Register!(0xfb4)
    {
    }

    /*************************************************************************
     MTB Master
    */
    final abstract class MASTER : Register!(0x4)
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
    final abstract class PID0 : Register!(0xfe0)
    {
    }

    /*************************************************************************
     CoreSight
    */
    final abstract class PID1 : Register!(0xfe4)
    {
    }

    /*************************************************************************
     CoreSight
    */
    final abstract class PID2 : Register!(0xfe8)
    {
    }

    /*************************************************************************
     CoreSight
    */
    final abstract class PID3 : Register!(0xfec)
    {
    }

    /*************************************************************************
     CoreSight
    */
    final abstract class PID4 : Register!(0xfd0)
    {
    }

    /*************************************************************************
     CoreSight
    */
    final abstract class PID5 : Register!(0xfd4)
    {
    }

    /*************************************************************************
     CoreSight
    */
    final abstract class PID6 : Register!(0xfd8)
    {
    }

    /*************************************************************************
     CoreSight
    */
    final abstract class PID7 : Register!(0xfdc)
    {
    }

    /*************************************************************************
     MTB Position
    */
    final abstract class POSITION : Register!(00)
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
