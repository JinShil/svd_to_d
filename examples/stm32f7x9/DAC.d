module stm32f7x9.dac;

import stm32f7x9.mmio;

/*****************************************************************************
 Digital-to-analog converter
*/
final abstract class DAC : Peripheral!(0x40007400)
{
    /*************************************************************************
     control register
    */
    final abstract class CR : Register!(0x0)
    {
        /*********************************************************************
         DAC channel2 DMA underrun interrupt
              enable
        */
        alias DMAUDRIE2 = Bit!(29, Mutability.rw);

        /*********************************************************************
         DAC channel2 DMA enable
        */
        alias DMAEN2 = Bit!(28, Mutability.rw);

        /*********************************************************************
         DAC channel2 mask/amplitude
              selector
        */
        alias MAMP2 = BitField!(27, 24, Mutability.rw);

        /*********************************************************************
         DAC channel2 noise/triangle wave
              generation enable
        */
        alias WAVE2 = BitField!(23, 22, Mutability.rw);

        /*********************************************************************
         DAC channel2 trigger
              selection
        */
        alias TSEL2 = BitField!(21, 19, Mutability.rw);

        /*********************************************************************
         DAC channel2 trigger
              enable
        */
        alias TEN2 = Bit!(18, Mutability.rw);

        /*********************************************************************
         DAC channel2 output buffer
              disable
        */
        alias BOFF2 = Bit!(17, Mutability.rw);

        /*********************************************************************
         DAC channel2 enable
        */
        alias EN2 = Bit!(16, Mutability.rw);

        /*********************************************************************
         DAC channel1 DMA Underrun Interrupt
              enable
        */
        alias DMAUDRIE1 = Bit!(13, Mutability.rw);

        /*********************************************************************
         DAC channel1 DMA enable
        */
        alias DMAEN1 = Bit!(12, Mutability.rw);

        /*********************************************************************
         DAC channel1 mask/amplitude
              selector
        */
        alias MAMP1 = BitField!(11, 8, Mutability.rw);

        /*********************************************************************
         DAC channel1 noise/triangle wave
              generation enable
        */
        alias WAVE1 = BitField!(7, 6, Mutability.rw);

        /*********************************************************************
         DAC channel1 trigger
              selection
        */
        alias TSEL1 = BitField!(5, 3, Mutability.rw);

        /*********************************************************************
         DAC channel1 trigger
              enable
        */
        alias TEN1 = Bit!(2, Mutability.rw);

        /*********************************************************************
         DAC channel1 output buffer
              disable
        */
        alias BOFF1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         DAC channel1 enable
        */
        alias EN1 = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     software trigger register
    */
    final abstract class SWTRIGR : Register!(0x4)
    {
        /*********************************************************************
         DAC channel2 software
              trigger
        */
        alias SWTRIG2 = Bit!(1, Mutability.rw);

        /*********************************************************************
         DAC channel1 software
              trigger
        */
        alias SWTRIG1 = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     channel1 12-bit right-aligned data holding
          register
    */
    final abstract class DHR12R1 : Register!(0x8)
    {
        /*********************************************************************
         DAC channel1 12-bit right-aligned
              data
        */
        alias DACC1DHR = BitField!(11, 0, Mutability.rw);
    }

    /*************************************************************************
     channel1 12-bit left aligned data holding
          register
    */
    final abstract class DHR12L1 : Register!(0xC)
    {
        /*********************************************************************
         DAC channel1 12-bit left-aligned
              data
        */
        alias DACC1DHR = BitField!(15, 4, Mutability.rw);
    }

    /*************************************************************************
     channel1 8-bit right aligned data holding
          register
    */
    final abstract class DHR8R1 : Register!(0x10)
    {
        /*********************************************************************
         DAC channel1 8-bit right-aligned
              data
        */
        alias DACC1DHR = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     channel2 12-bit right aligned data holding
          register
    */
    final abstract class DHR12R2 : Register!(0x14)
    {
        /*********************************************************************
         DAC channel2 12-bit right-aligned
              data
        */
        alias DACC2DHR = BitField!(11, 0, Mutability.rw);
    }

    /*************************************************************************
     channel2 12-bit left aligned data holding
          register
    */
    final abstract class DHR12L2 : Register!(0x18)
    {
        /*********************************************************************
         DAC channel2 12-bit left-aligned
              data
        */
        alias DACC2DHR = BitField!(15, 4, Mutability.rw);
    }

    /*************************************************************************
     channel2 8-bit right-aligned data holding
          register
    */
    final abstract class DHR8R2 : Register!(0x1C)
    {
        /*********************************************************************
         DAC channel2 8-bit right-aligned
              data
        */
        alias DACC2DHR = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     Dual DAC 12-bit right-aligned data holding
          register
    */
    final abstract class DHR12RD : Register!(0x20)
    {
        /*********************************************************************
         DAC channel2 12-bit right-aligned
              data
        */
        alias DACC2DHR = BitField!(27, 16, Mutability.rw);

        /*********************************************************************
         DAC channel1 12-bit right-aligned
              data
        */
        alias DACC1DHR = BitField!(11, 0, Mutability.rw);
    }

    /*************************************************************************
     DUAL DAC 12-bit left aligned data holding
          register
    */
    final abstract class DHR12LD : Register!(0x24)
    {
        /*********************************************************************
         DAC channel2 12-bit left-aligned
              data
        */
        alias DACC2DHR = BitField!(31, 20, Mutability.rw);

        /*********************************************************************
         DAC channel1 12-bit left-aligned
              data
        */
        alias DACC1DHR = BitField!(15, 4, Mutability.rw);
    }

    /*************************************************************************
     DUAL DAC 8-bit right aligned data holding
          register
    */
    final abstract class DHR8RD : Register!(0x28)
    {
        /*********************************************************************
         DAC channel2 8-bit right-aligned
              data
        */
        alias DACC2DHR = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         DAC channel1 8-bit right-aligned
              data
        */
        alias DACC1DHR = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     channel1 data output register
    */
    final abstract class DOR1 : Register!(0x2C)
    {
        /*********************************************************************
         DAC channel1 data output
        */
        alias DACC1DOR = BitField!(11, 0, Mutability.rw);
    }

    /*************************************************************************
     channel2 data output register
    */
    final abstract class DOR2 : Register!(0x30)
    {
        /*********************************************************************
         DAC channel2 data output
        */
        alias DACC2DOR = BitField!(11, 0, Mutability.rw);
    }

    /*************************************************************************
     status register
    */
    final abstract class SR : Register!(0x34)
    {
        /*********************************************************************
         DAC channel2 DMA underrun
              flag
        */
        alias DMAUDR2 = Bit!(29, Mutability.rw);

        /*********************************************************************
         DAC channel1 DMA underrun
              flag
        */
        alias DMAUDR1 = Bit!(13, Mutability.rw);
    }
}
