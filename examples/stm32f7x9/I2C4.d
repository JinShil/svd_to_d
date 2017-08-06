module stm32f7x9.i2c4;

import stm32f7x9.mmio;

/*****************************************************************************
 
*/
final abstract class I2C4 : Peripheral!(0x40006000)
{
    /*************************************************************************
     Control register 1
    */
    final abstract class CR1 : Register!(00)
    {
        /*********************************************************************
         Peripheral enable
        */
        alias PE = Bit!(0, Mutability.rw);

        /*********************************************************************
         TX Interrupt enable
        */
        alias TXIE = Bit!(1, Mutability.rw);

        /*********************************************************************
         RX Interrupt enable
        */
        alias RXIE = Bit!(2, Mutability.rw);

        /*********************************************************************
         Address match interrupt enable (slave
              only)
        */
        alias ADDRIE = Bit!(3, Mutability.rw);

        /*********************************************************************
         Not acknowledge received interrupt
              enable
        */
        alias NACKIE = Bit!(4, Mutability.rw);

        /*********************************************************************
         STOP detection Interrupt
              enable
        */
        alias STOPIE = Bit!(5, Mutability.rw);

        /*********************************************************************
         Transfer Complete interrupt
              enable
        */
        alias TCIE = Bit!(6, Mutability.rw);

        /*********************************************************************
         Error interrupts enable
        */
        alias ERRIE = Bit!(7, Mutability.rw);

        /*********************************************************************
         Digital noise filter
        */
        alias DNF = BitField!(11, 8, Mutability.rw);

        /*********************************************************************
         Analog noise filter OFF
        */
        alias ANFOFF = Bit!(12, Mutability.rw);

        /*********************************************************************
         DMA transmission requests
              enable
        */
        alias TXDMAEN = Bit!(14, Mutability.rw);

        /*********************************************************************
         DMA reception requests
              enable
        */
        alias RXDMAEN = Bit!(15, Mutability.rw);

        /*********************************************************************
         Slave byte control
        */
        alias SBC = Bit!(16, Mutability.rw);

        /*********************************************************************
         Clock stretching disable
        */
        alias NOSTRETCH = Bit!(17, Mutability.rw);

        /*********************************************************************
         Wakeup from STOP enable
        */
        alias WUPEN = Bit!(18, Mutability.rw);

        /*********************************************************************
         General call enable
        */
        alias GCEN = Bit!(19, Mutability.rw);

        /*********************************************************************
         SMBus Host address enable
        */
        alias SMBHEN = Bit!(20, Mutability.rw);

        /*********************************************************************
         SMBus Device Default address
              enable
        */
        alias SMBDEN = Bit!(21, Mutability.rw);

        /*********************************************************************
         SMBUS alert enable
        */
        alias ALERTEN = Bit!(22, Mutability.rw);

        /*********************************************************************
         PEC enable
        */
        alias PECEN = Bit!(23, Mutability.rw);
    }

    /*************************************************************************
     Control register 2
    */
    final abstract class CR2 : Register!(0x4)
    {
        /*********************************************************************
         Packet error checking byte
        */
        alias PECBYTE = Bit!(26, Mutability.rw);

        /*********************************************************************
         Automatic end mode (master
              mode)
        */
        alias AUTOEND = Bit!(25, Mutability.rw);

        /*********************************************************************
         NBYTES reload mode
        */
        alias RELOAD = Bit!(24, Mutability.rw);

        /*********************************************************************
         Number of bytes
        */
        alias NBYTES = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         NACK generation (slave
              mode)
        */
        alias NACK = Bit!(15, Mutability.rw);

        /*********************************************************************
         Stop generation (master
              mode)
        */
        alias STOP = Bit!(14, Mutability.rw);

        /*********************************************************************
         Start generation
        */
        alias START = Bit!(13, Mutability.rw);

        /*********************************************************************
         10-bit address header only read
              direction (master receiver mode)
        */
        alias HEAD10R = Bit!(12, Mutability.rw);

        /*********************************************************************
         10-bit addressing mode (master
              mode)
        */
        alias ADD10 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Transfer direction (master
              mode)
        */
        alias RD_WRN = Bit!(10, Mutability.rw);

        /*********************************************************************
         Slave address bit (master
              mode)
        */
        alias SADD = BitField!(9, 0, Mutability.rw);
    }

    /*************************************************************************
     Own address register 1
    */
    final abstract class OAR1 : Register!(0x8)
    {
        /*********************************************************************
         Interface address
        */
        alias OA1 = BitField!(9, 0, Mutability.rw);

        /*********************************************************************
         Own Address 1 10-bit mode
        */
        alias OA1MODE = Bit!(10, Mutability.rw);

        /*********************************************************************
         Own Address 1 enable
        */
        alias OA1EN = Bit!(15, Mutability.rw);
    }

    /*************************************************************************
     Own address register 2
    */
    final abstract class OAR2 : Register!(0xc)
    {
        /*********************************************************************
         Interface address
        */
        alias OA2 = BitField!(7, 1, Mutability.rw);

        /*********************************************************************
         Own Address 2 masks
        */
        alias OA2MSK = BitField!(10, 8, Mutability.rw);

        /*********************************************************************
         Own Address 2 enable
        */
        alias OA2EN = Bit!(15, Mutability.rw);
    }

    /*************************************************************************
     Timing register
    */
    final abstract class TIMINGR : Register!(0x10)
    {
        /*********************************************************************
         SCL low period (master
              mode)
        */
        alias SCLL = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         SCL high period (master
              mode)
        */
        alias SCLH = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         Data hold time
        */
        alias SDADEL = BitField!(19, 16, Mutability.rw);

        /*********************************************************************
         Data setup time
        */
        alias SCLDEL = BitField!(23, 20, Mutability.rw);

        /*********************************************************************
         Timing prescaler
        */
        alias PRESC = BitField!(31, 28, Mutability.rw);
    }

    /*************************************************************************
     Status register 1
    */
    final abstract class TIMEOUTR : Register!(0x14)
    {
        /*********************************************************************
         Bus timeout A
        */
        alias TIMEOUTA = BitField!(11, 0, Mutability.rw);

        /*********************************************************************
         Idle clock timeout
              detection
        */
        alias TIDLE = Bit!(12, Mutability.rw);

        /*********************************************************************
         Clock timeout enable
        */
        alias TIMOUTEN = Bit!(15, Mutability.rw);

        /*********************************************************************
         Bus timeout B
        */
        alias TIMEOUTB = BitField!(27, 16, Mutability.rw);

        /*********************************************************************
         Extended clock timeout
              enable
        */
        alias TEXTEN = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Interrupt and Status register
    */
    final abstract class ISR : Register!(0x18)
    {
        /*********************************************************************
         Address match code (Slave
              mode)
        */
        alias ADDCODE = BitField!(23, 17, Mutability.r);

        /*********************************************************************
         Transfer direction (Slave
              mode)
        */
        alias DIR = Bit!(16, Mutability.r);

        /*********************************************************************
         Bus busy
        */
        alias BUSY = Bit!(15, Mutability.r);

        /*********************************************************************
         SMBus alert
        */
        alias ALERT = Bit!(13, Mutability.r);

        /*********************************************************************
         Timeout or t_low detection
              flag
        */
        alias TIMEOUT = Bit!(12, Mutability.r);

        /*********************************************************************
         PEC Error in reception
        */
        alias PECERR = Bit!(11, Mutability.r);

        /*********************************************************************
         Overrun/Underrun (slave
              mode)
        */
        alias OVR = Bit!(10, Mutability.r);

        /*********************************************************************
         Arbitration lost
        */
        alias ARLO = Bit!(9, Mutability.r);

        /*********************************************************************
         Bus error
        */
        alias BERR = Bit!(8, Mutability.r);

        /*********************************************************************
         Transfer Complete Reload
        */
        alias TCR = Bit!(7, Mutability.r);

        /*********************************************************************
         Transfer Complete (master
              mode)
        */
        alias TC = Bit!(6, Mutability.r);

        /*********************************************************************
         Stop detection flag
        */
        alias STOPF = Bit!(5, Mutability.r);

        /*********************************************************************
         Not acknowledge received
              flag
        */
        alias NACKF = Bit!(4, Mutability.r);

        /*********************************************************************
         Address matched (slave
              mode)
        */
        alias ADDR = Bit!(3, Mutability.r);

        /*********************************************************************
         Receive data register not empty
              (receivers)
        */
        alias RXNE = Bit!(2, Mutability.r);

        /*********************************************************************
         Transmit interrupt status
              (transmitters)
        */
        alias TXIS = Bit!(1, Mutability.rw);

        /*********************************************************************
         Transmit data register empty
              (transmitters)
        */
        alias TXE = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     Interrupt clear register
    */
    final abstract class ICR : Register!(0x1c)
    {
        /*********************************************************************
         Alert flag clear
        */
        alias ALERTCF = Bit!(13, Mutability.rw);

        /*********************************************************************
         Timeout detection flag
              clear
        */
        alias TIMOUTCF = Bit!(12, Mutability.rw);

        /*********************************************************************
         PEC Error flag clear
        */
        alias PECCF = Bit!(11, Mutability.rw);

        /*********************************************************************
         Overrun/Underrun flag
              clear
        */
        alias OVRCF = Bit!(10, Mutability.rw);

        /*********************************************************************
         Arbitration lost flag
              clear
        */
        alias ARLOCF = Bit!(9, Mutability.rw);

        /*********************************************************************
         Bus error flag clear
        */
        alias BERRCF = Bit!(8, Mutability.rw);

        /*********************************************************************
         Stop detection flag clear
        */
        alias STOPCF = Bit!(5, Mutability.rw);

        /*********************************************************************
         Not Acknowledge flag clear
        */
        alias NACKCF = Bit!(4, Mutability.rw);

        /*********************************************************************
         Address Matched flag clear
        */
        alias ADDRCF = Bit!(3, Mutability.rw);
    }

    /*************************************************************************
     PEC register
    */
    final abstract class PECR : Register!(0x20)
    {
        /*********************************************************************
         Packet error checking
              register
        */
        alias PEC = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     Receive data register
    */
    final abstract class RXDR : Register!(0x24)
    {
        /*********************************************************************
         8-bit receive data
        */
        alias RXDATA = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     Transmit data register
    */
    final abstract class TXDR : Register!(0x28)
    {
        /*********************************************************************
         8-bit transmit data
        */
        alias TXDATA = BitField!(7, 0, Mutability.rw);
    }
}
