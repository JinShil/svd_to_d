module atsamd21g18a.gclk;

import atsamd21g18a.mmio;

/*****************************************************************************
 Generic Clock Generator
*/
final abstract class GCLK : Peripheral!(0x40000C00)
{
    /*************************************************************************
     Generic Clock Control
    */
    final abstract class CLKCTRL : Register!(0x2)
    {
        /*********************************************************************
         Generic Clock Selection ID
        */
        alias ID = BitField!(5, 0, Mutability.rw);

        /*********************************************************************
         Generic Clock Generator
        */
        final abstract class GEN
        {
            /*****************************************************************
             GEN's possible values
            */
            enum Values
            {
                /*************************************************************
                 Generic clock generator 0
                */
                GCLK0 = 0x0,

                /*************************************************************
                 Generic clock generator 1
                */
                GCLK1 = 0x1,

                /*************************************************************
                 Generic clock generator 2
                */
                GCLK2 = 0x2,

                /*************************************************************
                 Generic clock generator 3
                */
                GCLK3 = 0x3,

                /*************************************************************
                 Generic clock generator 4
                */
                GCLK4 = 0x4,

                /*************************************************************
                 Generic clock generator 5
                */
                GCLK5 = 0x5,

                /*************************************************************
                 Generic clock generator 6
                */
                GCLK6 = 0x6,

                /*************************************************************
                 Generic clock generator 7
                */
                GCLK7 = 0x7,
            }
            mixin BitFieldImplementation!(11, 8, Mutability.rw, values);
        }

        /*********************************************************************
         Clock Enable
        */
        alias CLKEN = Bit!(14, Mutability.rw);

        /*********************************************************************
         Write Lock
        */
        alias WRTLOCK = Bit!(15, Mutability.rw);
    }

    /*************************************************************************
     Control
    */
    final abstract class CTRL : Register!(00)
    {
        /*********************************************************************
         Software Reset
        */
        alias SWRST = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     Generic Clock Generator Control
    */
    final abstract class GENCTRL : Register!(0x4)
    {
        /*********************************************************************
         Generic Clock Generator Selection
        */
        alias ID = BitField!(3, 0, Mutability.rw);

        /*********************************************************************
         Source Select
        */
        final abstract class SRC
        {
            /*****************************************************************
             SRC's possible values
            */
            enum Values
            {
                /*************************************************************
                 XOSC oscillator output
                */
                XOSC = 0x0,

                /*************************************************************
                 Generator input pad
                */
                GCLKIN = 0x1,

                /*************************************************************
                 Generic clock generator 1 output
                */
                GCLKGEN1 = 0x2,

                /*************************************************************
                 OSCULP32K oscillator output
                */
                OSCULP32K = 0x3,

                /*************************************************************
                 OSC32K oscillator output
                */
                OSC32K = 0x4,

                /*************************************************************
                 XOSC32K oscillator output
                */
                XOSC32K = 0x5,

                /*************************************************************
                 OSC8M oscillator output
                */
                OSC8M = 0x6,

                /*************************************************************
                 DFLL48M output
                */
                DFLL48M = 0x7,
            }
            mixin BitFieldImplementation!(12, 8, Mutability.rw, values);
        }

        /*********************************************************************
         Generic Clock Generator Enable
        */
        alias GENEN = Bit!(16, Mutability.rw);

        /*********************************************************************
         Improve Duty Cycle
        */
        alias IDC = Bit!(17, Mutability.rw);

        /*********************************************************************
         Output Off Value
        */
        alias OOV = Bit!(18, Mutability.rw);

        /*********************************************************************
         Output Enable
        */
        alias OE = Bit!(19, Mutability.rw);

        /*********************************************************************
         Divide Selection
        */
        alias DIVSEL = Bit!(20, Mutability.rw);

        /*********************************************************************
         Run in Standby
        */
        alias RUNSTDBY = Bit!(21, Mutability.rw);
    }

    /*************************************************************************
     Generic Clock Generator Division
    */
    final abstract class GENDIV : Register!(0x8)
    {
        /*********************************************************************
         Generic Clock Generator Selection
        */
        alias ID = BitField!(3, 0, Mutability.rw);

        /*********************************************************************
         Division Factor
        */
        alias DIV = BitField!(23, 8, Mutability.rw);
    }

    /*************************************************************************
     Status
    */
    final abstract class STATUS : Register!(0x1)
    {
        /*********************************************************************
         Synchronization Busy Status
        */
        alias SYNCBUSY = Bit!(7, Mutability.r);
    }
}
