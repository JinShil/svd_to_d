module atsamd21g18a.tcc0;

import atsamd21g18a.mmio;

/*****************************************************************************
 Timer Counter Control 0
*/
final abstract class TCC0 : Peripheral!(0x42002000)
{
    /*************************************************************************
     Compare and Capture
    */
    final abstract class CC1 : Register!(0x44)
    {
        /*********************************************************************
         Compare and Capture value
        */
        alias CC = BitField!(23, 0, Mutability.rw);
    }
    /*************************************************************************
     Compare and Capture
    */
    final abstract class CC2 : Register!(0x48)
    {
        /*********************************************************************
         Compare and Capture value
        */
        alias CC = BitField!(23, 0, Mutability.rw);
    }
    /*************************************************************************
     Compare and Capture
    */
    final abstract class CC3 : Register!(0x4c)
    {
        /*********************************************************************
         Compare and Capture value
        */
        alias CC = BitField!(23, 0, Mutability.rw);
    }
    /*************************************************************************
     Compare and Capture
    */
    final abstract class CC4 : Register!(0x50)
    {
        /*********************************************************************
         Compare and Capture value
        */
        alias CC = BitField!(23, 0, Mutability.rw);
    }

    /*************************************************************************
     Compare and Capture Buffer
    */
    final abstract class CCB1 : Register!(0x70)
    {
        /*********************************************************************
         Compare and Capture buffer value
        */
        alias CCB = BitField!(23, 0, Mutability.rw);
    }
    /*************************************************************************
     Compare and Capture Buffer
    */
    final abstract class CCB2 : Register!(0x74)
    {
        /*********************************************************************
         Compare and Capture buffer value
        */
        alias CCB = BitField!(23, 0, Mutability.rw);
    }
    /*************************************************************************
     Compare and Capture Buffer
    */
    final abstract class CCB3 : Register!(0x78)
    {
        /*********************************************************************
         Compare and Capture buffer value
        */
        alias CCB = BitField!(23, 0, Mutability.rw);
    }
    /*************************************************************************
     Compare and Capture Buffer
    */
    final abstract class CCB4 : Register!(0x7c)
    {
        /*********************************************************************
         Compare and Capture buffer value
        */
        alias CCB = BitField!(23, 0, Mutability.rw);
    }

    /*************************************************************************
     Count
    */
    final abstract class COUNT : Register!(0x34)
    {
        /*********************************************************************
         Count Value
        */
        alias COUNT = BitField!(23, 0, Mutability.rw);
    }

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
         Enhanced Resolution
        */
        final abstract class RESOLUTION
        {
            /*****************************************************************
             RESOLUTION's possible values
            */
            enum Values
            {
                None = 0x0,

                DITH4 = 0x1,

                DITH5 = 0x2,

                DITH6 = 0x3,
            }
            mixin BitFieldImplementation!(6, 5, Mutability.rw, Values);
        }

        /*********************************************************************
         Prescaler
        */
        final abstract class PRESCALER
        {
            /*****************************************************************
             PRESCALER's possible values
            */
            enum Values
            {
                DIV1 = 0x0,

                DIV2 = 0x1,

                DIV4 = 0x2,

                DIV8 = 0x3,

                DIV16 = 0x4,

                DIV64 = 0x5,

                DIV256 = 0x6,

                DIV1024 = 0x7,
            }
            mixin BitFieldImplementation!(10, 8, Mutability.rw, Values);
        }

        /*********************************************************************
         Run in Standby
        */
        alias RUNSTDBY = Bit!(11, Mutability.rw);

        /*********************************************************************
         Prescaler and Counter Synchronization Selection
        */
        final abstract class PRESCSYNC
        {
            /*****************************************************************
             PRESCSYNC's possible values
            */
            enum Values
            {
                GCLK = 0x0,

                PRESC = 0x1,

                RESYNC = 0x2,
            }
            mixin BitFieldImplementation!(13, 12, Mutability.rw, Values);
        }

        /*********************************************************************
         Auto Lock
        */
        alias ALOCK = Bit!(14, Mutability.rw);

        /*********************************************************************
         Master Synchronization
        */
        alias MSYNC = Bit!(15, Mutability.rw);

        /*********************************************************************
         Capture Channel 0 Enable
        */
        alias CPTEN0 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Capture Channel 1 Enable
        */
        alias CPTEN1 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Capture Channel 2 Enable
        */
        alias CPTEN2 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Capture Channel 3 Enable
        */
        alias CPTEN3 = Bit!(27, Mutability.rw);
    }

    /*************************************************************************
     Control B Clear
    */
    final abstract class CTRLBCLR : Register!(0x4)
    {
        /*********************************************************************
         Counter Direction
        */
        alias DIR = Bit!(0, Mutability.rw);

        /*********************************************************************
         Lock Update
        */
        alias LUPD = Bit!(1, Mutability.rw);

        /*********************************************************************
         One-Shot
        */
        alias ONESHOT = Bit!(2, Mutability.rw);

        /*********************************************************************
         Ramp Index Command
        */
        final abstract class IDXCMD
        {
            /*****************************************************************
             IDXCMD's possible values
            */
            enum Values
            {
                DISABLE = 0x0,

                SET = 0x1,

                CLEAR = 0x2,

                HOLD = 0x3,
            }
            mixin BitFieldImplementation!(4, 3, Mutability.rw, Values);
        }

        /*********************************************************************
         TCC Command
        */
        final abstract class CMD
        {
            /*****************************************************************
             CMD's possible values
            */
            enum Values
            {
                NONE = 0x0,

                RETRIGGER = 0x1,

                STOP = 0x2,

                UPDATE = 0x3,

                READSYNC = 0x4,
            }
            mixin BitFieldImplementation!(7, 5, Mutability.rw, Values);
        }
    }

    /*************************************************************************
     Control B Set
    */
    final abstract class CTRLBSET : Register!(0x5)
    {
        /*********************************************************************
         Counter Direction
        */
        alias DIR = Bit!(0, Mutability.rw);

        /*********************************************************************
         Lock update
        */
        alias LUPD = Bit!(1, Mutability.rw);

        /*********************************************************************
         One-Shot
        */
        alias ONESHOT = Bit!(2, Mutability.rw);

        /*********************************************************************
         Ramp Index Command
        */
        final abstract class IDXCMD
        {
            /*****************************************************************
             IDXCMD's possible values
            */
            enum Values
            {
                DISABLE = 0x0,

                SET = 0x1,

                CLEAR = 0x2,

                HOLD = 0x3,
            }
            mixin BitFieldImplementation!(4, 3, Mutability.rw, Values);
        }

        /*********************************************************************
         TCC Command
        */
        final abstract class CMD
        {
            /*****************************************************************
             CMD's possible values
            */
            enum Values
            {
                NONE = 0x0,

                RETRIGGER = 0x1,

                STOP = 0x2,

                UPDATE = 0x3,

                READSYNC = 0x4,
            }
            mixin BitFieldImplementation!(7, 5, Mutability.rw, Values);
        }
    }

    /*************************************************************************
     Debug Control
    */
    final abstract class DBGCTRL : Register!(0x1e)
    {
        /*********************************************************************
         Debug Running Mode
        */
        alias DBGRUN = Bit!(0, Mutability.rw);

        /*********************************************************************
         Fault Detection on Debug Break Detection
        */
        alias FDDBD = Bit!(2, Mutability.rw);
    }

    /*************************************************************************
     Driver Configuration
    */
    final abstract class DRVCTRL : Register!(0x18)
    {
        /*********************************************************************
         Non-Recoverable State 0 Output Enable
        */
        alias NRE0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Non-Recoverable State 1 Output Enable
        */
        alias NRE1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Non-Recoverable State 2 Output Enable
        */
        alias NRE2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Non-Recoverable State 3 Output Enable
        */
        alias NRE3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Non-Recoverable State 4 Output Enable
        */
        alias NRE4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Non-Recoverable State 5 Output Enable
        */
        alias NRE5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Non-Recoverable State 6 Output Enable
        */
        alias NRE6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Non-Recoverable State 7 Output Enable
        */
        alias NRE7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Non-Recoverable State 0 Output Value
        */
        alias NRV0 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Non-Recoverable State 1 Output Value
        */
        alias NRV1 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Non-Recoverable State 2 Output Value
        */
        alias NRV2 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Non-Recoverable State 3 Output Value
        */
        alias NRV3 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Non-Recoverable State 4 Output Value
        */
        alias NRV4 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Non-Recoverable State 5 Output Value
        */
        alias NRV5 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Non-Recoverable State 6 Output Value
        */
        alias NRV6 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Non-Recoverable State 7 Output Value
        */
        alias NRV7 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Output Waveform 0 Inversion
        */
        alias INVEN0 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Output Waveform 1 Inversion
        */
        alias INVEN1 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Output Waveform 2 Inversion
        */
        alias INVEN2 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Output Waveform 3 Inversion
        */
        alias INVEN3 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Output Waveform 4 Inversion
        */
        alias INVEN4 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Output Waveform 5 Inversion
        */
        alias INVEN5 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Output Waveform 6 Inversion
        */
        alias INVEN6 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Output Waveform 7 Inversion
        */
        alias INVEN7 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Non-Recoverable Fault Input 0 Filter Value
        */
        alias FILTERVAL0 = BitField!(27, 24, Mutability.rw);

        /*********************************************************************
         Non-Recoverable Fault Input 1 Filter Value
        */
        alias FILTERVAL1 = BitField!(31, 28, Mutability.rw);
    }

    /*************************************************************************
     Event Control
    */
    final abstract class EVCTRL : Register!(0x20)
    {
        /*********************************************************************
         Timer/counter Input Event0 Action
        */
        final abstract class EVACT0
        {
            /*****************************************************************
             EVACT0's possible values
            */
            enum Values
            {
                OFF = 0x0,

                RETRIGGER = 0x1,

                COUNTEV = 0x2,

                START = 0x3,

                INC = 0x4,

                COUNT = 0x5,

                FAULT = 0x7,
            }
            mixin BitFieldImplementation!(2, 0, Mutability.rw, Values);
        }

        /*********************************************************************
         Timer/counter Input Event1 Action
        */
        final abstract class EVACT1
        {
            /*****************************************************************
             EVACT1's possible values
            */
            enum Values
            {
                OFF = 0x0,

                RETRIGGER = 0x1,

                DIR = 0x2,

                STOP = 0x3,

                DEC = 0x4,

                PPW = 0x5,

                PWP = 0x6,

                FAULT = 0x7,
            }
            mixin BitFieldImplementation!(5, 3, Mutability.rw, Values);
        }

        /*********************************************************************
         Timer/counter Output Event Mode
        */
        final abstract class CNTSEL
        {
            /*****************************************************************
             CNTSEL's possible values
            */
            enum Values
            {
                START = 0x0,

                END = 0x1,

                BETWEEN = 0x2,

                BOUNDARY = 0x3,
            }
            mixin BitFieldImplementation!(7, 6, Mutability.rw, Values);
        }

        /*********************************************************************
         Overflow/Underflow Output Event Enable
        */
        alias OVFEO = Bit!(8, Mutability.rw);

        /*********************************************************************
         Retrigger Output Event Enable
        */
        alias TRGEO = Bit!(9, Mutability.rw);

        /*********************************************************************
         Timer/counter Output Event Enable
        */
        alias CNTEO = Bit!(10, Mutability.rw);

        /*********************************************************************
         Inverted Event 0 Input Enable
        */
        alias TCINV0 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Inverted Event 1 Input Enable
        */
        alias TCINV1 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Timer/counter Event 0 Input Enable
        */
        alias TCEI0 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Timer/counter Event 1 Input Enable
        */
        alias TCEI1 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Match or Capture Channel 0 Event Input Enable
        */
        alias MCEI0 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Match or Capture Channel 1 Event Input Enable
        */
        alias MCEI1 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Match or Capture Channel 2 Event Input Enable
        */
        alias MCEI2 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Match or Capture Channel 3 Event Input Enable
        */
        alias MCEI3 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Match or Capture Channel 0 Event Output Enable
        */
        alias MCEO0 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Match or Capture Channel 1 Event Output Enable
        */
        alias MCEO1 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Match or Capture Channel 2 Event Output Enable
        */
        alias MCEO2 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Match or Capture Channel 3 Event Output Enable
        */
        alias MCEO3 = Bit!(27, Mutability.rw);
    }

    /*************************************************************************
     Recoverable FaultA Configuration
    */
    final abstract class FCTRLA : Register!(0xc)
    {
        /*********************************************************************
         FaultA Source
        */
        final abstract class SRC
        {
            /*****************************************************************
             SRC's possible values
            */
            enum Values
            {
                DISABLE = 0x0,

                ENABLE = 0x1,

                INVERT = 0x2,

                ALTFAULT = 0x3,
            }
            mixin BitFieldImplementation!(1, 0, Mutability.rw, Values);
        }

        /*********************************************************************
         FaultA Keeper
        */
        alias KEEP = Bit!(3, Mutability.rw);

        /*********************************************************************
         FaultA Qualification
        */
        alias QUAL = Bit!(4, Mutability.rw);

        /*********************************************************************
         FaultA Blanking Mode
        */
        final abstract class BLANK
        {
            /*****************************************************************
             BLANK's possible values
            */
            enum Values
            {
                DISABLE = 0x0,

                RISE = 0x1,

                FALL = 0x2,

                BOTH = 0x3,
            }
            mixin BitFieldImplementation!(6, 5, Mutability.rw, Values);
        }

        /*********************************************************************
         FaultA Restart
        */
        alias RESTART = Bit!(7, Mutability.rw);

        /*********************************************************************
         FaultA Halt Mode
        */
        final abstract class HALT
        {
            /*****************************************************************
             HALT's possible values
            */
            enum Values
            {
                DISABLE = 0x0,

                HW = 0x1,

                SW = 0x2,

                NR = 0x3,
            }
            mixin BitFieldImplementation!(9, 8, Mutability.rw, Values);
        }

        /*********************************************************************
         FaultA Capture Channel
        */
        final abstract class CHSEL
        {
            /*****************************************************************
             CHSEL's possible values
            */
            enum Values
            {
                CC0 = 0x0,

                CC1 = 0x1,

                CC2 = 0x2,

                CC3 = 0x3,
            }
            mixin BitFieldImplementation!(11, 10, Mutability.rw, Values);
        }

        /*********************************************************************
         FaultA Capture Action
        */
        final abstract class CAPTURE
        {
            /*****************************************************************
             CAPTURE's possible values
            */
            enum Values
            {
                DISABLE = 0x0,

                CAPT = 0x1,

                CAPTMIN = 0x2,

                CAPTMAX = 0x3,

                LOCMIN = 0x4,

                LOCMAX = 0x5,

                DERIV0 = 0x6,
            }
            mixin BitFieldImplementation!(14, 12, Mutability.rw, Values);
        }

        /*********************************************************************
         FaultA Blanking Time
        */
        alias BLANKVAL = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         FaultA Filter Value
        */
        alias FILTERVAL = BitField!(27, 24, Mutability.rw);
    }

    /*************************************************************************
     Recoverable FaultB Configuration
    */
    final abstract class FCTRLB : Register!(0x10)
    {
        /*********************************************************************
         FaultB Source
        */
        final abstract class SRC
        {
            /*****************************************************************
             SRC's possible values
            */
            enum Values
            {
                DISABLE = 0x0,

                ENABLE = 0x1,

                INVERT = 0x2,

                ALTFAULT = 0x3,
            }
            mixin BitFieldImplementation!(1, 0, Mutability.rw, Values);
        }

        /*********************************************************************
         FaultB Keeper
        */
        alias KEEP = Bit!(3, Mutability.rw);

        /*********************************************************************
         FaultB Qualification
        */
        alias QUAL = Bit!(4, Mutability.rw);

        /*********************************************************************
         FaultB Blanking Mode
        */
        final abstract class BLANK
        {
            /*****************************************************************
             BLANK's possible values
            */
            enum Values
            {
                DISABLE = 0x0,

                RISE = 0x1,

                FALL = 0x2,

                BOTH = 0x3,
            }
            mixin BitFieldImplementation!(6, 5, Mutability.rw, Values);
        }

        /*********************************************************************
         FaultB Restart
        */
        alias RESTART = Bit!(7, Mutability.rw);

        /*********************************************************************
         FaultB Halt Mode
        */
        final abstract class HALT
        {
            /*****************************************************************
             HALT's possible values
            */
            enum Values
            {
                DISABLE = 0x0,

                HW = 0x1,

                SW = 0x2,

                NR = 0x3,
            }
            mixin BitFieldImplementation!(9, 8, Mutability.rw, Values);
        }

        /*********************************************************************
         FaultB Capture Channel
        */
        final abstract class CHSEL
        {
            /*****************************************************************
             CHSEL's possible values
            */
            enum Values
            {
                CC0 = 0x0,

                CC1 = 0x1,

                CC2 = 0x2,

                CC3 = 0x3,
            }
            mixin BitFieldImplementation!(11, 10, Mutability.rw, Values);
        }

        /*********************************************************************
         FaultB Capture Action
        */
        final abstract class CAPTURE
        {
            /*****************************************************************
             CAPTURE's possible values
            */
            enum Values
            {
                DISABLE = 0x0,

                CAPT = 0x1,

                CAPTMIN = 0x2,

                CAPTMAX = 0x3,

                LOCMIN = 0x4,

                LOCMAX = 0x5,

                DERIV0 = 0x6,
            }
            mixin BitFieldImplementation!(14, 12, Mutability.rw, Values);
        }

        /*********************************************************************
         FaultB Blanking Time
        */
        alias BLANKVAL = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         FaultB Filter Value
        */
        alias FILTERVAL = BitField!(27, 24, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Enable Clear
    */
    final abstract class INTENCLR : Register!(0x24)
    {
        /*********************************************************************
         Overflow Interrupt Enable
        */
        alias OVF = Bit!(0, Mutability.rw);

        /*********************************************************************
         Retrigger Interrupt Enable
        */
        alias TRG = Bit!(1, Mutability.rw);

        /*********************************************************************
         Counter Interrupt Enable
        */
        alias CNT = Bit!(2, Mutability.rw);

        /*********************************************************************
         Error Interrupt Enable
        */
        alias ERR = Bit!(3, Mutability.rw);

        /*********************************************************************
         Non-recoverable Debug Fault Interrupt Enable
        */
        alias DFS = Bit!(11, Mutability.rw);

        /*********************************************************************
         Recoverable FaultA Interrupt Enable
        */
        alias FAULTA = Bit!(12, Mutability.rw);

        /*********************************************************************
         Recoverable FaultB Interrupt Enable
        */
        alias FAULTB = Bit!(13, Mutability.rw);

        /*********************************************************************
         Non-Recoverable Fault 0 Interrupt Enable
        */
        alias FAULT0 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Non-Recoverable Fault 1 Interrupt Enable
        */
        alias FAULT1 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Match or Capture Channel 0 Interrupt Enable
        */
        alias MC0 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Match or Capture Channel 1 Interrupt Enable
        */
        alias MC1 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Match or Capture Channel 2 Interrupt Enable
        */
        alias MC2 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Match or Capture Channel 3 Interrupt Enable
        */
        alias MC3 = Bit!(19, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Enable Set
    */
    final abstract class INTENSET : Register!(0x28)
    {
        /*********************************************************************
         Overflow Interrupt Enable
        */
        alias OVF = Bit!(0, Mutability.rw);

        /*********************************************************************
         Retrigger Interrupt Enable
        */
        alias TRG = Bit!(1, Mutability.rw);

        /*********************************************************************
         Counter Interrupt Enable
        */
        alias CNT = Bit!(2, Mutability.rw);

        /*********************************************************************
         Error Interrupt Enable
        */
        alias ERR = Bit!(3, Mutability.rw);

        /*********************************************************************
         Non-Recoverable Debug Fault Interrupt Enable
        */
        alias DFS = Bit!(11, Mutability.rw);

        /*********************************************************************
         Recoverable FaultA Interrupt Enable
        */
        alias FAULTA = Bit!(12, Mutability.rw);

        /*********************************************************************
         Recoverable FaultB Interrupt Enable
        */
        alias FAULTB = Bit!(13, Mutability.rw);

        /*********************************************************************
         Non-Recoverable Fault 0 Interrupt Enable
        */
        alias FAULT0 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Non-Recoverable Fault 1 Interrupt Enabl
        */
        alias FAULT1 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Match or Capture Channel 0 Interrupt Enable
        */
        alias MC0 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Match or Capture Channel 1 Interrupt Enable
        */
        alias MC1 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Match or Capture Channel 2 Interrupt Enable
        */
        alias MC2 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Match or Capture Channel 3 Interrupt Enable
        */
        alias MC3 = Bit!(19, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Flag Status and Clear
    */
    final abstract class INTFLAG : Register!(0x2c)
    {
        /*********************************************************************
         Overflow
        */
        alias OVF = Bit!(0, Mutability.rw);

        /*********************************************************************
         Retrigger
        */
        alias TRG = Bit!(1, Mutability.rw);

        /*********************************************************************
         Counter
        */
        alias CNT = Bit!(2, Mutability.rw);

        /*********************************************************************
         Error
        */
        alias ERR = Bit!(3, Mutability.rw);

        /*********************************************************************
         Non-Recoverable Debug Fault
        */
        alias DFS = Bit!(11, Mutability.rw);

        /*********************************************************************
         Recoverable FaultA
        */
        alias FAULTA = Bit!(12, Mutability.rw);

        /*********************************************************************
         Recoverable FaultB
        */
        alias FAULTB = Bit!(13, Mutability.rw);

        /*********************************************************************
         Non-Recoverable Fault 0
        */
        alias FAULT0 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Non-Recoverable Fault 1
        */
        alias FAULT1 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Match or Capture 0
        */
        alias MC0 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Match or Capture 1
        */
        alias MC1 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Match or Capture 2
        */
        alias MC2 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Match or Capture 3
        */
        alias MC3 = Bit!(19, Mutability.rw);
    }

    /*************************************************************************
     Pattern
    */
    final abstract class PATT : Register!(0x38)
    {
        /*********************************************************************
         Pattern Generator 0 Output Enable
        */
        alias PGE0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Pattern Generator 1 Output Enable
        */
        alias PGE1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Pattern Generator 2 Output Enable
        */
        alias PGE2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Pattern Generator 3 Output Enable
        */
        alias PGE3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Pattern Generator 4 Output Enable
        */
        alias PGE4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Pattern Generator 5 Output Enable
        */
        alias PGE5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Pattern Generator 6 Output Enable
        */
        alias PGE6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Pattern Generator 7 Output Enable
        */
        alias PGE7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Pattern Generator 0 Output Value
        */
        alias PGV0 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Pattern Generator 1 Output Value
        */
        alias PGV1 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Pattern Generator 2 Output Value
        */
        alias PGV2 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Pattern Generator 3 Output Value
        */
        alias PGV3 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Pattern Generator 4 Output Value
        */
        alias PGV4 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Pattern Generator 5 Output Value
        */
        alias PGV5 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Pattern Generator 6 Output Value
        */
        alias PGV6 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Pattern Generator 7 Output Value
        */
        alias PGV7 = Bit!(15, Mutability.rw);
    }

    /*************************************************************************
     Pattern Buffer
    */
    final abstract class PATTB : Register!(0x64)
    {
        /*********************************************************************
         Pattern Generator 0 Output Enable Buffer
        */
        alias PGEB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Pattern Generator 1 Output Enable Buffer
        */
        alias PGEB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Pattern Generator 2 Output Enable Buffer
        */
        alias PGEB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Pattern Generator 3 Output Enable Buffer
        */
        alias PGEB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Pattern Generator 4 Output Enable Buffer
        */
        alias PGEB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Pattern Generator 5 Output Enable Buffer
        */
        alias PGEB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Pattern Generator 6 Output Enable Buffer
        */
        alias PGEB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Pattern Generator 7 Output Enable Buffer
        */
        alias PGEB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Pattern Generator 0 Output Enable
        */
        alias PGVB0 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Pattern Generator 1 Output Enable
        */
        alias PGVB1 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Pattern Generator 2 Output Enable
        */
        alias PGVB2 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Pattern Generator 3 Output Enable
        */
        alias PGVB3 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Pattern Generator 4 Output Enable
        */
        alias PGVB4 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Pattern Generator 5 Output Enable
        */
        alias PGVB5 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Pattern Generator 6 Output Enable
        */
        alias PGVB6 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Pattern Generator 7 Output Enable
        */
        alias PGVB7 = Bit!(15, Mutability.rw);
    }

    /*************************************************************************
     Period
    */
    final abstract class PER : Register!(0x40)
    {
        /*********************************************************************
         Period Value
        */
        alias PER = BitField!(23, 0, Mutability.rw);
    }

    /*************************************************************************
     Period Buffer
    */
    final abstract class PERB : Register!(0x6c)
    {
        /*********************************************************************
         Period Value
        */
        alias PERB = BitField!(23, 0, Mutability.rw);
    }

    /*************************************************************************
     Status
    */
    final abstract class STATUS : Register!(0x30)
    {
        /*********************************************************************
         Stop
        */
        alias STOP = Bit!(0, Mutability.r);

        /*********************************************************************
         Ramp
        */
        alias IDX = Bit!(1, Mutability.r);

        /*********************************************************************
         Non-Recoverable Debug Fault State
        */
        alias DFS = Bit!(3, Mutability.rw);

        /*********************************************************************
         Pattern Buffer Valid
        */
        alias PATTBV = Bit!(5, Mutability.rw);

        /*********************************************************************
         Wave Buffer Valid
        */
        alias WAVEBV = Bit!(6, Mutability.rw);

        /*********************************************************************
         Period Buffer Valid
        */
        alias PERBV = Bit!(7, Mutability.rw);

        /*********************************************************************
         Recoverable FaultA Input
        */
        alias FAULTAIN = Bit!(8, Mutability.r);

        /*********************************************************************
         Recoverable FaultB Input
        */
        alias FAULTBIN = Bit!(9, Mutability.r);

        /*********************************************************************
         Non-Recoverable Fault0 Input
        */
        alias FAULT0IN = Bit!(10, Mutability.r);

        /*********************************************************************
         Non-Recoverable Fault1 Input
        */
        alias FAULT1IN = Bit!(11, Mutability.r);

        /*********************************************************************
         Recoverable FaultA State
        */
        alias FAULTA = Bit!(12, Mutability.rw);

        /*********************************************************************
         Recoverable FaultB State
        */
        alias FAULTB = Bit!(13, Mutability.rw);

        /*********************************************************************
         Non-Recoverable Fault 0 State
        */
        alias FAULT0 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Non-Recoverable Fault 1 State
        */
        alias FAULT1 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Compare Channel 0 Buffer Valid
        */
        alias CCBV0 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Compare Channel 1 Buffer Valid
        */
        alias CCBV1 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Compare Channel 2 Buffer Valid
        */
        alias CCBV2 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Compare Channel 3 Buffer Valid
        */
        alias CCBV3 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Compare Channel 0 Value
        */
        alias CMP0 = Bit!(24, Mutability.r);

        /*********************************************************************
         Compare Channel 1 Value
        */
        alias CMP1 = Bit!(25, Mutability.r);

        /*********************************************************************
         Compare Channel 2 Value
        */
        alias CMP2 = Bit!(26, Mutability.r);

        /*********************************************************************
         Compare Channel 3 Value
        */
        alias CMP3 = Bit!(27, Mutability.r);
    }

    /*************************************************************************
     Synchronization Busy
    */
    final abstract class SYNCBUSY : Register!(0x8)
    {
        /*********************************************************************
         Swrst Busy
        */
        alias SWRST = Bit!(0, Mutability.rw);

        /*********************************************************************
         Enable Busy
        */
        alias ENABLE = Bit!(1, Mutability.rw);

        /*********************************************************************
         Ctrlb Busy
        */
        alias CTRLB = Bit!(2, Mutability.rw);

        /*********************************************************************
         Status Busy
        */
        alias STATUS = Bit!(3, Mutability.rw);

        /*********************************************************************
         Count Busy
        */
        alias COUNT = Bit!(4, Mutability.rw);

        /*********************************************************************
         Pattern Busy
        */
        alias PATT = Bit!(5, Mutability.rw);

        /*********************************************************************
         Wave Busy
        */
        alias WAVE = Bit!(6, Mutability.rw);

        /*********************************************************************
         Period busy
        */
        alias PER = Bit!(7, Mutability.rw);

        /*********************************************************************
         Compare Channel Buffer 0 Busy
        */
        alias CC0 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Compare Channel Buffer 1 Busy
        */
        alias CC1 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Compare Channel Buffer 2 Busy
        */
        alias CC2 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Compare Channel Buffer 3 Busy
        */
        alias CC3 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Pattern Buffer Busy
        */
        alias PATTB = Bit!(16, Mutability.rw);

        /*********************************************************************
         Wave Buffer Busy
        */
        alias WAVEB = Bit!(17, Mutability.rw);

        /*********************************************************************
         Period Buffer Busy
        */
        alias PERB = Bit!(18, Mutability.rw);

        /*********************************************************************
         Compare Channel Buffer 0 Busy
        */
        alias CCB0 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Compare Channel Buffer 1 Busy
        */
        alias CCB1 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Compare Channel Buffer 2 Busy
        */
        alias CCB2 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Compare Channel Buffer 3 Busy
        */
        alias CCB3 = Bit!(22, Mutability.rw);
    }

    /*************************************************************************
     Waveform Control
    */
    final abstract class WAVE : Register!(0x3c)
    {
        /*********************************************************************
         Waveform Generation
        */
        final abstract class WAVEGEN
        {
            /*****************************************************************
             WAVEGEN's possible values
            */
            enum Values
            {
                NFRQ = 0x0,

                MFRQ = 0x1,

                NPWM = 0x2,

                DSCRITICAL = 0x4,

                DSBOTTOM = 0x5,

                DSBOTH = 0x6,

                DSTOP = 0x7,
            }
            mixin BitFieldImplementation!(2, 0, Mutability.rw, Values);
        }

        /*********************************************************************
         Ramp Mode
        */
        final abstract class RAMP
        {
            /*****************************************************************
             RAMP's possible values
            */
            enum Values
            {
                RAMP1 = 0x0,

                RAMP2A = 0x1,

                RAMP2 = 0x2,
            }
            mixin BitFieldImplementation!(5, 4, Mutability.rw, Values);
        }

        /*********************************************************************
         Circular period Enable
        */
        alias CIPEREN = Bit!(7, Mutability.rw);

        /*********************************************************************
         Circular Channel 0 Enable
        */
        alias CICCEN0 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Circular Channel 1 Enable
        */
        alias CICCEN1 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Circular Channel 2 Enable
        */
        alias CICCEN2 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Circular Channel 3 Enable
        */
        alias CICCEN3 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Channel 0 Polarity
        */
        alias POL0 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Channel 1 Polarity
        */
        alias POL1 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Channel 2 Polarity
        */
        alias POL2 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Channel 3 Polarity
        */
        alias POL3 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Swap DTI Output Pair 0
        */
        alias SWAP0 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Swap DTI Output Pair 1
        */
        alias SWAP1 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Swap DTI Output Pair 2
        */
        alias SWAP2 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Swap DTI Output Pair 3
        */
        alias SWAP3 = Bit!(27, Mutability.rw);
    }

    /*************************************************************************
     Waveform Control Buffer
    */
    final abstract class WAVEB : Register!(0x68)
    {
        /*********************************************************************
         Waveform Generation Buffer
        */
        final abstract class WAVEGENB
        {
            /*****************************************************************
             WAVEGENB's possible values
            */
            enum Values
            {
                NFRQ = 0x0,

                MFRQ = 0x1,

                NPWM = 0x2,

                DSCRITICAL = 0x4,

                DSBOTTOM = 0x5,

                DSBOTH = 0x6,

                DSTOP = 0x7,
            }
            mixin BitFieldImplementation!(2, 0, Mutability.rw, Values);
        }

        /*********************************************************************
         Ramp Mode Buffer
        */
        alias RAMPB = BitField!(5, 4, Mutability.rw);

        /*********************************************************************
         Circular Period Enable Buffer
        */
        alias CIPERENB = Bit!(7, Mutability.rw);

        /*********************************************************************
         Circular Channel 0 Enable Buffer
        */
        alias CICCENB0 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Circular Channel 1 Enable Buffer
        */
        alias CICCENB1 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Circular Channel 2 Enable Buffer
        */
        alias CICCENB2 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Circular Channel 3 Enable Buffer
        */
        alias CICCENB3 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Channel 0 Polarity Buffer
        */
        alias POLB0 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Channel 1 Polarity Buffer
        */
        alias POLB1 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Channel 2 Polarity Buffer
        */
        alias POLB2 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Channel 3 Polarity Buffer
        */
        alias POLB3 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Swap DTI Output Pair 0 Buffer
        */
        alias SWAPB0 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Swap DTI Output Pair 1 Buffer
        */
        alias SWAPB1 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Swap DTI Output Pair 2 Buffer
        */
        alias SWAPB2 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Swap DTI Output Pair 3 Buffer
        */
        alias SWAPB3 = Bit!(27, Mutability.rw);
    }

    /*************************************************************************
     Waveform Extension Configuration
    */
    final abstract class WEXCTRL : Register!(0x14)
    {
        /*********************************************************************
         Output Matrix
        */
        alias OTMX = BitField!(1, 0, Mutability.rw);

        /*********************************************************************
         Dead-time Insertion Generator 0 Enable
        */
        alias DTIEN0 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Dead-time Insertion Generator 1 Enable
        */
        alias DTIEN1 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Dead-time Insertion Generator 2 Enable
        */
        alias DTIEN2 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Dead-time Insertion Generator 3 Enable
        */
        alias DTIEN3 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Dead-time Low Side Outputs Value
        */
        alias DTLS = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         Dead-time High Side Outputs Value
        */
        alias DTHS = BitField!(31, 24, Mutability.rw);
    }
}
