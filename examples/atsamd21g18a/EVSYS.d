module atsamd21g18a.evsys;

import atsamd21g18a.mmio;

/*****************************************************************************
 Event System Interface
*/
final abstract class EVSYS : Peripheral!(0x42000400)
{
    /*************************************************************************
     Channel
    */
    final abstract class CHANNEL : Register!(0x4)
    {
        /*********************************************************************
         Channel Selection
        */
        alias CHANNEL = BitField!(3, 0, Mutability.rw);

        /*********************************************************************
         Software Event
        */
        alias SWEVT = Bit!(8, Mutability.rw);

        /*********************************************************************
         Event Generator Selection
        */
        alias EVGEN = BitField!(22, 16, Mutability.rw);

        /*****************************************************************
         PATH's possible values
        */
        enum PATHValues
        {
            /*************************************************************
             Synchronous path
            */
            SYNCHRONOUS = 0x0,

            /*************************************************************
             Resynchronized path
            */
            RESYNCHRONIZED = 0x1,

            /*************************************************************
             Asynchronous path
            */
            ASYNCHRONOUS = 0x2,
        }

        /*********************************************************************
         Path Selection
        */
        alias PATH = BitField!(25, 24, Mutability.rw, PATHValues);

        /*****************************************************************
         EDGSEL's possible values
        */
        enum EDGSELValues
        {
            /*************************************************************
             No event output when using the resynchronized or synchronous path
            */
            NO_EVT_OUTPUT = 0x0,

            /*************************************************************
             Event detection only on the rising edge of the signal from the event generator when using the resynchronized or synchronous path
            */
            RISING_EDGE = 0x1,

            /*************************************************************
             Event detection only on the falling edge of the signal from the event generator when using the resynchronized or synchronous path
            */
            FALLING_EDGE = 0x2,

            /*************************************************************
             Event detection on rising and falling edges of the signal from the event generator when using the resynchronized or synchronous path
            */
            BOTH_EDGES = 0x3,
        }

        /*********************************************************************
         Edge Detection Selection
        */
        alias EDGSEL = BitField!(27, 26, Mutability.rw, EDGSELValues);
    }

    /*************************************************************************
     Channel Status
    */
    final abstract class CHSTATUS : Register!(0xc)
    {
        /*********************************************************************
         Channel 0 User Ready
        */
        alias USRRDY0 = Bit!(0, Mutability.r);

        /*********************************************************************
         Channel 1 User Ready
        */
        alias USRRDY1 = Bit!(1, Mutability.r);

        /*********************************************************************
         Channel 2 User Ready
        */
        alias USRRDY2 = Bit!(2, Mutability.r);

        /*********************************************************************
         Channel 3 User Ready
        */
        alias USRRDY3 = Bit!(3, Mutability.r);

        /*********************************************************************
         Channel 4 User Ready
        */
        alias USRRDY4 = Bit!(4, Mutability.r);

        /*********************************************************************
         Channel 5 User Ready
        */
        alias USRRDY5 = Bit!(5, Mutability.r);

        /*********************************************************************
         Channel 6 User Ready
        */
        alias USRRDY6 = Bit!(6, Mutability.r);

        /*********************************************************************
         Channel 7 User Ready
        */
        alias USRRDY7 = Bit!(7, Mutability.r);

        /*********************************************************************
         Channel 0 Busy
        */
        alias CHBUSY0 = Bit!(8, Mutability.r);

        /*********************************************************************
         Channel 1 Busy
        */
        alias CHBUSY1 = Bit!(9, Mutability.r);

        /*********************************************************************
         Channel 2 Busy
        */
        alias CHBUSY2 = Bit!(10, Mutability.r);

        /*********************************************************************
         Channel 3 Busy
        */
        alias CHBUSY3 = Bit!(11, Mutability.r);

        /*********************************************************************
         Channel 4 Busy
        */
        alias CHBUSY4 = Bit!(12, Mutability.r);

        /*********************************************************************
         Channel 5 Busy
        */
        alias CHBUSY5 = Bit!(13, Mutability.r);

        /*********************************************************************
         Channel 6 Busy
        */
        alias CHBUSY6 = Bit!(14, Mutability.r);

        /*********************************************************************
         Channel 7 Busy
        */
        alias CHBUSY7 = Bit!(15, Mutability.r);

        /*********************************************************************
         Channel 8 User Ready
        */
        alias USRRDY8 = Bit!(16, Mutability.r);

        /*********************************************************************
         Channel 9 User Ready
        */
        alias USRRDY9 = Bit!(17, Mutability.r);

        /*********************************************************************
         Channel 10 User Ready
        */
        alias USRRDY10 = Bit!(18, Mutability.r);

        /*********************************************************************
         Channel 11 User Ready
        */
        alias USRRDY11 = Bit!(19, Mutability.r);

        /*********************************************************************
         Channel 8 Busy
        */
        alias CHBUSY8 = Bit!(24, Mutability.r);

        /*********************************************************************
         Channel 9 Busy
        */
        alias CHBUSY9 = Bit!(25, Mutability.r);

        /*********************************************************************
         Channel 10 Busy
        */
        alias CHBUSY10 = Bit!(26, Mutability.r);

        /*********************************************************************
         Channel 11 Busy
        */
        alias CHBUSY11 = Bit!(27, Mutability.r);
    }

    /*************************************************************************
     Control
    */
    final abstract class CTRL : Register!(00)
    {
        /*********************************************************************
         Software Reset
        */
        alias SWRST = Bit!(0, Mutability.w);

        /*********************************************************************
         Generic Clock Requests
        */
        alias GCLKREQ = Bit!(4, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Enable Clear
    */
    final abstract class INTENCLR : Register!(0x10)
    {
        /*********************************************************************
         Channel 0 Overrun Interrupt Enable
        */
        alias OVR0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Channel 1 Overrun Interrupt Enable
        */
        alias OVR1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Channel 2 Overrun Interrupt Enable
        */
        alias OVR2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Channel 3 Overrun Interrupt Enable
        */
        alias OVR3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Channel 4 Overrun Interrupt Enable
        */
        alias OVR4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Channel 5 Overrun Interrupt Enable
        */
        alias OVR5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Channel 6 Overrun Interrupt Enable
        */
        alias OVR6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Channel 7 Overrun Interrupt Enable
        */
        alias OVR7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Channel 0 Event Detection Interrupt Enable
        */
        alias EVD0 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Channel 1 Event Detection Interrupt Enable
        */
        alias EVD1 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Channel 2 Event Detection Interrupt Enable
        */
        alias EVD2 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Channel 3 Event Detection Interrupt Enable
        */
        alias EVD3 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Channel 4 Event Detection Interrupt Enable
        */
        alias EVD4 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Channel 5 Event Detection Interrupt Enable
        */
        alias EVD5 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Channel 6 Event Detection Interrupt Enable
        */
        alias EVD6 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Channel 7 Event Detection Interrupt Enable
        */
        alias EVD7 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Channel 8 Overrun Interrupt Enable
        */
        alias OVR8 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Channel 9 Overrun Interrupt Enable
        */
        alias OVR9 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Channel 10 Overrun Interrupt Enable
        */
        alias OVR10 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Channel 11 Overrun Interrupt Enable
        */
        alias OVR11 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Channel 8 Event Detection Interrupt Enable
        */
        alias EVD8 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Channel 9 Event Detection Interrupt Enable
        */
        alias EVD9 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Channel 10 Event Detection Interrupt Enable
        */
        alias EVD10 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Channel 11 Event Detection Interrupt Enable
        */
        alias EVD11 = Bit!(27, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Enable Set
    */
    final abstract class INTENSET : Register!(0x14)
    {
        /*********************************************************************
         Channel 0 Overrun Interrupt Enable
        */
        alias OVR0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Channel 1 Overrun Interrupt Enable
        */
        alias OVR1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Channel 2 Overrun Interrupt Enable
        */
        alias OVR2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Channel 3 Overrun Interrupt Enable
        */
        alias OVR3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Channel 4 Overrun Interrupt Enable
        */
        alias OVR4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Channel 5 Overrun Interrupt Enable
        */
        alias OVR5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Channel 6 Overrun Interrupt Enable
        */
        alias OVR6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Channel 7 Overrun Interrupt Enable
        */
        alias OVR7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Channel 0 Event Detection Interrupt Enable
        */
        alias EVD0 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Channel 1 Event Detection Interrupt Enable
        */
        alias EVD1 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Channel 2 Event Detection Interrupt Enable
        */
        alias EVD2 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Channel 3 Event Detection Interrupt Enable
        */
        alias EVD3 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Channel 4 Event Detection Interrupt Enable
        */
        alias EVD4 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Channel 5 Event Detection Interrupt Enable
        */
        alias EVD5 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Channel 6 Event Detection Interrupt Enable
        */
        alias EVD6 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Channel 7 Event Detection Interrupt Enable
        */
        alias EVD7 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Channel 8 Overrun Interrupt Enable
        */
        alias OVR8 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Channel 9 Overrun Interrupt Enable
        */
        alias OVR9 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Channel 10 Overrun Interrupt Enable
        */
        alias OVR10 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Channel 11 Overrun Interrupt Enable
        */
        alias OVR11 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Channel 8 Event Detection Interrupt Enable
        */
        alias EVD8 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Channel 9 Event Detection Interrupt Enable
        */
        alias EVD9 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Channel 10 Event Detection Interrupt Enable
        */
        alias EVD10 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Channel 11 Event Detection Interrupt Enable
        */
        alias EVD11 = Bit!(27, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Flag Status and Clear
    */
    final abstract class INTFLAG : Register!(0x18)
    {
        /*********************************************************************
         Channel 0 Overrun
        */
        alias OVR0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Channel 1 Overrun
        */
        alias OVR1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Channel 2 Overrun
        */
        alias OVR2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Channel 3 Overrun
        */
        alias OVR3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Channel 4 Overrun
        */
        alias OVR4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Channel 5 Overrun
        */
        alias OVR5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Channel 6 Overrun
        */
        alias OVR6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Channel 7 Overrun
        */
        alias OVR7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Channel 0 Event Detection
        */
        alias EVD0 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Channel 1 Event Detection
        */
        alias EVD1 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Channel 2 Event Detection
        */
        alias EVD2 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Channel 3 Event Detection
        */
        alias EVD3 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Channel 4 Event Detection
        */
        alias EVD4 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Channel 5 Event Detection
        */
        alias EVD5 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Channel 6 Event Detection
        */
        alias EVD6 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Channel 7 Event Detection
        */
        alias EVD7 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Channel 8 Overrun
        */
        alias OVR8 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Channel 9 Overrun
        */
        alias OVR9 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Channel 10 Overrun
        */
        alias OVR10 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Channel 11 Overrun
        */
        alias OVR11 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Channel 8 Event Detection
        */
        alias EVD8 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Channel 9 Event Detection
        */
        alias EVD9 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Channel 10 Event Detection
        */
        alias EVD10 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Channel 11 Event Detection
        */
        alias EVD11 = Bit!(27, Mutability.rw);
    }

    /*************************************************************************
     User Multiplexer
    */
    final abstract class USER : Register!(0x8)
    {
        /*********************************************************************
         User Multiplexer Selection
        */
        alias USER = BitField!(4, 0, Mutability.rw);

        /*****************************************************************
         CHANNEL's possible values
        */
        enum CHANNELValues
        {
            /*************************************************************
             No Channel Output Selected
            */
            _0 = 0x0,
        }

        /*********************************************************************
         Channel Event Selection
        */
        alias CHANNEL = BitField!(12, 8, Mutability.rw, CHANNELValues);
    }
}
