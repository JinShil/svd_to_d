module stm32f7x9.ltcd;

import stm32f7x9.mmio;

/*****************************************************************************
 LCD-TFT Controller
*/
final abstract class LTCD : Peripheral!(0x40016800)
{
    /*************************************************************************
     Synchronization Size Configuration
          Register
    */
    final abstract class SSCR : Register!(0x8)
    {
        /*********************************************************************
         Horizontal Synchronization Width (in
              units of pixel clock period)
        */
        alias HSW = BitField!(25, 16, Mutability.rw);

        /*********************************************************************
         Vertical Synchronization Height (in
              units of horizontal scan line)
        */
        alias VSH = BitField!(10, 0, Mutability.rw);
    }

    /*************************************************************************
     Back Porch Configuration
          Register
    */
    final abstract class BPCR : Register!(0xc)
    {
        /*********************************************************************
         Accumulated Horizontal back porch (in
              units of pixel clock period)
        */
        alias AHBP = BitField!(25, 16, Mutability.rw);

        /*********************************************************************
         Accumulated Vertical back porch (in
              units of horizontal scan line)
        */
        alias AVBP = BitField!(10, 0, Mutability.rw);
    }

    /*************************************************************************
     Active Width Configuration
          Register
    */
    final abstract class AWCR : Register!(0x10)
    {
        /*********************************************************************
         AAV
        */
        alias AAV = BitField!(25, 16, Mutability.rw);

        /*********************************************************************
         Accumulated Active Height (in units of
              horizontal scan line)
        */
        alias AAH = BitField!(10, 0, Mutability.rw);
    }

    /*************************************************************************
     Total Width Configuration
          Register
    */
    final abstract class TWCR : Register!(0x14)
    {
        /*********************************************************************
         Total Width (in units of pixel clock
              period)
        */
        alias TOTALW = BitField!(25, 16, Mutability.rw);

        /*********************************************************************
         Total Height (in units of horizontal
              scan line)
        */
        alias TOTALH = BitField!(10, 0, Mutability.rw);
    }

    /*************************************************************************
     Global Control Register
    */
    final abstract class GCR : Register!(0x18)
    {
        /*********************************************************************
         Horizontal Synchronization
              Polarity
        */
        alias HSPOL = Bit!(31, Mutability.rw);

        /*********************************************************************
         Vertical Synchronization
              Polarity
        */
        alias VSPOL = Bit!(30, Mutability.rw);

        /*********************************************************************
         Data Enable Polarity
        */
        alias DEPOL = Bit!(29, Mutability.rw);

        /*********************************************************************
         Pixel Clock Polarity
        */
        alias PCPOL = Bit!(28, Mutability.rw);

        /*********************************************************************
         Dither Enable
        */
        alias DEN = Bit!(16, Mutability.rw);

        /*********************************************************************
         Dither Red Width
        */
        alias DRW = BitField!(14, 12, Mutability.r);

        /*********************************************************************
         Dither Green Width
        */
        alias DGW = BitField!(10, 8, Mutability.r);

        /*********************************************************************
         Dither Blue Width
        */
        alias DBW = BitField!(6, 4, Mutability.r);

        /*********************************************************************
         LCD-TFT controller enable
              bit
        */
        alias LTDCEN = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     Shadow Reload Configuration
          Register
    */
    final abstract class SRCR : Register!(0x24)
    {
        /*********************************************************************
         Vertical Blanking Reload
        */
        alias VBR = Bit!(1, Mutability.rw);

        /*********************************************************************
         Immediate Reload
        */
        alias IMR = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     Background Color Configuration
          Register
    */
    final abstract class BCCR : Register!(0x2c)
    {
        /*********************************************************************
         Background Color Red value
        */
        alias BC = BitField!(23, 0, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Enable Register
    */
    final abstract class IER : Register!(0x34)
    {
        /*********************************************************************
         Register Reload interrupt
              enable
        */
        alias RRIE = Bit!(3, Mutability.rw);

        /*********************************************************************
         Transfer Error Interrupt
              Enable
        */
        alias TERRIE = Bit!(2, Mutability.rw);

        /*********************************************************************
         FIFO Underrun Interrupt
              Enable
        */
        alias FUIE = Bit!(1, Mutability.rw);

        /*********************************************************************
         Line Interrupt Enable
        */
        alias LIE = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Status Register
    */
    final abstract class ISR : Register!(0x38)
    {
        /*********************************************************************
         Register Reload Interrupt
              Flag
        */
        alias RRIF = Bit!(3, Mutability.rw);

        /*********************************************************************
         Transfer Error interrupt
              flag
        */
        alias TERRIF = Bit!(2, Mutability.rw);

        /*********************************************************************
         FIFO Underrun Interrupt
              flag
        */
        alias FUIF = Bit!(1, Mutability.rw);

        /*********************************************************************
         Line Interrupt flag
        */
        alias LIF = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Clear Register
    */
    final abstract class ICR : Register!(0x3c)
    {
        /*********************************************************************
         Clears Register Reload Interrupt
              Flag
        */
        alias CRRIF = Bit!(3, Mutability.rw);

        /*********************************************************************
         Clears the Transfer Error Interrupt
              Flag
        */
        alias CTERRIF = Bit!(2, Mutability.rw);

        /*********************************************************************
         Clears the FIFO Underrun Interrupt
              flag
        */
        alias CFUIF = Bit!(1, Mutability.rw);

        /*********************************************************************
         Clears the Line Interrupt
              Flag
        */
        alias CLIF = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     Line Interrupt Position Configuration
          Register
    */
    final abstract class LIPCR : Register!(0x40)
    {
        /*********************************************************************
         Line Interrupt Position
        */
        alias LIPOS = BitField!(10, 0, Mutability.rw);
    }

    /*************************************************************************
     Current Position Status
          Register
    */
    final abstract class CPSR : Register!(0x44)
    {
        /*********************************************************************
         Current X Position
        */
        alias CXPOS = BitField!(31, 16, Mutability.rw);

        /*********************************************************************
         Current Y Position
        */
        alias CYPOS = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     Current Display Status
          Register
    */
    final abstract class CDSR : Register!(0x48)
    {
        /*********************************************************************
         Horizontal Synchronization display
              Status
        */
        alias HSYNCS = Bit!(3, Mutability.rw);

        /*********************************************************************
         Vertical Synchronization display
              Status
        */
        alias VSYNCS = Bit!(2, Mutability.rw);

        /*********************************************************************
         Horizontal Data Enable display
              Status
        */
        alias HDES = Bit!(1, Mutability.rw);

        /*********************************************************************
         Vertical Data Enable display
              Status
        */
        alias VDES = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     Layerx Control Register
    */
    final abstract class L1CR : Register!(0x84)
    {
        /*********************************************************************
         Color Look-Up Table Enable
        */
        alias CLUTEN = Bit!(4, Mutability.rw);

        /*********************************************************************
         Color Keying Enable
        */
        alias COLKEN = Bit!(1, Mutability.rw);

        /*********************************************************************
         Layer Enable
        */
        alias LEN = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     Layerx Window Horizontal Position
          Configuration Register
    */
    final abstract class L1WHPCR : Register!(0x88)
    {
        /*********************************************************************
         Window Horizontal Stop
              Position
        */
        alias WHSPPOS = BitField!(27, 16, Mutability.rw);

        /*********************************************************************
         Window Horizontal Start
              Position
        */
        alias WHSTPOS = BitField!(11, 0, Mutability.rw);
    }

    /*************************************************************************
     Layerx Window Vertical Position
          Configuration Register
    */
    final abstract class L1WVPCR : Register!(0x8c)
    {
        /*********************************************************************
         Window Vertical Stop
              Position
        */
        alias WVSPPOS = BitField!(26, 16, Mutability.rw);

        /*********************************************************************
         Window Vertical Start
              Position
        */
        alias WVSTPOS = BitField!(10, 0, Mutability.rw);
    }

    /*************************************************************************
     Layerx Color Keying Configuration
          Register
    */
    final abstract class L1CKCR : Register!(0x90)
    {
        /*********************************************************************
         Color Key Red value
        */
        alias CKRED = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         Color Key Green value
        */
        alias CKGREEN = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         Color Key Blue value
        */
        alias CKBLUE = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     Layerx Pixel Format Configuration
          Register
    */
    final abstract class L1PFCR : Register!(0x94)
    {
        /*********************************************************************
         Pixel Format
        */
        alias PF = BitField!(2, 0, Mutability.rw);
    }

    /*************************************************************************
     Layerx Constant Alpha Configuration
          Register
    */
    final abstract class L1CACR : Register!(0x98)
    {
        /*********************************************************************
         Constant Alpha
        */
        alias CONSTA = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     Layerx Default Color Configuration
          Register
    */
    final abstract class L1DCCR : Register!(0x9c)
    {
        /*********************************************************************
         Default Color Alpha
        */
        alias DCALPHA = BitField!(31, 24, Mutability.rw);

        /*********************************************************************
         Default Color Red
        */
        alias DCRED = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         Default Color Green
        */
        alias DCGREEN = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         Default Color Blue
        */
        alias DCBLUE = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     Layerx Blending Factors Configuration
          Register
    */
    final abstract class L1BFCR : Register!(0xa0)
    {
        /*********************************************************************
         Blending Factor 1
        */
        alias BF1 = BitField!(10, 8, Mutability.rw);

        /*********************************************************************
         Blending Factor 2
        */
        alias BF2 = BitField!(2, 0, Mutability.rw);
    }

    /*************************************************************************
     Layerx Color Frame Buffer Address
          Register
    */
    final abstract class L1CFBAR : Register!(0xac)
    {
        /*********************************************************************
         Color Frame Buffer Start
              Address
        */
        alias CFBADD = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Layerx Color Frame Buffer Length
          Register
    */
    final abstract class L1CFBLR : Register!(0xb0)
    {
        /*********************************************************************
         Color Frame Buffer Pitch in
              bytes
        */
        alias CFBP = BitField!(28, 16, Mutability.rw);

        /*********************************************************************
         Color Frame Buffer Line
              Length
        */
        alias CFBLL = BitField!(12, 0, Mutability.rw);
    }

    /*************************************************************************
     Layerx ColorFrame Buffer Line Number
          Register
    */
    final abstract class L1CFBLNR : Register!(0xb4)
    {
        /*********************************************************************
         Frame Buffer Line Number
        */
        alias CFBLNBR = BitField!(10, 0, Mutability.rw);
    }

    /*************************************************************************
     Layerx CLUT Write Register
    */
    final abstract class L1CLUTWR : Register!(0xc4)
    {
        /*********************************************************************
         CLUT Address
        */
        alias CLUTADD = BitField!(31, 24, Mutability.rw);

        /*********************************************************************
         Red value
        */
        alias RED = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         Green value
        */
        alias GREEN = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         Blue value
        */
        alias BLUE = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     Layerx Control Register
    */
    final abstract class L2CR : Register!(0x104)
    {
        /*********************************************************************
         Color Look-Up Table Enable
        */
        alias CLUTEN = Bit!(4, Mutability.rw);

        /*********************************************************************
         Color Keying Enable
        */
        alias COLKEN = Bit!(1, Mutability.rw);

        /*********************************************************************
         Layer Enable
        */
        alias LEN = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     Layerx Window Horizontal Position
          Configuration Register
    */
    final abstract class L2WHPCR : Register!(0x108)
    {
        /*********************************************************************
         Window Horizontal Stop
              Position
        */
        alias WHSPPOS = BitField!(27, 16, Mutability.rw);

        /*********************************************************************
         Window Horizontal Start
              Position
        */
        alias WHSTPOS = BitField!(11, 0, Mutability.rw);
    }

    /*************************************************************************
     Layerx Window Vertical Position
          Configuration Register
    */
    final abstract class L2WVPCR : Register!(0x10c)
    {
        /*********************************************************************
         Window Vertical Stop
              Position
        */
        alias WVSPPOS = BitField!(26, 16, Mutability.rw);

        /*********************************************************************
         Window Vertical Start
              Position
        */
        alias WVSTPOS = BitField!(10, 0, Mutability.rw);
    }

    /*************************************************************************
     Layerx Color Keying Configuration
          Register
    */
    final abstract class L2CKCR : Register!(0x110)
    {
        /*********************************************************************
         Color Key Red value
        */
        alias CKRED = BitField!(23, 15, Mutability.rw);

        /*********************************************************************
         Color Key Green value
        */
        alias CKGREEN = BitField!(14, 8, Mutability.rw);

        /*********************************************************************
         Color Key Blue value
        */
        alias CKBLUE = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     Layerx Pixel Format Configuration
          Register
    */
    final abstract class L2PFCR : Register!(0x114)
    {
        /*********************************************************************
         Pixel Format
        */
        alias PF = BitField!(2, 0, Mutability.rw);
    }

    /*************************************************************************
     Layerx Constant Alpha Configuration
          Register
    */
    final abstract class L2CACR : Register!(0x118)
    {
        /*********************************************************************
         Constant Alpha
        */
        alias CONSTA = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     Layerx Default Color Configuration
          Register
    */
    final abstract class L2DCCR : Register!(0x11c)
    {
        /*********************************************************************
         Default Color Alpha
        */
        alias DCALPHA = BitField!(31, 24, Mutability.rw);

        /*********************************************************************
         Default Color Red
        */
        alias DCRED = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         Default Color Green
        */
        alias DCGREEN = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         Default Color Blue
        */
        alias DCBLUE = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     Layerx Blending Factors Configuration
          Register
    */
    final abstract class L2BFCR : Register!(0x120)
    {
        /*********************************************************************
         Blending Factor 1
        */
        alias BF1 = BitField!(10, 8, Mutability.rw);

        /*********************************************************************
         Blending Factor 2
        */
        alias BF2 = BitField!(2, 0, Mutability.rw);
    }

    /*************************************************************************
     Layerx Color Frame Buffer Address
          Register
    */
    final abstract class L2CFBAR : Register!(0x12c)
    {
        /*********************************************************************
         Color Frame Buffer Start
              Address
        */
        alias CFBADD = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Layerx Color Frame Buffer Length
          Register
    */
    final abstract class L2CFBLR : Register!(0x130)
    {
        /*********************************************************************
         Color Frame Buffer Pitch in
              bytes
        */
        alias CFBP = BitField!(28, 16, Mutability.rw);

        /*********************************************************************
         Color Frame Buffer Line
              Length
        */
        alias CFBLL = BitField!(12, 0, Mutability.rw);
    }

    /*************************************************************************
     Layerx ColorFrame Buffer Line Number
          Register
    */
    final abstract class L2CFBLNR : Register!(0x134)
    {
        /*********************************************************************
         Frame Buffer Line Number
        */
        alias CFBLNBR = BitField!(10, 0, Mutability.rw);
    }

    /*************************************************************************
     Layerx CLUT Write Register
    */
    final abstract class L2CLUTWR : Register!(0x144)
    {
        /*********************************************************************
         CLUT Address
        */
        alias CLUTADD = BitField!(31, 24, Mutability.rw);

        /*********************************************************************
         Red value
        */
        alias RED = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         Green value
        */
        alias GREEN = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         Blue value
        */
        alias BLUE = BitField!(7, 0, Mutability.rw);
    }
}
