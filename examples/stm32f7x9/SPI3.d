module stm32f7x9.spi3;

import stm32f7x9.mmio;

/*****************************************************************************
 
*/
final abstract class SPI3 : Peripheral!(0x40003C00)
{
    /*************************************************************************
     control register 1
    */
    final abstract class CR1 : Register!(0x0)
    {
        /*********************************************************************
         Bidirectional data mode
              enable
        */
        alias BIDIMODE = Bit!(15, Mutability.rw);

        /*********************************************************************
         Output enable in bidirectional
              mode
        */
        alias BIDIOE = Bit!(14, Mutability.rw);

        /*********************************************************************
         Hardware CRC calculation
              enable
        */
        alias CRCEN = Bit!(13, Mutability.rw);

        /*********************************************************************
         CRC transfer next
        */
        alias CRCNEXT = Bit!(12, Mutability.rw);

        /*********************************************************************
         Data frame format
        */
        alias DFF = Bit!(11, Mutability.rw);

        /*********************************************************************
         Receive only
        */
        alias RXONLY = Bit!(10, Mutability.rw);

        /*********************************************************************
         Software slave management
        */
        alias SSM = Bit!(9, Mutability.rw);

        /*********************************************************************
         Internal slave select
        */
        alias SSI = Bit!(8, Mutability.rw);

        /*********************************************************************
         Frame format
        */
        alias LSBFIRST = Bit!(7, Mutability.rw);

        /*********************************************************************
         SPI enable
        */
        alias SPE = Bit!(6, Mutability.rw);

        /*********************************************************************
         Baud rate control
        */
        alias BR = BitField!(5, 3, Mutability.rw);

        /*********************************************************************
         Master selection
        */
        alias MSTR = Bit!(2, Mutability.rw);

        /*********************************************************************
         Clock polarity
        */
        alias CPOL = Bit!(1, Mutability.rw);

        /*********************************************************************
         Clock phase
        */
        alias CPHA = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     control register 2
    */
    final abstract class CR2 : Register!(0x4)
    {
        /*********************************************************************
         Rx buffer DMA enable
        */
        alias RXDMAEN = Bit!(0, Mutability.rw);

        /*********************************************************************
         Tx buffer DMA enable
        */
        alias TXDMAEN = Bit!(1, Mutability.rw);

        /*********************************************************************
         SS output enable
        */
        alias SSOE = Bit!(2, Mutability.rw);

        /*********************************************************************
         NSS pulse management
        */
        alias NSSP = Bit!(3, Mutability.rw);

        /*********************************************************************
         Frame format
        */
        alias FRF = Bit!(4, Mutability.rw);

        /*********************************************************************
         Error interrupt enable
        */
        alias ERRIE = Bit!(5, Mutability.rw);

        /*********************************************************************
         RX buffer not empty interrupt
              enable
        */
        alias RXNEIE = Bit!(6, Mutability.rw);

        /*********************************************************************
         Tx buffer empty interrupt
              enable
        */
        alias TXEIE = Bit!(7, Mutability.rw);

        /*********************************************************************
         Data size
        */
        alias DS = BitField!(11, 8, Mutability.rw);

        /*********************************************************************
         FIFO reception threshold
        */
        alias FRXTH = Bit!(12, Mutability.rw);

        /*********************************************************************
         Last DMA transfer for
              reception
        */
        alias LDMA_RX = Bit!(13, Mutability.rw);

        /*********************************************************************
         Last DMA transfer for
              transmission
        */
        alias LDMA_TX = Bit!(14, Mutability.rw);
    }

    /*************************************************************************
     status register
    */
    final abstract class SR : Register!(0x8)
    {
        /*********************************************************************
         TI frame format error
        */
        alias TIFRFE = Bit!(8, Mutability.r);

        /*********************************************************************
         Busy flag
        */
        alias BSY = Bit!(7, Mutability.r);

        /*********************************************************************
         Overrun flag
        */
        alias OVR = Bit!(6, Mutability.r);

        /*********************************************************************
         Mode fault
        */
        alias MODF = Bit!(5, Mutability.r);

        /*********************************************************************
         CRC error flag
        */
        alias CRCERR = Bit!(4, Mutability.rw);

        /*********************************************************************
         Underrun flag
        */
        alias UDR = Bit!(3, Mutability.r);

        /*********************************************************************
         Channel side
        */
        alias CHSIDE = Bit!(2, Mutability.r);

        /*********************************************************************
         Transmit buffer empty
        */
        alias TXE = Bit!(1, Mutability.r);

        /*********************************************************************
         Receive buffer not empty
        */
        alias RXNE = Bit!(0, Mutability.r);
    }

    /*************************************************************************
     data register
    */
    final abstract class DR : Register!(0xC)
    {
        /*********************************************************************
         Data register
        */
        alias DR = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     CRC polynomial register
    */
    final abstract class CRCPR : Register!(0x10)
    {
        /*********************************************************************
         CRC polynomial register
        */
        alias CRCPOLY = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     RX CRC register
    */
    final abstract class RXCRCR : Register!(0x14)
    {
        /*********************************************************************
         Rx CRC register
        */
        alias RxCRC = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     TX CRC register
    */
    final abstract class TXCRCR : Register!(0x18)
    {
        /*********************************************************************
         Tx CRC register
        */
        alias TxCRC = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     I2S configuration register
    */
    final abstract class I2SCFGR : Register!(0x1C)
    {
        /*********************************************************************
         I2S mode selection
        */
        alias I2SMOD = Bit!(11, Mutability.rw);

        /*********************************************************************
         I2S Enable
        */
        alias I2SE = Bit!(10, Mutability.rw);

        /*********************************************************************
         I2S configuration mode
        */
        alias I2SCFG = BitField!(9, 8, Mutability.rw);

        /*********************************************************************
         PCM frame synchronization
        */
        alias PCMSYNC = Bit!(7, Mutability.rw);

        /*********************************************************************
         I2S standard selection
        */
        alias I2SSTD = BitField!(5, 4, Mutability.rw);

        /*********************************************************************
         Steady state clock
              polarity
        */
        alias CKPOL = Bit!(3, Mutability.rw);

        /*********************************************************************
         Data length to be
              transferred
        */
        alias DATLEN = BitField!(2, 1, Mutability.rw);

        /*********************************************************************
         Channel length (number of bits per audio
              channel)
        */
        alias CHLEN = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     I2S prescaler register
    */
    final abstract class I2SPR : Register!(0x20)
    {
        /*********************************************************************
         Master clock output enable
        */
        alias MCKOE = Bit!(9, Mutability.rw);

        /*********************************************************************
         Odd factor for the
              prescaler
        */
        alias ODD = Bit!(8, Mutability.rw);

        /*********************************************************************
         I2S Linear prescaler
        */
        alias I2SDIV = BitField!(7, 0, Mutability.rw);
    }
}
