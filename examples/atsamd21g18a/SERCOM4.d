module atsamd21g18a.sercom4;

import atsamd21g18a.mmio;

/*****************************************************************************
 Serial Communication Interface 4
*/
final abstract class SERCOM4 : Peripheral!(0x42001800)
{
    /*****************************************************************************
     I2C Master Mode
    */
    final abstract class I2CM
    {
        /*************************************************************************
         I2CM Address
        */
        final abstract class ADDR : Register!(0x24)
        {
            /*********************************************************************
             Address Value
            */
            alias ADDR = BitField!(10, 0, Mutability.rw);

            /*********************************************************************
             Length Enable
            */
            alias LENEN = Bit!(13, Mutability.rw);

            /*********************************************************************
             High Speed Mode
            */
            alias HS = Bit!(14, Mutability.rw);

            /*********************************************************************
             Ten Bit Addressing Enable
            */
            alias TENBITEN = Bit!(15, Mutability.rw);

            /*********************************************************************
             Length
            */
            alias LEN = BitField!(23, 16, Mutability.rw);
        }

        /*************************************************************************
         I2CM Baud Rate
        */
        final abstract class BAUD : Register!(0xc)
        {
            /*********************************************************************
             Baud Rate Value
            */
            alias BAUD = BitField!(7, 0, Mutability.rw);

            /*********************************************************************
             Baud Rate Value Low
            */
            alias BAUDLOW = BitField!(15, 8, Mutability.rw);

            /*********************************************************************
             High Speed Baud Rate Value
            */
            alias HSBAUD = BitField!(23, 16, Mutability.rw);

            /*********************************************************************
             High Speed Baud Rate Value Low
            */
            alias HSBAUDLOW = BitField!(31, 24, Mutability.rw);
        }

        /*************************************************************************
         I2CM Control A
        */
        final abstract class CTRLA : Register!(00)
        {
            /*********************************************************************
             Software Reset
            */
            alias SWRST = Bit!(0, Mutability.rw);

            /*********************************************************************
             Enable
            */
            alias ENABLE = Bit!(1, Mutability.rw);

            /*********************************************************************
             Operating Mode
            */
            final abstract class MODE
            {
                /*****************************************************************
                 MODE's possible values
                */
                enum Values
                {
                    /*************************************************************
                     USART mode with external clock
                    */
                    USART_EXT_CLK = 0x0,

                    /*************************************************************
                     USART mode with internal clock
                    */
                    USART_INT_CLK = 0x1,

                    /*************************************************************
                     SPI mode with external clock
                    */
                    SPI_SLAVE = 0x2,

                    /*************************************************************
                     SPI mode with internal clock
                    */
                    SPI_MASTER = 0x3,

                    /*************************************************************
                     I2C mode with external clock
                    */
                    I2C_SLAVE = 0x4,

                    /*************************************************************
                     I2C mode with internal clock
                    */
                    I2C_MASTER = 0x5,
                }
                mixin BitFieldImplementation!(4, 2, Mutability.rw, Values);
            }

            /*********************************************************************
             Run in Standby
            */
            alias RUNSTDBY = Bit!(7, Mutability.rw);

            /*********************************************************************
             Pin Usage
            */
            alias PINOUT = Bit!(16, Mutability.rw);

            /*********************************************************************
             SDA Hold Time
            */
            alias SDAHOLD = BitField!(21, 20, Mutability.rw);

            /*********************************************************************
             Master SCL Low Extend Timeout
            */
            alias MEXTTOEN = Bit!(22, Mutability.rw);

            /*********************************************************************
             Slave SCL Low Extend Timeout
            */
            alias SEXTTOEN = Bit!(23, Mutability.rw);

            /*********************************************************************
             Transfer Speed
            */
            alias SPEED = BitField!(25, 24, Mutability.rw);

            /*********************************************************************
             SCL Clock Stretch Mode
            */
            alias SCLSM = Bit!(27, Mutability.rw);

            /*********************************************************************
             Inactive Time-Out
            */
            alias INACTOUT = BitField!(29, 28, Mutability.rw);

            /*********************************************************************
             SCL Low Timeout Enable
            */
            alias LOWTOUTEN = Bit!(30, Mutability.rw);
        }

        /*************************************************************************
         I2CM Control B
        */
        final abstract class CTRLB : Register!(0x4)
        {
            /*********************************************************************
             Smart Mode Enable
            */
            alias SMEN = Bit!(8, Mutability.rw);

            /*********************************************************************
             Quick Command Enable
            */
            alias QCEN = Bit!(9, Mutability.rw);

            /*********************************************************************
             Command
            */
            alias CMD = BitField!(17, 16, Mutability.w);

            /*********************************************************************
             Acknowledge Action
            */
            alias ACKACT = Bit!(18, Mutability.rw);
        }

        /*************************************************************************
         I2CM Data
        */
        final abstract class DATA : Register!(0x28)
        {
            /*********************************************************************
             Data Value
            */
            alias DATA = BitField!(7, 0, Mutability.rw);
        }

        /*************************************************************************
         I2CM Debug Control
        */
        final abstract class DBGCTRL : Register!(0x30)
        {
            /*********************************************************************
             Debug Mode
            */
            alias DBGSTOP = Bit!(0, Mutability.rw);
        }

        /*************************************************************************
         I2CM Interrupt Enable Clear
        */
        final abstract class INTENCLR : Register!(0x14)
        {
            /*********************************************************************
             Master On Bus Interrupt Disable
            */
            alias MB = Bit!(0, Mutability.rw);

            /*********************************************************************
             Slave On Bus Interrupt Disable
            */
            alias SB = Bit!(1, Mutability.rw);

            /*********************************************************************
             Combined Error Interrupt Disable
            */
            alias ERROR = Bit!(7, Mutability.rw);
        }

        /*************************************************************************
         I2CM Interrupt Enable Set
        */
        final abstract class INTENSET : Register!(0x16)
        {
            /*********************************************************************
             Master On Bus Interrupt Enable
            */
            alias MB = Bit!(0, Mutability.rw);

            /*********************************************************************
             Slave On Bus Interrupt Enable
            */
            alias SB = Bit!(1, Mutability.rw);

            /*********************************************************************
             Combined Error Interrupt Enable
            */
            alias ERROR = Bit!(7, Mutability.rw);
        }

        /*************************************************************************
         I2CM Interrupt Flag Status and Clear
        */
        final abstract class INTFLAG : Register!(0x18)
        {
            /*********************************************************************
             Master On Bus Interrupt
            */
            alias MB = Bit!(0, Mutability.rw);

            /*********************************************************************
             Slave On Bus Interrupt
            */
            alias SB = Bit!(1, Mutability.rw);

            /*********************************************************************
             Combined Error Interrupt
            */
            alias ERROR = Bit!(7, Mutability.rw);
        }

        /*************************************************************************
         I2CM Status
        */
        final abstract class STATUS : Register!(0x1a)
        {
            /*********************************************************************
             Bus Error
            */
            alias BUSERR = Bit!(0, Mutability.rw);

            /*********************************************************************
             Arbitration Lost
            */
            alias ARBLOST = Bit!(1, Mutability.rw);

            /*********************************************************************
             Received Not Acknowledge
            */
            alias RXNACK = Bit!(2, Mutability.r);

            /*********************************************************************
             Bus State
            */
            alias BUSSTATE = BitField!(5, 4, Mutability.rw);

            /*********************************************************************
             SCL Low Timeout
            */
            alias LOWTOUT = Bit!(6, Mutability.rw);

            /*********************************************************************
             Clock Hold
            */
            alias CLKHOLD = Bit!(7, Mutability.r);

            /*********************************************************************
             Master SCL Low Extend Timeout
            */
            alias MEXTTOUT = Bit!(8, Mutability.rw);

            /*********************************************************************
             Slave SCL Low Extend Timeout
            */
            alias SEXTTOUT = Bit!(9, Mutability.rw);

            /*********************************************************************
             Length Error
            */
            alias LENERR = Bit!(10, Mutability.rw);
        }

        /*************************************************************************
         I2CM Syncbusy
        */
        final abstract class SYNCBUSY : Register!(0x1c)
        {
            /*********************************************************************
             Software Reset Synchronization Busy
            */
            alias SWRST = Bit!(0, Mutability.r);

            /*********************************************************************
             SERCOM Enable Synchronization Busy
            */
            alias ENABLE = Bit!(1, Mutability.r);

            /*********************************************************************
             System Operation Synchronization Busy
            */
            alias SYSOP = Bit!(2, Mutability.r);
        }
    }
    /*****************************************************************************
     I2C Slave Mode
    */
    final abstract class I2CS
    {
        /*************************************************************************
         I2CS Address
        */
        final abstract class ADDR : Register!(0x24)
        {
            /*********************************************************************
             General Call Address Enable
            */
            alias GENCEN = Bit!(0, Mutability.rw);

            /*********************************************************************
             Address Value
            */
            alias ADDR = BitField!(10, 1, Mutability.rw);

            /*********************************************************************
             Ten Bit Addressing Enable
            */
            alias TENBITEN = Bit!(15, Mutability.rw);

            /*********************************************************************
             Address Mask
            */
            alias ADDRMASK = BitField!(26, 17, Mutability.rw);
        }

        /*************************************************************************
         I2CS Control A
        */
        final abstract class CTRLA : Register!(00)
        {
            /*********************************************************************
             Software Reset
            */
            alias SWRST = Bit!(0, Mutability.rw);

            /*********************************************************************
             Enable
            */
            alias ENABLE = Bit!(1, Mutability.rw);

            /*********************************************************************
             Operating Mode
            */
            final abstract class MODE
            {
                /*****************************************************************
                 MODE's possible values
                */
                enum Values
                {
                    /*************************************************************
                     USART mode with external clock
                    */
                    USART_EXT_CLK = 0x0,

                    /*************************************************************
                     USART mode with internal clock
                    */
                    USART_INT_CLK = 0x1,

                    /*************************************************************
                     SPI mode with external clock
                    */
                    SPI_SLAVE = 0x2,

                    /*************************************************************
                     SPI mode with internal clock
                    */
                    SPI_MASTER = 0x3,

                    /*************************************************************
                     I2C mode with external clock
                    */
                    I2C_SLAVE = 0x4,

                    /*************************************************************
                     I2C mode with internal clock
                    */
                    I2C_MASTER = 0x5,
                }
                mixin BitFieldImplementation!(4, 2, Mutability.rw, Values);
            }

            /*********************************************************************
             Run during Standby
            */
            alias RUNSTDBY = Bit!(7, Mutability.rw);

            /*********************************************************************
             Pin Usage
            */
            alias PINOUT = Bit!(16, Mutability.rw);

            /*********************************************************************
             SDA Hold Time
            */
            alias SDAHOLD = BitField!(21, 20, Mutability.rw);

            /*********************************************************************
             Slave SCL Low Extend Timeout
            */
            alias SEXTTOEN = Bit!(23, Mutability.rw);

            /*********************************************************************
             Transfer Speed
            */
            alias SPEED = BitField!(25, 24, Mutability.rw);

            /*********************************************************************
             SCL Clock Stretch Mode
            */
            alias SCLSM = Bit!(27, Mutability.rw);

            /*********************************************************************
             SCL Low Timeout Enable
            */
            alias LOWTOUTEN = Bit!(30, Mutability.rw);
        }

        /*************************************************************************
         I2CS Control B
        */
        final abstract class CTRLB : Register!(0x4)
        {
            /*********************************************************************
             Smart Mode Enable
            */
            alias SMEN = Bit!(8, Mutability.rw);

            /*********************************************************************
             PMBus Group Command
            */
            alias GCMD = Bit!(9, Mutability.rw);

            /*********************************************************************
             Automatic Address Acknowledge
            */
            alias AACKEN = Bit!(10, Mutability.rw);

            /*********************************************************************
             Address Mode
            */
            alias AMODE = BitField!(15, 14, Mutability.rw);

            /*********************************************************************
             Command
            */
            alias CMD = BitField!(17, 16, Mutability.w);

            /*********************************************************************
             Acknowledge Action
            */
            alias ACKACT = Bit!(18, Mutability.rw);
        }

        /*************************************************************************
         I2CS Data
        */
        final abstract class DATA : Register!(0x28)
        {
            /*********************************************************************
             Data Value
            */
            alias DATA = BitField!(7, 0, Mutability.rw);
        }

        /*************************************************************************
         I2CS Debug Control
        */
        final abstract class DBGCTRL : Register!(0x30)
        {
            /*********************************************************************
             Debug Mode
            */
            alias DBGSTOP = Bit!(0, Mutability.rw);
        }

        /*************************************************************************
         I2CS Interrupt Enable Clear
        */
        final abstract class INTENCLR : Register!(0x14)
        {
            /*********************************************************************
             Stop Received Interrupt Disable
            */
            alias PREC = Bit!(0, Mutability.rw);

            /*********************************************************************
             Address Match Interrupt Disable
            */
            alias AMATCH = Bit!(1, Mutability.rw);

            /*********************************************************************
             Data Interrupt Disable
            */
            alias DRDY = Bit!(2, Mutability.rw);

            /*********************************************************************
             Combined Error Interrupt Disable
            */
            alias ERROR = Bit!(7, Mutability.rw);
        }

        /*************************************************************************
         I2CS Interrupt Enable Set
        */
        final abstract class INTENSET : Register!(0x16)
        {
            /*********************************************************************
             Stop Received Interrupt Enable
            */
            alias PREC = Bit!(0, Mutability.rw);

            /*********************************************************************
             Address Match Interrupt Enable
            */
            alias AMATCH = Bit!(1, Mutability.rw);

            /*********************************************************************
             Data Interrupt Enable
            */
            alias DRDY = Bit!(2, Mutability.rw);

            /*********************************************************************
             Combined Error Interrupt Enable
            */
            alias ERROR = Bit!(7, Mutability.rw);
        }

        /*************************************************************************
         I2CS Interrupt Flag Status and Clear
        */
        final abstract class INTFLAG : Register!(0x18)
        {
            /*********************************************************************
             Stop Received Interrupt
            */
            alias PREC = Bit!(0, Mutability.rw);

            /*********************************************************************
             Address Match Interrupt
            */
            alias AMATCH = Bit!(1, Mutability.rw);

            /*********************************************************************
             Data Interrupt
            */
            alias DRDY = Bit!(2, Mutability.rw);

            /*********************************************************************
             Combined Error Interrupt
            */
            alias ERROR = Bit!(7, Mutability.rw);
        }

        /*************************************************************************
         I2CS Status
        */
        final abstract class STATUS : Register!(0x1a)
        {
            /*********************************************************************
             Bus Error
            */
            alias BUSERR = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transmit Collision
            */
            alias COLL = Bit!(1, Mutability.rw);

            /*********************************************************************
             Received Not Acknowledge
            */
            alias RXNACK = Bit!(2, Mutability.r);

            /*********************************************************************
             Read/Write Direction
            */
            alias DIR = Bit!(3, Mutability.r);

            /*********************************************************************
             Repeated Start
            */
            alias SR = Bit!(4, Mutability.r);

            /*********************************************************************
             SCL Low Timeout
            */
            alias LOWTOUT = Bit!(6, Mutability.rw);

            /*********************************************************************
             Clock Hold
            */
            alias CLKHOLD = Bit!(7, Mutability.r);

            /*********************************************************************
             Slave SCL Low Extend Timeout
            */
            alias SEXTTOUT = Bit!(9, Mutability.rw);

            /*********************************************************************
             High Speed
            */
            alias HS = Bit!(10, Mutability.rw);
        }

        /*************************************************************************
         I2CS Syncbusy
        */
        final abstract class SYNCBUSY : Register!(0x1c)
        {
            /*********************************************************************
             Software Reset Synchronization Busy
            */
            alias SWRST = Bit!(0, Mutability.r);

            /*********************************************************************
             SERCOM Enable Synchronization Busy
            */
            alias ENABLE = Bit!(1, Mutability.r);
        }
    }
    /*****************************************************************************
     SPI Mode
    */
    final abstract class SPI
    {
        /*************************************************************************
         SPI Address
        */
        final abstract class ADDR : Register!(0x24)
        {
            /*********************************************************************
             Address Value
            */
            alias ADDR = BitField!(7, 0, Mutability.rw);

            /*********************************************************************
             Address Mask
            */
            alias ADDRMASK = BitField!(23, 16, Mutability.rw);
        }

        /*************************************************************************
         SPI Baud Rate
        */
        final abstract class BAUD : Register!(0xc)
        {
            /*********************************************************************
             Baud Rate Value
            */
            alias BAUD = BitField!(7, 0, Mutability.rw);
        }

        /*************************************************************************
         SPI Control A
        */
        final abstract class CTRLA : Register!(00)
        {
            /*********************************************************************
             Software Reset
            */
            alias SWRST = Bit!(0, Mutability.rw);

            /*********************************************************************
             Enable
            */
            alias ENABLE = Bit!(1, Mutability.rw);

            /*********************************************************************
             Operating Mode
            */
            final abstract class MODE
            {
                /*****************************************************************
                 MODE's possible values
                */
                enum Values
                {
                    /*************************************************************
                     USART mode with external clock
                    */
                    USART_EXT_CLK = 0x0,

                    /*************************************************************
                     USART mode with internal clock
                    */
                    USART_INT_CLK = 0x1,

                    /*************************************************************
                     SPI mode with external clock
                    */
                    SPI_SLAVE = 0x2,

                    /*************************************************************
                     SPI mode with internal clock
                    */
                    SPI_MASTER = 0x3,

                    /*************************************************************
                     I2C mode with external clock
                    */
                    I2C_SLAVE = 0x4,

                    /*************************************************************
                     I2C mode with internal clock
                    */
                    I2C_MASTER = 0x5,
                }
                mixin BitFieldImplementation!(4, 2, Mutability.rw, Values);
            }

            /*********************************************************************
             Run during Standby
            */
            alias RUNSTDBY = Bit!(7, Mutability.rw);

            /*********************************************************************
             Immediate Buffer Overflow Notification
            */
            alias IBON = Bit!(8, Mutability.rw);

            /*********************************************************************
             Data Out Pinout
            */
            alias DOPO = BitField!(17, 16, Mutability.rw);

            /*********************************************************************
             Data In Pinout
            */
            alias DIPO = BitField!(21, 20, Mutability.rw);

            /*********************************************************************
             Frame Format
            */
            alias FORM = BitField!(27, 24, Mutability.rw);

            /*********************************************************************
             Clock Phase
            */
            alias CPHA = Bit!(28, Mutability.rw);

            /*********************************************************************
             Clock Polarity
            */
            alias CPOL = Bit!(29, Mutability.rw);

            /*********************************************************************
             Data Order
            */
            alias DORD = Bit!(30, Mutability.rw);
        }

        /*************************************************************************
         SPI Control B
        */
        final abstract class CTRLB : Register!(0x4)
        {
            /*********************************************************************
             Character Size
            */
            alias CHSIZE = BitField!(2, 0, Mutability.rw);

            /*********************************************************************
             Data Preload Enable
            */
            alias PLOADEN = Bit!(6, Mutability.rw);

            /*********************************************************************
             Slave Select Low Detect Enable
            */
            alias SSDE = Bit!(9, Mutability.rw);

            /*********************************************************************
             Master Slave Select Enable
            */
            alias MSSEN = Bit!(13, Mutability.rw);

            /*********************************************************************
             Address Mode
            */
            alias AMODE = BitField!(15, 14, Mutability.rw);

            /*********************************************************************
             Receiver Enable
            */
            alias RXEN = Bit!(17, Mutability.rw);
        }

        /*************************************************************************
         SPI Data
        */
        final abstract class DATA : Register!(0x28)
        {
            /*********************************************************************
             Data Value
            */
            alias DATA = BitField!(8, 0, Mutability.rw);
        }

        /*************************************************************************
         SPI Debug Control
        */
        final abstract class DBGCTRL : Register!(0x30)
        {
            /*********************************************************************
             Debug Mode
            */
            alias DBGSTOP = Bit!(0, Mutability.rw);
        }

        /*************************************************************************
         SPI Interrupt Enable Clear
        */
        final abstract class INTENCLR : Register!(0x14)
        {
            /*********************************************************************
             Data Register Empty Interrupt Disable
            */
            alias DRE = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transmit Complete Interrupt Disable
            */
            alias TXC = Bit!(1, Mutability.rw);

            /*********************************************************************
             Receive Complete Interrupt Disable
            */
            alias RXC = Bit!(2, Mutability.rw);

            /*********************************************************************
             Slave Select Low Interrupt Disable
            */
            alias SSL = Bit!(3, Mutability.rw);

            /*********************************************************************
             Combined Error Interrupt Disable
            */
            alias ERROR = Bit!(7, Mutability.rw);
        }

        /*************************************************************************
         SPI Interrupt Enable Set
        */
        final abstract class INTENSET : Register!(0x16)
        {
            /*********************************************************************
             Data Register Empty Interrupt Enable
            */
            alias DRE = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transmit Complete Interrupt Enable
            */
            alias TXC = Bit!(1, Mutability.rw);

            /*********************************************************************
             Receive Complete Interrupt Enable
            */
            alias RXC = Bit!(2, Mutability.rw);

            /*********************************************************************
             Slave Select Low Interrupt Enable
            */
            alias SSL = Bit!(3, Mutability.rw);

            /*********************************************************************
             Combined Error Interrupt Enable
            */
            alias ERROR = Bit!(7, Mutability.rw);
        }

        /*************************************************************************
         SPI Interrupt Flag Status and Clear
        */
        final abstract class INTFLAG : Register!(0x18)
        {
            /*********************************************************************
             Data Register Empty Interrupt
            */
            alias DRE = Bit!(0, Mutability.r);

            /*********************************************************************
             Transmit Complete Interrupt
            */
            alias TXC = Bit!(1, Mutability.rw);

            /*********************************************************************
             Receive Complete Interrupt
            */
            alias RXC = Bit!(2, Mutability.r);

            /*********************************************************************
             Slave Select Low Interrupt Flag
            */
            alias SSL = Bit!(3, Mutability.rw);

            /*********************************************************************
             Combined Error Interrupt
            */
            alias ERROR = Bit!(7, Mutability.rw);
        }

        /*************************************************************************
         SPI Status
        */
        final abstract class STATUS : Register!(0x1a)
        {
            /*********************************************************************
             Buffer Overflow
            */
            alias BUFOVF = Bit!(2, Mutability.rw);
        }

        /*************************************************************************
         SPI Syncbusy
        */
        final abstract class SYNCBUSY : Register!(0x1c)
        {
            /*********************************************************************
             Software Reset Synchronization Busy
            */
            alias SWRST = Bit!(0, Mutability.r);

            /*********************************************************************
             SERCOM Enable Synchronization Busy
            */
            alias ENABLE = Bit!(1, Mutability.r);

            /*********************************************************************
             CTRLB Synchronization Busy
            */
            alias CTRLB = Bit!(2, Mutability.r);
        }
    }
    /*****************************************************************************
     USART Mode
    */
    final abstract class USART
    {
        /*************************************************************************
         USART Baud Rate
        */
        final abstract class BAUD : Register!(0xc)
        {
            /*********************************************************************
             Baud Rate Value
            */
            alias BAUD = BitField!(15, 0, Mutability.rw);
        }

        /*************************************************************************
         USART Baud Rate
        */
        final abstract class BAUD : Register!(0xc)
        {
            /*********************************************************************
             Baud Rate Value
            */
            alias BAUD = BitField!(12, 0, Mutability.rw);

            /*********************************************************************
             Fractional Part
            */
            alias FP = BitField!(15, 13, Mutability.rw);
        }

        /*************************************************************************
         USART Baud Rate
        */
        final abstract class BAUD : Register!(0xc)
        {
            /*********************************************************************
             Baud Rate Value
            */
            alias BAUD = BitField!(12, 0, Mutability.rw);

            /*********************************************************************
             Fractional Part
            */
            alias FP = BitField!(15, 13, Mutability.rw);
        }

        /*************************************************************************
         USART Baud Rate
        */
        final abstract class BAUD : Register!(0xc)
        {
            /*********************************************************************
             Baud Rate Value
            */
            alias BAUD = BitField!(15, 0, Mutability.rw);
        }

        /*************************************************************************
         USART Control A
        */
        final abstract class CTRLA : Register!(00)
        {
            /*********************************************************************
             Software Reset
            */
            alias SWRST = Bit!(0, Mutability.rw);

            /*********************************************************************
             Enable
            */
            alias ENABLE = Bit!(1, Mutability.rw);

            /*********************************************************************
             Operating Mode
            */
            final abstract class MODE
            {
                /*****************************************************************
                 MODE's possible values
                */
                enum Values
                {
                    /*************************************************************
                     USART mode with external clock
                    */
                    USART_EXT_CLK = 0x0,

                    /*************************************************************
                     USART mode with internal clock
                    */
                    USART_INT_CLK = 0x1,

                    /*************************************************************
                     SPI mode with external clock
                    */
                    SPI_SLAVE = 0x2,

                    /*************************************************************
                     SPI mode with internal clock
                    */
                    SPI_MASTER = 0x3,

                    /*************************************************************
                     I2C mode with external clock
                    */
                    I2C_SLAVE = 0x4,

                    /*************************************************************
                     I2C mode with internal clock
                    */
                    I2C_MASTER = 0x5,
                }
                mixin BitFieldImplementation!(4, 2, Mutability.rw, Values);
            }

            /*********************************************************************
             Run during Standby
            */
            alias RUNSTDBY = Bit!(7, Mutability.rw);

            /*********************************************************************
             Immediate Buffer Overflow Notification
            */
            alias IBON = Bit!(8, Mutability.rw);

            /*********************************************************************
             Sample
            */
            alias SAMPR = BitField!(15, 13, Mutability.rw);

            /*********************************************************************
             Transmit Data Pinout
            */
            alias TXPO = BitField!(17, 16, Mutability.rw);

            /*********************************************************************
             Receive Data Pinout
            */
            alias RXPO = BitField!(21, 20, Mutability.rw);

            /*********************************************************************
             Sample Adjustment
            */
            alias SAMPA = BitField!(23, 22, Mutability.rw);

            /*********************************************************************
             Frame Format
            */
            alias FORM = BitField!(27, 24, Mutability.rw);

            /*********************************************************************
             Communication Mode
            */
            alias CMODE = Bit!(28, Mutability.rw);

            /*********************************************************************
             Clock Polarity
            */
            alias CPOL = Bit!(29, Mutability.rw);

            /*********************************************************************
             Data Order
            */
            alias DORD = Bit!(30, Mutability.rw);
        }

        /*************************************************************************
         USART Control B
        */
        final abstract class CTRLB : Register!(0x4)
        {
            /*********************************************************************
             Character Size
            */
            alias CHSIZE = BitField!(2, 0, Mutability.rw);

            /*********************************************************************
             Stop Bit Mode
            */
            alias SBMODE = Bit!(6, Mutability.rw);

            /*********************************************************************
             Collision Detection Enable
            */
            alias COLDEN = Bit!(8, Mutability.rw);

            /*********************************************************************
             Start of Frame Detection Enable
            */
            alias SFDE = Bit!(9, Mutability.rw);

            /*********************************************************************
             Encoding Format
            */
            alias ENC = Bit!(10, Mutability.rw);

            /*********************************************************************
             Parity Mode
            */
            alias PMODE = Bit!(13, Mutability.rw);

            /*********************************************************************
             Transmitter Enable
            */
            alias TXEN = Bit!(16, Mutability.rw);

            /*********************************************************************
             Receiver Enable
            */
            alias RXEN = Bit!(17, Mutability.rw);
        }

        /*************************************************************************
         USART Data
        */
        final abstract class DATA : Register!(0x28)
        {
            /*********************************************************************
             Data Value
            */
            alias DATA = BitField!(8, 0, Mutability.rw);
        }

        /*************************************************************************
         USART Debug Control
        */
        final abstract class DBGCTRL : Register!(0x30)
        {
            /*********************************************************************
             Debug Mode
            */
            alias DBGSTOP = Bit!(0, Mutability.rw);
        }

        /*************************************************************************
         USART Interrupt Enable Clear
        */
        final abstract class INTENCLR : Register!(0x14)
        {
            /*********************************************************************
             Data Register Empty Interrupt Disable
            */
            alias DRE = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transmit Complete Interrupt Disable
            */
            alias TXC = Bit!(1, Mutability.rw);

            /*********************************************************************
             Receive Complete Interrupt Disable
            */
            alias RXC = Bit!(2, Mutability.rw);

            /*********************************************************************
             Receive Start Interrupt Disable
            */
            alias RXS = Bit!(3, Mutability.rw);

            /*********************************************************************
             Clear To Send Input Change Interrupt Disable
            */
            alias CTSIC = Bit!(4, Mutability.rw);

            /*********************************************************************
             Break Received Interrupt Disable
            */
            alias RXBRK = Bit!(5, Mutability.rw);

            /*********************************************************************
             Combined Error Interrupt Disable
            */
            alias ERROR = Bit!(7, Mutability.rw);
        }

        /*************************************************************************
         USART Interrupt Enable Set
        */
        final abstract class INTENSET : Register!(0x16)
        {
            /*********************************************************************
             Data Register Empty Interrupt Enable
            */
            alias DRE = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transmit Complete Interrupt Enable
            */
            alias TXC = Bit!(1, Mutability.rw);

            /*********************************************************************
             Receive Complete Interrupt Enable
            */
            alias RXC = Bit!(2, Mutability.rw);

            /*********************************************************************
             Receive Start Interrupt Enable
            */
            alias RXS = Bit!(3, Mutability.rw);

            /*********************************************************************
             Clear To Send Input Change Interrupt Enable
            */
            alias CTSIC = Bit!(4, Mutability.rw);

            /*********************************************************************
             Break Received Interrupt Enable
            */
            alias RXBRK = Bit!(5, Mutability.rw);

            /*********************************************************************
             Combined Error Interrupt Enable
            */
            alias ERROR = Bit!(7, Mutability.rw);
        }

        /*************************************************************************
         USART Interrupt Flag Status and Clear
        */
        final abstract class INTFLAG : Register!(0x18)
        {
            /*********************************************************************
             Data Register Empty Interrupt
            */
            alias DRE = Bit!(0, Mutability.r);

            /*********************************************************************
             Transmit Complete Interrupt
            */
            alias TXC = Bit!(1, Mutability.rw);

            /*********************************************************************
             Receive Complete Interrupt
            */
            alias RXC = Bit!(2, Mutability.r);

            /*********************************************************************
             Receive Start Interrupt
            */
            alias RXS = Bit!(3, Mutability.w);

            /*********************************************************************
             Clear To Send Input Change Interrupt
            */
            alias CTSIC = Bit!(4, Mutability.rw);

            /*********************************************************************
             Break Received Interrupt
            */
            alias RXBRK = Bit!(5, Mutability.rw);

            /*********************************************************************
             Combined Error Interrupt
            */
            alias ERROR = Bit!(7, Mutability.rw);
        }

        /*************************************************************************
         USART Receive Pulse Length
        */
        final abstract class RXPL : Register!(0xe)
        {
            /*********************************************************************
             Receive Pulse Length
            */
            alias RXPL = BitField!(7, 0, Mutability.rw);
        }

        /*************************************************************************
         USART Status
        */
        final abstract class STATUS : Register!(0x1a)
        {
            /*********************************************************************
             Parity Error
            */
            alias PERR = Bit!(0, Mutability.rw);

            /*********************************************************************
             Frame Error
            */
            alias FERR = Bit!(1, Mutability.rw);

            /*********************************************************************
             Buffer Overflow
            */
            alias BUFOVF = Bit!(2, Mutability.rw);

            /*********************************************************************
             Clear To Send
            */
            alias CTS = Bit!(3, Mutability.r);

            /*********************************************************************
             Inconsistent Sync Field
            */
            alias ISF = Bit!(4, Mutability.rw);

            /*********************************************************************
             Collision Detected
            */
            alias COLL = Bit!(5, Mutability.rw);
        }

        /*************************************************************************
         USART Syncbusy
        */
        final abstract class SYNCBUSY : Register!(0x1c)
        {
            /*********************************************************************
             Software Reset Synchronization Busy
            */
            alias SWRST = Bit!(0, Mutability.r);

            /*********************************************************************
             SERCOM Enable Synchronization Busy
            */
            alias ENABLE = Bit!(1, Mutability.r);

            /*********************************************************************
             CTRLB Synchronization Busy
            */
            alias CTRLB = Bit!(2, Mutability.r);
        }
    }
}
