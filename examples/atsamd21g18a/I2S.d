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
    final abstract class CLKCTRL1 : Register!(0x4)
    {
        /*****************************************************************
         SLOTSIZE's possible values
        */
        enum SLOTSIZEValues
        {
            /*************************************************************
             8-bit Slot for Clock Unit n
            */
            _8 = 0x0,

            /*************************************************************
             16-bit Slot for Clock Unit n
            */
            _16 = 0x1,

            /*************************************************************
             24-bit Slot for Clock Unit n
            */
            _24 = 0x2,

            /*************************************************************
             32-bit Slot for Clock Unit n
            */
            _32 = 0x3,
        }

        /*********************************************************************
         Slot Size
        */
        alias SLOTSIZE = BitField!(1, 0, Mutability.rw, SLOTSIZEValues);

        /*********************************************************************
         Number of Slots in Frame
        */
        alias NBSLOTS = BitField!(4, 2, Mutability.rw);

        /*****************************************************************
         FSWIDTH's possible values
        */
        enum FSWIDTHValues
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

        /*********************************************************************
         Frame Sync Width
        */
        alias FSWIDTH = BitField!(6, 5, Mutability.rw, FSWIDTHValues);

        /*****************************************************************
         BITDELAY's possible values
        */
        enum BITDELAYValues
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

        /*********************************************************************
         Data Delay from Frame Sync
        */
        alias BITDELAY = Bit!(7, Mutability.rw, BITDELAYValues);

        /*****************************************************************
         FSSEL's possible values
        */
        enum FSSELValues
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

        /*********************************************************************
         Frame Sync Select
        */
        alias FSSEL = Bit!(8, Mutability.rw, FSSELValues);

        /*********************************************************************
         Frame Sync Invert
        */
        alias FSINV = Bit!(11, Mutability.rw);

        /*****************************************************************
         SCKSEL's possible values
        */
        enum SCKSELValues
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

        /*********************************************************************
         Serial Clock Select
        */
        alias SCKSEL = Bit!(12, Mutability.rw, SCKSELValues);

        /*****************************************************************
         MCKSEL's possible values
        */
        enum MCKSELValues
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

        /*********************************************************************
         Master Clock Select
        */
        alias MCKSEL = Bit!(16, Mutability.rw, MCKSELValues);

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
     Clock Unit n Control
    */
    final abstract class CLKCTRL2 : Register!(0x8)
    {
        /*****************************************************************
         SLOTSIZE's possible values
        */
        enum SLOTSIZEValues
        {
            /*************************************************************
             8-bit Slot for Clock Unit n
            */
            _8 = 0x0,

            /*************************************************************
             16-bit Slot for Clock Unit n
            */
            _16 = 0x1,

            /*************************************************************
             24-bit Slot for Clock Unit n
            */
            _24 = 0x2,

            /*************************************************************
             32-bit Slot for Clock Unit n
            */
            _32 = 0x3,
        }

        /*********************************************************************
         Slot Size
        */
        alias SLOTSIZE = BitField!(1, 0, Mutability.rw, SLOTSIZEValues);

        /*********************************************************************
         Number of Slots in Frame
        */
        alias NBSLOTS = BitField!(4, 2, Mutability.rw);

        /*****************************************************************
         FSWIDTH's possible values
        */
        enum FSWIDTHValues
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

        /*********************************************************************
         Frame Sync Width
        */
        alias FSWIDTH = BitField!(6, 5, Mutability.rw, FSWIDTHValues);

        /*****************************************************************
         BITDELAY's possible values
        */
        enum BITDELAYValues
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

        /*********************************************************************
         Data Delay from Frame Sync
        */
        alias BITDELAY = Bit!(7, Mutability.rw, BITDELAYValues);

        /*****************************************************************
         FSSEL's possible values
        */
        enum FSSELValues
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

        /*********************************************************************
         Frame Sync Select
        */
        alias FSSEL = Bit!(8, Mutability.rw, FSSELValues);

        /*********************************************************************
         Frame Sync Invert
        */
        alias FSINV = Bit!(11, Mutability.rw);

        /*****************************************************************
         SCKSEL's possible values
        */
        enum SCKSELValues
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

        /*********************************************************************
         Serial Clock Select
        */
        alias SCKSEL = Bit!(12, Mutability.rw, SCKSELValues);

        /*****************************************************************
         MCKSEL's possible values
        */
        enum MCKSELValues
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

        /*********************************************************************
         Master Clock Select
        */
        alias MCKSEL = Bit!(16, Mutability.rw, MCKSELValues);

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
    final abstract class DATA1 : Register!(0x30)
    {
        /*********************************************************************
         Sample Data
        */
        alias DATA = BitField!(31, 0, Mutability.rw);
    }
    /*************************************************************************
     Data n
    */
    final abstract class DATA2 : Register!(0x34)
    {
        /*********************************************************************
         Sample Data
        */
        alias DATA = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Enable Clear
    */
    final abstract class INTENCLR : Register!(0xc)
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
    final abstract class SERCTRL1 : Register!(0x20)
    {
        /*****************************************************************
         SERMODE's possible values
        */
        enum SERMODEValues
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

        /*********************************************************************
         Serializer Mode
        */
        alias SERMODE = BitField!(1, 0, Mutability.rw, SERMODEValues);

        /*****************************************************************
         TXDEFAULT's possible values
        */
        enum TXDEFAULTValues
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

        /*********************************************************************
         Line Default Line when Slot Disabled
        */
        alias TXDEFAULT = BitField!(3, 2, Mutability.rw, TXDEFAULTValues);

        /*****************************************************************
         TXSAME's possible values
        */
        enum TXSAMEValues
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

        /*********************************************************************
         Transmit Data when Underrun
        */
        alias TXSAME = Bit!(4, Mutability.rw, TXSAMEValues);

        /*****************************************************************
         CLKSEL's possible values
        */
        enum CLKSELValues
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

        /*********************************************************************
         Clock Unit Selection
        */
        alias CLKSEL = Bit!(5, Mutability.rw, CLKSELValues);

        /*****************************************************************
         SLOTADJ's possible values
        */
        enum SLOTADJValues
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

        /*********************************************************************
         Data Slot Formatting Adjust
        */
        alias SLOTADJ = Bit!(7, Mutability.rw, SLOTADJValues);

        /*****************************************************************
         DATASIZE's possible values
        */
        enum DATASIZEValues
        {
            /*************************************************************
             32 bits
            */
            _32 = 0x0,

            /*************************************************************
             24 bits
            */
            _24 = 0x1,

            /*************************************************************
             20 bits
            */
            _20 = 0x2,

            /*************************************************************
             18 bits
            */
            _18 = 0x3,

            /*************************************************************
             16 bits
            */
            _16 = 0x4,

            /*************************************************************
             16 bits compact stereo
            */
            _16C = 0x5,

            /*************************************************************
             8 bits
            */
            _8 = 0x6,

            /*************************************************************
             8 bits compact stereo
            */
            _8C = 0x7,
        }

        /*********************************************************************
         Data Word Size
        */
        alias DATASIZE = BitField!(10, 8, Mutability.rw, DATASIZEValues);

        /*****************************************************************
         WORDADJ's possible values
        */
        enum WORDADJValues
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

        /*********************************************************************
         Data Word Formatting Adjust
        */
        alias WORDADJ = Bit!(12, Mutability.rw, WORDADJValues);

        /*****************************************************************
         EXTEND's possible values
        */
        enum EXTENDValues
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

        /*********************************************************************
         Data Formatting Bit Extension
        */
        alias EXTEND = BitField!(14, 13, Mutability.rw, EXTENDValues);

        /*****************************************************************
         BITREV's possible values
        */
        enum BITREVValues
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

        /*********************************************************************
         Data Formatting Bit Reverse
        */
        alias BITREV = Bit!(15, Mutability.rw, BITREVValues);

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

        /*****************************************************************
         MONO's possible values
        */
        enum MONOValues
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

        /*********************************************************************
         Mono Mode
        */
        alias MONO = Bit!(24, Mutability.rw, MONOValues);

        /*****************************************************************
         DMA's possible values
        */
        enum DMAValues
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

        /*********************************************************************
         Single or Multiple DMA Channels
        */
        alias DMA = Bit!(25, Mutability.rw, DMAValues);

        /*********************************************************************
         Loop-back Test Mode
        */
        alias RXLOOP = Bit!(26, Mutability.rw);
    }
    /*************************************************************************
     Serializer n Control
    */
    final abstract class SERCTRL2 : Register!(0x24)
    {
        /*****************************************************************
         SERMODE's possible values
        */
        enum SERMODEValues
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

        /*********************************************************************
         Serializer Mode
        */
        alias SERMODE = BitField!(1, 0, Mutability.rw, SERMODEValues);

        /*****************************************************************
         TXDEFAULT's possible values
        */
        enum TXDEFAULTValues
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

        /*********************************************************************
         Line Default Line when Slot Disabled
        */
        alias TXDEFAULT = BitField!(3, 2, Mutability.rw, TXDEFAULTValues);

        /*****************************************************************
         TXSAME's possible values
        */
        enum TXSAMEValues
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

        /*********************************************************************
         Transmit Data when Underrun
        */
        alias TXSAME = Bit!(4, Mutability.rw, TXSAMEValues);

        /*****************************************************************
         CLKSEL's possible values
        */
        enum CLKSELValues
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

        /*********************************************************************
         Clock Unit Selection
        */
        alias CLKSEL = Bit!(5, Mutability.rw, CLKSELValues);

        /*****************************************************************
         SLOTADJ's possible values
        */
        enum SLOTADJValues
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

        /*********************************************************************
         Data Slot Formatting Adjust
        */
        alias SLOTADJ = Bit!(7, Mutability.rw, SLOTADJValues);

        /*****************************************************************
         DATASIZE's possible values
        */
        enum DATASIZEValues
        {
            /*************************************************************
             32 bits
            */
            _32 = 0x0,

            /*************************************************************
             24 bits
            */
            _24 = 0x1,

            /*************************************************************
             20 bits
            */
            _20 = 0x2,

            /*************************************************************
             18 bits
            */
            _18 = 0x3,

            /*************************************************************
             16 bits
            */
            _16 = 0x4,

            /*************************************************************
             16 bits compact stereo
            */
            _16C = 0x5,

            /*************************************************************
             8 bits
            */
            _8 = 0x6,

            /*************************************************************
             8 bits compact stereo
            */
            _8C = 0x7,
        }

        /*********************************************************************
         Data Word Size
        */
        alias DATASIZE = BitField!(10, 8, Mutability.rw, DATASIZEValues);

        /*****************************************************************
         WORDADJ's possible values
        */
        enum WORDADJValues
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

        /*********************************************************************
         Data Word Formatting Adjust
        */
        alias WORDADJ = Bit!(12, Mutability.rw, WORDADJValues);

        /*****************************************************************
         EXTEND's possible values
        */
        enum EXTENDValues
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

        /*********************************************************************
         Data Formatting Bit Extension
        */
        alias EXTEND = BitField!(14, 13, Mutability.rw, EXTENDValues);

        /*****************************************************************
         BITREV's possible values
        */
        enum BITREVValues
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

        /*********************************************************************
         Data Formatting Bit Reverse
        */
        alias BITREV = Bit!(15, Mutability.rw, BITREVValues);

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

        /*****************************************************************
         MONO's possible values
        */
        enum MONOValues
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

        /*********************************************************************
         Mono Mode
        */
        alias MONO = Bit!(24, Mutability.rw, MONOValues);

        /*****************************************************************
         DMA's possible values
        */
        enum DMAValues
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

        /*********************************************************************
         Single or Multiple DMA Channels
        */
        alias DMA = Bit!(25, Mutability.rw, DMAValues);

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
