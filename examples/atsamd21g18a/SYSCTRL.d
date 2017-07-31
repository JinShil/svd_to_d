module atsamd21g18a.sysctrl;

import atsamd21g18a.mmio;

/*****************************************************************************
 System Control
*/
final abstract class SYSCTRL : Peripheral!(0x40000800)
{
    /*************************************************************************
     3.3V Brown-Out Detector (BOD33) Control
    */
    final abstract class BOD33 : Register!(0x34)
    {
        /*********************************************************************
         Enable
        */
        alias ENABLE = Bit!(1, Mutability.rw);

        /*********************************************************************
         Hysteresis
        */
        alias HYST = Bit!(2, Mutability.rw);

        /*********************************************************************
         BOD33 Action
        */
        final abstract class ACTION
        {
            /*****************************************************************
             ACTION's possible values
            */
            enum Values
            {
                /*************************************************************
                 No action
                */
                NONE = 0x0,

                /*************************************************************
                 The BOD33 generates a reset
                */
                RESET = 0x1,

                /*************************************************************
                 The BOD33 generates an interrupt
                */
                INTERRUPT = 0x2,
            }
            mixin BitFieldImplementation!(4, 3, Mutability.rw, values);
        }

        /*********************************************************************
         Run in Standby
        */
        alias RUNSTDBY = Bit!(6, Mutability.rw);

        /*********************************************************************
         Operation Mode
        */
        alias MODE = Bit!(8, Mutability.rw);

        /*********************************************************************
         Clock Enable
        */
        alias CEN = Bit!(9, Mutability.rw);

        /*********************************************************************
         Prescaler Select
        */
        final abstract class PSEL
        {
            /*****************************************************************
             PSEL's possible values
            */
            enum Values
            {
                /*************************************************************
                 Divide clock by 2
                */
                DIV2 = 0x0,

                /*************************************************************
                 Divide clock by 4
                */
                DIV4 = 0x1,

                /*************************************************************
                 Divide clock by 8
                */
                DIV8 = 0x2,

                /*************************************************************
                 Divide clock by 16
                */
                DIV16 = 0x3,

                /*************************************************************
                 Divide clock by 32
                */
                DIV32 = 0x4,

                /*************************************************************
                 Divide clock by 64
                */
                DIV64 = 0x5,

                /*************************************************************
                 Divide clock by 128
                */
                DIV128 = 0x6,

                /*************************************************************
                 Divide clock by 256
                */
                DIV256 = 0x7,

                /*************************************************************
                 Divide clock by 512
                */
                DIV512 = 0x8,

                /*************************************************************
                 Divide clock by 1024
                */
                DIV1K = 0x9,

                /*************************************************************
                 Divide clock by 2048
                */
                DIV2K = 0xa,

                /*************************************************************
                 Divide clock by 4096
                */
                DIV4K = 0xb,

                /*************************************************************
                 Divide clock by 8192
                */
                DIV8K = 0xc,

                /*************************************************************
                 Divide clock by 16384
                */
                DIV16K = 0xd,

                /*************************************************************
                 Divide clock by 32768
                */
                DIV32K = 0xe,

                /*************************************************************
                 Divide clock by 65536
                */
                DIV64K = 0xf,
            }
            mixin BitFieldImplementation!(15, 12, Mutability.rw, values);
        }

        /*********************************************************************
         BOD33 Threshold Level
        */
        alias LEVEL = BitField!(21, 16, Mutability.rw);
    }

    /*************************************************************************
     DFLL48M Control
    */
    final abstract class DFLLCTRL : Register!(0x24)
    {
        /*********************************************************************
         DFLL Enable
        */
        alias ENABLE = Bit!(1, Mutability.rw);

        /*********************************************************************
         Operating Mode Selection
        */
        alias MODE = Bit!(2, Mutability.rw);

        /*********************************************************************
         Stable DFLL Frequency
        */
        alias STABLE = Bit!(3, Mutability.rw);

        /*********************************************************************
         Lose Lock After Wake
        */
        alias LLAW = Bit!(4, Mutability.rw);

        /*********************************************************************
         USB Clock Recovery Mode
        */
        alias USBCRM = Bit!(5, Mutability.rw);

        /*********************************************************************
         Run in Standby
        */
        alias RUNSTDBY = Bit!(6, Mutability.rw);

        /*********************************************************************
         On Demand Control
        */
        alias ONDEMAND = Bit!(7, Mutability.rw);

        /*********************************************************************
         Chill Cycle Disable
        */
        alias CCDIS = Bit!(8, Mutability.rw);

        /*********************************************************************
         Quick Lock Disable
        */
        alias QLDIS = Bit!(9, Mutability.rw);

        /*********************************************************************
         Bypass Coarse Lock
        */
        alias BPLCKC = Bit!(10, Mutability.rw);

        /*********************************************************************
         Wait Lock
        */
        alias WAITLOCK = Bit!(11, Mutability.rw);
    }

    /*************************************************************************
     DFLL48M Multiplier
    */
    final abstract class DFLLMUL : Register!(0x2C)
    {
        /*********************************************************************
         DFLL Multiply Factor
        */
        alias MUL = BitField!(15, 0, Mutability.rw);

        /*********************************************************************
         Fine Maximum Step
        */
        alias FSTEP = BitField!(25, 16, Mutability.rw);

        /*********************************************************************
         Coarse Maximum Step
        */
        alias CSTEP = BitField!(31, 26, Mutability.rw);
    }

    /*************************************************************************
     DFLL48M Synchronization
    */
    final abstract class DFLLSYNC : Register!(0x30)
    {
        /*********************************************************************
         Read Request
        */
        alias READREQ = Bit!(7, Mutability.w);
    }

    /*************************************************************************
     DFLL48M Value
    */
    final abstract class DFLLVAL : Register!(0x28)
    {
        /*********************************************************************
         Fine Value
        */
        alias FINE = BitField!(9, 0, Mutability.rw);

        /*********************************************************************
         Coarse Value
        */
        alias COARSE = BitField!(15, 10, Mutability.rw);

        /*********************************************************************
         Multiplication Ratio Difference
        */
        alias DIFF = BitField!(31, 16, Mutability.r);
    }

    /*************************************************************************
     DPLL Control A
    */
    final abstract class DPLLCTRLA : Register!(0x44)
    {
        /*********************************************************************
         DPLL Enable
        */
        alias ENABLE = Bit!(1, Mutability.rw);

        /*********************************************************************
         Run in Standby
        */
        alias RUNSTDBY = Bit!(6, Mutability.rw);

        /*********************************************************************
         On Demand Clock Activation
        */
        alias ONDEMAND = Bit!(7, Mutability.rw);
    }

    /*************************************************************************
     DPLL Control B
    */
    final abstract class DPLLCTRLB : Register!(0x4C)
    {
        /*********************************************************************
         Proportional Integral Filter Selection
        */
        final abstract class FILTER
        {
            /*****************************************************************
             FILTER's possible values
            */
            enum Values
            {
                /*************************************************************
                 Default filter mode
                */
                DEFAULT = 0x0,

                /*************************************************************
                 Low bandwidth filter
                */
                LBFILT = 0x1,

                /*************************************************************
                 High bandwidth filter
                */
                HBFILT = 0x2,

                /*************************************************************
                 High damping filter
                */
                HDFILT = 0x3,
            }
            mixin BitFieldImplementation!(1, 0, Mutability.rw, values);
        }

        /*********************************************************************
         Low-Power Enable
        */
        alias LPEN = Bit!(2, Mutability.rw);

        /*********************************************************************
         Wake Up Fast
        */
        alias WUF = Bit!(3, Mutability.rw);

        /*********************************************************************
         Reference Clock Selection
        */
        final abstract class REFCLK
        {
            /*****************************************************************
             REFCLK's possible values
            */
            enum Values
            {
                /*************************************************************
                 CLK_DPLL_REF0 clock reference
                */
                REF0 = 0x0,

                /*************************************************************
                 CLK_DPLL_REF1 clock reference
                */
                REF1 = 0x1,

                /*************************************************************
                 GCLK_DPLL clock reference
                */
                GCLK = 0x2,
            }
            mixin BitFieldImplementation!(5, 4, Mutability.rw, values);
        }

        /*********************************************************************
         Lock Time
        */
        final abstract class LTIME
        {
            /*****************************************************************
             LTIME's possible values
            */
            enum Values
            {
                /*************************************************************
                 Default	No time-out
                */
                0x0 = 0x0,

                /*************************************************************
                 8MS	Time-out if no lock within 8 ms
                */
                0x4 = 0x4,

                /*************************************************************
                 9MS	Time-out if no lock within 9 ms
                */
                0x5 = 0x5,

                /*************************************************************
                 10MS	Time-out if no lock within 10 ms
                */
                0x6 = 0x6,

                /*************************************************************
                 11MS	Time-out if no lock within 11 ms
                */
                0x7 = 0x7,
            }
            mixin BitFieldImplementation!(10, 8, Mutability.rw, values);
        }

        /*********************************************************************
         Lock Bypass
        */
        alias LBYPASS = Bit!(12, Mutability.rw);

        /*********************************************************************
         Clock Divider
        */
        alias DIV = BitField!(26, 16, Mutability.rw);
    }

    /*************************************************************************
     DPLL Ratio Control
    */
    final abstract class DPLLRATIO : Register!(0x48)
    {
        /*********************************************************************
         Loop Divider Ratio
        */
        alias LDR = BitField!(11, 0, Mutability.rw);

        /*********************************************************************
         Loop Divider Ratio Fractional Part
        */
        alias LDRFRAC = BitField!(19, 16, Mutability.rw);
    }

    /*************************************************************************
     DPLL Status
    */
    final abstract class DPLLSTATUS : Register!(0x50)
    {
        /*********************************************************************
         DPLL Lock Status
        */
        alias LOCK = Bit!(0, Mutability.r);

        /*********************************************************************
         Output Clock Ready
        */
        alias CLKRDY = Bit!(1, Mutability.r);

        /*********************************************************************
         DPLL Enable
        */
        alias ENABLE = Bit!(2, Mutability.r);

        /*********************************************************************
         Divider Enable
        */
        alias DIV = Bit!(3, Mutability.r);
    }

    /*************************************************************************
     Interrupt Enable Clear
    */
    final abstract class INTENCLR : Register!(0x00)
    {
        /*********************************************************************
         XOSC Ready Interrupt Enable
        */
        alias XOSCRDY = Bit!(0, Mutability.rw);

        /*********************************************************************
         XOSC32K Ready Interrupt Enable
        */
        alias XOSC32KRDY = Bit!(1, Mutability.rw);

        /*********************************************************************
         OSC32K Ready Interrupt Enable
        */
        alias OSC32KRDY = Bit!(2, Mutability.rw);

        /*********************************************************************
         OSC8M Ready Interrupt Enable
        */
        alias OSC8MRDY = Bit!(3, Mutability.rw);

        /*********************************************************************
         DFLL Ready Interrupt Enable
        */
        alias DFLLRDY = Bit!(4, Mutability.rw);

        /*********************************************************************
         DFLL Out Of Bounds Interrupt Enable
        */
        alias DFLLOOB = Bit!(5, Mutability.rw);

        /*********************************************************************
         DFLL Lock Fine Interrupt Enable
        */
        alias DFLLLCKF = Bit!(6, Mutability.rw);

        /*********************************************************************
         DFLL Lock Coarse Interrupt Enable
        */
        alias DFLLLCKC = Bit!(7, Mutability.rw);

        /*********************************************************************
         DFLL Reference Clock Stopped Interrupt Enable
        */
        alias DFLLRCS = Bit!(8, Mutability.rw);

        /*********************************************************************
         BOD33 Ready Interrupt Enable
        */
        alias BOD33RDY = Bit!(9, Mutability.rw);

        /*********************************************************************
         BOD33 Detection Interrupt Enable
        */
        alias BOD33DET = Bit!(10, Mutability.rw);

        /*********************************************************************
         BOD33 Synchronization Ready Interrupt Enable
        */
        alias B33SRDY = Bit!(11, Mutability.rw);

        /*********************************************************************
         DPLL Lock Rise Interrupt Enable
        */
        alias DPLLLCKR = Bit!(15, Mutability.rw);

        /*********************************************************************
         DPLL Lock Fall Interrupt Enable
        */
        alias DPLLLCKF = Bit!(16, Mutability.rw);

        /*********************************************************************
         DPLL Lock Timeout Interrupt Enable
        */
        alias DPLLLTO = Bit!(17, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Enable Set
    */
    final abstract class INTENSET : Register!(0x04)
    {
        /*********************************************************************
         XOSC Ready Interrupt Enable
        */
        alias XOSCRDY = Bit!(0, Mutability.rw);

        /*********************************************************************
         XOSC32K Ready Interrupt Enable
        */
        alias XOSC32KRDY = Bit!(1, Mutability.rw);

        /*********************************************************************
         OSC32K Ready Interrupt Enable
        */
        alias OSC32KRDY = Bit!(2, Mutability.rw);

        /*********************************************************************
         OSC8M Ready Interrupt Enable
        */
        alias OSC8MRDY = Bit!(3, Mutability.rw);

        /*********************************************************************
         DFLL Ready Interrupt Enable
        */
        alias DFLLRDY = Bit!(4, Mutability.rw);

        /*********************************************************************
         DFLL Out Of Bounds Interrupt Enable
        */
        alias DFLLOOB = Bit!(5, Mutability.rw);

        /*********************************************************************
         DFLL Lock Fine Interrupt Enable
        */
        alias DFLLLCKF = Bit!(6, Mutability.rw);

        /*********************************************************************
         DFLL Lock Coarse Interrupt Enable
        */
        alias DFLLLCKC = Bit!(7, Mutability.rw);

        /*********************************************************************
         DFLL Reference Clock Stopped Interrupt Enable
        */
        alias DFLLRCS = Bit!(8, Mutability.rw);

        /*********************************************************************
         BOD33 Ready Interrupt Enable
        */
        alias BOD33RDY = Bit!(9, Mutability.rw);

        /*********************************************************************
         BOD33 Detection Interrupt Enable
        */
        alias BOD33DET = Bit!(10, Mutability.rw);

        /*********************************************************************
         BOD33 Synchronization Ready Interrupt Enable
        */
        alias B33SRDY = Bit!(11, Mutability.rw);

        /*********************************************************************
         DPLL Lock Rise Interrupt Enable
        */
        alias DPLLLCKR = Bit!(15, Mutability.rw);

        /*********************************************************************
         DPLL Lock Fall Interrupt Enable
        */
        alias DPLLLCKF = Bit!(16, Mutability.rw);

        /*********************************************************************
         DPLL Lock Timeout Interrupt Enable
        */
        alias DPLLLTO = Bit!(17, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Flag Status and Clear
    */
    final abstract class INTFLAG : Register!(0x08)
    {
        /*********************************************************************
         XOSC Ready
        */
        alias XOSCRDY = Bit!(0, Mutability.rw);

        /*********************************************************************
         XOSC32K Ready
        */
        alias XOSC32KRDY = Bit!(1, Mutability.rw);

        /*********************************************************************
         OSC32K Ready
        */
        alias OSC32KRDY = Bit!(2, Mutability.rw);

        /*********************************************************************
         OSC8M Ready
        */
        alias OSC8MRDY = Bit!(3, Mutability.rw);

        /*********************************************************************
         DFLL Ready
        */
        alias DFLLRDY = Bit!(4, Mutability.rw);

        /*********************************************************************
         DFLL Out Of Bounds
        */
        alias DFLLOOB = Bit!(5, Mutability.rw);

        /*********************************************************************
         DFLL Lock Fine
        */
        alias DFLLLCKF = Bit!(6, Mutability.rw);

        /*********************************************************************
         DFLL Lock Coarse
        */
        alias DFLLLCKC = Bit!(7, Mutability.rw);

        /*********************************************************************
         DFLL Reference Clock Stopped
        */
        alias DFLLRCS = Bit!(8, Mutability.rw);

        /*********************************************************************
         BOD33 Ready
        */
        alias BOD33RDY = Bit!(9, Mutability.rw);

        /*********************************************************************
         BOD33 Detection
        */
        alias BOD33DET = Bit!(10, Mutability.rw);

        /*********************************************************************
         BOD33 Synchronization Ready
        */
        alias B33SRDY = Bit!(11, Mutability.rw);

        /*********************************************************************
         DPLL Lock Rise
        */
        alias DPLLLCKR = Bit!(15, Mutability.rw);

        /*********************************************************************
         DPLL Lock Fall
        */
        alias DPLLLCKF = Bit!(16, Mutability.rw);

        /*********************************************************************
         DPLL Lock Timeout
        */
        alias DPLLLTO = Bit!(17, Mutability.rw);
    }

    /*************************************************************************
     32kHz Ultra Low Power Internal Oscillator (OSCULP32K) Control
    */
    final abstract class OSCULP32K : Register!(0x1C)
    {
        /*********************************************************************
         Oscillator Calibration
        */
        alias CALIB = BitField!(4, 0, Mutability.rw);

        /*********************************************************************
         Write Lock
        */
        alias WRTLOCK = Bit!(7, Mutability.rw);
    }

    /*************************************************************************
     8MHz Internal Oscillator (OSC8M) Control
    */
    final abstract class OSC8M : Register!(0x20)
    {
        /*********************************************************************
         Oscillator Enable
        */
        alias ENABLE = Bit!(1, Mutability.rw);

        /*********************************************************************
         Run in Standby
        */
        alias RUNSTDBY = Bit!(6, Mutability.rw);

        /*********************************************************************
         On Demand Control
        */
        alias ONDEMAND = Bit!(7, Mutability.rw);

        /*********************************************************************
         Oscillator Prescaler
        */
        final abstract class PRESC
        {
            /*****************************************************************
             PRESC's possible values
            */
            enum Values
            {
                /*************************************************************
                 1
                */
                0x0 = 0x0,

                /*************************************************************
                 2
                */
                0x1 = 0x1,

                /*************************************************************
                 4
                */
                0x2 = 0x2,

                /*************************************************************
                 8
                */
                0x3 = 0x3,
            }
            mixin BitFieldImplementation!(9, 8, Mutability.rw, values);
        }

        /*********************************************************************
         Oscillator Calibration
        */
        alias CALIB = BitField!(27, 16, Mutability.rw);

        /*********************************************************************
         Oscillator Frequency Range
        */
        final abstract class FRANGE
        {
            /*****************************************************************
             FRANGE's possible values
            */
            enum Values
            {
                /*************************************************************
                 4 to 6MHz
                */
                0x0 = 0x0,

                /*************************************************************
                 6 to 8MHz
                */
                0x1 = 0x1,

                /*************************************************************
                 8 to 11MHz
                */
                0x2 = 0x2,

                /*************************************************************
                 11 to 15MHz
                */
                0x3 = 0x3,
            }
            mixin BitFieldImplementation!(31, 30, Mutability.rw, values);
        }
    }

    /*************************************************************************
     32kHz Internal Oscillator (OSC32K) Control
    */
    final abstract class OSC32K : Register!(0x18)
    {
        /*********************************************************************
         Oscillator Enable
        */
        alias ENABLE = Bit!(1, Mutability.rw);

        /*********************************************************************
         32kHz Output Enable
        */
        alias EN32K = Bit!(2, Mutability.rw);

        /*********************************************************************
         1kHz Output Enable
        */
        alias EN1K = Bit!(3, Mutability.rw);

        /*********************************************************************
         Run in Standby
        */
        alias RUNSTDBY = Bit!(6, Mutability.rw);

        /*********************************************************************
         On Demand Control
        */
        alias ONDEMAND = Bit!(7, Mutability.rw);

        /*********************************************************************
         Oscillator Start-Up Time
        */
        alias STARTUP = BitField!(10, 8, Mutability.rw);

        /*********************************************************************
         Write Lock
        */
        alias WRTLOCK = Bit!(12, Mutability.rw);

        /*********************************************************************
         Oscillator Calibration
        */
        alias CALIB = BitField!(22, 16, Mutability.rw);
    }

    /*************************************************************************
     Power and Clocks Status
    */
    final abstract class PCLKSR : Register!(0x0C)
    {
        /*********************************************************************
         XOSC Ready
        */
        alias XOSCRDY = Bit!(0, Mutability.r);

        /*********************************************************************
         XOSC32K Ready
        */
        alias XOSC32KRDY = Bit!(1, Mutability.r);

        /*********************************************************************
         OSC32K Ready
        */
        alias OSC32KRDY = Bit!(2, Mutability.r);

        /*********************************************************************
         OSC8M Ready
        */
        alias OSC8MRDY = Bit!(3, Mutability.r);

        /*********************************************************************
         DFLL Ready
        */
        alias DFLLRDY = Bit!(4, Mutability.r);

        /*********************************************************************
         DFLL Out Of Bounds
        */
        alias DFLLOOB = Bit!(5, Mutability.r);

        /*********************************************************************
         DFLL Lock Fine
        */
        alias DFLLLCKF = Bit!(6, Mutability.r);

        /*********************************************************************
         DFLL Lock Coarse
        */
        alias DFLLLCKC = Bit!(7, Mutability.r);

        /*********************************************************************
         DFLL Reference Clock Stopped
        */
        alias DFLLRCS = Bit!(8, Mutability.r);

        /*********************************************************************
         BOD33 Ready
        */
        alias BOD33RDY = Bit!(9, Mutability.r);

        /*********************************************************************
         BOD33 Detection
        */
        alias BOD33DET = Bit!(10, Mutability.r);

        /*********************************************************************
         BOD33 Synchronization Ready
        */
        alias B33SRDY = Bit!(11, Mutability.r);

        /*********************************************************************
         DPLL Lock Rise
        */
        alias DPLLLCKR = Bit!(15, Mutability.r);

        /*********************************************************************
         DPLL Lock Fall
        */
        alias DPLLLCKF = Bit!(16, Mutability.r);

        /*********************************************************************
         DPLL Lock Timeout
        */
        alias DPLLLTO = Bit!(17, Mutability.r);
    }

    /*************************************************************************
     Voltage References System (VREF) Control
    */
    final abstract class VREF : Register!(0x40)
    {
        /*********************************************************************
         Temperature Sensor Enable
        */
        alias TSEN = Bit!(1, Mutability.rw);

        /*********************************************************************
         Bandgap Output Enable
        */
        alias BGOUTEN = Bit!(2, Mutability.rw);

        /*********************************************************************
         Bandgap Voltage Generator Calibration
        */
        alias CALIB = BitField!(26, 16, Mutability.rw);
    }

    /*************************************************************************
     External Multipurpose Crystal Oscillator (XOSC) Control
    */
    final abstract class XOSC : Register!(0x10)
    {
        /*********************************************************************
         Oscillator Enable
        */
        alias ENABLE = Bit!(1, Mutability.rw);

        /*********************************************************************
         Crystal Oscillator Enable
        */
        alias XTALEN = Bit!(2, Mutability.rw);

        /*********************************************************************
         Run in Standby
        */
        alias RUNSTDBY = Bit!(6, Mutability.rw);

        /*********************************************************************
         On Demand Control
        */
        alias ONDEMAND = Bit!(7, Mutability.rw);

        /*********************************************************************
         Oscillator Gain
        */
        final abstract class GAIN
        {
            /*****************************************************************
             GAIN's possible values
            */
            enum Values
            {
                /*************************************************************
                 2MHz
                */
                0x0 = 0x0,

                /*************************************************************
                 4MHz
                */
                0x1 = 0x1,

                /*************************************************************
                 8MHz
                */
                0x2 = 0x2,

                /*************************************************************
                 16MHz
                */
                0x3 = 0x3,

                /*************************************************************
                 30MHz
                */
                0x4 = 0x4,
            }
            mixin BitFieldImplementation!(10, 8, Mutability.rw, values);
        }

        /*********************************************************************
         Automatic Amplitude Gain Control
        */
        alias AMPGC = Bit!(11, Mutability.rw);

        /*********************************************************************
         Start-Up Time
        */
        alias STARTUP = BitField!(15, 12, Mutability.rw);
    }

    /*************************************************************************
     32kHz External Crystal Oscillator (XOSC32K) Control
    */
    final abstract class XOSC32K : Register!(0x14)
    {
        /*********************************************************************
         Oscillator Enable
        */
        alias ENABLE = Bit!(1, Mutability.rw);

        /*********************************************************************
         Crystal Oscillator Enable
        */
        alias XTALEN = Bit!(2, Mutability.rw);

        /*********************************************************************
         32kHz Output Enable
        */
        alias EN32K = Bit!(3, Mutability.rw);

        /*********************************************************************
         1kHz Output Enable
        */
        alias EN1K = Bit!(4, Mutability.rw);

        /*********************************************************************
         Automatic Amplitude Control Enable
        */
        alias AAMPEN = Bit!(5, Mutability.rw);

        /*********************************************************************
         Run in Standby
        */
        alias RUNSTDBY = Bit!(6, Mutability.rw);

        /*********************************************************************
         On Demand Control
        */
        alias ONDEMAND = Bit!(7, Mutability.rw);

        /*********************************************************************
         Oscillator Start-Up Time
        */
        alias STARTUP = BitField!(10, 8, Mutability.rw);

        /*********************************************************************
         Write Lock
        */
        alias WRTLOCK = Bit!(12, Mutability.rw);
    }
}
