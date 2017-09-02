module atsamd21g18a.rtc;

import atsamd21g18a.mmio;

/*****************************************************************************
 Real-Time Counter
*/
final abstract class RTC : Peripheral!(0x40001400)
{
    /*****************************************************************************
     32-bit Counter with Single 32-bit Compare
    */
    final abstract class MODE0 : Peripheral!(0x40001400)
    {
        /*************************************************************************
         Debug Control
        */
        final abstract class DBGCTRL : Register!(0xb)
        {
            /*********************************************************************
             Run During Debug
            */
            alias DBGRUN = Bit!(0, Mutability.rw);
        }

        /*************************************************************************
         Frequency Correction
        */
        final abstract class FREQCORR : Register!(0xc)
        {
            /*********************************************************************
             Correction Value
            */
            alias VALUE = BitField!(6, 0, Mutability.rw);

            /*********************************************************************
             Correction Sign
            */
            alias SIGN = Bit!(7, Mutability.rw);
        }

        /*************************************************************************
         MODE0 Compare n Value
        */
        final abstract class COMP : Register!(0x18)
        {
            /*********************************************************************
             Compare Value
            */
            alias COMP = BitField!(31, 0, Mutability.rw);
        }

        /*************************************************************************
         MODE0 Counter Value
        */
        final abstract class COUNT : Register!(0x10)
        {
            /*********************************************************************
             Counter Value
            */
            alias COUNT = BitField!(31, 0, Mutability.rw);
        }

        /*************************************************************************
         MODE0 Control
        */
        final abstract class CTRL : Register!(00)
        {
            /*********************************************************************
             Software Reset
            */
            alias SWRST = Bit!(0, Mutability.w);

            /*********************************************************************
             Enable
            */
            alias ENABLE = Bit!(1, Mutability.rw);

            /*****************************************************************
             MODE's possible values
            */
            enum MODEValues
            {
                /*************************************************************
                 Mode 0: 32-bit Counter
                */
                COUNT32 = 0x0,

                /*************************************************************
                 Mode 1: 16-bit Counter
                */
                COUNT16 = 0x1,

                /*************************************************************
                 Mode 2: Clock/Calendar
                */
                CLOCK = 0x2,
            }

            /*********************************************************************
             Operating Mode
            */
            alias MODE = BitField!(3, 2, Mutability.rw, MODEValues);

            /*********************************************************************
             Clear on Match
            */
            alias MATCHCLR = Bit!(7, Mutability.rw);

            /*****************************************************************
             PRESCALER's possible values
            */
            enum PRESCALERValues
            {
                /*************************************************************
                 CLK_RTC_CNT = GCLK_RTC/1
                */
                DIV1 = 0x0,

                /*************************************************************
                 CLK_RTC_CNT = GCLK_RTC/2
                */
                DIV2 = 0x1,

                /*************************************************************
                 CLK_RTC_CNT = GCLK_RTC/4
                */
                DIV4 = 0x2,

                /*************************************************************
                 CLK_RTC_CNT = GCLK_RTC/8
                */
                DIV8 = 0x3,

                /*************************************************************
                 CLK_RTC_CNT = GCLK_RTC/16
                */
                DIV16 = 0x4,

                /*************************************************************
                 CLK_RTC_CNT = GCLK_RTC/32
                */
                DIV32 = 0x5,

                /*************************************************************
                 CLK_RTC_CNT = GCLK_RTC/64
                */
                DIV64 = 0x6,

                /*************************************************************
                 CLK_RTC_CNT = GCLK_RTC/128
                */
                DIV128 = 0x7,

                /*************************************************************
                 CLK_RTC_CNT = GCLK_RTC/256
                */
                DIV256 = 0x8,

                /*************************************************************
                 CLK_RTC_CNT = GCLK_RTC/512
                */
                DIV512 = 0x9,

                /*************************************************************
                 CLK_RTC_CNT = GCLK_RTC/1024
                */
                DIV1024 = 0xa,
            }

            /*********************************************************************
             Prescaler
            */
            alias PRESCALER = BitField!(11, 8, Mutability.rw, PRESCALERValues);
        }

        /*************************************************************************
         MODE0 Event Control
        */
        final abstract class EVCTRL : Register!(0x4)
        {
            /*********************************************************************
             Periodic Interval 0 Event Output Enable
            */
            alias PEREO0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Periodic Interval 1 Event Output Enable
            */
            alias PEREO1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Periodic Interval 2 Event Output Enable
            */
            alias PEREO2 = Bit!(2, Mutability.rw);

            /*********************************************************************
             Periodic Interval 3 Event Output Enable
            */
            alias PEREO3 = Bit!(3, Mutability.rw);

            /*********************************************************************
             Periodic Interval 4 Event Output Enable
            */
            alias PEREO4 = Bit!(4, Mutability.rw);

            /*********************************************************************
             Periodic Interval 5 Event Output Enable
            */
            alias PEREO5 = Bit!(5, Mutability.rw);

            /*********************************************************************
             Periodic Interval 6 Event Output Enable
            */
            alias PEREO6 = Bit!(6, Mutability.rw);

            /*********************************************************************
             Periodic Interval 7 Event Output Enable
            */
            alias PEREO7 = Bit!(7, Mutability.rw);

            /*********************************************************************
             Compare 0 Event Output Enable
            */
            alias CMPEO0 = Bit!(8, Mutability.rw);

            /*********************************************************************
             Overflow Event Output Enable
            */
            alias OVFEO = Bit!(15, Mutability.rw);
        }

        /*************************************************************************
         MODE0 Interrupt Enable Clear
        */
        final abstract class INTENCLR : Register!(0x6)
        {
            /*********************************************************************
             Compare 0 Interrupt Enable
            */
            alias CMP0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Synchronization Ready Interrupt Enable
            */
            alias SYNCRDY = Bit!(6, Mutability.rw);

            /*********************************************************************
             Overflow Interrupt Enable
            */
            alias OVF = Bit!(7, Mutability.rw);
        }

        /*************************************************************************
         MODE0 Interrupt Enable Set
        */
        final abstract class INTENSET : Register!(0x7)
        {
            /*********************************************************************
             Compare 0 Interrupt Enable
            */
            alias CMP0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Synchronization Ready Interrupt Enable
            */
            alias SYNCRDY = Bit!(6, Mutability.rw);

            /*********************************************************************
             Overflow Interrupt Enable
            */
            alias OVF = Bit!(7, Mutability.rw);
        }

        /*************************************************************************
         MODE0 Interrupt Flag Status and Clear
        */
        final abstract class INTFLAG : Register!(0x8)
        {
            /*********************************************************************
             Compare 0
            */
            alias CMP0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Synchronization Ready
            */
            alias SYNCRDY = Bit!(6, Mutability.rw);

            /*********************************************************************
             Overflow
            */
            alias OVF = Bit!(7, Mutability.rw);
        }

        /*************************************************************************
         Read Request
        */
        final abstract class READREQ : Register!(0x2)
        {
            /*********************************************************************
             Address
            */
            alias ADDR = BitField!(5, 0, Mutability.r);

            /*********************************************************************
             Read Continuously
            */
            alias RCONT = Bit!(14, Mutability.rw);

            /*********************************************************************
             Read Request
            */
            alias RREQ = Bit!(15, Mutability.w);
        }

        /*************************************************************************
         Status
        */
        final abstract class STATUS : Register!(0xa)
        {
            /*********************************************************************
             Synchronization Busy
            */
            alias SYNCBUSY = Bit!(7, Mutability.r);
        }
    }
    /*****************************************************************************
     16-bit Counter with Two 16-bit Compares
    */
    final abstract class MODE1 : Peripheral!(0x40001400)
    {
        /*************************************************************************
         Debug Control
        */
        final abstract class DBGCTRL : Register!(0xb)
        {
            /*********************************************************************
             Run During Debug
            */
            alias DBGRUN = Bit!(0, Mutability.rw);
        }

        /*************************************************************************
         Frequency Correction
        */
        final abstract class FREQCORR : Register!(0xc)
        {
            /*********************************************************************
             Correction Value
            */
            alias VALUE = BitField!(6, 0, Mutability.rw);

            /*********************************************************************
             Correction Sign
            */
            alias SIGN = Bit!(7, Mutability.rw);
        }

        /*************************************************************************
         MODE1 Compare n Value
        */
        final abstract class COMP1 : Register!(0x18)
        {
            /*********************************************************************
             Compare Value
            */
            alias COMP = BitField!(15, 0, Mutability.rw);
        }
        /*************************************************************************
         MODE1 Compare n Value
        */
        final abstract class COMP2 : Register!(0x1a)
        {
            /*********************************************************************
             Compare Value
            */
            alias COMP = BitField!(15, 0, Mutability.rw);
        }

        /*************************************************************************
         MODE1 Counter Value
        */
        final abstract class COUNT : Register!(0x10)
        {
            /*********************************************************************
             Counter Value
            */
            alias COUNT = BitField!(15, 0, Mutability.rw);
        }

        /*************************************************************************
         MODE1 Control
        */
        final abstract class CTRL : Register!(00)
        {
            /*********************************************************************
             Software Reset
            */
            alias SWRST = Bit!(0, Mutability.w);

            /*********************************************************************
             Enable
            */
            alias ENABLE = Bit!(1, Mutability.rw);

            /*****************************************************************
             MODE's possible values
            */
            enum MODEValues
            {
                /*************************************************************
                 Mode 0: 32-bit Counter
                */
                COUNT32 = 0x0,

                /*************************************************************
                 Mode 1: 16-bit Counter
                */
                COUNT16 = 0x1,

                /*************************************************************
                 Mode 2: Clock/Calendar
                */
                CLOCK = 0x2,
            }

            /*********************************************************************
             Operating Mode
            */
            alias MODE = BitField!(3, 2, Mutability.rw, MODEValues);

            /*****************************************************************
             PRESCALER's possible values
            */
            enum PRESCALERValues
            {
                /*************************************************************
                 CLK_RTC_CNT = GCLK_RTC/1
                */
                DIV1 = 0x0,

                /*************************************************************
                 CLK_RTC_CNT = GCLK_RTC/2
                */
                DIV2 = 0x1,

                /*************************************************************
                 CLK_RTC_CNT = GCLK_RTC/4
                */
                DIV4 = 0x2,

                /*************************************************************
                 CLK_RTC_CNT = GCLK_RTC/8
                */
                DIV8 = 0x3,

                /*************************************************************
                 CLK_RTC_CNT = GCLK_RTC/16
                */
                DIV16 = 0x4,

                /*************************************************************
                 CLK_RTC_CNT = GCLK_RTC/32
                */
                DIV32 = 0x5,

                /*************************************************************
                 CLK_RTC_CNT = GCLK_RTC/64
                */
                DIV64 = 0x6,

                /*************************************************************
                 CLK_RTC_CNT = GCLK_RTC/128
                */
                DIV128 = 0x7,

                /*************************************************************
                 CLK_RTC_CNT = GCLK_RTC/256
                */
                DIV256 = 0x8,

                /*************************************************************
                 CLK_RTC_CNT = GCLK_RTC/512
                */
                DIV512 = 0x9,

                /*************************************************************
                 CLK_RTC_CNT = GCLK_RTC/1024
                */
                DIV1024 = 0xa,
            }

            /*********************************************************************
             Prescaler
            */
            alias PRESCALER = BitField!(11, 8, Mutability.rw, PRESCALERValues);
        }

        /*************************************************************************
         MODE1 Event Control
        */
        final abstract class EVCTRL : Register!(0x4)
        {
            /*********************************************************************
             Periodic Interval 0 Event Output Enable
            */
            alias PEREO0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Periodic Interval 1 Event Output Enable
            */
            alias PEREO1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Periodic Interval 2 Event Output Enable
            */
            alias PEREO2 = Bit!(2, Mutability.rw);

            /*********************************************************************
             Periodic Interval 3 Event Output Enable
            */
            alias PEREO3 = Bit!(3, Mutability.rw);

            /*********************************************************************
             Periodic Interval 4 Event Output Enable
            */
            alias PEREO4 = Bit!(4, Mutability.rw);

            /*********************************************************************
             Periodic Interval 5 Event Output Enable
            */
            alias PEREO5 = Bit!(5, Mutability.rw);

            /*********************************************************************
             Periodic Interval 6 Event Output Enable
            */
            alias PEREO6 = Bit!(6, Mutability.rw);

            /*********************************************************************
             Periodic Interval 7 Event Output Enable
            */
            alias PEREO7 = Bit!(7, Mutability.rw);

            /*********************************************************************
             Compare 0 Event Output Enable
            */
            alias CMPEO0 = Bit!(8, Mutability.rw);

            /*********************************************************************
             Compare 1 Event Output Enable
            */
            alias CMPEO1 = Bit!(9, Mutability.rw);

            /*********************************************************************
             Overflow Event Output Enable
            */
            alias OVFEO = Bit!(15, Mutability.rw);
        }

        /*************************************************************************
         MODE1 Interrupt Enable Clear
        */
        final abstract class INTENCLR : Register!(0x6)
        {
            /*********************************************************************
             Compare 0 Interrupt Enable
            */
            alias CMP0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Compare 1 Interrupt Enable
            */
            alias CMP1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Synchronization Ready Interrupt Enable
            */
            alias SYNCRDY = Bit!(6, Mutability.rw);

            /*********************************************************************
             Overflow Interrupt Enable
            */
            alias OVF = Bit!(7, Mutability.rw);
        }

        /*************************************************************************
         MODE1 Interrupt Enable Set
        */
        final abstract class INTENSET : Register!(0x7)
        {
            /*********************************************************************
             Compare 0 Interrupt Enable
            */
            alias CMP0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Compare 1 Interrupt Enable
            */
            alias CMP1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Synchronization Ready Interrupt Enable
            */
            alias SYNCRDY = Bit!(6, Mutability.rw);

            /*********************************************************************
             Overflow Interrupt Enable
            */
            alias OVF = Bit!(7, Mutability.rw);
        }

        /*************************************************************************
         MODE1 Interrupt Flag Status and Clear
        */
        final abstract class INTFLAG : Register!(0x8)
        {
            /*********************************************************************
             Compare 0
            */
            alias CMP0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Compare 1
            */
            alias CMP1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Synchronization Ready
            */
            alias SYNCRDY = Bit!(6, Mutability.rw);

            /*********************************************************************
             Overflow
            */
            alias OVF = Bit!(7, Mutability.rw);
        }

        /*************************************************************************
         MODE1 Counter Period
        */
        final abstract class PER : Register!(0x14)
        {
            /*********************************************************************
             Counter Period
            */
            alias PER = BitField!(15, 0, Mutability.rw);
        }

        /*************************************************************************
         Read Request
        */
        final abstract class READREQ : Register!(0x2)
        {
            /*********************************************************************
             Address
            */
            alias ADDR = BitField!(5, 0, Mutability.r);

            /*********************************************************************
             Read Continuously
            */
            alias RCONT = Bit!(14, Mutability.rw);

            /*********************************************************************
             Read Request
            */
            alias RREQ = Bit!(15, Mutability.w);
        }

        /*************************************************************************
         Status
        */
        final abstract class STATUS : Register!(0xa)
        {
            /*********************************************************************
             Synchronization Busy
            */
            alias SYNCBUSY = Bit!(7, Mutability.r);
        }
    }
    /*****************************************************************************
     Clock/Calendar with Alarm
    */
    final abstract class MODE2 : Peripheral!(0x40001400)
    {
        /*************************************************************************
         Debug Control
        */
        final abstract class DBGCTRL : Register!(0xb)
        {
            /*********************************************************************
             Run During Debug
            */
            alias DBGRUN = Bit!(0, Mutability.rw);
        }

        /*************************************************************************
         Frequency Correction
        */
        final abstract class FREQCORR : Register!(0xc)
        {
            /*********************************************************************
             Correction Value
            */
            alias VALUE = BitField!(6, 0, Mutability.rw);

            /*********************************************************************
             Correction Sign
            */
            alias SIGN = Bit!(7, Mutability.rw);
        }

        /*************************************************************************
         MODE2 Clock Value
        */
        final abstract class CLOCK : Register!(0x10)
        {
            /*********************************************************************
             Second
            */
            alias SECOND = BitField!(5, 0, Mutability.rw);

            /*********************************************************************
             Minute
            */
            alias MINUTE = BitField!(11, 6, Mutability.rw);

            /*****************************************************************
             HOUR's possible values
            */
            enum HOURValues
            {
                /*************************************************************
                 Afternoon Hour
                */
                PM = 0x10,
            }

            /*********************************************************************
             Hour
            */
            alias HOUR = BitField!(16, 12, Mutability.rw, HOURValues);

            /*********************************************************************
             Day
            */
            alias DAY = BitField!(21, 17, Mutability.rw);

            /*********************************************************************
             Month
            */
            alias MONTH = BitField!(25, 22, Mutability.rw);

            /*********************************************************************
             Year
            */
            alias YEAR = BitField!(31, 26, Mutability.rw);
        }

        /*************************************************************************
         MODE2 Control
        */
        final abstract class CTRL : Register!(00)
        {
            /*********************************************************************
             Software Reset
            */
            alias SWRST = Bit!(0, Mutability.w);

            /*********************************************************************
             Enable
            */
            alias ENABLE = Bit!(1, Mutability.rw);

            /*****************************************************************
             MODE's possible values
            */
            enum MODEValues
            {
                /*************************************************************
                 Mode 0: 32-bit Counter
                */
                COUNT32 = 0x0,

                /*************************************************************
                 Mode 1: 16-bit Counter
                */
                COUNT16 = 0x1,

                /*************************************************************
                 Mode 2: Clock/Calendar
                */
                CLOCK = 0x2,
            }

            /*********************************************************************
             Operating Mode
            */
            alias MODE = BitField!(3, 2, Mutability.rw, MODEValues);

            /*********************************************************************
             Clock Representation
            */
            alias CLKREP = Bit!(6, Mutability.rw);

            /*********************************************************************
             Clear on Match
            */
            alias MATCHCLR = Bit!(7, Mutability.rw);

            /*****************************************************************
             PRESCALER's possible values
            */
            enum PRESCALERValues
            {
                /*************************************************************
                 CLK_RTC_CNT = GCLK_RTC/1
                */
                DIV1 = 0x0,

                /*************************************************************
                 CLK_RTC_CNT = GCLK_RTC/2
                */
                DIV2 = 0x1,

                /*************************************************************
                 CLK_RTC_CNT = GCLK_RTC/4
                */
                DIV4 = 0x2,

                /*************************************************************
                 CLK_RTC_CNT = GCLK_RTC/8
                */
                DIV8 = 0x3,

                /*************************************************************
                 CLK_RTC_CNT = GCLK_RTC/16
                */
                DIV16 = 0x4,

                /*************************************************************
                 CLK_RTC_CNT = GCLK_RTC/32
                */
                DIV32 = 0x5,

                /*************************************************************
                 CLK_RTC_CNT = GCLK_RTC/64
                */
                DIV64 = 0x6,

                /*************************************************************
                 CLK_RTC_CNT = GCLK_RTC/128
                */
                DIV128 = 0x7,

                /*************************************************************
                 CLK_RTC_CNT = GCLK_RTC/256
                */
                DIV256 = 0x8,

                /*************************************************************
                 CLK_RTC_CNT = GCLK_RTC/512
                */
                DIV512 = 0x9,

                /*************************************************************
                 CLK_RTC_CNT = GCLK_RTC/1024
                */
                DIV1024 = 0xa,
            }

            /*********************************************************************
             Prescaler
            */
            alias PRESCALER = BitField!(11, 8, Mutability.rw, PRESCALERValues);
        }

        /*************************************************************************
         MODE2 Event Control
        */
        final abstract class EVCTRL : Register!(0x4)
        {
            /*********************************************************************
             Periodic Interval 0 Event Output Enable
            */
            alias PEREO0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Periodic Interval 1 Event Output Enable
            */
            alias PEREO1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Periodic Interval 2 Event Output Enable
            */
            alias PEREO2 = Bit!(2, Mutability.rw);

            /*********************************************************************
             Periodic Interval 3 Event Output Enable
            */
            alias PEREO3 = Bit!(3, Mutability.rw);

            /*********************************************************************
             Periodic Interval 4 Event Output Enable
            */
            alias PEREO4 = Bit!(4, Mutability.rw);

            /*********************************************************************
             Periodic Interval 5 Event Output Enable
            */
            alias PEREO5 = Bit!(5, Mutability.rw);

            /*********************************************************************
             Periodic Interval 6 Event Output Enable
            */
            alias PEREO6 = Bit!(6, Mutability.rw);

            /*********************************************************************
             Periodic Interval 7 Event Output Enable
            */
            alias PEREO7 = Bit!(7, Mutability.rw);

            /*********************************************************************
             Alarm 0 Event Output Enable
            */
            alias ALARMEO0 = Bit!(8, Mutability.rw);

            /*********************************************************************
             Overflow Event Output Enable
            */
            alias OVFEO = Bit!(15, Mutability.rw);
        }

        /*************************************************************************
         MODE2 Interrupt Enable Clear
        */
        final abstract class INTENCLR : Register!(0x6)
        {
            /*********************************************************************
             Alarm 0 Interrupt Enable
            */
            alias ALARM0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Synchronization Ready Interrupt Enable
            */
            alias SYNCRDY = Bit!(6, Mutability.rw);

            /*********************************************************************
             Overflow Interrupt Enable
            */
            alias OVF = Bit!(7, Mutability.rw);
        }

        /*************************************************************************
         MODE2 Interrupt Enable Set
        */
        final abstract class INTENSET : Register!(0x7)
        {
            /*********************************************************************
             Alarm 0 Interrupt Enable
            */
            alias ALARM0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Synchronization Ready Interrupt Enable
            */
            alias SYNCRDY = Bit!(6, Mutability.rw);

            /*********************************************************************
             Overflow Interrupt Enable
            */
            alias OVF = Bit!(7, Mutability.rw);
        }

        /*************************************************************************
         MODE2 Interrupt Flag Status and Clear
        */
        final abstract class INTFLAG : Register!(0x8)
        {
            /*********************************************************************
             Alarm 0
            */
            alias ALARM0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Synchronization Ready
            */
            alias SYNCRDY = Bit!(6, Mutability.rw);

            /*********************************************************************
             Overflow
            */
            alias OVF = Bit!(7, Mutability.rw);
        }

        /*************************************************************************
         MODE2 Alarm n Value
        */
        final abstract class ALARM : Register!(0x18)
        {
            /*********************************************************************
             Second
            */
            alias SECOND = BitField!(5, 0, Mutability.rw);

            /*********************************************************************
             Minute
            */
            alias MINUTE = BitField!(11, 6, Mutability.rw);

            /*********************************************************************
             Hour
            */
            alias HOUR = BitField!(16, 12, Mutability.rw);

            /*********************************************************************
             Day
            */
            alias DAY = BitField!(21, 17, Mutability.rw);

            /*********************************************************************
             Month
            */
            alias MONTH = BitField!(25, 22, Mutability.rw);

            /*********************************************************************
             Year
            */
            alias YEAR = BitField!(31, 26, Mutability.rw);
        }

        /*************************************************************************
         MODE2 Alarm n Mask
        */
        final abstract class MASK : Register!(0x1c)
        {
            /*****************************************************************
             SEL's possible values
            */
            enum SELValues
            {
                /*************************************************************
                 Alarm Disabled
                */
                OFF = 0x0,

                /*************************************************************
                 Match seconds only
                */
                SS = 0x1,

                /*************************************************************
                 Match seconds and minutes only
                */
                MMSS = 0x2,

                /*************************************************************
                 Match seconds, minutes, and hours only
                */
                HHMMSS = 0x3,

                /*************************************************************
                 Match seconds, minutes, hours, and days only
                */
                DDHHMMSS = 0x4,

                /*************************************************************
                 Match seconds, minutes, hours, days, and months only
                */
                MMDDHHMMSS = 0x5,

                /*************************************************************
                 Match seconds, minutes, hours, days, months, and years
                */
                YYMMDDHHMMSS = 0x6,
            }

            /*********************************************************************
             Alarm Mask Selection
            */
            alias SEL = BitField!(2, 0, Mutability.rw, SELValues);
        }

        /*************************************************************************
         Read Request
        */
        final abstract class READREQ : Register!(0x2)
        {
            /*********************************************************************
             Address
            */
            alias ADDR = BitField!(5, 0, Mutability.r);

            /*********************************************************************
             Read Continuously
            */
            alias RCONT = Bit!(14, Mutability.rw);

            /*********************************************************************
             Read Request
            */
            alias RREQ = Bit!(15, Mutability.w);
        }

        /*************************************************************************
         Status
        */
        final abstract class STATUS : Register!(0xa)
        {
            /*********************************************************************
             Synchronization Busy
            */
            alias SYNCBUSY = Bit!(7, Mutability.r);
        }
    }
}
