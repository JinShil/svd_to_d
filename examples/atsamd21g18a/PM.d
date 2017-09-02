module atsamd21g18a.pm;

import atsamd21g18a.mmio;

/*****************************************************************************
 Power Manager
*/
final abstract class PM : Peripheral!(0x40000400)
{
    /*************************************************************************
     AHB Mask
    */
    final abstract class AHBMASK : Register!(0x14)
    {
        /*********************************************************************
         HPB0 AHB Clock Enable
        */
        alias HPB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         HPB1 AHB Clock Enable
        */
        alias HPB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         HPB2 AHB Clock Enable
        */
        alias HPB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         DSU AHB Clock Enable
        */
        alias DSU = Bit!(3, Mutability.rw);

        /*********************************************************************
         NVMCTRL AHB Clock Enable
        */
        alias NVMCTRL = Bit!(4, Mutability.rw);

        /*********************************************************************
         DMAC AHB Clock Enable
        */
        alias DMAC = Bit!(5, Mutability.rw);

        /*********************************************************************
         USB AHB Clock Enable
        */
        alias USB = Bit!(6, Mutability.rw);
    }

    /*************************************************************************
     APBA Mask
    */
    final abstract class APBAMASK : Register!(0x18)
    {
        /*********************************************************************
         PAC0 APB Clock Enable
        */
        alias PAC0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         PM APB Clock Enable
        */
        alias PM = Bit!(1, Mutability.rw);

        /*********************************************************************
         SYSCTRL APB Clock Enable
        */
        alias SYSCTRL = Bit!(2, Mutability.rw);

        /*********************************************************************
         GCLK APB Clock Enable
        */
        alias GCLK = Bit!(3, Mutability.rw);

        /*********************************************************************
         WDT APB Clock Enable
        */
        alias WDT = Bit!(4, Mutability.rw);

        /*********************************************************************
         RTC APB Clock Enable
        */
        alias RTC = Bit!(5, Mutability.rw);

        /*********************************************************************
         EIC APB Clock Enable
        */
        alias EIC = Bit!(6, Mutability.rw);
    }

    /*************************************************************************
     APBA Clock Select
    */
    final abstract class APBASEL : Register!(0x9)
    {
        /*********************************************************************
         APBA Prescaler Selection
        */
        final abstract class APBADIV
        {
            /*****************************************************************
             APBADIV's possible values
            */
            enum Values
            {
                /*************************************************************
                 Divide by 1
                */
                DIV1 = 0x0,

                /*************************************************************
                 Divide by 2
                */
                DIV2 = 0x1,

                /*************************************************************
                 Divide by 4
                */
                DIV4 = 0x2,

                /*************************************************************
                 Divide by 8
                */
                DIV8 = 0x3,

                /*************************************************************
                 Divide by 16
                */
                DIV16 = 0x4,

                /*************************************************************
                 Divide by 32
                */
                DIV32 = 0x5,

                /*************************************************************
                 Divide by 64
                */
                DIV64 = 0x6,

                /*************************************************************
                 Divide by 128
                */
                DIV128 = 0x7,
            }
            mixin BitFieldImplementation!(2, 0, Mutability.rw, Values);
        }
    }

    /*************************************************************************
     APBB Mask
    */
    final abstract class APBBMASK : Register!(0x1c)
    {
        /*********************************************************************
         PAC1 APB Clock Enable
        */
        alias PAC1 = Bit!(0, Mutability.rw);

        /*********************************************************************
         DSU APB Clock Enable
        */
        alias DSU = Bit!(1, Mutability.rw);

        /*********************************************************************
         NVMCTRL APB Clock Enable
        */
        alias NVMCTRL = Bit!(2, Mutability.rw);

        /*********************************************************************
         PORT APB Clock Enable
        */
        alias PORT = Bit!(3, Mutability.rw);

        /*********************************************************************
         DMAC APB Clock Enable
        */
        alias DMAC = Bit!(4, Mutability.rw);

        /*********************************************************************
         USB APB Clock Enable
        */
        alias USB = Bit!(5, Mutability.rw);
    }

    /*************************************************************************
     APBB Clock Select
    */
    final abstract class APBBSEL : Register!(0xa)
    {
        /*********************************************************************
         APBB Prescaler Selection
        */
        final abstract class APBBDIV
        {
            /*****************************************************************
             APBBDIV's possible values
            */
            enum Values
            {
                /*************************************************************
                 Divide by 1
                */
                DIV1 = 0x0,

                /*************************************************************
                 Divide by 2
                */
                DIV2 = 0x1,

                /*************************************************************
                 Divide by 4
                */
                DIV4 = 0x2,

                /*************************************************************
                 Divide by 8
                */
                DIV8 = 0x3,

                /*************************************************************
                 Divide by 16
                */
                DIV16 = 0x4,

                /*************************************************************
                 Divide by 32
                */
                DIV32 = 0x5,

                /*************************************************************
                 Divide by 64
                */
                DIV64 = 0x6,

                /*************************************************************
                 Divide by 128
                */
                DIV128 = 0x7,
            }
            mixin BitFieldImplementation!(2, 0, Mutability.rw, Values);
        }
    }

    /*************************************************************************
     APBC Mask
    */
    final abstract class APBCMASK : Register!(0x20)
    {
        /*********************************************************************
         PAC2 APB Clock Enable
        */
        alias PAC2 = Bit!(0, Mutability.rw);

        /*********************************************************************
         EVSYS APB Clock Enable
        */
        alias EVSYS = Bit!(1, Mutability.rw);

        /*********************************************************************
         SERCOM0 APB Clock Enable
        */
        alias SERCOM0 = Bit!(2, Mutability.rw);

        /*********************************************************************
         SERCOM1 APB Clock Enable
        */
        alias SERCOM1 = Bit!(3, Mutability.rw);

        /*********************************************************************
         SERCOM2 APB Clock Enable
        */
        alias SERCOM2 = Bit!(4, Mutability.rw);

        /*********************************************************************
         SERCOM3 APB Clock Enable
        */
        alias SERCOM3 = Bit!(5, Mutability.rw);

        /*********************************************************************
         SERCOM4 APB Clock Enable
        */
        alias SERCOM4 = Bit!(6, Mutability.rw);

        /*********************************************************************
         SERCOM5 APB Clock Enable
        */
        alias SERCOM5 = Bit!(7, Mutability.rw);

        /*********************************************************************
         TCC0 APB Clock Enable
        */
        alias TCC0 = Bit!(8, Mutability.rw);

        /*********************************************************************
         TCC1 APB Clock Enable
        */
        alias TCC1 = Bit!(9, Mutability.rw);

        /*********************************************************************
         TCC2 APB Clock Enable
        */
        alias TCC2 = Bit!(10, Mutability.rw);

        /*********************************************************************
         TC3 APB Clock Enable
        */
        alias TC3 = Bit!(11, Mutability.rw);

        /*********************************************************************
         TC4 APB Clock Enable
        */
        alias TC4 = Bit!(12, Mutability.rw);

        /*********************************************************************
         TC5 APB Clock Enable
        */
        alias TC5 = Bit!(13, Mutability.rw);

        /*********************************************************************
         ADC APB Clock Enable
        */
        alias ADC = Bit!(16, Mutability.rw);

        /*********************************************************************
         AC APB Clock Enable
        */
        alias AC = Bit!(17, Mutability.rw);

        /*********************************************************************
         DAC APB Clock Enable
        */
        alias DAC = Bit!(18, Mutability.rw);

        /*********************************************************************
         I2S APB Clock Enable
        */
        alias I2S = Bit!(20, Mutability.rw);

        /*********************************************************************
         ATW APB Clock Enable
        */
        alias ATW = Bit!(23, Mutability.rw);
    }

    /*************************************************************************
     APBC Clock Select
    */
    final abstract class APBCSEL : Register!(0xb)
    {
        /*********************************************************************
         APBC Prescaler Selection
        */
        final abstract class APBCDIV
        {
            /*****************************************************************
             APBCDIV's possible values
            */
            enum Values
            {
                /*************************************************************
                 Divide by 1
                */
                DIV1 = 0x0,

                /*************************************************************
                 Divide by 2
                */
                DIV2 = 0x1,

                /*************************************************************
                 Divide by 4
                */
                DIV4 = 0x2,

                /*************************************************************
                 Divide by 8
                */
                DIV8 = 0x3,

                /*************************************************************
                 Divide by 16
                */
                DIV16 = 0x4,

                /*************************************************************
                 Divide by 32
                */
                DIV32 = 0x5,

                /*************************************************************
                 Divide by 64
                */
                DIV64 = 0x6,

                /*************************************************************
                 Divide by 128
                */
                DIV128 = 0x7,
            }
            mixin BitFieldImplementation!(2, 0, Mutability.rw, Values);
        }
    }

    /*************************************************************************
     CPU Clock Select
    */
    final abstract class CPUSEL : Register!(0x8)
    {
        /*********************************************************************
         CPU Prescaler Selection
        */
        final abstract class CPUDIV
        {
            /*****************************************************************
             CPUDIV's possible values
            */
            enum Values
            {
                /*************************************************************
                 Divide by 1
                */
                DIV1 = 0x0,

                /*************************************************************
                 Divide by 2
                */
                DIV2 = 0x1,

                /*************************************************************
                 Divide by 4
                */
                DIV4 = 0x2,

                /*************************************************************
                 Divide by 8
                */
                DIV8 = 0x3,

                /*************************************************************
                 Divide by 16
                */
                DIV16 = 0x4,

                /*************************************************************
                 Divide by 32
                */
                DIV32 = 0x5,

                /*************************************************************
                 Divide by 64
                */
                DIV64 = 0x6,

                /*************************************************************
                 Divide by 128
                */
                DIV128 = 0x7,
            }
            mixin BitFieldImplementation!(2, 0, Mutability.rw, Values);
        }
    }

    /*************************************************************************
     Control
    */
    final abstract class CTRL : Register!(00)
    {
        /*********************************************************************
         Clock Failure Detector Enable
        */
        alias CFDEN = Bit!(2, Mutability.rw);

        /*********************************************************************
         Backup Clock Select
        */
        alias BKUPCLK = Bit!(4, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Enable Clear
    */
    final abstract class INTENCLR : Register!(0x34)
    {
        /*********************************************************************
         Clock Ready Interrupt Enable
        */
        alias CKRDY = Bit!(0, Mutability.rw);

        /*********************************************************************
         Clock Failure Detector Interrupt Enable
        */
        alias CFD = Bit!(1, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Enable Set
    */
    final abstract class INTENSET : Register!(0x35)
    {
        /*********************************************************************
         Clock Ready Interrupt Enable
        */
        alias CKRDY = Bit!(0, Mutability.rw);

        /*********************************************************************
         Clock Failure Detector Interrupt Enable
        */
        alias CFD = Bit!(1, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Flag Status and Clear
    */
    final abstract class INTFLAG : Register!(0x36)
    {
        /*********************************************************************
         Clock Ready
        */
        alias CKRDY = Bit!(0, Mutability.rw);

        /*********************************************************************
         Clock Failure Detector
        */
        alias CFD = Bit!(1, Mutability.rw);
    }

    /*************************************************************************
     Reset Cause
    */
    final abstract class RCAUSE : Register!(0x38)
    {
        /*********************************************************************
         Power On Reset
        */
        alias POR = Bit!(0, Mutability.rw);

        /*********************************************************************
         Brown Out 12 Detector Reset
        */
        alias BOD12 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Brown Out 33 Detector Reset
        */
        alias BOD33 = Bit!(2, Mutability.rw);

        /*********************************************************************
         External Reset
        */
        alias EXT = Bit!(4, Mutability.rw);

        /*********************************************************************
         Watchdog Reset
        */
        alias WDT = Bit!(5, Mutability.rw);

        /*********************************************************************
         System Reset Request
        */
        alias SYST = Bit!(6, Mutability.rw);
    }

    /*************************************************************************
     Sleep Mode
    */
    final abstract class SLEEP : Register!(0x1)
    {
        /*********************************************************************
         Idle Mode Configuration
        */
        final abstract class IDLE
        {
            /*****************************************************************
             IDLE's possible values
            */
            enum Values
            {
                /*************************************************************
                 The CPU clock domain is stopped
                */
                CPU = 0x0,

                /*************************************************************
                 The CPU and AHB clock domains are stopped
                */
                AHB = 0x1,

                /*************************************************************
                 The CPU, AHB and APB clock domains are stopped
                */
                APB = 0x2,
            }
            mixin BitFieldImplementation!(1, 0, Mutability.rw, Values);
        }
    }
}
