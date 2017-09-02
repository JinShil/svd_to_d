module atsamd21g18a.eic;

import atsamd21g18a.mmio;

/*****************************************************************************
 External Interrupt Controller
*/
final abstract class EIC : Peripheral!(0x40001800)
{
    /*************************************************************************
     Configuration n
    */
    final abstract class CONFIG1 : Register!(0x18)
    {
        /*****************************************************************
         SENSE0's possible values
        */
        enum SENSE0Values
        {
            /*************************************************************
             No detection
            */
            NONE = 0x0,

            /*************************************************************
             Rising-edge detection
            */
            RISE = 0x1,

            /*************************************************************
             Falling-edge detection
            */
            FALL = 0x2,

            /*************************************************************
             Both-edges detection
            */
            BOTH = 0x3,

            /*************************************************************
             High-level detection
            */
            HIGH = 0x4,

            /*************************************************************
             Low-level detection
            */
            LOW = 0x5,
        }

        /*********************************************************************
         Input Sense n Configuration
        */
        alias SENSE0 = BitField!(2, 0, Mutability.rw, SENSE0Values);

        /*********************************************************************
         Filter n Enable
        */
        alias FILTEN0 = Bit!(3, Mutability.rw);

        /*****************************************************************
         SENSE1's possible values
        */
        enum SENSE1Values
        {
            /*************************************************************
             No detection
            */
            NONE = 0x0,

            /*************************************************************
             Rising edge detection
            */
            RISE = 0x1,

            /*************************************************************
             Falling edge detection
            */
            FALL = 0x2,

            /*************************************************************
             Both edges detection
            */
            BOTH = 0x3,

            /*************************************************************
             High level detection
            */
            HIGH = 0x4,

            /*************************************************************
             Low level detection
            */
            LOW = 0x5,
        }

        /*********************************************************************
         Input Sense 1 Configuration
        */
        alias SENSE1 = BitField!(6, 4, Mutability.rw, SENSE1Values);

        /*********************************************************************
         Filter 1 Enable
        */
        alias FILTEN1 = Bit!(7, Mutability.rw);

        /*****************************************************************
         SENSE2's possible values
        */
        enum SENSE2Values
        {
            /*************************************************************
             No detection
            */
            NONE = 0x0,

            /*************************************************************
             Rising edge detection
            */
            RISE = 0x1,

            /*************************************************************
             Falling edge detection
            */
            FALL = 0x2,

            /*************************************************************
             Both edges detection
            */
            BOTH = 0x3,

            /*************************************************************
             High level detection
            */
            HIGH = 0x4,

            /*************************************************************
             Low level detection
            */
            LOW = 0x5,
        }

        /*********************************************************************
         Input Sense 2 Configuration
        */
        alias SENSE2 = BitField!(10, 8, Mutability.rw, SENSE2Values);

        /*********************************************************************
         Filter 2 Enable
        */
        alias FILTEN2 = Bit!(11, Mutability.rw);

        /*****************************************************************
         SENSE3's possible values
        */
        enum SENSE3Values
        {
            /*************************************************************
             No detection
            */
            NONE = 0x0,

            /*************************************************************
             Rising edge detection
            */
            RISE = 0x1,

            /*************************************************************
             Falling edge detection
            */
            FALL = 0x2,

            /*************************************************************
             Both edges detection
            */
            BOTH = 0x3,

            /*************************************************************
             High level detection
            */
            HIGH = 0x4,

            /*************************************************************
             Low level detection
            */
            LOW = 0x5,
        }

        /*********************************************************************
         Input Sense 3 Configuration
        */
        alias SENSE3 = BitField!(14, 12, Mutability.rw, SENSE3Values);

        /*********************************************************************
         Filter 3 Enable
        */
        alias FILTEN3 = Bit!(15, Mutability.rw);

        /*****************************************************************
         SENSE4's possible values
        */
        enum SENSE4Values
        {
            /*************************************************************
             No detection
            */
            NONE = 0x0,

            /*************************************************************
             Rising edge detection
            */
            RISE = 0x1,

            /*************************************************************
             Falling edge detection
            */
            FALL = 0x2,

            /*************************************************************
             Both edges detection
            */
            BOTH = 0x3,

            /*************************************************************
             High level detection
            */
            HIGH = 0x4,

            /*************************************************************
             Low level detection
            */
            LOW = 0x5,
        }

        /*********************************************************************
         Input Sense 4 Configuration
        */
        alias SENSE4 = BitField!(18, 16, Mutability.rw, SENSE4Values);

        /*********************************************************************
         Filter 4 Enable
        */
        alias FILTEN4 = Bit!(19, Mutability.rw);

        /*****************************************************************
         SENSE5's possible values
        */
        enum SENSE5Values
        {
            /*************************************************************
             No detection
            */
            NONE = 0x0,

            /*************************************************************
             Rising edge detection
            */
            RISE = 0x1,

            /*************************************************************
             Falling edge detection
            */
            FALL = 0x2,

            /*************************************************************
             Both edges detection
            */
            BOTH = 0x3,

            /*************************************************************
             High level detection
            */
            HIGH = 0x4,

            /*************************************************************
             Low level detection
            */
            LOW = 0x5,
        }

        /*********************************************************************
         Input Sense 5 Configuration
        */
        alias SENSE5 = BitField!(22, 20, Mutability.rw, SENSE5Values);

        /*********************************************************************
         Filter 5 Enable
        */
        alias FILTEN5 = Bit!(23, Mutability.rw);

        /*****************************************************************
         SENSE6's possible values
        */
        enum SENSE6Values
        {
            /*************************************************************
             No detection
            */
            NONE = 0x0,

            /*************************************************************
             Rising edge detection
            */
            RISE = 0x1,

            /*************************************************************
             Falling edge detection
            */
            FALL = 0x2,

            /*************************************************************
             Both edges detection
            */
            BOTH = 0x3,

            /*************************************************************
             High level detection
            */
            HIGH = 0x4,

            /*************************************************************
             Low level detection
            */
            LOW = 0x5,
        }

        /*********************************************************************
         Input Sense 6 Configuration
        */
        alias SENSE6 = BitField!(26, 24, Mutability.rw, SENSE6Values);

        /*********************************************************************
         Filter 6 Enable
        */
        alias FILTEN6 = Bit!(27, Mutability.rw);

        /*****************************************************************
         SENSE7's possible values
        */
        enum SENSE7Values
        {
            /*************************************************************
             No detection
            */
            NONE = 0x0,

            /*************************************************************
             Rising edge detection
            */
            RISE = 0x1,

            /*************************************************************
             Falling edge detection
            */
            FALL = 0x2,

            /*************************************************************
             Both edges detection
            */
            BOTH = 0x3,

            /*************************************************************
             High level detection
            */
            HIGH = 0x4,

            /*************************************************************
             Low level detection
            */
            LOW = 0x5,
        }

        /*********************************************************************
         Input Sense 7 Configuration
        */
        alias SENSE7 = BitField!(30, 28, Mutability.rw, SENSE7Values);

        /*********************************************************************
         Filter 7 Enable
        */
        alias FILTEN7 = Bit!(31, Mutability.rw);
    }
    /*************************************************************************
     Configuration n
    */
    final abstract class CONFIG2 : Register!(0x1c)
    {
        /*****************************************************************
         SENSE0's possible values
        */
        enum SENSE0Values
        {
            /*************************************************************
             No detection
            */
            NONE = 0x0,

            /*************************************************************
             Rising-edge detection
            */
            RISE = 0x1,

            /*************************************************************
             Falling-edge detection
            */
            FALL = 0x2,

            /*************************************************************
             Both-edges detection
            */
            BOTH = 0x3,

            /*************************************************************
             High-level detection
            */
            HIGH = 0x4,

            /*************************************************************
             Low-level detection
            */
            LOW = 0x5,
        }

        /*********************************************************************
         Input Sense n Configuration
        */
        alias SENSE0 = BitField!(2, 0, Mutability.rw, SENSE0Values);

        /*********************************************************************
         Filter n Enable
        */
        alias FILTEN0 = Bit!(3, Mutability.rw);

        /*****************************************************************
         SENSE1's possible values
        */
        enum SENSE1Values
        {
            /*************************************************************
             No detection
            */
            NONE = 0x0,

            /*************************************************************
             Rising edge detection
            */
            RISE = 0x1,

            /*************************************************************
             Falling edge detection
            */
            FALL = 0x2,

            /*************************************************************
             Both edges detection
            */
            BOTH = 0x3,

            /*************************************************************
             High level detection
            */
            HIGH = 0x4,

            /*************************************************************
             Low level detection
            */
            LOW = 0x5,
        }

        /*********************************************************************
         Input Sense 1 Configuration
        */
        alias SENSE1 = BitField!(6, 4, Mutability.rw, SENSE1Values);

        /*********************************************************************
         Filter 1 Enable
        */
        alias FILTEN1 = Bit!(7, Mutability.rw);

        /*****************************************************************
         SENSE2's possible values
        */
        enum SENSE2Values
        {
            /*************************************************************
             No detection
            */
            NONE = 0x0,

            /*************************************************************
             Rising edge detection
            */
            RISE = 0x1,

            /*************************************************************
             Falling edge detection
            */
            FALL = 0x2,

            /*************************************************************
             Both edges detection
            */
            BOTH = 0x3,

            /*************************************************************
             High level detection
            */
            HIGH = 0x4,

            /*************************************************************
             Low level detection
            */
            LOW = 0x5,
        }

        /*********************************************************************
         Input Sense 2 Configuration
        */
        alias SENSE2 = BitField!(10, 8, Mutability.rw, SENSE2Values);

        /*********************************************************************
         Filter 2 Enable
        */
        alias FILTEN2 = Bit!(11, Mutability.rw);

        /*****************************************************************
         SENSE3's possible values
        */
        enum SENSE3Values
        {
            /*************************************************************
             No detection
            */
            NONE = 0x0,

            /*************************************************************
             Rising edge detection
            */
            RISE = 0x1,

            /*************************************************************
             Falling edge detection
            */
            FALL = 0x2,

            /*************************************************************
             Both edges detection
            */
            BOTH = 0x3,

            /*************************************************************
             High level detection
            */
            HIGH = 0x4,

            /*************************************************************
             Low level detection
            */
            LOW = 0x5,
        }

        /*********************************************************************
         Input Sense 3 Configuration
        */
        alias SENSE3 = BitField!(14, 12, Mutability.rw, SENSE3Values);

        /*********************************************************************
         Filter 3 Enable
        */
        alias FILTEN3 = Bit!(15, Mutability.rw);

        /*****************************************************************
         SENSE4's possible values
        */
        enum SENSE4Values
        {
            /*************************************************************
             No detection
            */
            NONE = 0x0,

            /*************************************************************
             Rising edge detection
            */
            RISE = 0x1,

            /*************************************************************
             Falling edge detection
            */
            FALL = 0x2,

            /*************************************************************
             Both edges detection
            */
            BOTH = 0x3,

            /*************************************************************
             High level detection
            */
            HIGH = 0x4,

            /*************************************************************
             Low level detection
            */
            LOW = 0x5,
        }

        /*********************************************************************
         Input Sense 4 Configuration
        */
        alias SENSE4 = BitField!(18, 16, Mutability.rw, SENSE4Values);

        /*********************************************************************
         Filter 4 Enable
        */
        alias FILTEN4 = Bit!(19, Mutability.rw);

        /*****************************************************************
         SENSE5's possible values
        */
        enum SENSE5Values
        {
            /*************************************************************
             No detection
            */
            NONE = 0x0,

            /*************************************************************
             Rising edge detection
            */
            RISE = 0x1,

            /*************************************************************
             Falling edge detection
            */
            FALL = 0x2,

            /*************************************************************
             Both edges detection
            */
            BOTH = 0x3,

            /*************************************************************
             High level detection
            */
            HIGH = 0x4,

            /*************************************************************
             Low level detection
            */
            LOW = 0x5,
        }

        /*********************************************************************
         Input Sense 5 Configuration
        */
        alias SENSE5 = BitField!(22, 20, Mutability.rw, SENSE5Values);

        /*********************************************************************
         Filter 5 Enable
        */
        alias FILTEN5 = Bit!(23, Mutability.rw);

        /*****************************************************************
         SENSE6's possible values
        */
        enum SENSE6Values
        {
            /*************************************************************
             No detection
            */
            NONE = 0x0,

            /*************************************************************
             Rising edge detection
            */
            RISE = 0x1,

            /*************************************************************
             Falling edge detection
            */
            FALL = 0x2,

            /*************************************************************
             Both edges detection
            */
            BOTH = 0x3,

            /*************************************************************
             High level detection
            */
            HIGH = 0x4,

            /*************************************************************
             Low level detection
            */
            LOW = 0x5,
        }

        /*********************************************************************
         Input Sense 6 Configuration
        */
        alias SENSE6 = BitField!(26, 24, Mutability.rw, SENSE6Values);

        /*********************************************************************
         Filter 6 Enable
        */
        alias FILTEN6 = Bit!(27, Mutability.rw);

        /*****************************************************************
         SENSE7's possible values
        */
        enum SENSE7Values
        {
            /*************************************************************
             No detection
            */
            NONE = 0x0,

            /*************************************************************
             Rising edge detection
            */
            RISE = 0x1,

            /*************************************************************
             Falling edge detection
            */
            FALL = 0x2,

            /*************************************************************
             Both edges detection
            */
            BOTH = 0x3,

            /*************************************************************
             High level detection
            */
            HIGH = 0x4,

            /*************************************************************
             Low level detection
            */
            LOW = 0x5,
        }

        /*********************************************************************
         Input Sense 7 Configuration
        */
        alias SENSE7 = BitField!(30, 28, Mutability.rw, SENSE7Values);

        /*********************************************************************
         Filter 7 Enable
        */
        alias FILTEN7 = Bit!(31, Mutability.rw);
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

        /*********************************************************************
         Enable
        */
        alias ENABLE = Bit!(1, Mutability.rw);
    }

    /*************************************************************************
     Event Control
    */
    final abstract class EVCTRL : Register!(0x4)
    {
        /*********************************************************************
         External Interrupt 0 Event Output Enable
        */
        alias EXTINTEO0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         External Interrupt 1 Event Output Enable
        */
        alias EXTINTEO1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         External Interrupt 2 Event Output Enable
        */
        alias EXTINTEO2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         External Interrupt 3 Event Output Enable
        */
        alias EXTINTEO3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         External Interrupt 4 Event Output Enable
        */
        alias EXTINTEO4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         External Interrupt 5 Event Output Enable
        */
        alias EXTINTEO5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         External Interrupt 6 Event Output Enable
        */
        alias EXTINTEO6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         External Interrupt 7 Event Output Enable
        */
        alias EXTINTEO7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         External Interrupt 8 Event Output Enable
        */
        alias EXTINTEO8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         External Interrupt 9 Event Output Enable
        */
        alias EXTINTEO9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         External Interrupt 10 Event Output Enable
        */
        alias EXTINTEO10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         External Interrupt 11 Event Output Enable
        */
        alias EXTINTEO11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         External Interrupt 12 Event Output Enable
        */
        alias EXTINTEO12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         External Interrupt 13 Event Output Enable
        */
        alias EXTINTEO13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         External Interrupt 14 Event Output Enable
        */
        alias EXTINTEO14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         External Interrupt 15 Event Output Enable
        */
        alias EXTINTEO15 = Bit!(15, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Enable Clear
    */
    final abstract class INTENCLR : Register!(0x8)
    {
        /*********************************************************************
         External Interrupt 0 Enable
        */
        alias EXTINT0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         External Interrupt 1 Enable
        */
        alias EXTINT1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         External Interrupt 2 Enable
        */
        alias EXTINT2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         External Interrupt 3 Enable
        */
        alias EXTINT3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         External Interrupt 4 Enable
        */
        alias EXTINT4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         External Interrupt 5 Enable
        */
        alias EXTINT5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         External Interrupt 6 Enable
        */
        alias EXTINT6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         External Interrupt 7 Enable
        */
        alias EXTINT7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         External Interrupt 8 Enable
        */
        alias EXTINT8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         External Interrupt 9 Enable
        */
        alias EXTINT9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         External Interrupt 10 Enable
        */
        alias EXTINT10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         External Interrupt 11 Enable
        */
        alias EXTINT11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         External Interrupt 12 Enable
        */
        alias EXTINT12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         External Interrupt 13 Enable
        */
        alias EXTINT13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         External Interrupt 14 Enable
        */
        alias EXTINT14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         External Interrupt 15 Enable
        */
        alias EXTINT15 = Bit!(15, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Enable Set
    */
    final abstract class INTENSET : Register!(0xc)
    {
        /*********************************************************************
         External Interrupt 0 Enable
        */
        alias EXTINT0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         External Interrupt 1 Enable
        */
        alias EXTINT1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         External Interrupt 2 Enable
        */
        alias EXTINT2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         External Interrupt 3 Enable
        */
        alias EXTINT3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         External Interrupt 4 Enable
        */
        alias EXTINT4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         External Interrupt 5 Enable
        */
        alias EXTINT5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         External Interrupt 6 Enable
        */
        alias EXTINT6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         External Interrupt 7 Enable
        */
        alias EXTINT7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         External Interrupt 8 Enable
        */
        alias EXTINT8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         External Interrupt 9 Enable
        */
        alias EXTINT9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         External Interrupt 10 Enable
        */
        alias EXTINT10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         External Interrupt 11 Enable
        */
        alias EXTINT11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         External Interrupt 12 Enable
        */
        alias EXTINT12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         External Interrupt 13 Enable
        */
        alias EXTINT13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         External Interrupt 14 Enable
        */
        alias EXTINT14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         External Interrupt 15 Enable
        */
        alias EXTINT15 = Bit!(15, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Flag Status and Clear
    */
    final abstract class INTFLAG : Register!(0x10)
    {
        /*********************************************************************
         External Interrupt 0
        */
        alias EXTINT0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         External Interrupt 1
        */
        alias EXTINT1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         External Interrupt 2
        */
        alias EXTINT2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         External Interrupt 3
        */
        alias EXTINT3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         External Interrupt 4
        */
        alias EXTINT4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         External Interrupt 5
        */
        alias EXTINT5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         External Interrupt 6
        */
        alias EXTINT6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         External Interrupt 7
        */
        alias EXTINT7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         External Interrupt 8
        */
        alias EXTINT8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         External Interrupt 9
        */
        alias EXTINT9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         External Interrupt 10
        */
        alias EXTINT10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         External Interrupt 11
        */
        alias EXTINT11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         External Interrupt 12
        */
        alias EXTINT12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         External Interrupt 13
        */
        alias EXTINT13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         External Interrupt 14
        */
        alias EXTINT14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         External Interrupt 15
        */
        alias EXTINT15 = Bit!(15, Mutability.rw);
    }

    /*************************************************************************
     Non-Maskable Interrupt Control
    */
    final abstract class NMICTRL : Register!(0x2)
    {
        /*****************************************************************
         NMISENSE's possible values
        */
        enum NMISENSEValues
        {
            /*************************************************************
             No detection
            */
            NONE = 0x0,

            /*************************************************************
             Rising-edge detection
            */
            RISE = 0x1,

            /*************************************************************
             Falling-edge detection
            */
            FALL = 0x2,

            /*************************************************************
             Both-edges detection
            */
            BOTH = 0x3,

            /*************************************************************
             High-level detection
            */
            HIGH = 0x4,

            /*************************************************************
             Low-level detection
            */
            LOW = 0x5,
        }

        /*********************************************************************
         Non-Maskable Interrupt Sense
        */
        alias NMISENSE = BitField!(2, 0, Mutability.rw, NMISENSEValues);

        /*********************************************************************
         Non-Maskable Interrupt Filter Enable
        */
        alias NMIFILTEN = Bit!(3, Mutability.rw);
    }

    /*************************************************************************
     Non-Maskable Interrupt Flag Status and Clear
    */
    final abstract class NMIFLAG : Register!(0x3)
    {
        /*********************************************************************
         Non-Maskable Interrupt
        */
        alias NMI = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     Status
    */
    final abstract class STATUS : Register!(0x1)
    {
        /*********************************************************************
         Synchronization Busy
        */
        alias SYNCBUSY = Bit!(7, Mutability.r);
    }

    /*************************************************************************
     Wake-Up Enable
    */
    final abstract class WAKEUP : Register!(0x14)
    {
        /*********************************************************************
         External Interrupt 0 Wake-up Enable
        */
        alias WAKEUPEN0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         External Interrupt 1 Wake-up Enable
        */
        alias WAKEUPEN1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         External Interrupt 2 Wake-up Enable
        */
        alias WAKEUPEN2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         External Interrupt 3 Wake-up Enable
        */
        alias WAKEUPEN3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         External Interrupt 4 Wake-up Enable
        */
        alias WAKEUPEN4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         External Interrupt 5 Wake-up Enable
        */
        alias WAKEUPEN5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         External Interrupt 6 Wake-up Enable
        */
        alias WAKEUPEN6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         External Interrupt 7 Wake-up Enable
        */
        alias WAKEUPEN7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         External Interrupt 8 Wake-up Enable
        */
        alias WAKEUPEN8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         External Interrupt 9 Wake-up Enable
        */
        alias WAKEUPEN9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         External Interrupt 10 Wake-up Enable
        */
        alias WAKEUPEN10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         External Interrupt 11 Wake-up Enable
        */
        alias WAKEUPEN11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         External Interrupt 12 Wake-up Enable
        */
        alias WAKEUPEN12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         External Interrupt 13 Wake-up Enable
        */
        alias WAKEUPEN13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         External Interrupt 14 Wake-up Enable
        */
        alias WAKEUPEN14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         External Interrupt 15 Wake-up Enable
        */
        alias WAKEUPEN15 = Bit!(15, Mutability.rw);
    }
}
