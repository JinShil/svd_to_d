module atsamd21g18a.i2s;

import atsamd21g18a.mmio;

/*****************************************************************************
 Inter-IC Sound Interface
*/
final abstract class I2S : Peripheral!(0x42005000)
{
    /*************************************************************************
     Clock Unit n Control
    */
    final abstract class CLKCTRL%s : Register!(0x04)
    {
        /*********************************************************************
         Slot Size
        */
        final abstract class SLOTSIZE
        {
            /*****************************************************************
             SLOTSIZE's possible values
            */
            enum Values
            {
                /*************************************************************
                 8-bit Slot for Clock Unit n
                */
                8 = 0x0,

                /*************************************************************
                 16-bit Slot for Clock Unit n
                */
                16 = 0x1,

                /*************************************************************
                 24-bit Slot for Clock Unit n
                */
                24 = 0x2,

                /*************************************************************
                 32-bit Slot for Clock Unit n
                */
                32 = 0x3,
            }
            mixin BitFieldImplementation!(1, 0, Mutability.rw, values);
        }

        /*********************************************************************
         Number of Slots in Frame
        */
        alias NBSLOTS = BitField!(4, 2, Mutability.rw);

        /*********************************************************************
         Frame Sync Width
        */
        final abstract class FSWIDTH
        {
            /*****************************************************************
             FSWIDTH's possible values
            */
            enum Values
            {
                /*************************************************************
                 Frame Sync Pulse is 1 Slot wide (default for I2S protocol)
                */
                SLOT = 0x0,

                /*************************************************************
                 Frame Sync Pulse is half a Frame wide
                */
                HALF = 0x1,

                /*************************************************************
                 Frame Sync Pulse is 1 Bit wide
                */
                BIT = 0x2,

                /*************************************************************
                 Clock Unit n operates in Burst mode, with a 1-bit wide Frame Sync pulse per Data sample, only when Data transfer is requested
                */
                BURST = 0x3,
            }
            mixin BitFieldImplementation!(6, 5, Mutability.rw, values);
        }

        /*********************************************************************
         Data Delay from Frame Sync
        */
        final abstract class BITDELAY
        {
            /*****************************************************************
             BITDELAY's possible values
            */
            enum Values
            {
                /*************************************************************
                 Left Justified (0 Bit Delay)
                */
                LJ = 0x0,

                /*************************************************************
                 I2S (1 Bit Delay)
                */
                I2S = 0x1,
            }
            mixin BitFieldImplementation!(7, 7, Mutability.rw, values);
        }

        /*********************************************************************
         Frame Sync Select
        */
        final abstract class FSSEL
        {
            /*****************************************************************
             FSSEL's possible values
            */
            enum Values
            {
                /*************************************************************
                 Divided Serial Clock n is used as Frame Sync n source
                */
                SCKDIV = 0x0,

                /*************************************************************
                 FSn input pin is used as Frame Sync n source
                */
                FSPIN = 0x1,
            }
            mixin BitFieldImplementation!(8, 8, Mutability.rw, values);
        }

        /*********************************************************************
         Frame Sync Invert
        */
        alias FSINV = Bit!(11, Mutability.rw);

        /*********************************************************************
         Serial Clock Select
        */
        final abstract class SCKSEL
        {
            /*****************************************************************
             SCKSEL's possible values
            */
            enum Values
            {
                /*************************************************************
                 Divided Master Clock n is used as Serial Clock n source
                */
                MCKDIV = 0x0,

                /*************************************************************
                 SCKn input pin is used as Serial Clock n source
                */
                SCKPIN = 0x1,
            }
            mixin BitFieldImplementation!(12, 12, Mutability.rw, values);
        }

        /*********************************************************************
         Master Clock Select
        */
        final abstract class MCKSEL
        {
            /*****************************************************************
             MCKSEL's possible values
            */
            enum Values
            {
                /*************************************************************
                 clk_gen_n is used as Master Clock n source
                */
                GCLK = 0x0,

                /*************************************************************
                 MCKn input pin is used as Master Clock n source
                */
                MCKPIN = 0x1,
            }
            mixin BitFieldImplementation!(16, 16, Mutability.rw, values);
        }

        /*********************************************************************
         Master Clock Enable
        */
        alias MCKEN = Bit!(18, Mutability.rw);

        /*********************************************************************
         Master Clock Division Factor
        */
        alias MCKDIV = BitField!(23, 19, Mutability.rw);

        /*********************************************************************
         Master Clock Output Division Factor
        */
        alias MCKOUTDIV = BitField!(28, 24, Mutability.rw);

        /*********************************************************************
         Frame Sync Output Invert
        */
        alias FSOUTINV = Bit!(29, Mutability.rw);

        /*********************************************************************
         Serial Clock Output Invert
        */
        alias SCKOUTINV = Bit!(30, Mutability.rw);

        /*********************************************************************
         Master Clock Output Invert
        */
        alias MCKOUTINV = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Control A
    */
    final abstract class CTRLA : Register!(0x00)
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
         Clock Unit 0 Enable
        */
        alias CKEN0 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Clock Unit 1 Enable
        */
        alias CKEN1 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Serializer 0 Enable
        */
        alias SEREN0 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Serializer 1 Enable
        */
        alias SEREN1 = Bit!(5, Mutability.rw);
    }

    /*************************************************************************
     Data n
    */
    final abstract class DATA%s : Register!(0x30)
    {
        /*********************************************************************
         Sample Data
        */
        alias DATA = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Enable Clear
    */
    final abstract class INTENCLR : Register!(0x0C)
    {
        /*********************************************************************
         Receive Ready 0 Interrupt Enable
        */
        alias RXRDY0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Receive Ready 1 Interrupt Enable
        */
        alias RXRDY1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Receive Overrun 0 Interrupt Enable
        */
        alias RXOR0 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Receive Overrun 1 Interrupt Enable
        */
        alias RXOR1 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Transmit Ready 0 Interrupt Enable
        */
        alias TXRDY0 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Transmit Ready 1 Interrupt Enable
        */
        alias TXRDY1 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Transmit Underrun 0 Interrupt Enable
        */
        alias TXUR0 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Transmit Underrun 1 Interrupt Enable
        */
        alias TXUR1 = Bit!(13, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Enable Set
    */
    final abstract class INTENSET : Register!(0x10)
    {
        /*********************************************************************
         Receive Ready 0 Interrupt Enable
        */
        alias RXRDY0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Receive Ready 1 Interrupt Enable
        */
        alias RXRDY1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Receive Overrun 0 Interrupt Enable
        */
        alias RXOR0 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Receive Overrun 1 Interrupt Enable
        */
        alias RXOR1 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Transmit Ready 0 Interrupt Enable
        */
        alias TXRDY0 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Transmit Ready 1 Interrupt Enable
        */
        alias TXRDY1 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Transmit Underrun 0 Interrupt Enable
        */
        alias TXUR0 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Transmit Underrun 1 Interrupt Enable
        */
        alias TXUR1 = Bit!(13, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Flag Status and Clear
    */
    final abstract class INTFLAG : Register!(0x14)
    {
        /*********************************************************************
         Receive Ready 0
        */
        alias RXRDY0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Receive Ready 1
        */
        alias RXRDY1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Receive Overrun 0
        */
        alias RXOR0 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Receive Overrun 1
        */
        alias RXOR1 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Transmit Ready 0
        */
        alias TXRDY0 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Transmit Ready 1
        */
        alias TXRDY1 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Transmit Underrun 0
        */
        alias TXUR0 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Transmit Underrun 1
        */
        alias TXUR1 = Bit!(13, Mutability.rw);
    }

    /*************************************************************************
     Serializer n Control
    */
    final abstract class SERCTRL%s : Register!(0x20)
    {
        /*********************************************************************
         Serializer Mode
        */
        final abstract class SERMODE
        {
            /*****************************************************************
             SERMODE's possible values
            */
            enum Values
            {
                /*************************************************************
                 Receive
                */
                RX = 0x0,

                /*************************************************************
                 Transmit
                */
                TX = 0x1,

                /*************************************************************
                 Receive 1 PDM data on each clock edge
                */
                PDM2 = 0x2,
            }
            mixin BitFieldImplementation!(1, 0, Mutability.rw, values);
        }

        /*********************************************************************
         Line Default Line when Slot Disabled
        */
        final abstract class TXDEFAULT
        {
            /*****************************************************************
             TXDEFAULT's possible values
            */
            enum Values
            {
                /*************************************************************
                 Output Default Value is 0
                */
                ZERO = 0x0,

                /*************************************************************
                 Output Default Value is 1
                */
                ONE = 0x1,

                /*************************************************************
                 Output Default Value is high impedance
                */
                HIZ = 0x3,
            }
            mixin BitFieldImplementation!(3, 2, Mutability.rw, values);
        }

        /*********************************************************************
         Transmit Data when Underrun
        */
        final abstract class TXSAME
        {
            /*****************************************************************
             TXSAME's possible values
            */
            enum Values
            {
                /*************************************************************
                 Zero data transmitted in case of underrun
                */
                ZERO = 0x0,

                /*************************************************************
                 Last data transmitted in case of underrun
                */
                SAME = 0x1,
            }
            mixin BitFieldImplementation!(4, 4, Mutability.rw, values);
        }

        /*********************************************************************
         Clock Unit Selection
        */
        final abstract class CLKSEL
        {
            /*****************************************************************
             CLKSEL's possible values
            */
            enum Values
            {
                /*************************************************************
                 Use Clock Unit 0
                */
                CLK0 = 0x0,

                /*************************************************************
                 Use Clock Unit 1
                */
                CLK1 = 0x1,
            }
            mixin BitFieldImplementation!(5, 5, Mutability.rw, values);
        }

        /*********************************************************************
         Data Slot Formatting Adjust
        */
        final abstract class SLOTADJ
        {
            /*****************************************************************
             SLOTADJ's possible values
            */
            enum Values
            {
                /*************************************************************
                 Data is right adjusted in slot
                */
                RIGHT = 0x0,

                /*************************************************************
                 Data is left adjusted in slot
                */
                LEFT = 0x1,
            }
            mixin BitFieldImplementation!(7, 7, Mutability.rw, values);
        }

        /*********************************************************************
         Data Word Size
        */
        final abstract class DATASIZE
        {
            /*****************************************************************
             DATASIZE's possible values
            */
            enum Values
            {
                /*************************************************************
                 32 bits
                */
                32 = 0x0,

                /*************************************************************
                 24 bits
                */
                24 = 0x1,

                /*************************************************************
                 20 bits
                */
                20 = 0x2,

                /*************************************************************
                 18 bits
                */
                18 = 0x3,

                /*************************************************************
                 16 bits
                */
                16 = 0x4,

                /*************************************************************
                 16 bits compact stereo
                */
                16C = 0x5,

                /*************************************************************
                 8 bits
                */
                8 = 0x6,

                /*************************************************************
                 8 bits compact stereo
                */
                8C = 0x7,
            }
            mixin BitFieldImplementation!(10, 8, Mutability.rw, values);
        }

        /*********************************************************************
         Data Word Formatting Adjust
        */
        final abstract class WORDADJ
        {
            /*****************************************************************
             WORDADJ's possible values
            */
            enum Values
            {
                /*************************************************************
                 Data is right adjusted in word
                */
                RIGHT = 0x0,

                /*************************************************************
                 Data is left adjusted in word
                */
                LEFT = 0x1,
            }
            mixin BitFieldImplementation!(12, 12, Mutability.rw, values);
        }

        /*********************************************************************
         Data Formatting Bit Extension
        */
        final abstract class EXTEND
        {
            /*****************************************************************
             EXTEND's possible values
            */
            enum Values
            {
                /*************************************************************
                 Extend with zeroes
                */
                ZERO = 0x0,

                /*************************************************************
                 Extend with ones
                */
                ONE = 0x1,

                /*************************************************************
                 Extend with Most Significant Bit
                */
                MSBIT = 0x2,

                /*************************************************************
                 Extend with Least Significant Bit
                */
                LSBIT = 0x3,
            }
            mixin BitFieldImplementation!(14, 13, Mutability.rw, values);
        }

        /*********************************************************************
         Data Formatting Bit Reverse
        */
        final abstract class BITREV
        {
            /*****************************************************************
             BITREV's possible values
            */
            enum Values
            {
                /*************************************************************
                 Transfer Data Most Significant Bit (MSB) first (default for I2S protocol)
                */
                MSBIT = 0x0,

                /*************************************************************
                 Transfer Data Least Significant Bit (LSB) first
                */
                LSBIT = 0x1,
            }
            mixin BitFieldImplementation!(15, 15, Mutability.rw, values);
        }

        /*********************************************************************
         Slot 0 Disabled for this Serializer
        */
        alias SLOTDIS0 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Slot 1 Disabled for this Serializer
        */
        alias SLOTDIS1 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Slot 2 Disabled for this Serializer
        */
        alias SLOTDIS2 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Slot 3 Disabled for this Serializer
        */
        alias SLOTDIS3 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Slot 4 Disabled for this Serializer
        */
        alias SLOTDIS4 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Slot 5 Disabled for this Serializer
        */
        alias SLOTDIS5 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Slot 6 Disabled for this Serializer
        */
        alias SLOTDIS6 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Slot 7 Disabled for this Serializer
        */
        alias SLOTDIS7 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Mono Mode
        */
        final abstract class MONO
        {
            /*****************************************************************
             MONO's possible values
            */
            enum Values
            {
                /*************************************************************
                 Normal mode
                */
                STEREO = 0x0,

                /*************************************************************
                 Left channel data is duplicated to right channel
                */
                MONO = 0x1,
            }
            mixin BitFieldImplementation!(24, 24, Mutability.rw, values);
        }

        /*********************************************************************
         Single or Multiple DMA Channels
        */
        final abstract class DMA
        {
            /*****************************************************************
             DMA's possible values
            */
            enum Values
            {
                /*************************************************************
                 Single DMA channel
                */
                SINGLE = 0x0,

                /*************************************************************
                 One DMA channel per data channel
                */
                MULTIPLE = 0x1,
            }
            mixin BitFieldImplementation!(25, 25, Mutability.rw, values);
        }

        /*********************************************************************
         Loop-back Test Mode
        */
        alias RXLOOP = Bit!(26, Mutability.rw);
    }

    /*************************************************************************
     Synchronization Status
    */
    final abstract class SYNCBUSY : Register!(0x18)
    {
        /*********************************************************************
         Software Reset Synchronization Status
        */
        alias SWRST = Bit!(0, Mutability.rw);

        /*********************************************************************
         Enable Synchronization Status
        */
        alias ENABLE = Bit!(1, Mutability.rw);

        /*********************************************************************
         Clock Unit 0 Enable Synchronization Status
        */
        alias CKEN0 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Clock Unit 1 Enable Synchronization Status
        */
        alias CKEN1 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Serializer 0 Enable Synchronization Status
        */
        alias SEREN0 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Serializer 1 Enable Synchronization Status
        */
        alias SEREN1 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Data 0 Synchronization Status
        */
        alias DATA0 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Data 1 Synchronization Status
        */
        alias DATA1 = Bit!(9, Mutability.rw);
    }
}
