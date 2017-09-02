module atsamd21g18a.nvmctrl;

import atsamd21g18a.mmio;

/*****************************************************************************
 Non-Volatile Memory Controller
*/
final abstract class NVMCTRL : Peripheral!(0x41004000)
{
    /*************************************************************************
     Address
    */
    final abstract class ADDR : Register!(0x1c)
    {
        /*********************************************************************
         NVM Address
        */
        alias ADDR = BitField!(21, 0, Mutability.rw);
    }

    /*************************************************************************
     Control A
    */
    final abstract class CTRLA : Register!(00)
    {
        /*********************************************************************
         Command
        */
        final abstract class CMD
        {
            /*****************************************************************
             CMD's possible values
            */
            enum Values
            {
                /*************************************************************
                 Erase Row - Erases the row addressed by the ADDR register.
                */
                ER = 0x2,

                /*************************************************************
                 Write Page - Writes the contents of the page buffer to the page addressed by the ADDR register.
                */
                WP = 0x4,

                /*************************************************************
                 Erase Auxiliary Row - Erases the auxiliary row addressed by the ADDR register. This command can be given only when the security bit is not set and only to the user configuration row.
                */
                EAR = 0x5,

                /*************************************************************
                 Write Auxiliary Page - Writes the contents of the page buffer to the page addressed by the ADDR register. This command can be given only when the security bit is not set and only to the user configuration row.
                */
                WAP = 0x6,

                /*************************************************************
                 Security Flow Command
                */
                SF = 0xa,

                /*************************************************************
                 Write lockbits
                */
                WL = 0xf,

                /*************************************************************
                 Lock Region - Locks the region containing the address location in the ADDR register.
                */
                LR = 0x40,

                /*************************************************************
                 Unlock Region - Unlocks the region containing the address location in the ADDR register.
                */
                UR = 0x41,

                /*************************************************************
                 Sets the power reduction mode.
                */
                SPRM = 0x42,

                /*************************************************************
                 Clears the power reduction mode.
                */
                CPRM = 0x43,

                /*************************************************************
                 Page Buffer Clear - Clears the page buffer.
                */
                PBC = 0x44,

                /*************************************************************
                 Set Security Bit - Sets the security bit by writing 0x00 to the first byte in the lockbit row.
                */
                SSB = 0x45,

                /*************************************************************
                 Invalidates all cache lines.
                */
                INVALL = 0x46,
            }
            mixin BitFieldImplementation!(6, 0, Mutability.rw, Values);
        }

        /*********************************************************************
         Command Execution
        */
        final abstract class CMDEX
        {
            /*****************************************************************
             CMDEX's possible values
            */
            enum Values
            {
                /*************************************************************
                 Execution Key
                */
                KEY = 0xa5,
            }
            mixin BitFieldImplementation!(15, 8, Mutability.rw, Values);
        }
    }

    /*************************************************************************
     Control B
    */
    final abstract class CTRLB : Register!(0x4)
    {
        /*********************************************************************
         NVM Read Wait States
        */
        final abstract class RWS
        {
            /*****************************************************************
             RWS's possible values
            */
            enum Values
            {
                /*************************************************************
                 Single Auto Wait State
                */
                SINGLE = 0x0,

                /*************************************************************
                 Half Auto Wait State
                */
                HALF = 0x1,

                /*************************************************************
                 Dual Auto Wait State
                */
                DUAL = 0x2,
            }
            mixin BitFieldImplementation!(4, 1, Mutability.rw, Values);
        }

        /*********************************************************************
         Manual Write
        */
        alias MANW = Bit!(7, Mutability.rw);

        /*********************************************************************
         Power Reduction Mode during Sleep
        */
        final abstract class SLEEPPRM
        {
            /*****************************************************************
             SLEEPPRM's possible values
            */
            enum Values
            {
                /*************************************************************
                 NVM block enters low-power mode when entering sleep.NVM block exits low-power mode upon first access.
                */
                WAKEONACCESS = 0x0,

                /*************************************************************
                 NVM block enters low-power mode when entering sleep.NVM block exits low-power mode when exiting sleep.
                */
                WAKEUPINSTANT = 0x1,

                /*************************************************************
                 Auto power reduction disabled.
                */
                DISABLED = 0x3,
            }
            mixin BitFieldImplementation!(9, 8, Mutability.rw, Values);
        }

        /*********************************************************************
         NVMCTRL Read Mode
        */
        final abstract class READMODE
        {
            /*****************************************************************
             READMODE's possible values
            */
            enum Values
            {
                /*************************************************************
                 The NVM Controller (cache system) does not insert wait states on a cache miss. Gives the best system performance.
                */
                NO_MISS_PENALTY = 0x0,

                /*************************************************************
                 Reduces power consumption of the cache system, but inserts a wait state each time there is a cache miss. This mode may not be relevant if CPU performance is required, as the application will be stalled and may lead to increase run time.
                */
                LOW_POWER = 0x1,

                /*************************************************************
                 The cache system ensures that a cache hit or miss takes the same amount of time, determined by the number of programmed flash wait states. This mode can be used for real-time applications that require deterministic execution timings.
                */
                DETERMINISTIC = 0x2,
            }
            mixin BitFieldImplementation!(17, 16, Mutability.rw, Values);
        }

        /*********************************************************************
         Cache Disable
        */
        alias CACHEDIS = Bit!(18, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Enable Clear
    */
    final abstract class INTENCLR : Register!(0xc)
    {
        /*********************************************************************
         NVM Ready Interrupt Enable
        */
        alias READY = Bit!(0, Mutability.rw);

        /*********************************************************************
         Error Interrupt Enable
        */
        alias ERROR = Bit!(1, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Enable Set
    */
    final abstract class INTENSET : Register!(0x10)
    {
        /*********************************************************************
         NVM Ready Interrupt Enable
        */
        alias READY = Bit!(0, Mutability.rw);

        /*********************************************************************
         Error Interrupt Enable
        */
        alias ERROR = Bit!(1, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Flag Status and Clear
    */
    final abstract class INTFLAG : Register!(0x14)
    {
        /*********************************************************************
         NVM Ready
        */
        alias READY = Bit!(0, Mutability.r);

        /*********************************************************************
         Error
        */
        alias ERROR = Bit!(1, Mutability.rw);
    }

    /*************************************************************************
     Lock Section
    */
    final abstract class LOCK : Register!(0x20)
    {
        /*********************************************************************
         Region Lock Bits
        */
        alias LOCK = BitField!(15, 0, Mutability.r);
    }

    /*************************************************************************
     NVM Parameter
    */
    final abstract class PARAM : Register!(0x8)
    {
        /*********************************************************************
         NVM Pages
        */
        alias NVMP = BitField!(15, 0, Mutability.r);

        /*********************************************************************
         Page Size
        */
        final abstract class PSZ
        {
            /*****************************************************************
             PSZ's possible values
            */
            enum Values
            {
                /*************************************************************
                 8 bytes
                */
                _8 = 0x0,

                /*************************************************************
                 16 bytes
                */
                _16 = 0x1,

                /*************************************************************
                 32 bytes
                */
                _32 = 0x2,

                /*************************************************************
                 64 bytes
                */
                _64 = 0x3,

                /*************************************************************
                 128 bytes
                */
                _128 = 0x4,

                /*************************************************************
                 256 bytes
                */
                _256 = 0x5,

                /*************************************************************
                 512 bytes
                */
                _512 = 0x6,

                /*************************************************************
                 1024 bytes
                */
                _1024 = 0x7,
            }
            mixin BitFieldImplementation!(18, 16, Mutability.r, Values);
        }
    }

    /*************************************************************************
     Status
    */
    final abstract class STATUS : Register!(0x18)
    {
        /*********************************************************************
         Power Reduction Mode
        */
        alias PRM = Bit!(0, Mutability.r);

        /*********************************************************************
         NVM Page Buffer Active Loading
        */
        alias LOAD = Bit!(1, Mutability.rw);

        /*********************************************************************
         Programming Error Status
        */
        alias PROGE = Bit!(2, Mutability.rw);

        /*********************************************************************
         Lock Error Status
        */
        alias LOCKE = Bit!(3, Mutability.rw);

        /*********************************************************************
         NVM Error
        */
        alias NVME = Bit!(4, Mutability.rw);

        /*********************************************************************
         Security Bit Status
        */
        alias SB = Bit!(8, Mutability.r);
    }
}
