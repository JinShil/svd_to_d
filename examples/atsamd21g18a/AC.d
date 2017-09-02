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
    final abstract class COMPCTRL1 : Register!(0x10)
    {
        /*********************************************************************
         Enable
        */
        alias ENABLE = Bit!(0, Mutability.rw);

        /*********************************************************************
         Single-Shot Mode
        */
        alias SINGLE = Bit!(1, Mutability.rw);

        /*****************************************************************
         SPEED's possible values
        */
        enum SPEEDValues
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

        /*********************************************************************
         Speed Selection
        */
        alias SPEED = BitField!(3, 2, Mutability.rw, SPEEDValues);

        /*****************************************************************
         INTSEL's possible values
        */
        enum INTSELValues
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

        /*********************************************************************
         Interrupt Selection
        */
        alias INTSEL = BitField!(6, 5, Mutability.rw, INTSELValues);

        /*****************************************************************
         MUXNEG's possible values
        */
        enum MUXNEGValues
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

        /*********************************************************************
         Negative Input Mux Selection
        */
        alias MUXNEG = BitField!(10, 8, Mutability.rw, MUXNEGValues);

        /*****************************************************************
         MUXPOS's possible values
        */
        enum MUXPOSValues
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

        /*********************************************************************
         Positive Input Mux Selection
        */
        alias MUXPOS = BitField!(13, 12, Mutability.rw, MUXPOSValues);

        /*********************************************************************
         Swap Inputs and Invert
        */
        alias SWAP = Bit!(15, Mutability.rw);

        /*****************************************************************
         OUT's possible values
        */
        enum OUTValues
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

        /*********************************************************************
         Output
        */
        alias OUT = BitField!(17, 16, Mutability.rw, OUTValues);

        /*********************************************************************
         Hysteresis Enable
        */
        alias HYST = Bit!(19, Mutability.rw);

        /*****************************************************************
         FLEN's possible values
        */
        enum FLENValues
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

        /*********************************************************************
         Filter Length
        */
        alias FLEN = BitField!(26, 24, Mutability.rw, FLENValues);
    }
    /*************************************************************************
     Comparator Control n
    */
    final abstract class COMPCTRL2 : Register!(0x14)
    {
        /*********************************************************************
         Enable
        */
        alias ENABLE = Bit!(0, Mutability.rw);

        /*********************************************************************
         Single-Shot Mode
        */
        alias SINGLE = Bit!(1, Mutability.rw);

        /*****************************************************************
         SPEED's possible values
        */
        enum SPEEDValues
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

        /*********************************************************************
         Speed Selection
        */
        alias SPEED = BitField!(3, 2, Mutability.rw, SPEEDValues);

        /*****************************************************************
         INTSEL's possible values
        */
        enum INTSELValues
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

        /*********************************************************************
         Interrupt Selection
        */
        alias INTSEL = BitField!(6, 5, Mutability.rw, INTSELValues);

        /*****************************************************************
         MUXNEG's possible values
        */
        enum MUXNEGValues
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

        /*********************************************************************
         Negative Input Mux Selection
        */
        alias MUXNEG = BitField!(10, 8, Mutability.rw, MUXNEGValues);

        /*****************************************************************
         MUXPOS's possible values
        */
        enum MUXPOSValues
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

        /*********************************************************************
         Positive Input Mux Selection
        */
        alias MUXPOS = BitField!(13, 12, Mutability.rw, MUXPOSValues);

        /*********************************************************************
         Swap Inputs and Invert
        */
        alias SWAP = Bit!(15, Mutability.rw);

        /*****************************************************************
         OUT's possible values
        */
        enum OUTValues
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

        /*********************************************************************
         Output
        */
        alias OUT = BitField!(17, 16, Mutability.rw, OUTValues);

        /*********************************************************************
         Hysteresis Enable
        */
        alias HYST = Bit!(19, Mutability.rw);

        /*****************************************************************
         FLEN's possible values
        */
        enum FLENValues
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

        /*********************************************************************
         Filter Length
        */
        alias FLEN = BitField!(26, 24, Mutability.rw, FLENValues);
    }

    /*************************************************************************
     Control A
    */
    final abstract class CTRLA : Register!(00)
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
    final abstract class CTRLB : Register!(0x1)
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
    final abstract class EVCTRL : Register!(0x2)
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
    final abstract class INTENCLR : Register!(0x4)
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
    final abstract class INTENSET : Register!(0x5)
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
    final abstract class INTFLAG : Register!(0x6)
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
    final abstract class SCALER1 : Register!(0x20)
    {
        /*********************************************************************
         Scaler Value
        */
        alias VALUE = BitField!(5, 0, Mutability.rw);
    }
    /*************************************************************************
     Scaler n
    */
    final abstract class SCALER2 : Register!(0x21)
    {
        /*********************************************************************
         Scaler Value
        */
        alias VALUE = BitField!(5, 0, Mutability.rw);
    }

    /*************************************************************************
     Status A
    */
    final abstract class STATUSA : Register!(0x8)
    {
        /*********************************************************************
         Comparator 0 Current State
        */
        alias STATE0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Comparator 1 Current State
        */
        alias STATE1 = Bit!(1, Mutability.rw);

        /*****************************************************************
         WSTATE0's possible values
        */
        enum WSTATE0Values
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

        /*********************************************************************
         Window 0 Current State
        */
        alias WSTATE0 = BitField!(5, 4, Mutability.rw, WSTATE0Values);
    }

    /*************************************************************************
     Status B
    */
    final abstract class STATUSB : Register!(0x9)
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
    final abstract class STATUSC : Register!(0xa)
    {
        /*********************************************************************
         Comparator 0 Current State
        */
        alias STATE0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Comparator 1 Current State
        */
        alias STATE1 = Bit!(1, Mutability.rw);

        /*****************************************************************
         WSTATE0's possible values
        */
        enum WSTATE0Values
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

        /*********************************************************************
         Window 0 Current State
        */
        alias WSTATE0 = BitField!(5, 4, Mutability.rw, WSTATE0Values);
    }

    /*************************************************************************
     Window Control
    */
    final abstract class WINCTRL : Register!(0xc)
    {
        /*********************************************************************
         Window 0 Mode Enable
        */
        alias WEN0 = Bit!(0, Mutability.rw);

        /*****************************************************************
         WINTSEL0's possible values
        */
        enum WINTSEL0Values
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

        /*********************************************************************
         Window 0 Interrupt Selection
        */
        alias WINTSEL0 = BitField!(2, 1, Mutability.rw, WINTSEL0Values);
    }
}
