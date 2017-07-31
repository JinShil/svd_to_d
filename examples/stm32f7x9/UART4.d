module stm32f7x9.uart4;

import stm32f7x9.mmio;

/*****************************************************************************
 
*/
final abstract class UART4 : Peripheral!(0x40004C00)
{
    /*************************************************************************
     Control register 1
    */
    final abstract class CR1 : Register!(0x0)
    {
        /*********************************************************************
         Word length
        */
        alias M1 = Bit!(28, Mutability.rw);

        /*********************************************************************
         End of Block interrupt
              enable
        */
        alias EOBIE = Bit!(27, Mutability.rw);

        /*********************************************************************
         Receiver timeout interrupt
              enable
        */
        alias RTOIE = Bit!(26, Mutability.rw);

        /*********************************************************************
         Driver Enable assertion
              time
        */
        alias DEAT4 = Bit!(25, Mutability.rw);

        /*********************************************************************
         DEAT3
        */
        alias DEAT3 = Bit!(24, Mutability.rw);

        /*********************************************************************
         DEAT2
        */
        alias DEAT2 = Bit!(23, Mutability.rw);

        /*********************************************************************
         DEAT1
        */
        alias DEAT1 = Bit!(22, Mutability.rw);

        /*********************************************************************
         DEAT0
        */
        alias DEAT0 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Driver Enable de-assertion
              time
        */
        alias DEDT4 = Bit!(20, Mutability.rw);

        /*********************************************************************
         DEDT3
        */
        alias DEDT3 = Bit!(19, Mutability.rw);

        /*********************************************************************
         DEDT2
        */
        alias DEDT2 = Bit!(18, Mutability.rw);

        /*********************************************************************
         DEDT1
        */
        alias DEDT1 = Bit!(17, Mutability.rw);

        /*********************************************************************
         DEDT0
        */
        alias DEDT0 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Oversampling mode
        */
        alias OVER8 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Character match interrupt
              enable
        */
        alias CMIE = Bit!(14, Mutability.rw);

        /*********************************************************************
         Mute mode enable
        */
        alias MME = Bit!(13, Mutability.rw);

        /*********************************************************************
         Word length
        */
        alias M0 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Receiver wakeup method
        */
        alias WAKE = Bit!(11, Mutability.rw);

        /*********************************************************************
         Parity control enable
        */
        alias PCE = Bit!(10, Mutability.rw);

        /*********************************************************************
         Parity selection
        */
        alias PS = Bit!(9, Mutability.rw);

        /*********************************************************************
         PE interrupt enable
        */
        alias PEIE = Bit!(8, Mutability.rw);

        /*********************************************************************
         interrupt enable
        */
        alias TXEIE = Bit!(7, Mutability.rw);

        /*********************************************************************
         Transmission complete interrupt
              enable
        */
        alias TCIE = Bit!(6, Mutability.rw);

        /*********************************************************************
         RXNE interrupt enable
        */
        alias RXNEIE = Bit!(5, Mutability.rw);

        /*********************************************************************
         IDLE interrupt enable
        */
        alias IDLEIE = Bit!(4, Mutability.rw);

        /*********************************************************************
         Transmitter enable
        */
        alias TE = Bit!(3, Mutability.rw);

        /*********************************************************************
         Receiver enable
        */
        alias RE = Bit!(2, Mutability.rw);

        /*********************************************************************
         USART enable in Stop mode
        */
        alias UESM = Bit!(1, Mutability.rw);

        /*********************************************************************
         USART enable
        */
        alias UE = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     Control register 2
    */
    final abstract class CR2 : Register!(0x4)
    {
        /*********************************************************************
         Address of the USART node
        */
        alias ADD4_7 = BitField!(31, 28, Mutability.rw);

        /*********************************************************************
         Address of the USART node
        */
        alias ADD0_3 = BitField!(27, 24, Mutability.rw);

        /*********************************************************************
         Receiver timeout enable
        */
        alias RTOEN = Bit!(23, Mutability.rw);

        /*********************************************************************
         Auto baud rate mode
        */
        alias ABRMOD1 = Bit!(22, Mutability.rw);

        /*********************************************************************
         ABRMOD0
        */
        alias ABRMOD0 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Auto baud rate enable
        */
        alias ABREN = Bit!(20, Mutability.rw);

        /*********************************************************************
         Most significant bit first
        */
        alias MSBFIRST = Bit!(19, Mutability.rw);

        /*********************************************************************
         Binary data inversion
        */
        alias TAINV = Bit!(18, Mutability.rw);

        /*********************************************************************
         TX pin active level
              inversion
        */
        alias TXINV = Bit!(17, Mutability.rw);

        /*********************************************************************
         RX pin active level
              inversion
        */
        alias RXINV = Bit!(16, Mutability.rw);

        /*********************************************************************
         Swap TX/RX pins
        */
        alias SWAP = Bit!(15, Mutability.rw);

        /*********************************************************************
         LIN mode enable
        */
        alias LINEN = Bit!(14, Mutability.rw);

        /*********************************************************************
         STOP bits
        */
        alias STOP = BitField!(13, 12, Mutability.rw);

        /*********************************************************************
         Clock enable
        */
        alias CLKEN = Bit!(11, Mutability.rw);

        /*********************************************************************
         Clock polarity
        */
        alias CPOL = Bit!(10, Mutability.rw);

        /*********************************************************************
         Clock phase
        */
        alias CPHA = Bit!(9, Mutability.rw);

        /*********************************************************************
         Last bit clock pulse
        */
        alias LBCL = Bit!(8, Mutability.rw);

        /*********************************************************************
         LIN break detection interrupt
              enable
        */
        alias LBDIE = Bit!(6, Mutability.rw);

        /*********************************************************************
         LIN break detection length
        */
        alias LBDL = Bit!(5, Mutability.rw);

        /*********************************************************************
         7-bit Address Detection/4-bit Address
              Detection
        */
        alias ADDM7 = Bit!(4, Mutability.rw);
    }

    /*************************************************************************
     Control register 3
    */
    final abstract class CR3 : Register!(0x8)
    {
        /*********************************************************************
         Wakeup from Stop mode interrupt
              enable
        */
        alias WUFIE = Bit!(22, Mutability.rw);

        /*********************************************************************
         Wakeup from Stop mode interrupt flag
              selection
        */
        alias WUS = BitField!(21, 20, Mutability.rw);

        /*********************************************************************
         Smartcard auto-retry count
        */
        alias SCARCNT = BitField!(19, 17, Mutability.rw);

        /*********************************************************************
         Driver enable polarity
              selection
        */
        alias DEP = Bit!(15, Mutability.rw);

        /*********************************************************************
         Driver enable mode
        */
        alias DEM = Bit!(14, Mutability.rw);

        /*********************************************************************
         DMA Disable on Reception
              Error
        */
        alias DDRE = Bit!(13, Mutability.rw);

        /*********************************************************************
         Overrun Disable
        */
        alias OVRDIS = Bit!(12, Mutability.rw);

        /*********************************************************************
         One sample bit method
              enable
        */
        alias ONEBIT = Bit!(11, Mutability.rw);

        /*********************************************************************
         CTS interrupt enable
        */
        alias CTSIE = Bit!(10, Mutability.rw);

        /*********************************************************************
         CTS enable
        */
        alias CTSE = Bit!(9, Mutability.rw);

        /*********************************************************************
         RTS enable
        */
        alias RTSE = Bit!(8, Mutability.rw);

        /*********************************************************************
         DMA enable transmitter
        */
        alias DMAT = Bit!(7, Mutability.rw);

        /*********************************************************************
         DMA enable receiver
        */
        alias DMAR = Bit!(6, Mutability.rw);

        /*********************************************************************
         Smartcard mode enable
        */
        alias SCEN = Bit!(5, Mutability.rw);

        /*********************************************************************
         Smartcard NACK enable
        */
        alias NACK = Bit!(4, Mutability.rw);

        /*********************************************************************
         Half-duplex selection
        */
        alias HDSEL = Bit!(3, Mutability.rw);

        /*********************************************************************
         Ir low-power
        */
        alias IRLP = Bit!(2, Mutability.rw);

        /*********************************************************************
         Ir mode enable
        */
        alias IREN = Bit!(1, Mutability.rw);

        /*********************************************************************
         Error interrupt enable
        */
        alias EIE = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     Baud rate register
    */
    final abstract class BRR : Register!(0xC)
    {
        /*********************************************************************
         DIV_Mantissa
        */
        alias DIV_Mantissa = BitField!(15, 4, Mutability.rw);

        /*********************************************************************
         DIV_Fraction
        */
        alias DIV_Fraction = BitField!(3, 0, Mutability.rw);
    }

    /*************************************************************************
     Guard time and prescaler
          register
    */
    final abstract class GTPR : Register!(0x10)
    {
        /*********************************************************************
         Guard time value
        */
        alias GT = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         Prescaler value
        */
        alias PSC = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     Receiver timeout register
    */
    final abstract class RTOR : Register!(0x14)
    {
        /*********************************************************************
         Block Length
        */
        alias BLEN = BitField!(31, 24, Mutability.rw);

        /*********************************************************************
         Receiver timeout value
        */
        alias RTO = BitField!(23, 0, Mutability.rw);
    }

    /*************************************************************************
     Request register
    */
    final abstract class RQR : Register!(0x18)
    {
        /*********************************************************************
         Transmit data flush
              request
        */
        alias TXFRQ = Bit!(4, Mutability.rw);

        /*********************************************************************
         Receive data flush request
        */
        alias RXFRQ = Bit!(3, Mutability.rw);

        /*********************************************************************
         Mute mode request
        */
        alias MMRQ = Bit!(2, Mutability.rw);

        /*********************************************************************
         Send break request
        */
        alias SBKRQ = Bit!(1, Mutability.rw);

        /*********************************************************************
         Auto baud rate request
        */
        alias ABRRQ = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     Interrupt & status
          register
    */
    final abstract class ISR : Register!(0x1C)
    {
        /*********************************************************************
         REACK
        */
        alias REACK = Bit!(22, Mutability.rw);

        /*********************************************************************
         TEACK
        */
        alias TEACK = Bit!(21, Mutability.rw);

        /*********************************************************************
         WUF
        */
        alias WUF = Bit!(20, Mutability.rw);

        /*********************************************************************
         RWU
        */
        alias RWU = Bit!(19, Mutability.rw);

        /*********************************************************************
         SBKF
        */
        alias SBKF = Bit!(18, Mutability.rw);

        /*********************************************************************
         CMF
        */
        alias CMF = Bit!(17, Mutability.rw);

        /*********************************************************************
         BUSY
        */
        alias BUSY = Bit!(16, Mutability.rw);

        /*********************************************************************
         ABRF
        */
        alias ABRF = Bit!(15, Mutability.rw);

        /*********************************************************************
         ABRE
        */
        alias ABRE = Bit!(14, Mutability.rw);

        /*********************************************************************
         EOBF
        */
        alias EOBF = Bit!(12, Mutability.rw);

        /*********************************************************************
         RTOF
        */
        alias RTOF = Bit!(11, Mutability.rw);

        /*********************************************************************
         CTS
        */
        alias CTS = Bit!(10, Mutability.rw);

        /*********************************************************************
         CTSIF
        */
        alias CTSIF = Bit!(9, Mutability.rw);

        /*********************************************************************
         LBDF
        */
        alias LBDF = Bit!(8, Mutability.rw);

        /*********************************************************************
         TXE
        */
        alias TXE = Bit!(7, Mutability.rw);

        /*********************************************************************
         TC
        */
        alias TC = Bit!(6, Mutability.rw);

        /*********************************************************************
         RXNE
        */
        alias RXNE = Bit!(5, Mutability.rw);

        /*********************************************************************
         IDLE
        */
        alias IDLE = Bit!(4, Mutability.rw);

        /*********************************************************************
         ORE
        */
        alias ORE = Bit!(3, Mutability.rw);

        /*********************************************************************
         NF
        */
        alias NF = Bit!(2, Mutability.rw);

        /*********************************************************************
         FE
        */
        alias FE = Bit!(1, Mutability.rw);

        /*********************************************************************
         PE
        */
        alias PE = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     Interrupt flag clear register
    */
    final abstract class ICR : Register!(0x20)
    {
        /*********************************************************************
         Wakeup from Stop mode clear
              flag
        */
        alias WUCF = Bit!(20, Mutability.rw);

        /*********************************************************************
         Character match clear flag
        */
        alias CMCF = Bit!(17, Mutability.rw);

        /*********************************************************************
         End of block clear flag
        */
        alias EOBCF = Bit!(12, Mutability.rw);

        /*********************************************************************
         Receiver timeout clear
              flag
        */
        alias RTOCF = Bit!(11, Mutability.rw);

        /*********************************************************************
         CTS clear flag
        */
        alias CTSCF = Bit!(9, Mutability.rw);

        /*********************************************************************
         LIN break detection clear
              flag
        */
        alias LBDCF = Bit!(8, Mutability.rw);

        /*********************************************************************
         Transmission complete clear
              flag
        */
        alias TCCF = Bit!(6, Mutability.rw);

        /*********************************************************************
         Idle line detected clear
              flag
        */
        alias IDLECF = Bit!(4, Mutability.rw);

        /*********************************************************************
         Overrun error clear flag
        */
        alias ORECF = Bit!(3, Mutability.rw);

        /*********************************************************************
         Noise detected clear flag
        */
        alias NCF = Bit!(2, Mutability.rw);

        /*********************************************************************
         Framing error clear flag
        */
        alias FECF = Bit!(1, Mutability.rw);

        /*********************************************************************
         Parity error clear flag
        */
        alias PECF = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     Receive data register
    */
    final abstract class RDR : Register!(0x24)
    {
        /*********************************************************************
         Receive data value
        */
        alias RDR = BitField!(8, 0, Mutability.rw);
    }

    /*************************************************************************
     Transmit data register
    */
    final abstract class TDR : Register!(0x28)
    {
        /*********************************************************************
         Transmit data value
        */
        alias TDR = BitField!(8, 0, Mutability.rw);
    }
}
