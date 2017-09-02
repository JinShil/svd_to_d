module atsamd21g18a.dac;

import atsamd21g18a.mmio;

/*****************************************************************************
 Digital Analog Converter
*/
final abstract class DAC : Peripheral!(0x42004800)
{
    /*************************************************************************
     Control A
    */
    final abstract class CTRLA : Register!(00)
    {
        /*********************************************************************
         Software Reset
        */
        alias SWRST = Bit!(0, Mutability.rw);

        /*********************************************************************
         Enable
        */
        alias ENABLE = Bit!(1, Mutability.rw);

        /*********************************************************************
         Run in Standby
        */
        alias RUNSTDBY = Bit!(2, Mutability.rw);
    }

    /*************************************************************************
     Control B
    */
    final abstract class CTRLB : Register!(0x1)
    {
        /*********************************************************************
         External Output Enable
        */
        alias EOEN = Bit!(0, Mutability.rw);

        /*********************************************************************
         Internal Output Enable
        */
        alias IOEN = Bit!(1, Mutability.rw);

        /*********************************************************************
         Left Adjusted Data
        */
        alias LEFTADJ = Bit!(2, Mutability.rw);

        /*********************************************************************
         Voltage Pump Disable
        */
        alias VPD = Bit!(3, Mutability.rw);

        /*********************************************************************
         Bypass DATABUF Write Protection
        */
        alias BDWP = Bit!(4, Mutability.rw);

        /*********************************************************************
         Reference Selection
        */
        final abstract class REFSEL
        {
            /*****************************************************************
             REFSEL's possible values
            */
            enum Values
            {
                /*************************************************************
                 Internal 1.0V reference
                */
                INT1V = 0x0,

                /*************************************************************
                 AVCC
                */
                AVCC = 0x1,

                /*************************************************************
                 External reference
                */
                VREFP = 0x2,
            }
            mixin BitFieldImplementation!(7, 6, Mutability.rw, Values);
        }
    }

    /*************************************************************************
     Data
    */
    final abstract class DATA : Register!(0x8)
    {
        /*********************************************************************
         Data value to be converted
        */
        alias DATA = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     Data Buffer
    */
    final abstract class DATABUF : Register!(0xc)
    {
        /*********************************************************************
         Data Buffer
        */
        alias DATABUF = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     Event Control
    */
    final abstract class EVCTRL : Register!(0x2)
    {
        /*********************************************************************
         Start Conversion Event Input
        */
        alias STARTEI = Bit!(0, Mutability.rw);

        /*********************************************************************
         Data Buffer Empty Event Output
        */
        alias EMPTYEO = Bit!(1, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Enable Clear
    */
    final abstract class INTENCLR : Register!(0x4)
    {
        /*********************************************************************
         Underrun Interrupt Enable
        */
        alias UNDERRUN = Bit!(0, Mutability.rw);

        /*********************************************************************
         Data Buffer Empty Interrupt Enable
        */
        alias EMPTY = Bit!(1, Mutability.rw);

        /*********************************************************************
         Synchronization Ready Interrupt Enable
        */
        alias SYNCRDY = Bit!(2, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Enable Set
    */
    final abstract class INTENSET : Register!(0x5)
    {
        /*********************************************************************
         Underrun Interrupt Enable
        */
        alias UNDERRUN = Bit!(0, Mutability.rw);

        /*********************************************************************
         Data Buffer Empty Interrupt Enable
        */
        alias EMPTY = Bit!(1, Mutability.rw);

        /*********************************************************************
         Synchronization Ready Interrupt Enable
        */
        alias SYNCRDY = Bit!(2, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Flag Status and Clear
    */
    final abstract class INTFLAG : Register!(0x6)
    {
        /*********************************************************************
         Underrun
        */
        alias UNDERRUN = Bit!(0, Mutability.rw);

        /*********************************************************************
         Data Buffer Empty
        */
        alias EMPTY = Bit!(1, Mutability.rw);

        /*********************************************************************
         Synchronization Ready
        */
        alias SYNCRDY = Bit!(2, Mutability.rw);
    }

    /*************************************************************************
     Status
    */
    final abstract class STATUS : Register!(0x7)
    {
        /*********************************************************************
         Synchronization Busy Status
        */
        alias SYNCBUSY = Bit!(7, Mutability.r);
    }
}
