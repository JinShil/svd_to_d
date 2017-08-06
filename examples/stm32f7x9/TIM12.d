module stm32f7x9.tim12;

import stm32f7x9.mmio;

/*****************************************************************************
 
*/
final abstract class TIM12 : Peripheral!(0x40001800)
{
    /*************************************************************************
     control register 1
    */
    final abstract class CR1 : Register!(00)
    {
        /*********************************************************************
         Clock division
        */
        alias CKD = BitField!(9, 8, Mutability.rw);

        /*********************************************************************
         Auto-reload preload enable
        */
        alias ARPE = Bit!(7, Mutability.rw);

        /*********************************************************************
         One-pulse mode
        */
        alias OPM = Bit!(3, Mutability.rw);

        /*********************************************************************
         Update request source
        */
        alias URS = Bit!(2, Mutability.rw);

        /*********************************************************************
         Update disable
        */
        alias UDIS = Bit!(1, Mutability.rw);

        /*********************************************************************
         Counter enable
        */
        alias CEN = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     slave mode control register
    */
    final abstract class SMCR : Register!(0x8)
    {
        /*********************************************************************
         Master/Slave mode
        */
        alias MSM = Bit!(7, Mutability.rw);

        /*********************************************************************
         Trigger selection
        */
        alias TS = BitField!(6, 4, Mutability.rw);

        /*********************************************************************
         Slave mode selection
        */
        alias SMS = BitField!(2, 0, Mutability.rw);
    }

    /*************************************************************************
     DMA/Interrupt enable register
    */
    final abstract class DIER : Register!(0xc)
    {
        /*********************************************************************
         Trigger interrupt enable
        */
        alias TIE = Bit!(6, Mutability.rw);

        /*********************************************************************
         Capture/Compare 2 interrupt
              enable
        */
        alias CC2IE = Bit!(2, Mutability.rw);

        /*********************************************************************
         Capture/Compare 1 interrupt
              enable
        */
        alias CC1IE = Bit!(1, Mutability.rw);

        /*********************************************************************
         Update interrupt enable
        */
        alias UIE = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     status register
    */
    final abstract class SR : Register!(0x10)
    {
        /*********************************************************************
         Capture/compare 2 overcapture
              flag
        */
        alias CC2OF = Bit!(10, Mutability.rw);

        /*********************************************************************
         Capture/Compare 1 overcapture
              flag
        */
        alias CC1OF = Bit!(9, Mutability.rw);

        /*********************************************************************
         Trigger interrupt flag
        */
        alias TIF = Bit!(6, Mutability.rw);

        /*********************************************************************
         Capture/Compare 2 interrupt
              flag
        */
        alias CC2IF = Bit!(2, Mutability.rw);

        /*********************************************************************
         Capture/compare 1 interrupt
              flag
        */
        alias CC1IF = Bit!(1, Mutability.rw);

        /*********************************************************************
         Update interrupt flag
        */
        alias UIF = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     event generation register
    */
    final abstract class EGR : Register!(0x14)
    {
        /*********************************************************************
         Trigger generation
        */
        alias TG = Bit!(6, Mutability.rw);

        /*********************************************************************
         Capture/compare 2
              generation
        */
        alias CC2G = Bit!(2, Mutability.rw);

        /*********************************************************************
         Capture/compare 1
              generation
        */
        alias CC1G = Bit!(1, Mutability.rw);

        /*********************************************************************
         Update generation
        */
        alias UG = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     capture/compare mode register 1 (output
          mode)
    */
    final abstract class CCMR1_Output : Register!(0x18)
    {
        /*********************************************************************
         Output Compare 2 mode
        */
        alias OC2M = BitField!(14, 12, Mutability.rw);

        /*********************************************************************
         Output Compare 2 preload
              enable
        */
        alias OC2PE = Bit!(11, Mutability.rw);

        /*********************************************************************
         Output Compare 2 fast
              enable
        */
        alias OC2FE = Bit!(10, Mutability.rw);

        /*********************************************************************
         Capture/Compare 2
              selection
        */
        alias CC2S = BitField!(9, 8, Mutability.rw);

        /*********************************************************************
         Output Compare 1 mode
        */
        alias OC1M = BitField!(6, 4, Mutability.rw);

        /*********************************************************************
         Output Compare 1 preload
              enable
        */
        alias OC1PE = Bit!(3, Mutability.rw);

        /*********************************************************************
         Output Compare 1 fast
              enable
        */
        alias OC1FE = Bit!(2, Mutability.rw);

        /*********************************************************************
         Capture/Compare 1
              selection
        */
        alias CC1S = BitField!(1, 0, Mutability.rw);
    }

    /*************************************************************************
     capture/compare mode register 1 (input
          mode)
    */
    final abstract class CCMR1_Input : Register!(0x18)
    {
        /*********************************************************************
         Input capture 2 filter
        */
        alias IC2F = BitField!(14, 12, Mutability.rw);

        /*********************************************************************
         Input capture 2 prescaler
        */
        alias IC2PCS = BitField!(11, 10, Mutability.rw);

        /*********************************************************************
         Capture/Compare 2
              selection
        */
        alias CC2S = BitField!(9, 8, Mutability.rw);

        /*********************************************************************
         Input capture 1 filter
        */
        alias IC1F = BitField!(6, 4, Mutability.rw);

        /*********************************************************************
         Input capture 1 prescaler
        */
        alias ICPCS = BitField!(3, 2, Mutability.rw);

        /*********************************************************************
         Capture/Compare 1
              selection
        */
        alias CC1S = BitField!(1, 0, Mutability.rw);
    }

    /*************************************************************************
     capture/compare enable
          register
    */
    final abstract class CCER : Register!(0x20)
    {
        /*********************************************************************
         Capture/Compare 2 output
              Polarity
        */
        alias CC2NP = Bit!(7, Mutability.rw);

        /*********************************************************************
         Capture/Compare 2 output
              Polarity
        */
        alias CC2P = Bit!(5, Mutability.rw);

        /*********************************************************************
         Capture/Compare 2 output
              enable
        */
        alias CC2E = Bit!(4, Mutability.rw);

        /*********************************************************************
         Capture/Compare 1 output
              Polarity
        */
        alias CC1NP = Bit!(3, Mutability.rw);

        /*********************************************************************
         Capture/Compare 1 output
              Polarity
        */
        alias CC1P = Bit!(1, Mutability.rw);

        /*********************************************************************
         Capture/Compare 1 output
              enable
        */
        alias CC1E = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     counter
    */
    final abstract class CNT : Register!(0x24)
    {
        /*********************************************************************
         counter value
        */
        alias CNT = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     prescaler
    */
    final abstract class PSC : Register!(0x28)
    {
        /*********************************************************************
         Prescaler value
        */
        alias PSC = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     auto-reload register
    */
    final abstract class ARR : Register!(0x2c)
    {
        /*********************************************************************
         Auto-reload value
        */
        alias ARR = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     capture/compare register 1
    */
    final abstract class CCR1 : Register!(0x34)
    {
        /*********************************************************************
         Capture/Compare 1 value
        */
        alias CCR1 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     capture/compare register 2
    */
    final abstract class CCR2 : Register!(0x38)
    {
        /*********************************************************************
         Capture/Compare 2 value
        */
        alias CCR2 = BitField!(15, 0, Mutability.rw);
    }
}
