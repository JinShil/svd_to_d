module stm32f7x9.cec;

import stm32f7x9.mmio;

/*****************************************************************************
 HDMI-CEC controller
*/
final abstract class CEC : Peripheral!(0x40006C00)
{
    /*************************************************************************
     control register
    */
    final abstract class CR : Register!(0x0)
    {
        /*********************************************************************
         Tx End Of Message
        */
        alias TXEOM = Bit!(2, Mutability.rw);

        /*********************************************************************
         Tx start of message
        */
        alias TXSOM = Bit!(1, Mutability.rw);

        /*********************************************************************
         CEC Enable
        */
        alias CECEN = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     configuration register
    */
    final abstract class CFGR : Register!(0x4)
    {
        /*********************************************************************
         Signal Free Time
        */
        alias SFT = BitField!(2, 0, Mutability.rw);

        /*********************************************************************
         Rx-Tolerance
        */
        alias RXTOL = Bit!(3, Mutability.rw);

        /*********************************************************************
         Rx-stop on bit rising
              error
        */
        alias BRESTP = Bit!(4, Mutability.rw);

        /*********************************************************************
         Generate error-bit on bit rising
              error
        */
        alias BREGEN = Bit!(5, Mutability.rw);

        /*********************************************************************
         Generate Error-Bit on Long Bit Period
              Error
        */
        alias LBPEGEN = Bit!(6, Mutability.rw);

        /*********************************************************************
         Avoid Error-Bit Generation in
              Broadcast
        */
        alias BRDNOGEN = Bit!(7, Mutability.rw);

        /*********************************************************************
         SFT Option Bit
        */
        alias SFTOP = Bit!(8, Mutability.rw);

        /*********************************************************************
         Own addresses
              configuration
        */
        alias OAR = BitField!(30, 16, Mutability.rw);

        /*********************************************************************
         Listen mode
        */
        alias LSTN = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Tx data register
    */
    final abstract class TXDR : Register!(0x8)
    {
        /*********************************************************************
         Tx Data register
        */
        alias TXD = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     Rx Data Register
    */
    final abstract class RXDR : Register!(0xC)
    {
        /*********************************************************************
         CEC Rx Data Register
        */
        alias RXDR = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     Interrupt and Status Register
    */
    final abstract class ISR : Register!(0x10)
    {
        /*********************************************************************
         Tx-Missing acknowledge
              error
        */
        alias TXACKE = Bit!(12, Mutability.rw);

        /*********************************************************************
         Tx-Error
        */
        alias TXERR = Bit!(11, Mutability.rw);

        /*********************************************************************
         Tx-Buffer Underrun
        */
        alias TXUDR = Bit!(10, Mutability.rw);

        /*********************************************************************
         End of Transmission
        */
        alias TXEND = Bit!(9, Mutability.rw);

        /*********************************************************************
         Tx-Byte Request
        */
        alias TXBR = Bit!(8, Mutability.rw);

        /*********************************************************************
         Arbitration Lost
        */
        alias ARBLST = Bit!(7, Mutability.rw);

        /*********************************************************************
         Rx-Missing Acknowledge
        */
        alias RXACKE = Bit!(6, Mutability.rw);

        /*********************************************************************
         Rx-Long Bit Period Error
        */
        alias LBPE = Bit!(5, Mutability.rw);

        /*********************************************************************
         Rx-Short Bit period error
        */
        alias SBPE = Bit!(4, Mutability.rw);

        /*********************************************************************
         Rx-Bit rising error
        */
        alias BRE = Bit!(3, Mutability.rw);

        /*********************************************************************
         Rx-Overrun
        */
        alias RXOVR = Bit!(2, Mutability.rw);

        /*********************************************************************
         End Of Reception
        */
        alias RXEND = Bit!(1, Mutability.rw);

        /*********************************************************************
         Rx-Byte Received
        */
        alias RXBR = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     interrupt enable register
    */
    final abstract class IER : Register!(0x14)
    {
        /*********************************************************************
         Tx-Missing Acknowledge Error Interrupt
              Enable
        */
        alias TXACKIE = Bit!(12, Mutability.rw);

        /*********************************************************************
         Tx-Error Interrupt Enable
        */
        alias TXERRIE = Bit!(11, Mutability.rw);

        /*********************************************************************
         Tx-Underrun interrupt
              enable
        */
        alias TXUDRIE = Bit!(10, Mutability.rw);

        /*********************************************************************
         Tx-End of message interrupt
              enable
        */
        alias TXENDIE = Bit!(9, Mutability.rw);

        /*********************************************************************
         Tx-Byte Request Interrupt
              Enable
        */
        alias TXBRIE = Bit!(8, Mutability.rw);

        /*********************************************************************
         Arbitration Lost Interrupt
              Enable
        */
        alias ARBLSTIE = Bit!(7, Mutability.rw);

        /*********************************************************************
         Rx-Missing Acknowledge Error Interrupt
              Enable
        */
        alias RXACKIE = Bit!(6, Mutability.rw);

        /*********************************************************************
         Long Bit Period Error Interrupt
              Enable
        */
        alias LBPEIE = Bit!(5, Mutability.rw);

        /*********************************************************************
         Short Bit Period Error Interrupt
              Enable
        */
        alias SBPEIE = Bit!(4, Mutability.rw);

        /*********************************************************************
         Bit Rising Error Interrupt
              Enable
        */
        alias BREIE = Bit!(3, Mutability.rw);

        /*********************************************************************
         Rx-Buffer Overrun Interrupt
              Enable
        */
        alias RXOVRIE = Bit!(2, Mutability.rw);

        /*********************************************************************
         End Of Reception Interrupt
              Enable
        */
        alias RXENDIE = Bit!(1, Mutability.rw);

        /*********************************************************************
         Rx-Byte Received Interrupt
              Enable
        */
        alias RXBRIE = Bit!(0, Mutability.rw);
    }
}
