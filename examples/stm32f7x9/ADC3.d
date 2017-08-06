module stm32f7x9.adc3;

import stm32f7x9.mmio;

/*****************************************************************************
 
*/
final abstract class ADC3 : Peripheral!(0x40012200)
{
    /*************************************************************************
     status register
    */
    final abstract class SR : Register!(00)
    {
        /*********************************************************************
         Overrun
        */
        alias OVR = Bit!(5, Mutability.rw);

        /*********************************************************************
         Regular channel start flag
        */
        alias STRT = Bit!(4, Mutability.rw);

        /*********************************************************************
         Injected channel start
              flag
        */
        alias JSTRT = Bit!(3, Mutability.rw);

        /*********************************************************************
         Injected channel end of
              conversion
        */
        alias JEOC = Bit!(2, Mutability.rw);

        /*********************************************************************
         Regular channel end of
              conversion
        */
        alias EOC = Bit!(1, Mutability.rw);

        /*********************************************************************
         Analog watchdog flag
        */
        alias AWD = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     control register 1
    */
    final abstract class CR1 : Register!(0x4)
    {
        /*********************************************************************
         Overrun interrupt enable
        */
        alias OVRIE = Bit!(26, Mutability.rw);

        /*********************************************************************
         Resolution
        */
        alias RES = BitField!(25, 24, Mutability.rw);

        /*********************************************************************
         Analog watchdog enable on regular
              channels
        */
        alias AWDEN = Bit!(23, Mutability.rw);

        /*********************************************************************
         Analog watchdog enable on injected
              channels
        */
        alias JAWDEN = Bit!(22, Mutability.rw);

        /*********************************************************************
         Discontinuous mode channel
              count
        */
        alias DISCNUM = BitField!(15, 13, Mutability.rw);

        /*********************************************************************
         Discontinuous mode on injected
              channels
        */
        alias JDISCEN = Bit!(12, Mutability.rw);

        /*********************************************************************
         Discontinuous mode on regular
              channels
        */
        alias DISCEN = Bit!(11, Mutability.rw);

        /*********************************************************************
         Automatic injected group
              conversion
        */
        alias JAUTO = Bit!(10, Mutability.rw);

        /*********************************************************************
         Enable the watchdog on a single channel
              in scan mode
        */
        alias AWDSGL = Bit!(9, Mutability.rw);

        /*********************************************************************
         Scan mode
        */
        alias SCAN = Bit!(8, Mutability.rw);

        /*********************************************************************
         Interrupt enable for injected
              channels
        */
        alias JEOCIE = Bit!(7, Mutability.rw);

        /*********************************************************************
         Analog watchdog interrupt
              enable
        */
        alias AWDIE = Bit!(6, Mutability.rw);

        /*********************************************************************
         Interrupt enable for EOC
        */
        alias EOCIE = Bit!(5, Mutability.rw);

        /*********************************************************************
         Analog watchdog channel select
              bits
        */
        alias AWDCH = BitField!(4, 0, Mutability.rw);
    }

    /*************************************************************************
     control register 2
    */
    final abstract class CR2 : Register!(0x8)
    {
        /*********************************************************************
         Start conversion of regular
              channels
        */
        alias SWSTART = Bit!(30, Mutability.rw);

        /*********************************************************************
         External trigger enable for regular
              channels
        */
        alias EXTEN = BitField!(29, 28, Mutability.rw);

        /*********************************************************************
         External event select for regular
              group
        */
        alias EXTSEL = BitField!(27, 24, Mutability.rw);

        /*********************************************************************
         Start conversion of injected
              channels
        */
        alias JSWSTART = Bit!(22, Mutability.rw);

        /*********************************************************************
         External trigger enable for injected
              channels
        */
        alias JEXTEN = BitField!(21, 20, Mutability.rw);

        /*********************************************************************
         External event select for injected
              group
        */
        alias JEXTSEL = BitField!(19, 16, Mutability.rw);

        /*********************************************************************
         Data alignment
        */
        alias ALIGN = Bit!(11, Mutability.rw);

        /*********************************************************************
         End of conversion
              selection
        */
        alias EOCS = Bit!(10, Mutability.rw);

        /*********************************************************************
         DMA disable selection (for single ADC
              mode)
        */
        alias DDS = Bit!(9, Mutability.rw);

        /*********************************************************************
         Direct memory access mode (for single
              ADC mode)
        */
        alias DMA = Bit!(8, Mutability.rw);

        /*********************************************************************
         Continuous conversion
        */
        alias CONT = Bit!(1, Mutability.rw);

        /*********************************************************************
         A/D Converter ON / OFF
        */
        alias ADON = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     sample time register 1
    */
    final abstract class SMPR1 : Register!(0xc)
    {
        /*********************************************************************
         Sample time bits
        */
        alias SMPx_x = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     sample time register 2
    */
    final abstract class SMPR2 : Register!(0x10)
    {
        /*********************************************************************
         Sample time bits
        */
        alias SMPx_x = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     injected channel data offset register
          x
    */
    final abstract class JOFR1 : Register!(0x14)
    {
        /*********************************************************************
         Data offset for injected channel
              x
        */
        alias JOFFSET1 = BitField!(11, 0, Mutability.rw);
    }

    /*************************************************************************
     injected channel data offset register
          x
    */
    final abstract class JOFR2 : Register!(0x18)
    {
        /*********************************************************************
         Data offset for injected channel
              x
        */
        alias JOFFSET2 = BitField!(11, 0, Mutability.rw);
    }

    /*************************************************************************
     injected channel data offset register
          x
    */
    final abstract class JOFR3 : Register!(0x1c)
    {
        /*********************************************************************
         Data offset for injected channel
              x
        */
        alias JOFFSET3 = BitField!(11, 0, Mutability.rw);
    }

    /*************************************************************************
     injected channel data offset register
          x
    */
    final abstract class JOFR4 : Register!(0x20)
    {
        /*********************************************************************
         Data offset for injected channel
              x
        */
        alias JOFFSET4 = BitField!(11, 0, Mutability.rw);
    }

    /*************************************************************************
     watchdog higher threshold
          register
    */
    final abstract class HTR : Register!(0x24)
    {
        /*********************************************************************
         Analog watchdog higher
              threshold
        */
        alias HT = BitField!(11, 0, Mutability.rw);
    }

    /*************************************************************************
     watchdog lower threshold
          register
    */
    final abstract class LTR : Register!(0x28)
    {
        /*********************************************************************
         Analog watchdog lower
              threshold
        */
        alias LT = BitField!(11, 0, Mutability.rw);
    }

    /*************************************************************************
     regular sequence register 1
    */
    final abstract class SQR1 : Register!(0x2c)
    {
        /*********************************************************************
         Regular channel sequence
              length
        */
        alias L = BitField!(23, 20, Mutability.rw);

        /*********************************************************************
         16th conversion in regular
              sequence
        */
        alias SQ16 = BitField!(19, 15, Mutability.rw);

        /*********************************************************************
         15th conversion in regular
              sequence
        */
        alias SQ15 = BitField!(14, 10, Mutability.rw);

        /*********************************************************************
         14th conversion in regular
              sequence
        */
        alias SQ14 = BitField!(9, 5, Mutability.rw);

        /*********************************************************************
         13th conversion in regular
              sequence
        */
        alias SQ13 = BitField!(4, 0, Mutability.rw);
    }

    /*************************************************************************
     regular sequence register 2
    */
    final abstract class SQR2 : Register!(0x30)
    {
        /*********************************************************************
         12th conversion in regular
              sequence
        */
        alias SQ12 = BitField!(29, 25, Mutability.rw);

        /*********************************************************************
         11th conversion in regular
              sequence
        */
        alias SQ11 = BitField!(24, 20, Mutability.rw);

        /*********************************************************************
         10th conversion in regular
              sequence
        */
        alias SQ10 = BitField!(19, 15, Mutability.rw);

        /*********************************************************************
         9th conversion in regular
              sequence
        */
        alias SQ9 = BitField!(14, 10, Mutability.rw);

        /*********************************************************************
         8th conversion in regular
              sequence
        */
        alias SQ8 = BitField!(9, 5, Mutability.rw);

        /*********************************************************************
         7th conversion in regular
              sequence
        */
        alias SQ7 = BitField!(4, 0, Mutability.rw);
    }

    /*************************************************************************
     regular sequence register 3
    */
    final abstract class SQR3 : Register!(0x34)
    {
        /*********************************************************************
         6th conversion in regular
              sequence
        */
        alias SQ6 = BitField!(29, 25, Mutability.rw);

        /*********************************************************************
         5th conversion in regular
              sequence
        */
        alias SQ5 = BitField!(24, 20, Mutability.rw);

        /*********************************************************************
         4th conversion in regular
              sequence
        */
        alias SQ4 = BitField!(19, 15, Mutability.rw);

        /*********************************************************************
         3rd conversion in regular
              sequence
        */
        alias SQ3 = BitField!(14, 10, Mutability.rw);

        /*********************************************************************
         2nd conversion in regular
              sequence
        */
        alias SQ2 = BitField!(9, 5, Mutability.rw);

        /*********************************************************************
         1st conversion in regular
              sequence
        */
        alias SQ1 = BitField!(4, 0, Mutability.rw);
    }

    /*************************************************************************
     injected sequence register
    */
    final abstract class JSQR : Register!(0x38)
    {
        /*********************************************************************
         Injected sequence length
        */
        alias JL = BitField!(21, 20, Mutability.rw);

        /*********************************************************************
         4th conversion in injected
              sequence
        */
        alias JSQ4 = BitField!(19, 15, Mutability.rw);

        /*********************************************************************
         3rd conversion in injected
              sequence
        */
        alias JSQ3 = BitField!(14, 10, Mutability.rw);

        /*********************************************************************
         2nd conversion in injected
              sequence
        */
        alias JSQ2 = BitField!(9, 5, Mutability.rw);

        /*********************************************************************
         1st conversion in injected
              sequence
        */
        alias JSQ1 = BitField!(4, 0, Mutability.rw);
    }

    /*************************************************************************
     injected data register x
    */
    final abstract class JDR1 : Register!(0x3c)
    {
        /*********************************************************************
         Injected data
        */
        alias JDATA = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     injected data register x
    */
    final abstract class JDR2 : Register!(0x40)
    {
        /*********************************************************************
         Injected data
        */
        alias JDATA = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     injected data register x
    */
    final abstract class JDR3 : Register!(0x44)
    {
        /*********************************************************************
         Injected data
        */
        alias JDATA = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     injected data register x
    */
    final abstract class JDR4 : Register!(0x48)
    {
        /*********************************************************************
         Injected data
        */
        alias JDATA = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     regular data register
    */
    final abstract class DR : Register!(0x4c)
    {
        /*********************************************************************
         Regular data
        */
        alias DATA = BitField!(15, 0, Mutability.rw);
    }
}
