module stm32f7x9.tim4;

import stm32f7x9.mmio;

/*****************************************************************************
 General purpose timers
*/
final abstract class TIM4 : Peripheral!(0x40000800)
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
         Center-aligned mode
              selection
        */
        alias CMS = BitField!(6, 5, Mutability.rw);

        /*********************************************************************
         Direction
        */
        alias DIR = Bit!(4, Mutability.rw);

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
     control register 2
    */
    final abstract class CR2 : Register!(0x4)
    {
        /*********************************************************************
         TI1 selection
        */
        alias TI1S = Bit!(7, Mutability.rw);

        /*********************************************************************
         Master mode selection
        */
        alias MMS = BitField!(6, 4, Mutability.rw);

        /*********************************************************************
         Capture/compare DMA
              selection
        */
        alias CCDS = Bit!(3, Mutability.rw);
    }

    /*************************************************************************
     slave mode control register
    */
    final abstract class SMCR : Register!(0x8)
    {
        /*********************************************************************
         External trigger polarity
        */
        alias ETP = Bit!(15, Mutability.rw);

        /*********************************************************************
         External clock enable
        */
        alias ECE = Bit!(14, Mutability.rw);

        /*********************************************************************
         External trigger prescaler
        */
        alias ETPS = BitField!(13, 12, Mutability.rw);

        /*********************************************************************
         External trigger filter
        */
        alias ETF = BitField!(11, 8, Mutability.rw);

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
         Trigger DMA request enable
        */
        alias TDE = Bit!(14, Mutability.rw);

        /*********************************************************************
         Capture/Compare 4 DMA request
              enable
        */
        alias CC4DE = Bit!(12, Mutability.rw);

        /*********************************************************************
         Capture/Compare 3 DMA request
              enable
        */
        alias CC3DE = Bit!(11, Mutability.rw);

        /*********************************************************************
         Capture/Compare 2 DMA request
              enable
        */
        alias CC2DE = Bit!(10, Mutability.rw);

        /*********************************************************************
         Capture/Compare 1 DMA request
              enable
        */
        alias CC1DE = Bit!(9, Mutability.rw);

        /*********************************************************************
         Update DMA request enable
        */
        alias UDE = Bit!(8, Mutability.rw);

        /*********************************************************************
         Trigger interrupt enable
        */
        alias TIE = Bit!(6, Mutability.rw);

        /*********************************************************************
         Capture/Compare 4 interrupt
              enable
        */
        alias CC4IE = Bit!(4, Mutability.rw);

        /*********************************************************************
         Capture/Compare 3 interrupt
              enable
        */
        alias CC3IE = Bit!(3, Mutability.rw);

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
         Capture/Compare 4 overcapture
              flag
        */
        alias CC4OF = Bit!(12, Mutability.rw);

        /*********************************************************************
         Capture/Compare 3 overcapture
              flag
        */
        alias CC3OF = Bit!(11, Mutability.rw);

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
         Capture/Compare 4 interrupt
              flag
        */
        alias CC4IF = Bit!(4, Mutability.rw);

        /*********************************************************************
         Capture/Compare 3 interrupt
              flag
        */
        alias CC3IF = Bit!(3, Mutability.rw);

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
         Capture/compare 4
              generation
        */
        alias CC4G = Bit!(4, Mutability.rw);

        /*********************************************************************
         Capture/compare 3
              generation
        */
        alias CC3G = Bit!(3, Mutability.rw);

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
         OC2CE
        */
        alias OC2CE = Bit!(15, Mutability.rw);

        /*********************************************************************
         OC2M
        */
        alias OC2M = BitField!(14, 12, Mutability.rw);

        /*********************************************************************
         OC2PE
        */
        alias OC2PE = Bit!(11, Mutability.rw);

        /*********************************************************************
         OC2FE
        */
        alias OC2FE = Bit!(10, Mutability.rw);

        /*********************************************************************
         CC2S
        */
        alias CC2S = BitField!(9, 8, Mutability.rw);

        /*********************************************************************
         OC1CE
        */
        alias OC1CE = Bit!(7, Mutability.rw);

        /*********************************************************************
         OC1M
        */
        alias OC1M = BitField!(6, 4, Mutability.rw);

        /*********************************************************************
         OC1PE
        */
        alias OC1PE = Bit!(3, Mutability.rw);

        /*********************************************************************
         OC1FE
        */
        alias OC1FE = Bit!(2, Mutability.rw);

        /*********************************************************************
         CC1S
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
        alias IC2F = BitField!(15, 12, Mutability.rw);

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
        alias IC1F = BitField!(7, 4, Mutability.rw);

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
     capture/compare mode register 2 (output
          mode)
    */
    final abstract class CCMR2_Output : Register!(0x1c)
    {
        /*********************************************************************
         O24CE
        */
        alias O24CE = Bit!(15, Mutability.rw);

        /*********************************************************************
         OC4M
        */
        alias OC4M = BitField!(14, 12, Mutability.rw);

        /*********************************************************************
         OC4PE
        */
        alias OC4PE = Bit!(11, Mutability.rw);

        /*********************************************************************
         OC4FE
        */
        alias OC4FE = Bit!(10, Mutability.rw);

        /*********************************************************************
         CC4S
        */
        alias CC4S = BitField!(9, 8, Mutability.rw);

        /*********************************************************************
         OC3CE
        */
        alias OC3CE = Bit!(7, Mutability.rw);

        /*********************************************************************
         OC3M
        */
        alias OC3M = BitField!(6, 4, Mutability.rw);

        /*********************************************************************
         OC3PE
        */
        alias OC3PE = Bit!(3, Mutability.rw);

        /*********************************************************************
         OC3FE
        */
        alias OC3FE = Bit!(2, Mutability.rw);

        /*********************************************************************
         CC3S
        */
        alias CC3S = BitField!(1, 0, Mutability.rw);
    }

    /*************************************************************************
     capture/compare mode register 2 (input
          mode)
    */
    final abstract class CCMR2_Input : Register!(0x1c)
    {
        /*********************************************************************
         Input capture 4 filter
        */
        alias IC4F = BitField!(15, 12, Mutability.rw);

        /*********************************************************************
         Input capture 4 prescaler
        */
        alias IC4PSC = BitField!(11, 10, Mutability.rw);

        /*********************************************************************
         Capture/Compare 4
              selection
        */
        alias CC4S = BitField!(9, 8, Mutability.rw);

        /*********************************************************************
         Input capture 3 filter
        */
        alias IC3F = BitField!(7, 4, Mutability.rw);

        /*********************************************************************
         Input capture 3 prescaler
        */
        alias IC3PSC = BitField!(3, 2, Mutability.rw);

        /*********************************************************************
         Capture/compare 3
              selection
        */
        alias CC3S = BitField!(1, 0, Mutability.rw);
    }

    /*************************************************************************
     capture/compare enable
          register
    */
    final abstract class CCER : Register!(0x20)
    {
        /*********************************************************************
         Capture/Compare 4 output
              Polarity
        */
        alias CC4NP = Bit!(15, Mutability.rw);

        /*********************************************************************
         Capture/Compare 3 output
              Polarity
        */
        alias CC4P = Bit!(13, Mutability.rw);

        /*********************************************************************
         Capture/Compare 4 output
              enable
        */
        alias CC4E = Bit!(12, Mutability.rw);

        /*********************************************************************
         Capture/Compare 3 output
              Polarity
        */
        alias CC3NP = Bit!(11, Mutability.rw);

        /*********************************************************************
         Capture/Compare 3 output
              Polarity
        */
        alias CC3P = Bit!(9, Mutability.rw);

        /*********************************************************************
         Capture/Compare 3 output
              enable
        */
        alias CC3E = Bit!(8, Mutability.rw);

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
         High counter value
        */
        alias CNT_H = BitField!(31, 16, Mutability.rw);

        /*********************************************************************
         Low counter value
        */
        alias CNT_L = BitField!(15, 0, Mutability.rw);
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
         High Auto-reload value
        */
        alias ARR_H = BitField!(31, 16, Mutability.rw);

        /*********************************************************************
         Low Auto-reload value
        */
        alias ARR_L = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     capture/compare register 1
    */
    final abstract class CCR1 : Register!(0x34)
    {
        /*********************************************************************
         High Capture/Compare 1
              value
        */
        alias CCR1_H = BitField!(31, 16, Mutability.rw);

        /*********************************************************************
         Low Capture/Compare 1
              value
        */
        alias CCR1_L = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     capture/compare register 2
    */
    final abstract class CCR2 : Register!(0x38)
    {
        /*********************************************************************
         High Capture/Compare 2
              value
        */
        alias CCR2_H = BitField!(31, 16, Mutability.rw);

        /*********************************************************************
         Low Capture/Compare 2
              value
        */
        alias CCR2_L = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     capture/compare register 3
    */
    final abstract class CCR3 : Register!(0x3c)
    {
        /*********************************************************************
         High Capture/Compare value
        */
        alias CCR3_H = BitField!(31, 16, Mutability.rw);

        /*********************************************************************
         Low Capture/Compare value
        */
        alias CCR3_L = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     capture/compare register 4
    */
    final abstract class CCR4 : Register!(0x40)
    {
        /*********************************************************************
         High Capture/Compare value
        */
        alias CCR4_H = BitField!(31, 16, Mutability.rw);

        /*********************************************************************
         Low Capture/Compare value
        */
        alias CCR4_L = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     DMA control register
    */
    final abstract class DCR : Register!(0x48)
    {
        /*********************************************************************
         DMA burst length
        */
        alias DBL = BitField!(12, 8, Mutability.rw);

        /*********************************************************************
         DMA base address
        */
        alias DBA = BitField!(4, 0, Mutability.rw);
    }

    /*************************************************************************
     DMA address for full transfer
    */
    final abstract class DMAR : Register!(0x4c)
    {
        /*********************************************************************
         DMA register for burst
              accesses
        */
        alias DMAB = BitField!(15, 0, Mutability.rw);
    }
}
