module stm32f7x9.lptim1;

import stm32f7x9.mmio;

/*****************************************************************************
 Low power timer
*/
final abstract class LPTIM1 : Peripheral!(0x40002400)
{
    /*************************************************************************
     Interrupt and Status Register
    */
    final abstract class ISR : Register!(00)
    {
        /*********************************************************************
         Counter direction change up to
              down
        */
        alias DOWN = Bit!(6, Mutability.rw);

        /*********************************************************************
         Counter direction change down to
              up
        */
        alias UP = Bit!(5, Mutability.rw);

        /*********************************************************************
         Autoreload register update
              OK
        */
        alias ARROK = Bit!(4, Mutability.rw);

        /*********************************************************************
         Compare register update OK
        */
        alias CMPOK = Bit!(3, Mutability.rw);

        /*********************************************************************
         External trigger edge
              event
        */
        alias EXTTRIG = Bit!(2, Mutability.rw);

        /*********************************************************************
         Autoreload match
        */
        alias ARRM = Bit!(1, Mutability.rw);

        /*********************************************************************
         Compare match
        */
        alias CMPM = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Clear Register
    */
    final abstract class ICR : Register!(0x4)
    {
        /*********************************************************************
         Direction change to down Clear
              Flag
        */
        alias DOWNCF = Bit!(6, Mutability.rw);

        /*********************************************************************
         Direction change to UP Clear
              Flag
        */
        alias UPCF = Bit!(5, Mutability.rw);

        /*********************************************************************
         Autoreload register update OK Clear
              Flag
        */
        alias ARROKCF = Bit!(4, Mutability.rw);

        /*********************************************************************
         Compare register update OK Clear
              Flag
        */
        alias CMPOKCF = Bit!(3, Mutability.rw);

        /*********************************************************************
         External trigger valid edge Clear
              Flag
        */
        alias EXTTRIGCF = Bit!(2, Mutability.rw);

        /*********************************************************************
         Autoreload match Clear
              Flag
        */
        alias ARRMCF = Bit!(1, Mutability.rw);

        /*********************************************************************
         compare match Clear Flag
        */
        alias CMPMCF = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Enable Register
    */
    final abstract class IER : Register!(0x8)
    {
        /*********************************************************************
         Direction change to down Interrupt
              Enable
        */
        alias DOWNIE = Bit!(6, Mutability.rw);

        /*********************************************************************
         Direction change to UP Interrupt
              Enable
        */
        alias UPIE = Bit!(5, Mutability.rw);

        /*********************************************************************
         Autoreload register update OK Interrupt
              Enable
        */
        alias ARROKIE = Bit!(4, Mutability.rw);

        /*********************************************************************
         Compare register update OK Interrupt
              Enable
        */
        alias CMPOKIE = Bit!(3, Mutability.rw);

        /*********************************************************************
         External trigger valid edge Interrupt
              Enable
        */
        alias EXTTRIGIE = Bit!(2, Mutability.rw);

        /*********************************************************************
         Autoreload match Interrupt
              Enable
        */
        alias ARRMIE = Bit!(1, Mutability.rw);

        /*********************************************************************
         Compare match Interrupt
              Enable
        */
        alias CMPMIE = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     Configuration Register
    */
    final abstract class CFGR : Register!(0xc)
    {
        /*********************************************************************
         Encoder mode enable
        */
        alias ENC = Bit!(24, Mutability.rw);

        /*********************************************************************
         counter mode enabled
        */
        alias COUNTMODE = Bit!(23, Mutability.rw);

        /*********************************************************************
         Registers update mode
        */
        alias PRELOAD = Bit!(22, Mutability.rw);

        /*********************************************************************
         Waveform shape polarity
        */
        alias WAVPOL = Bit!(21, Mutability.rw);

        /*********************************************************************
         Waveform shape
        */
        alias WAVE = Bit!(20, Mutability.rw);

        /*********************************************************************
         Timeout enable
        */
        alias TIMOUT = Bit!(19, Mutability.rw);

        /*********************************************************************
         Trigger enable and
              polarity
        */
        alias TRIGEN = BitField!(18, 17, Mutability.rw);

        /*********************************************************************
         Trigger selector
        */
        alias TRIGSEL = BitField!(15, 13, Mutability.rw);

        /*********************************************************************
         Clock prescaler
        */
        alias PRESC = BitField!(11, 9, Mutability.rw);

        /*********************************************************************
         Configurable digital filter for
              trigger
        */
        alias TRGFLT = BitField!(7, 6, Mutability.rw);

        /*********************************************************************
         Configurable digital filter for external
              clock
        */
        alias CKFLT = BitField!(4, 3, Mutability.rw);

        /*********************************************************************
         Clock Polarity
        */
        alias CKPOL = BitField!(2, 1, Mutability.rw);

        /*********************************************************************
         Clock selector
        */
        alias CKSEL = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     Control Register
    */
    final abstract class CR : Register!(0x10)
    {
        /*********************************************************************
         Timer start in continuous
              mode
        */
        alias CNTSTRT = Bit!(2, Mutability.rw);

        /*********************************************************************
         LPTIM start in single mode
        */
        alias SNGSTRT = Bit!(1, Mutability.rw);

        /*********************************************************************
         LPTIM Enable
        */
        alias ENABLE = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     Compare Register
    */
    final abstract class CMP : Register!(0x14)
    {
        /*********************************************************************
         Compare value
        */
        alias CMP = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     Autoreload Register
    */
    final abstract class ARR : Register!(0x18)
    {
        /*********************************************************************
         Auto reload value
        */
        alias ARR = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     Counter Register
    */
    final abstract class CNT : Register!(0x1c)
    {
        /*********************************************************************
         Counter value
        */
        alias CNT = BitField!(15, 0, Mutability.rw);
    }
}
