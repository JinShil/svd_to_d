module atsamd21g18a.ac;

import atsamd21g18a.mmio;

/*****************************************************************************
 Analog Comparators
*/
final abstract class AC : Peripheral!(0x42004400)
{
    /*************************************************************************
     Comparator Control n
    */
    final abstract class COMPCTRL%s : Register!(0x10)
    {
        /*********************************************************************
         Enable
        */
        alias ENABLE = Bit!(0, Mutability.rw);

        /*********************************************************************
         Single-Shot Mode
        */
        alias SINGLE = Bit!(1, Mutability.rw);

        /*********************************************************************
         Speed Selection
        */
        final abstract class SPEED
        {
            /*****************************************************************
             SPEED's possible values
            */
            enum Values
            {
                /*************************************************************
                 Low speed
                */
                LOW = 0x0,

                /*************************************************************
                 High speed
                */
                HIGH = 0x1,
            }
            mixin BitFieldImplementation!(3, 2, Mutability.rw, values);
        }

        /*********************************************************************
         Interrupt Selection
        */
        final abstract class INTSEL
        {
            /*****************************************************************
             INTSEL's possible values
            */
            enum Values
            {
                /*************************************************************
                 Interrupt on comparator output toggle
                */
                TOGGLE = 0x0,

                /*************************************************************
                 Interrupt on comparator output rising
                */
                RISING = 0x1,

                /*************************************************************
                 Interrupt on comparator output falling
                */
                FALLING = 0x2,

                /*************************************************************
                 Interrupt on end of comparison (single-shot mode only)
                */
                EOC = 0x3,
            }
            mixin BitFieldImplementation!(6, 5, Mutability.rw, values);
        }

        /*********************************************************************
         Negative Input Mux Selection
        */
        final abstract class MUXNEG
        {
            /*****************************************************************
             MUXNEG's possible values
            */
            enum Values
            {
                /*************************************************************
                 I/O pin 0
                */
                PIN0 = 0x0,

                /*************************************************************
                 I/O pin 1
                */
                PIN1 = 0x1,

                /*************************************************************
                 I/O pin 2
                */
                PIN2 = 0x2,

                /*************************************************************
                 I/O pin 3
                */
                PIN3 = 0x3,

                /*************************************************************
                 Ground
                */
                GND = 0x4,

                /*************************************************************
                 VDD scaler
                */
                VSCALE = 0x5,

                /*************************************************************
                 Internal bandgap voltage
                */
                BANDGAP = 0x6,

                /*************************************************************
                 DAC output
                */
                DAC = 0x7,
            }
            mixin BitFieldImplementation!(10, 8, Mutability.rw, values);
        }

        /*********************************************************************
         Positive Input Mux Selection
        */
        final abstract class MUXPOS
        {
            /*****************************************************************
             MUXPOS's possible values
            */
            enum Values
            {
                /*************************************************************
                 I/O pin 0
                */
                PIN0 = 0x0,

                /*************************************************************
                 I/O pin 1
                */
                PIN1 = 0x1,

                /*************************************************************
                 I/O pin 2
                */
                PIN2 = 0x2,

                /*************************************************************
                 I/O pin 3
                */
                PIN3 = 0x3,
            }
            mixin BitFieldImplementation!(13, 12, Mutability.rw, values);
        }

        /*********************************************************************
         Swap Inputs and Invert
        */
        alias SWAP = Bit!(15, Mutability.rw);

        /*********************************************************************
         Output
        */
        final abstract class OUT
        {
            /*****************************************************************
             OUT's possible values
            */
            enum Values
            {
                /*************************************************************
                 The output of COMPn is not routed to the COMPn I/O port
                */
                OFF = 0x0,

                /*************************************************************
                 The asynchronous output of COMPn is routed to the COMPn I/O port
                */
                ASYNC = 0x1,

                /*************************************************************
                 The synchronous output (including filtering) of COMPn is routed to the COMPn I/O port
                */
                SYNC = 0x2,
            }
            mixin BitFieldImplementation!(17, 16, Mutability.rw, values);
        }

        /*********************************************************************
         Hysteresis Enable
        */
        alias HYST = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter Length
        */
        final abstract class FLEN
        {
            /*****************************************************************
             FLEN's possible values
            */
            enum Values
            {
                /*************************************************************
                 No filtering
                */
                OFF = 0x0,

                /*************************************************************
                 3-bit majority function (2 of 3)
                */
                MAJ3 = 0x1,

                /*************************************************************
                 5-bit majority function (3 of 5)
                */
                MAJ5 = 0x2,
            }
            mixin BitFieldImplementation!(26, 24, Mutability.rw, values);
        }
    }

    /*************************************************************************
     Control A
    */
    final abstract class CTRLA : Register!(0x00)
    {
        /*********************************************************************
         Software Reset
        */
        alias SWRST = Bit!(0, Mutability.w);

        /*********************************************************************
         Enable
        */
        alias ENABLE = Bit!(1, Mutability.rw);

        /*********************************************************************
         Run in Standby
        */
        alias RUNSTDBY = Bit!(2, Mutability.rw);

        /*********************************************************************
         Low-Power Mux
        */
        alias LPMUX = Bit!(7, Mutability.rw);
    }

    /*************************************************************************
     Control B
    */
    final abstract class CTRLB : Register!(0x01)
    {
        /*********************************************************************
         Comparator 0 Start Comparison
        */
        alias START0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Comparator 1 Start Comparison
        */
        alias START1 = Bit!(1, Mutability.rw);
    }

    /*************************************************************************
     Event Control
    */
    final abstract class EVCTRL : Register!(0x02)
    {
        /*********************************************************************
         Comparator 0 Event Output Enable
        */
        alias COMPEO0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Comparator 1 Event Output Enable
        */
        alias COMPEO1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Window 0 Event Output Enable
        */
        alias WINEO0 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Comparator 0 Event Input
        */
        alias COMPEI0 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Comparator 1 Event Input
        */
        alias COMPEI1 = Bit!(9, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Enable Clear
    */
    final abstract class INTENCLR : Register!(0x04)
    {
        /*********************************************************************
         Comparator 0 Interrupt Enable
        */
        alias COMP0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Comparator 1 Interrupt Enable
        */
        alias COMP1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Window 0 Interrupt Enable
        */
        alias WIN0 = Bit!(4, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Enable Set
    */
    final abstract class INTENSET : Register!(0x05)
    {
        /*********************************************************************
         Comparator 0 Interrupt Enable
        */
        alias COMP0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Comparator 1 Interrupt Enable
        */
        alias COMP1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Window 0 Interrupt Enable
        */
        alias WIN0 = Bit!(4, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Flag Status and Clear
    */
    final abstract class INTFLAG : Register!(0x06)
    {
        /*********************************************************************
         Comparator 0
        */
        alias COMP0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Comparator 1
        */
        alias COMP1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Window 0
        */
        alias WIN0 = Bit!(4, Mutability.rw);
    }

    /*************************************************************************
     Scaler n
    */
    final abstract class SCALER%s : Register!(0x20)
    {
        /*********************************************************************
         Scaler Value
        */
        alias VALUE = BitField!(5, 0, Mutability.rw);
    }

    /*************************************************************************
     Status A
    */
    final abstract class STATUSA : Register!(0x08)
    {
        /*********************************************************************
         Comparator 0 Current State
        */
        alias STATE0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Comparator 1 Current State
        */
        alias STATE1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Window 0 Current State
        */
        final abstract class WSTATE0
        {
            /*****************************************************************
             WSTATE0's possible values
            */
            enum Values
            {
                /*************************************************************
                 Signal is above window
                */
                ABOVE = 0x0,

                /*************************************************************
                 Signal is inside window
                */
                INSIDE = 0x1,

                /*************************************************************
                 Signal is below window
                */
                BELOW = 0x2,
            }
            mixin BitFieldImplementation!(5, 4, Mutability.rw, values);
        }
    }

    /*************************************************************************
     Status B
    */
    final abstract class STATUSB : Register!(0x09)
    {
        /*********************************************************************
         Comparator 0 Ready
        */
        alias READY0 = Bit!(0, Mutability.r);

        /*********************************************************************
         Comparator 1 Ready
        */
        alias READY1 = Bit!(1, Mutability.r);

        /*********************************************************************
         Synchronization Busy
        */
        alias SYNCBUSY = Bit!(7, Mutability.rw);
    }

    /*************************************************************************
     Status C
    */
    final abstract class STATUSC : Register!(0x0A)
    {
        /*********************************************************************
         Comparator 0 Current State
        */
        alias STATE0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Comparator 1 Current State
        */
        alias STATE1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Window 0 Current State
        */
        final abstract class WSTATE0
        {
            /*****************************************************************
             WSTATE0's possible values
            */
            enum Values
            {
                /*************************************************************
                 Signal is above window
                */
                ABOVE = 0x0,

                /*************************************************************
                 Signal is inside window
                */
                INSIDE = 0x1,

                /*************************************************************
                 Signal is below window
                */
                BELOW = 0x2,
            }
            mixin BitFieldImplementation!(5, 4, Mutability.rw, values);
        }
    }

    /*************************************************************************
     Window Control
    */
    final abstract class WINCTRL : Register!(0x0C)
    {
        /*********************************************************************
         Window 0 Mode Enable
        */
        alias WEN0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Window 0 Interrupt Selection
        */
        final abstract class WINTSEL0
        {
            /*****************************************************************
             WINTSEL0's possible values
            */
            enum Values
            {
                /*************************************************************
                 Interrupt on signal above window
                */
                ABOVE = 0x0,

                /*************************************************************
                 Interrupt on signal inside window
                */
                INSIDE = 0x1,

                /*************************************************************
                 Interrupt on signal below window
                */
                BELOW = 0x2,

                /*************************************************************
                 Interrupt on signal outside window
                */
                OUTSIDE = 0x3,
            }
            mixin BitFieldImplementation!(2, 1, Mutability.rw, values);
        }
    }
}
