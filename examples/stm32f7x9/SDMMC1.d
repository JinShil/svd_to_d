module stm32f7x9.sdmmc1;

import stm32f7x9.mmio;

/*****************************************************************************
 Secure digital input/output
      interface
*/
final abstract class SDMMC1 : Peripheral!(0x40012C00)
{
    /*************************************************************************
     power control register
    */
    final abstract class POWER : Register!(0x0)
    {
        /*********************************************************************
         PWRCTRL
        */
        alias PWRCTRL = BitField!(1, 0, Mutability.rw);
    }

    /*************************************************************************
     SDI clock control register
    */
    final abstract class CLKCR : Register!(0x4)
    {
        /*********************************************************************
         HW Flow Control enable
        */
        alias HWFC_EN = Bit!(14, Mutability.rw);

        /*********************************************************************
         SDIO_CK dephasing selection
              bit
        */
        alias NEGEDGE = Bit!(13, Mutability.rw);

        /*********************************************************************
         Wide bus mode enable bit
        */
        alias WIDBUS = BitField!(12, 11, Mutability.rw);

        /*********************************************************************
         Clock divider bypass enable
              bit
        */
        alias BYPASS = Bit!(10, Mutability.rw);

        /*********************************************************************
         Power saving configuration
              bit
        */
        alias PWRSAV = Bit!(9, Mutability.rw);

        /*********************************************************************
         Clock enable bit
        */
        alias CLKEN = Bit!(8, Mutability.rw);

        /*********************************************************************
         Clock divide factor
        */
        alias CLKDIV = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     argument register
    */
    final abstract class ARG : Register!(0x8)
    {
        /*********************************************************************
         Command argument
        */
        alias CMDARG = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     command register
    */
    final abstract class CMD : Register!(0xC)
    {
        /*********************************************************************
         CE-ATA command
        */
        alias CE_ATACMD = Bit!(14, Mutability.rw);

        /*********************************************************************
         not Interrupt Enable
        */
        alias nIEN = Bit!(13, Mutability.rw);

        /*********************************************************************
         Enable CMD completion
        */
        alias ENCMDcompl = Bit!(12, Mutability.rw);

        /*********************************************************************
         SD I/O suspend command
        */
        alias SDIOSuspend = Bit!(11, Mutability.rw);

        /*********************************************************************
         Command path state machine (CPSM) Enable
              bit
        */
        alias CPSMEN = Bit!(10, Mutability.rw);

        /*********************************************************************
         CPSM Waits for ends of data transfer
              (CmdPend internal signal)
        */
        alias WAITPEND = Bit!(9, Mutability.rw);

        /*********************************************************************
         CPSM waits for interrupt
              request
        */
        alias WAITINT = Bit!(8, Mutability.rw);

        /*********************************************************************
         Wait for response bits
        */
        alias WAITRESP = BitField!(7, 6, Mutability.rw);

        /*********************************************************************
         Command index
        */
        alias CMDINDEX = BitField!(5, 0, Mutability.rw);
    }

    /*************************************************************************
     command response register
    */
    final abstract class RESPCMD : Register!(0x10)
    {
        /*********************************************************************
         Response command index
        */
        alias RESPCMD = BitField!(5, 0, Mutability.rw);
    }

    /*************************************************************************
     response 1..4 register
    */
    final abstract class RESP1 : Register!(0x14)
    {
        /*********************************************************************
         see Table 132
        */
        alias CARDSTATUS1 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     response 1..4 register
    */
    final abstract class RESP2 : Register!(0x18)
    {
        /*********************************************************************
         see Table 132
        */
        alias CARDSTATUS2 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     response 1..4 register
    */
    final abstract class RESP3 : Register!(0x1C)
    {
        /*********************************************************************
         see Table 132
        */
        alias CARDSTATUS3 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     response 1..4 register
    */
    final abstract class RESP4 : Register!(0x20)
    {
        /*********************************************************************
         see Table 132
        */
        alias CARDSTATUS4 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     data timer register
    */
    final abstract class DTIMER : Register!(0x24)
    {
        /*********************************************************************
         Data timeout period
        */
        alias DATATIME = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     data length register
    */
    final abstract class DLEN : Register!(0x28)
    {
        /*********************************************************************
         Data length value
        */
        alias DATALENGTH = BitField!(24, 0, Mutability.rw);
    }

    /*************************************************************************
     data control register
    */
    final abstract class DCTRL : Register!(0x2C)
    {
        /*********************************************************************
         SD I/O enable functions
        */
        alias SDIOEN = Bit!(11, Mutability.rw);

        /*********************************************************************
         Read wait mode
        */
        alias RWMOD = Bit!(10, Mutability.rw);

        /*********************************************************************
         Read wait stop
        */
        alias RWSTOP = Bit!(9, Mutability.rw);

        /*********************************************************************
         Read wait start
        */
        alias RWSTART = Bit!(8, Mutability.rw);

        /*********************************************************************
         Data block size
        */
        alias DBLOCKSIZE = BitField!(7, 4, Mutability.rw);

        /*********************************************************************
         DMA enable bit
        */
        alias DMAEN = Bit!(3, Mutability.rw);

        /*********************************************************************
         Data transfer mode selection 1: Stream
              or SDIO multibyte data transfer
        */
        alias DTMODE = Bit!(2, Mutability.rw);

        /*********************************************************************
         Data transfer direction
              selection
        */
        alias DTDIR = Bit!(1, Mutability.rw);

        /*********************************************************************
         DTEN
        */
        alias DTEN = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     data counter register
    */
    final abstract class DCOUNT : Register!(0x30)
    {
        /*********************************************************************
         Data count value
        */
        alias DATACOUNT = BitField!(24, 0, Mutability.rw);
    }

    /*************************************************************************
     status register
    */
    final abstract class STA : Register!(0x34)
    {
        /*********************************************************************
         CE-ATA command completion signal
              received for CMD61
        */
        alias CEATAEND = Bit!(23, Mutability.rw);

        /*********************************************************************
         SDIO interrupt received
        */
        alias SDIOIT = Bit!(22, Mutability.rw);

        /*********************************************************************
         Data available in receive
              FIFO
        */
        alias RXDAVL = Bit!(21, Mutability.rw);

        /*********************************************************************
         Data available in transmit
              FIFO
        */
        alias TXDAVL = Bit!(20, Mutability.rw);

        /*********************************************************************
         Receive FIFO empty
        */
        alias RXFIFOE = Bit!(19, Mutability.rw);

        /*********************************************************************
         Transmit FIFO empty
        */
        alias TXFIFOE = Bit!(18, Mutability.rw);

        /*********************************************************************
         Receive FIFO full
        */
        alias RXFIFOF = Bit!(17, Mutability.rw);

        /*********************************************************************
         Transmit FIFO full
        */
        alias TXFIFOF = Bit!(16, Mutability.rw);

        /*********************************************************************
         Receive FIFO half full: there are at
              least 8 words in the FIFO
        */
        alias RXFIFOHF = Bit!(15, Mutability.rw);

        /*********************************************************************
         Transmit FIFO half empty: at least 8
              words can be written into the FIFO
        */
        alias TXFIFOHE = Bit!(14, Mutability.rw);

        /*********************************************************************
         Data receive in progress
        */
        alias RXACT = Bit!(13, Mutability.rw);

        /*********************************************************************
         Data transmit in progress
        */
        alias TXACT = Bit!(12, Mutability.rw);

        /*********************************************************************
         Command transfer in
              progress
        */
        alias CMDACT = Bit!(11, Mutability.rw);

        /*********************************************************************
         Data block sent/received (CRC check
              passed)
        */
        alias DBCKEND = Bit!(10, Mutability.rw);

        /*********************************************************************
         Start bit not detected on all data
              signals in wide bus mode
        */
        alias STBITERR = Bit!(9, Mutability.rw);

        /*********************************************************************
         Data end (data counter, SDIDCOUNT, is
              zero)
        */
        alias DATAEND = Bit!(8, Mutability.rw);

        /*********************************************************************
         Command sent (no response
              required)
        */
        alias CMDSENT = Bit!(7, Mutability.rw);

        /*********************************************************************
         Command response received (CRC check
              passed)
        */
        alias CMDREND = Bit!(6, Mutability.rw);

        /*********************************************************************
         Received FIFO overrun
              error
        */
        alias RXOVERR = Bit!(5, Mutability.rw);

        /*********************************************************************
         Transmit FIFO underrun
              error
        */
        alias TXUNDERR = Bit!(4, Mutability.rw);

        /*********************************************************************
         Data timeout
        */
        alias DTIMEOUT = Bit!(3, Mutability.rw);

        /*********************************************************************
         Command response timeout
        */
        alias CTIMEOUT = Bit!(2, Mutability.rw);

        /*********************************************************************
         Data block sent/received (CRC check
              failed)
        */
        alias DCRCFAIL = Bit!(1, Mutability.rw);

        /*********************************************************************
         Command response received (CRC check
              failed)
        */
        alias CCRCFAIL = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     interrupt clear register
    */
    final abstract class ICR : Register!(0x38)
    {
        /*********************************************************************
         CEATAEND flag clear bit
        */
        alias CEATAENDC = Bit!(23, Mutability.rw);

        /*********************************************************************
         SDIOIT flag clear bit
        */
        alias SDIOITC = Bit!(22, Mutability.rw);

        /*********************************************************************
         DBCKEND flag clear bit
        */
        alias DBCKENDC = Bit!(10, Mutability.rw);

        /*********************************************************************
         STBITERR flag clear bit
        */
        alias STBITERRC = Bit!(9, Mutability.rw);

        /*********************************************************************
         DATAEND flag clear bit
        */
        alias DATAENDC = Bit!(8, Mutability.rw);

        /*********************************************************************
         CMDSENT flag clear bit
        */
        alias CMDSENTC = Bit!(7, Mutability.rw);

        /*********************************************************************
         CMDREND flag clear bit
        */
        alias CMDRENDC = Bit!(6, Mutability.rw);

        /*********************************************************************
         RXOVERR flag clear bit
        */
        alias RXOVERRC = Bit!(5, Mutability.rw);

        /*********************************************************************
         TXUNDERR flag clear bit
        */
        alias TXUNDERRC = Bit!(4, Mutability.rw);

        /*********************************************************************
         DTIMEOUT flag clear bit
        */
        alias DTIMEOUTC = Bit!(3, Mutability.rw);

        /*********************************************************************
         CTIMEOUT flag clear bit
        */
        alias CTIMEOUTC = Bit!(2, Mutability.rw);

        /*********************************************************************
         DCRCFAIL flag clear bit
        */
        alias DCRCFAILC = Bit!(1, Mutability.rw);

        /*********************************************************************
         CCRCFAIL flag clear bit
        */
        alias CCRCFAILC = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     mask register
    */
    final abstract class MASK : Register!(0x3C)
    {
        /*********************************************************************
         CE-ATA command completion signal
              received interrupt enable
        */
        alias CEATAENDIE = Bit!(23, Mutability.rw);

        /*********************************************************************
         SDIO mode interrupt received interrupt
              enable
        */
        alias SDIOITIE = Bit!(22, Mutability.rw);

        /*********************************************************************
         Data available in Rx FIFO interrupt
              enable
        */
        alias RXDAVLIE = Bit!(21, Mutability.rw);

        /*********************************************************************
         Data available in Tx FIFO interrupt
              enable
        */
        alias TXDAVLIE = Bit!(20, Mutability.rw);

        /*********************************************************************
         Rx FIFO empty interrupt
              enable
        */
        alias RXFIFOEIE = Bit!(19, Mutability.rw);

        /*********************************************************************
         Tx FIFO empty interrupt
              enable
        */
        alias TXFIFOEIE = Bit!(18, Mutability.rw);

        /*********************************************************************
         Rx FIFO full interrupt
              enable
        */
        alias RXFIFOFIE = Bit!(17, Mutability.rw);

        /*********************************************************************
         Tx FIFO full interrupt
              enable
        */
        alias TXFIFOFIE = Bit!(16, Mutability.rw);

        /*********************************************************************
         Rx FIFO half full interrupt
              enable
        */
        alias RXFIFOHFIE = Bit!(15, Mutability.rw);

        /*********************************************************************
         Tx FIFO half empty interrupt
              enable
        */
        alias TXFIFOHEIE = Bit!(14, Mutability.rw);

        /*********************************************************************
         Data receive acting interrupt
              enable
        */
        alias RXACTIE = Bit!(13, Mutability.rw);

        /*********************************************************************
         Data transmit acting interrupt
              enable
        */
        alias TXACTIE = Bit!(12, Mutability.rw);

        /*********************************************************************
         Command acting interrupt
              enable
        */
        alias CMDACTIE = Bit!(11, Mutability.rw);

        /*********************************************************************
         Data block end interrupt
              enable
        */
        alias DBCKENDIE = Bit!(10, Mutability.rw);

        /*********************************************************************
         Start bit error interrupt
              enable
        */
        alias STBITERRIE = Bit!(9, Mutability.rw);

        /*********************************************************************
         Data end interrupt enable
        */
        alias DATAENDIE = Bit!(8, Mutability.rw);

        /*********************************************************************
         Command sent interrupt
              enable
        */
        alias CMDSENTIE = Bit!(7, Mutability.rw);

        /*********************************************************************
         Command response received interrupt
              enable
        */
        alias CMDRENDIE = Bit!(6, Mutability.rw);

        /*********************************************************************
         Rx FIFO overrun error interrupt
              enable
        */
        alias RXOVERRIE = Bit!(5, Mutability.rw);

        /*********************************************************************
         Tx FIFO underrun error interrupt
              enable
        */
        alias TXUNDERRIE = Bit!(4, Mutability.rw);

        /*********************************************************************
         Data timeout interrupt
              enable
        */
        alias DTIMEOUTIE = Bit!(3, Mutability.rw);

        /*********************************************************************
         Command timeout interrupt
              enable
        */
        alias CTIMEOUTIE = Bit!(2, Mutability.rw);

        /*********************************************************************
         Data CRC fail interrupt
              enable
        */
        alias DCRCFAILIE = Bit!(1, Mutability.rw);

        /*********************************************************************
         Command CRC fail interrupt
              enable
        */
        alias CCRCFAILIE = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     FIFO counter register
    */
    final abstract class FIFOCNT : Register!(0x48)
    {
        /*********************************************************************
         Remaining number of words to be written
              to or read from the FIFO
        */
        alias FIFOCOUNT = BitField!(23, 0, Mutability.rw);
    }

    /*************************************************************************
     data FIFO register
    */
    final abstract class FIFO : Register!(0x80)
    {
        /*********************************************************************
         Receive and transmit FIFO
              data
        */
        alias FIFOData = BitField!(31, 0, Mutability.rw);
    }
}
