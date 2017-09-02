module atsamd21g18a.adc;

import atsamd21g18a.mmio;

/*****************************************************************************
 Analog Digital Converter
*/
final abstract class ADC : Peripheral!(0x42004000)
{
    /*************************************************************************
     Average Control
    */
    final abstract class AVGCTRL : Register!(0x2)
    {
        /*********************************************************************
         Number of Samples to be Collected
        */
        final abstract class SAMPLENUM
        {
            /*****************************************************************
             SAMPLENUM's possible values
            */
            enum Values
            {
                /*************************************************************
                 1 sample
                */
                _1 = 0x0,

                /*************************************************************
                 2 samples
                */
                _2 = 0x1,

                /*************************************************************
                 4 samples
                */
                _4 = 0x2,

                /*************************************************************
                 8 samples
                */
                _8 = 0x3,

                /*************************************************************
                 16 samples
                */
                _16 = 0x4,

                /*************************************************************
                 32 samples
                */
                _32 = 0x5,

                /*************************************************************
                 64 samples
                */
                _64 = 0x6,

                /*************************************************************
                 128 samples
                */
                _128 = 0x7,

                /*************************************************************
                 256 samples
                */
                _256 = 0x8,

                /*************************************************************
                 512 samples
                */
                _512 = 0x9,

                /*************************************************************
                 1024 samples
                */
                _1024 = 0xa,
            }
            mixin BitFieldImplementation!(3, 0, Mutability.rw, Values);
        }

        /*********************************************************************
         Adjusting Result / Division Coefficient
        */
        alias ADJRES = BitField!(6, 4, Mutability.rw);
    }

    /*************************************************************************
     Calibration
    */
    final abstract class CALIB : Register!(0x28)
    {
        /*********************************************************************
         Linearity Calibration Value
        */
        alias LINEARITY_CAL = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         Bias Calibration Value
        */
        alias BIAS_CAL = BitField!(10, 8, Mutability.rw);
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
         Run in Standby
        */
        alias RUNSTDBY = Bit!(2, Mutability.rw);
    }

    /*************************************************************************
     Control B
    */
    final abstract class CTRLB : Register!(0x4)
    {
        /*********************************************************************
         Differential Mode
        */
        alias DIFFMODE = Bit!(0, Mutability.rw);

        /*********************************************************************
         Left-Adjusted Result
        */
        alias LEFTADJ = Bit!(1, Mutability.rw);

        /*********************************************************************
         Free Running Mode
        */
        alias FREERUN = Bit!(2, Mutability.rw);

        /*********************************************************************
         Digital Correction Logic Enabled
        */
        alias CORREN = Bit!(3, Mutability.rw);

        /*********************************************************************
         Conversion Result Resolution
        */
        final abstract class RESSEL
        {
            /*****************************************************************
             RESSEL's possible values
            */
            enum Values
            {
                /*************************************************************
                 12-bit result
                */
                _12BIT = 0x0,

                /*************************************************************
                 For averaging mode output
                */
                _16BIT = 0x1,

                /*************************************************************
                 10-bit result
                */
                _10BIT = 0x2,

                /*************************************************************
                 8-bit result
                */
                _8BIT = 0x3,
            }
            mixin BitFieldImplementation!(5, 4, Mutability.rw, Values);
        }

        /*********************************************************************
         Prescaler Configuration
        */
        final abstract class PRESCALER
        {
            /*****************************************************************
             PRESCALER's possible values
            */
            enum Values
            {
                /*************************************************************
                 Peripheral clock divided by 4
                */
                DIV4 = 0x0,

                /*************************************************************
                 Peripheral clock divided by 8
                */
                DIV8 = 0x1,

                /*************************************************************
                 Peripheral clock divided by 16
                */
                DIV16 = 0x2,

                /*************************************************************
                 Peripheral clock divided by 32
                */
                DIV32 = 0x3,

                /*************************************************************
                 Peripheral clock divided by 64
                */
                DIV64 = 0x4,

                /*************************************************************
                 Peripheral clock divided by 128
                */
                DIV128 = 0x5,

                /*************************************************************
                 Peripheral clock divided by 256
                */
                DIV256 = 0x6,

                /*************************************************************
                 Peripheral clock divided by 512
                */
                DIV512 = 0x7,
            }
            mixin BitFieldImplementation!(10, 8, Mutability.rw, Values);
        }
    }

    /*************************************************************************
     Debug Control
    */
    final abstract class DBGCTRL : Register!(0x2a)
    {
        /*********************************************************************
         Debug Run
        */
        alias DBGRUN = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     Event Control
    */
    final abstract class EVCTRL : Register!(0x14)
    {
        /*********************************************************************
         Start Conversion Event In
        */
        alias STARTEI = Bit!(0, Mutability.rw);

        /*********************************************************************
         Synchronization Event In
        */
        alias SYNCEI = Bit!(1, Mutability.rw);

        /*********************************************************************
         Result Ready Event Out
        */
        alias RESRDYEO = Bit!(4, Mutability.rw);

        /*********************************************************************
         Window Monitor Event Out
        */
        alias WINMONEO = Bit!(5, Mutability.rw);
    }

    /*************************************************************************
     Gain Correction
    */
    final abstract class GAINCORR : Register!(0x24)
    {
        /*********************************************************************
         Gain Correction Value
        */
        alias GAINCORR = BitField!(11, 0, Mutability.rw);
    }

    /*************************************************************************
     Input Control
    */
    final abstract class INPUTCTRL : Register!(0x10)
    {
        /*********************************************************************
         Positive Mux Input Selection
        */
        final abstract class MUXPOS
        {
            /*****************************************************************
             MUXPOS's possible values
            */
            enum Values
            {
                /*************************************************************
                 ADC AIN0 Pin
                */
                PIN0 = 0x0,

                /*************************************************************
                 ADC AIN1 Pin
                */
                PIN1 = 0x1,

                /*************************************************************
                 ADC AIN2 Pin
                */
                PIN2 = 0x2,

                /*************************************************************
                 ADC AIN3 Pin
                */
                PIN3 = 0x3,

                /*************************************************************
                 ADC AIN4 Pin
                */
                PIN4 = 0x4,

                /*************************************************************
                 ADC AIN5 Pin
                */
                PIN5 = 0x5,

                /*************************************************************
                 ADC AIN6 Pin
                */
                PIN6 = 0x6,

                /*************************************************************
                 ADC AIN7 Pin
                */
                PIN7 = 0x7,

                /*************************************************************
                 ADC AIN8 Pin
                */
                PIN8 = 0x8,

                /*************************************************************
                 ADC AIN9 Pin
                */
                PIN9 = 0x9,

                /*************************************************************
                 ADC AIN10 Pin
                */
                PIN10 = 0xa,

                /*************************************************************
                 ADC AIN11 Pin
                */
                PIN11 = 0xb,

                /*************************************************************
                 ADC AIN12 Pin
                */
                PIN12 = 0xc,

                /*************************************************************
                 ADC AIN13 Pin
                */
                PIN13 = 0xd,

                /*************************************************************
                 ADC AIN14 Pin
                */
                PIN14 = 0xe,

                /*************************************************************
                 ADC AIN15 Pin
                */
                PIN15 = 0xf,

                /*************************************************************
                 ADC AIN16 Pin
                */
                PIN16 = 0x10,

                /*************************************************************
                 ADC AIN17 Pin
                */
                PIN17 = 0x11,

                /*************************************************************
                 ADC AIN18 Pin
                */
                PIN18 = 0x12,

                /*************************************************************
                 ADC AIN19 Pin
                */
                PIN19 = 0x13,

                /*************************************************************
                 Temperature Reference
                */
                TEMP = 0x18,

                /*************************************************************
                 Bandgap Voltage
                */
                BANDGAP = 0x19,

                /*************************************************************
                 1/4  Scaled Core Supply
                */
                SCALEDCOREVCC = 0x1a,

                /*************************************************************
                 1/4  Scaled I/O Supply
                */
                SCALEDIOVCC = 0x1b,

                /*************************************************************
                 DAC Output
                */
                DAC = 0x1c,
            }
            mixin BitFieldImplementation!(4, 0, Mutability.rw, Values);
        }

        /*********************************************************************
         Negative Mux Input Selection
        */
        final abstract class MUXNEG
        {
            /*****************************************************************
             MUXNEG's possible values
            */
            enum Values
            {
                /*************************************************************
                 ADC AIN0 Pin
                */
                PIN0 = 0x0,

                /*************************************************************
                 ADC AIN1 Pin
                */
                PIN1 = 0x1,

                /*************************************************************
                 ADC AIN2 Pin
                */
                PIN2 = 0x2,

                /*************************************************************
                 ADC AIN3 Pin
                */
                PIN3 = 0x3,

                /*************************************************************
                 ADC AIN4 Pin
                */
                PIN4 = 0x4,

                /*************************************************************
                 ADC AIN5 Pin
                */
                PIN5 = 0x5,

                /*************************************************************
                 ADC AIN6 Pin
                */
                PIN6 = 0x6,

                /*************************************************************
                 ADC AIN7 Pin
                */
                PIN7 = 0x7,

                /*************************************************************
                 Internal Ground
                */
                GND = 0x18,

                /*************************************************************
                 I/O Ground
                */
                IOGND = 0x19,
            }
            mixin BitFieldImplementation!(12, 8, Mutability.rw, Values);
        }

        /*********************************************************************
         Number of Input Channels Included in Scan
        */
        alias INPUTSCAN = BitField!(19, 16, Mutability.rw);

        /*********************************************************************
         Positive Mux Setting Offset
        */
        alias INPUTOFFSET = BitField!(23, 20, Mutability.rw);

        /*********************************************************************
         Gain Factor Selection
        */
        final abstract class GAIN
        {
            /*****************************************************************
             GAIN's possible values
            */
            enum Values
            {
                /*************************************************************
                 1x
                */
                _1X = 0x0,

                /*************************************************************
                 2x
                */
                _2X = 0x1,

                /*************************************************************
                 4x
                */
                _4X = 0x2,

                /*************************************************************
                 8x
                */
                _8X = 0x3,

                /*************************************************************
                 16x
                */
                _16X = 0x4,

                /*************************************************************
                 1/2x
                */
                DIV2 = 0xf,
            }
            mixin BitFieldImplementation!(27, 24, Mutability.rw, Values);
        }
    }

    /*************************************************************************
     Interrupt Enable Clear
    */
    final abstract class INTENCLR : Register!(0x16)
    {
        /*********************************************************************
         Result Ready Interrupt Enable
        */
        alias RESRDY = Bit!(0, Mutability.rw);

        /*********************************************************************
         Overrun Interrupt Enable
        */
        alias OVERRUN = Bit!(1, Mutability.rw);

        /*********************************************************************
         Window Monitor Interrupt Enable
        */
        alias WINMON = Bit!(2, Mutability.rw);

        /*********************************************************************
         Synchronization Ready Interrupt Enable
        */
        alias SYNCRDY = Bit!(3, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Enable Set
    */
    final abstract class INTENSET : Register!(0x17)
    {
        /*********************************************************************
         Result Ready Interrupt Enable
        */
        alias RESRDY = Bit!(0, Mutability.rw);

        /*********************************************************************
         Overrun Interrupt Enable
        */
        alias OVERRUN = Bit!(1, Mutability.rw);

        /*********************************************************************
         Window Monitor Interrupt Enable
        */
        alias WINMON = Bit!(2, Mutability.rw);

        /*********************************************************************
         Synchronization Ready Interrupt Enable
        */
        alias SYNCRDY = Bit!(3, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Flag Status and Clear
    */
    final abstract class INTFLAG : Register!(0x18)
    {
        /*********************************************************************
         Result Ready
        */
        alias RESRDY = Bit!(0, Mutability.rw);

        /*********************************************************************
         Overrun
        */
        alias OVERRUN = Bit!(1, Mutability.rw);

        /*********************************************************************
         Window Monitor
        */
        alias WINMON = Bit!(2, Mutability.rw);

        /*********************************************************************
         Synchronization Ready
        */
        alias SYNCRDY = Bit!(3, Mutability.rw);
    }

    /*************************************************************************
     Offset Correction
    */
    final abstract class OFFSETCORR : Register!(0x26)
    {
        /*********************************************************************
         Offset Correction Value
        */
        alias OFFSETCORR = BitField!(11, 0, Mutability.rw);
    }

    /*************************************************************************
     Reference Control
    */
    final abstract class REFCTRL : Register!(0x1)
    {
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
                 1.0V voltage reference
                */
                INT1V = 0x0,

                /*************************************************************
                 1/1.48 VDDANA
                */
                INTVCC0 = 0x1,

                /*************************************************************
                 1/2 VDDANA (only for VDDANA > 2.0V)
                */
                INTVCC1 = 0x2,

                /*************************************************************
                 External reference
                */
                AREFA = 0x3,

                /*************************************************************
                 External reference
                */
                AREFB = 0x4,
            }
            mixin BitFieldImplementation!(3, 0, Mutability.rw, Values);
        }

        /*********************************************************************
         Reference Buffer Offset Compensation Enable
        */
        alias REFCOMP = Bit!(7, Mutability.rw);
    }

    /*************************************************************************
     Result
    */
    final abstract class RESULT : Register!(0x1a)
    {
        /*********************************************************************
         Result Conversion Value
        */
        alias RESULT = BitField!(15, 0, Mutability.r);
    }

    /*************************************************************************
     Sampling Time Control
    */
    final abstract class SAMPCTRL : Register!(0x3)
    {
        /*********************************************************************
         Sampling Time Length
        */
        alias SAMPLEN = BitField!(5, 0, Mutability.rw);
    }

    /*************************************************************************
     Status
    */
    final abstract class STATUS : Register!(0x19)
    {
        /*********************************************************************
         Synchronization Busy
        */
        alias SYNCBUSY = Bit!(7, Mutability.r);
    }

    /*************************************************************************
     Software Trigger
    */
    final abstract class SWTRIG : Register!(0xc)
    {
        /*********************************************************************
         ADC Conversion Flush
        */
        alias FLUSH = Bit!(0, Mutability.rw);

        /*********************************************************************
         ADC Start Conversion
        */
        alias START = Bit!(1, Mutability.rw);
    }

    /*************************************************************************
     Window Monitor Control
    */
    final abstract class WINCTRL : Register!(0x8)
    {
        /*********************************************************************
         Window Monitor Mode
        */
        final abstract class WINMODE
        {
            /*****************************************************************
             WINMODE's possible values
            */
            enum Values
            {
                /*************************************************************
                 No window mode (default)
                */
                DISABLE = 0x0,

                /*************************************************************
                 Mode 1: RESULT > WINLT
                */
                MODE1 = 0x1,

                /*************************************************************
                 Mode 2: RESULT < WINUT
                */
                MODE2 = 0x2,

                /*************************************************************
                 Mode 3: WINLT < RESULT < WINUT
                */
                MODE3 = 0x3,

                /*************************************************************
                 Mode 4: !(WINLT < RESULT < WINUT)
                */
                MODE4 = 0x4,
            }
            mixin BitFieldImplementation!(2, 0, Mutability.rw, Values);
        }
    }

    /*************************************************************************
     Window Monitor Lower Threshold
    */
    final abstract class WINLT : Register!(0x1c)
    {
        /*********************************************************************
         Window Lower Threshold
        */
        alias WINLT = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     Window Monitor Upper Threshold
    */
    final abstract class WINUT : Register!(0x20)
    {
        /*********************************************************************
         Window Upper Threshold
        */
        alias WINUT = BitField!(15, 0, Mutability.rw);
    }
}
