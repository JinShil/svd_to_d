module stm32f7x9.otg_fs_global;

import stm32f7x9.mmio;

/*****************************************************************************
 USB on the go full speed
*/
final abstract class OTG_FS_GLOBAL : Peripheral!(0x50000000)
{
    /*************************************************************************
     OTG_FS control and status register
          (OTG_FS_GOTGCTL)
    */
    final abstract class OTG_FS_GOTGCTL : Register!(0x0)
    {
        /*********************************************************************
         Session request success
        */
        alias SRQSCS = Bit!(0, Mutability.r);

        /*********************************************************************
         Session request
        */
        alias SRQ = Bit!(1, Mutability.rw);

        /*********************************************************************
         Host negotiation success
        */
        alias HNGSCS = Bit!(8, Mutability.r);

        /*********************************************************************
         HNP request
        */
        alias HNPRQ = Bit!(9, Mutability.rw);

        /*********************************************************************
         Host set HNP enable
        */
        alias HSHNPEN = Bit!(10, Mutability.rw);

        /*********************************************************************
         Device HNP enabled
        */
        alias DHNPEN = Bit!(11, Mutability.rw);

        /*********************************************************************
         Connector ID status
        */
        alias CIDSTS = Bit!(16, Mutability.r);

        /*********************************************************************
         Long/short debounce time
        */
        alias DBCT = Bit!(17, Mutability.r);

        /*********************************************************************
         A-session valid
        */
        alias ASVLD = Bit!(18, Mutability.r);

        /*********************************************************************
         B-session valid
        */
        alias BSVLD = Bit!(19, Mutability.r);

        /*********************************************************************
         VBUS valid override enable
        */
        alias VBVALOEN = Bit!(2, Mutability.rw);

        /*********************************************************************
         VBUS valid override value
        */
        alias VBVALOVAL = Bit!(3, Mutability.rw);

        /*********************************************************************
         A-peripheral session valid override
              enable
        */
        alias AVALOEN = Bit!(4, Mutability.rw);

        /*********************************************************************
         A-peripheral session valid override
              value
        */
        alias AVALOVAL = Bit!(5, Mutability.rw);

        /*********************************************************************
         B-peripheral session valid override
              enable
        */
        alias BVALOEN = Bit!(6, Mutability.rw);

        /*********************************************************************
         B-peripheral session valid override
              value
        */
        alias BVALOVAL = Bit!(7, Mutability.rw);

        /*********************************************************************
         Embedded host enable
        */
        alias EHEN = Bit!(12, Mutability.rw);

        /*********************************************************************
         OTG version
        */
        alias OTGVER = Bit!(20, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS interrupt register
          (OTG_FS_GOTGINT)
    */
    final abstract class OTG_FS_GOTGINT : Register!(0x4)
    {
        /*********************************************************************
         Session end detected
        */
        alias SEDET = Bit!(2, Mutability.rw);

        /*********************************************************************
         Session request success status
              change
        */
        alias SRSSCHG = Bit!(8, Mutability.rw);

        /*********************************************************************
         Host negotiation success status
              change
        */
        alias HNSSCHG = Bit!(9, Mutability.rw);

        /*********************************************************************
         Host negotiation detected
        */
        alias HNGDET = Bit!(17, Mutability.rw);

        /*********************************************************************
         A-device timeout change
        */
        alias ADTOCHG = Bit!(18, Mutability.rw);

        /*********************************************************************
         Debounce done
        */
        alias DBCDNE = Bit!(19, Mutability.rw);

        /*********************************************************************
         ID input pin changed
        */
        alias IDCHNG = Bit!(20, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS AHB configuration register
          (OTG_FS_GAHBCFG)
    */
    final abstract class OTG_FS_GAHBCFG : Register!(0x8)
    {
        /*********************************************************************
         Global interrupt mask
        */
        alias GINT = Bit!(0, Mutability.rw);

        /*********************************************************************
         TxFIFO empty level
        */
        alias TXFELVL = Bit!(7, Mutability.rw);

        /*********************************************************************
         Periodic TxFIFO empty
              level
        */
        alias PTXFELVL = Bit!(8, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS USB configuration register
          (OTG_FS_GUSBCFG)
    */
    final abstract class OTG_FS_GUSBCFG : Register!(0xC)
    {
        /*********************************************************************
         FS timeout calibration
        */
        alias TOCAL = BitField!(2, 0, Mutability.rw);

        /*********************************************************************
         Full Speed serial transceiver
              select
        */
        alias PHYSEL = Bit!(6, Mutability.w);

        /*********************************************************************
         SRP-capable
        */
        alias SRPCAP = Bit!(8, Mutability.rw);

        /*********************************************************************
         HNP-capable
        */
        alias HNPCAP = Bit!(9, Mutability.rw);

        /*********************************************************************
         USB turnaround time
        */
        alias TRDT = BitField!(13, 10, Mutability.rw);

        /*********************************************************************
         Force host mode
        */
        alias FHMOD = Bit!(29, Mutability.rw);

        /*********************************************************************
         Force device mode
        */
        alias FDMOD = Bit!(30, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS reset register
          (OTG_FS_GRSTCTL)
    */
    final abstract class OTG_FS_GRSTCTL : Register!(0x10)
    {
        /*********************************************************************
         Core soft reset
        */
        alias CSRST = Bit!(0, Mutability.rw);

        /*********************************************************************
         HCLK soft reset
        */
        alias HSRST = Bit!(1, Mutability.rw);

        /*********************************************************************
         Host frame counter reset
        */
        alias FCRST = Bit!(2, Mutability.rw);

        /*********************************************************************
         RxFIFO flush
        */
        alias RXFFLSH = Bit!(4, Mutability.rw);

        /*********************************************************************
         TxFIFO flush
        */
        alias TXFFLSH = Bit!(5, Mutability.rw);

        /*********************************************************************
         TxFIFO number
        */
        alias TXFNUM = BitField!(10, 6, Mutability.rw);

        /*********************************************************************
         AHB master idle
        */
        alias AHBIDL = Bit!(31, Mutability.r);
    }

    /*************************************************************************
     OTG_FS core interrupt register
          (OTG_FS_GINTSTS)
    */
    final abstract class OTG_FS_GINTSTS : Register!(0x14)
    {
        /*********************************************************************
         Current mode of operation
        */
        alias CMOD = Bit!(0, Mutability.r);

        /*********************************************************************
         Mode mismatch interrupt
        */
        alias MMIS = Bit!(1, Mutability.rw);

        /*********************************************************************
         OTG interrupt
        */
        alias OTGINT = Bit!(2, Mutability.r);

        /*********************************************************************
         Start of frame
        */
        alias SOF = Bit!(3, Mutability.rw);

        /*********************************************************************
         RxFIFO non-empty
        */
        alias RXFLVL = Bit!(4, Mutability.r);

        /*********************************************************************
         Non-periodic TxFIFO empty
        */
        alias NPTXFE = Bit!(5, Mutability.r);

        /*********************************************************************
         Global IN non-periodic NAK
              effective
        */
        alias GINAKEFF = Bit!(6, Mutability.r);

        /*********************************************************************
         Global OUT NAK effective
        */
        alias GOUTNAKEFF = Bit!(7, Mutability.r);

        /*********************************************************************
         Early suspend
        */
        alias ESUSP = Bit!(10, Mutability.rw);

        /*********************************************************************
         USB suspend
        */
        alias USBSUSP = Bit!(11, Mutability.rw);

        /*********************************************************************
         USB reset
        */
        alias USBRST = Bit!(12, Mutability.rw);

        /*********************************************************************
         Enumeration done
        */
        alias ENUMDNE = Bit!(13, Mutability.rw);

        /*********************************************************************
         Isochronous OUT packet dropped
              interrupt
        */
        alias ISOODRP = Bit!(14, Mutability.rw);

        /*********************************************************************
         End of periodic frame
              interrupt
        */
        alias EOPF = Bit!(15, Mutability.rw);

        /*********************************************************************
         IN endpoint interrupt
        */
        alias IEPINT = Bit!(18, Mutability.r);

        /*********************************************************************
         OUT endpoint interrupt
        */
        alias OEPINT = Bit!(19, Mutability.r);

        /*********************************************************************
         Incomplete isochronous IN
              transfer
        */
        alias IISOIXFR = Bit!(20, Mutability.rw);

        /*********************************************************************
         Incomplete periodic transfer(Host
              mode)/Incomplete isochronous OUT transfer(Device
              mode)
        */
        alias IPXFR_INCOMPISOOUT = Bit!(21, Mutability.rw);

        /*********************************************************************
         Host port interrupt
        */
        alias HPRTINT = Bit!(24, Mutability.r);

        /*********************************************************************
         Host channels interrupt
        */
        alias HCINT = Bit!(25, Mutability.r);

        /*********************************************************************
         Periodic TxFIFO empty
        */
        alias PTXFE = Bit!(26, Mutability.r);

        /*********************************************************************
         Connector ID status change
        */
        alias CIDSCHG = Bit!(28, Mutability.rw);

        /*********************************************************************
         Disconnect detected
              interrupt
        */
        alias DISCINT = Bit!(29, Mutability.rw);

        /*********************************************************************
         Session request/new session detected
              interrupt
        */
        alias SRQINT = Bit!(30, Mutability.rw);

        /*********************************************************************
         Resume/remote wakeup detected
              interrupt
        */
        alias WKUPINT = Bit!(31, Mutability.rw);

        /*********************************************************************
         Reset detected interrupt
        */
        alias RSTDET = Bit!(23, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS interrupt mask register
          (OTG_FS_GINTMSK)
    */
    final abstract class OTG_FS_GINTMSK : Register!(0x18)
    {
        /*********************************************************************
         Mode mismatch interrupt
              mask
        */
        alias MMISM = Bit!(1, Mutability.rw);

        /*********************************************************************
         OTG interrupt mask
        */
        alias OTGINT = Bit!(2, Mutability.rw);

        /*********************************************************************
         Start of frame mask
        */
        alias SOFM = Bit!(3, Mutability.rw);

        /*********************************************************************
         Receive FIFO non-empty
              mask
        */
        alias RXFLVLM = Bit!(4, Mutability.rw);

        /*********************************************************************
         Non-periodic TxFIFO empty
              mask
        */
        alias NPTXFEM = Bit!(5, Mutability.rw);

        /*********************************************************************
         Global non-periodic IN NAK effective
              mask
        */
        alias GINAKEFFM = Bit!(6, Mutability.rw);

        /*********************************************************************
         Global OUT NAK effective
              mask
        */
        alias GONAKEFFM = Bit!(7, Mutability.rw);

        /*********************************************************************
         Early suspend mask
        */
        alias ESUSPM = Bit!(10, Mutability.rw);

        /*********************************************************************
         USB suspend mask
        */
        alias USBSUSPM = Bit!(11, Mutability.rw);

        /*********************************************************************
         USB reset mask
        */
        alias USBRST = Bit!(12, Mutability.rw);

        /*********************************************************************
         Enumeration done mask
        */
        alias ENUMDNEM = Bit!(13, Mutability.rw);

        /*********************************************************************
         Isochronous OUT packet dropped interrupt
              mask
        */
        alias ISOODRPM = Bit!(14, Mutability.rw);

        /*********************************************************************
         End of periodic frame interrupt
              mask
        */
        alias EOPFM = Bit!(15, Mutability.rw);

        /*********************************************************************
         IN endpoints interrupt
              mask
        */
        alias IEPINT = Bit!(18, Mutability.rw);

        /*********************************************************************
         OUT endpoints interrupt
              mask
        */
        alias OEPINT = Bit!(19, Mutability.rw);

        /*********************************************************************
         Incomplete isochronous IN transfer
              mask
        */
        alias IISOIXFRM = Bit!(20, Mutability.rw);

        /*********************************************************************
         Incomplete periodic transfer mask(Host
              mode)/Incomplete isochronous OUT transfer mask(Device
              mode)
        */
        alias IPXFRM_IISOOXFRM = Bit!(21, Mutability.rw);

        /*********************************************************************
         Host port interrupt mask
        */
        alias PRTIM = Bit!(24, Mutability.r);

        /*********************************************************************
         Host channels interrupt
              mask
        */
        alias HCIM = Bit!(25, Mutability.rw);

        /*********************************************************************
         Periodic TxFIFO empty mask
        */
        alias PTXFEM = Bit!(26, Mutability.rw);

        /*********************************************************************
         Connector ID status change
              mask
        */
        alias CIDSCHGM = Bit!(28, Mutability.rw);

        /*********************************************************************
         Disconnect detected interrupt
              mask
        */
        alias DISCINT = Bit!(29, Mutability.rw);

        /*********************************************************************
         Session request/new session detected
              interrupt mask
        */
        alias SRQIM = Bit!(30, Mutability.rw);

        /*********************************************************************
         Resume/remote wakeup detected interrupt
              mask
        */
        alias WUIM = Bit!(31, Mutability.rw);

        /*********************************************************************
         Reset detected interrupt
              mask
        */
        alias RSTDETM = Bit!(23, Mutability.rw);

        /*********************************************************************
         LPM interrupt mask
        */
        alias LPMIN = Bit!(27, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS Receive status debug read(Device
          mode)
    */
    final abstract class OTG_FS_GRXSTSR_Device : Register!(0x1C)
    {
        /*********************************************************************
         Endpoint number
        */
        alias EPNUM = BitField!(3, 0, Mutability.rw);

        /*********************************************************************
         Byte count
        */
        alias BCNT = BitField!(14, 4, Mutability.rw);

        /*********************************************************************
         Data PID
        */
        alias DPID = BitField!(16, 15, Mutability.rw);

        /*********************************************************************
         Packet status
        */
        alias PKTSTS = BitField!(20, 17, Mutability.rw);

        /*********************************************************************
         Frame number
        */
        alias FRMNUM = BitField!(24, 21, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS Receive status debug read(Host
          mode)
    */
    final abstract class OTG_FS_GRXSTSR_Host : Register!(0x1C)
    {
        /*********************************************************************
         Endpoint number
        */
        alias CHNUM = BitField!(3, 0, Mutability.rw);

        /*********************************************************************
         Byte count
        */
        alias BCNT = BitField!(14, 4, Mutability.rw);

        /*********************************************************************
         Data PID
        */
        alias DPID = BitField!(16, 15, Mutability.rw);

        /*********************************************************************
         Packet status
        */
        alias PKTSTS = BitField!(20, 17, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS Receive FIFO size register
          (OTG_FS_GRXFSIZ)
    */
    final abstract class OTG_FS_GRXFSIZ : Register!(0x24)
    {
        /*********************************************************************
         RxFIFO depth
        */
        alias RXFD = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS Endpoint 0 Transmit FIFO
          size
    */
    final abstract class OTG_FS_DIEPTXF0_Device : Register!(0x28)
    {
        /*********************************************************************
         Endpoint 0 transmit RAM start
              address
        */
        alias TX0FSA = BitField!(15, 0, Mutability.rw);

        /*********************************************************************
         Endpoint 0 TxFIFO depth
        */
        alias TX0FD = BitField!(31, 16, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS Host non-periodic transmit FIFO size
          register
    */
    final abstract class OTG_FS_HNPTXFSIZ_Host : Register!(0x28)
    {
        /*********************************************************************
         Non-periodic transmit RAM start
              address
        */
        alias NPTXFSA = BitField!(15, 0, Mutability.rw);

        /*********************************************************************
         Non-periodic TxFIFO depth
        */
        alias NPTXFD = BitField!(31, 16, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS non-periodic transmit FIFO/queue
          status register (OTG_FS_GNPTXSTS)
    */
    final abstract class OTG_FS_HNPTXSTS : Register!(0x2C)
    {
        /*********************************************************************
         Non-periodic TxFIFO space
              available
        */
        alias NPTXFSAV = BitField!(15, 0, Mutability.rw);

        /*********************************************************************
         Non-periodic transmit request queue
              space available
        */
        alias NPTQXSAV = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         Top of the non-periodic transmit request
              queue
        */
        alias NPTXQTOP = BitField!(30, 24, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS general core configuration register
          (OTG_FS_GCCFG)
    */
    final abstract class OTG_FS_GCCFG : Register!(0x38)
    {
        /*********************************************************************
         Power down
        */
        alias PWRDWN = Bit!(16, Mutability.rw);

        /*********************************************************************
         Battery charging detector (BCD)
              enable
        */
        alias BCDEN = Bit!(17, Mutability.rw);

        /*********************************************************************
         Data contact detection (DCD) mode
              enable
        */
        alias DCDEN = Bit!(18, Mutability.rw);

        /*********************************************************************
         Primary detection (PD) mode
              enable
        */
        alias PDEN = Bit!(19, Mutability.rw);

        /*********************************************************************
         Secondary detection (SD) mode
              enable
        */
        alias SDEN = Bit!(20, Mutability.rw);

        /*********************************************************************
         USB VBUS detection enable
        */
        alias VBDEN = Bit!(21, Mutability.rw);

        /*********************************************************************
         Data contact detection (DCD)
              status
        */
        alias DCDET = Bit!(0, Mutability.rw);

        /*********************************************************************
         Primary detection (PD)
              status
        */
        alias PDET = Bit!(1, Mutability.rw);

        /*********************************************************************
         Secondary detection (SD)
              status
        */
        alias SDET = Bit!(2, Mutability.rw);

        /*********************************************************************
         DM pull-up detection
              status
        */
        alias PS2DET = Bit!(3, Mutability.rw);
    }

    /*************************************************************************
     core ID register
    */
    final abstract class OTG_FS_CID : Register!(0x3C)
    {
        /*********************************************************************
         Product ID field
        */
        alias PRODUCT_ID = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS Host periodic transmit FIFO size
          register (OTG_FS_HPTXFSIZ)
    */
    final abstract class OTG_FS_HPTXFSIZ : Register!(0x100)
    {
        /*********************************************************************
         Host periodic TxFIFO start
              address
        */
        alias PTXSA = BitField!(15, 0, Mutability.rw);

        /*********************************************************************
         Host periodic TxFIFO depth
        */
        alias PTXFSIZ = BitField!(31, 16, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS device IN endpoint transmit FIFO size
          register (OTG_FS_DIEPTXF1)
    */
    final abstract class OTG_FS_DIEPTXF1 : Register!(0x104)
    {
        /*********************************************************************
         IN endpoint FIFO2 transmit RAM start
              address
        */
        alias INEPTXSA = BitField!(15, 0, Mutability.rw);

        /*********************************************************************
         IN endpoint TxFIFO depth
        */
        alias INEPTXFD = BitField!(31, 16, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS device IN endpoint transmit FIFO size
          register (OTG_FS_DIEPTXF2)
    */
    final abstract class OTG_FS_DIEPTXF2 : Register!(0x108)
    {
        /*********************************************************************
         IN endpoint FIFO3 transmit RAM start
              address
        */
        alias INEPTXSA = BitField!(15, 0, Mutability.rw);

        /*********************************************************************
         IN endpoint TxFIFO depth
        */
        alias INEPTXFD = BitField!(31, 16, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS device IN endpoint transmit FIFO size
          register (OTG_FS_DIEPTXF3)
    */
    final abstract class OTG_FS_DIEPTXF3 : Register!(0x10C)
    {
        /*********************************************************************
         IN endpoint FIFO4 transmit RAM start
              address
        */
        alias INEPTXSA = BitField!(15, 0, Mutability.rw);

        /*********************************************************************
         IN endpoint TxFIFO depth
        */
        alias INEPTXFD = BitField!(31, 16, Mutability.rw);
    }

    /*************************************************************************
     OTG status read and pop register (Device
          mode)
    */
    final abstract class OTG_FS_GRXSTSP_Device : Register!(0x20)
    {
        /*********************************************************************
         Endpoint number
        */
        alias EPNUM = BitField!(3, 0, Mutability.rw);

        /*********************************************************************
         Byte count
        */
        alias BCNT = BitField!(14, 4, Mutability.rw);

        /*********************************************************************
         Data PID
        */
        alias DPID = BitField!(16, 15, Mutability.rw);

        /*********************************************************************
         Packet status
        */
        alias PKTSTS = BitField!(20, 17, Mutability.rw);

        /*********************************************************************
         Frame number
        */
        alias FRMNUM = BitField!(24, 21, Mutability.rw);
    }

    /*************************************************************************
     OTG status read and pop register (Host
          mode)
    */
    final abstract class OTG_FS_GRXSTSP_Host : Register!(0x20)
    {
        /*********************************************************************
         Channel number
        */
        alias CHNUM = BitField!(3, 0, Mutability.rw);

        /*********************************************************************
         Byte count
        */
        alias BCNT = BitField!(14, 4, Mutability.rw);

        /*********************************************************************
         Data PID
        */
        alias DPID = BitField!(16, 15, Mutability.rw);

        /*********************************************************************
         Packet status
        */
        alias PKTSTS = BitField!(20, 17, Mutability.rw);
    }

    /*************************************************************************
     OTG I2C access register
    */
    final abstract class OTG_FS_GI2CCTL : Register!(0x30)
    {
        /*********************************************************************
         I2C Read/Write Data
        */
        alias RWDATA = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         I2C Register Address
        */
        alias REGADDR = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         I2C Address
        */
        alias ADDR = BitField!(22, 16, Mutability.rw);

        /*********************************************************************
         I2C Enable
        */
        alias I2CEN = Bit!(23, Mutability.rw);

        /*********************************************************************
         I2C ACK
        */
        alias ACK = Bit!(24, Mutability.rw);

        /*********************************************************************
         I2C Device Address
        */
        alias I2CDEVADR = BitField!(27, 26, Mutability.rw);

        /*********************************************************************
         I2C DatSe0 USB mode
        */
        alias I2CDATSE0 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Read/Write Indicator
        */
        alias RW = Bit!(30, Mutability.rw);

        /*********************************************************************
         I2C Busy/Done
        */
        alias BSYDNE = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     OTG power down register
    */
    final abstract class OTG_FS_GPWRDN : Register!(0x58)
    {
        /*********************************************************************
         ADP module enable
        */
        alias ADPMEN = Bit!(0, Mutability.rw);

        /*********************************************************************
         ADP interrupt flag
        */
        alias ADPIF = Bit!(23, Mutability.rw);
    }

    /*************************************************************************
     OTG ADP timer, control and status
          register
    */
    final abstract class OTG_FS_GADPCTL : Register!(0x60)
    {
        /*********************************************************************
         Probe discharge
        */
        alias PRBDSCHG = BitField!(1, 0, Mutability.rw);

        /*********************************************************************
         Probe delta
        */
        alias PRBDELTA = BitField!(3, 2, Mutability.rw);

        /*********************************************************************
         Probe period
        */
        alias PRBPER = BitField!(5, 4, Mutability.rw);

        /*********************************************************************
         Ramp time
        */
        alias RTIM = BitField!(16, 6, Mutability.r);

        /*********************************************************************
         Enable probe
        */
        alias ENAPRB = Bit!(17, Mutability.rw);

        /*********************************************************************
         Enable sense
        */
        alias ENASNS = Bit!(18, Mutability.rw);

        /*********************************************************************
         ADP reset
        */
        alias ADPRST = Bit!(19, Mutability.r);

        /*********************************************************************
         ADP enable
        */
        alias ADPEN = Bit!(20, Mutability.rw);

        /*********************************************************************
         ADP probe interrupt flag
        */
        alias ADPPRBIF = Bit!(21, Mutability.rw);

        /*********************************************************************
         ADP sense interrupt flag
        */
        alias ADPSNSIF = Bit!(22, Mutability.rw);

        /*********************************************************************
         ADP timeout interrupt flag
        */
        alias ADPTOIF = Bit!(23, Mutability.rw);

        /*********************************************************************
         ADP probe interrupt mask
        */
        alias ADPPRBIM = Bit!(24, Mutability.rw);

        /*********************************************************************
         ADP sense interrupt mask
        */
        alias ADPSNSIM = Bit!(25, Mutability.rw);

        /*********************************************************************
         ADP timeout interrupt mask
        */
        alias ADPTOIM = Bit!(26, Mutability.rw);

        /*********************************************************************
         Access request
        */
        alias AR = BitField!(28, 27, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS device IN endpoint transmit FIFO size
          register (OTG_FS_DIEPTXF4)
    */
    final abstract class OTG_FS_DIEPTXF4 : Register!(0x110)
    {
        /*********************************************************************
         IN endpoint FIFOx transmit RAM start
              address
        */
        alias INEPTXSA = BitField!(15, 0, Mutability.rw);

        /*********************************************************************
         IN endpoint Tx FIFO depth
        */
        alias INEPTXFD = BitField!(31, 16, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS device IN endpoint transmit FIFO size
          register (OTG_FS_DIEPTXF5)
    */
    final abstract class OTG_FS_DIEPTXF5 : Register!(0x114)
    {
        /*********************************************************************
         IN endpoint FIFOx transmit RAM start
              address
        */
        alias INEPTXSA = BitField!(15, 0, Mutability.rw);

        /*********************************************************************
         IN endpoint Tx FIFO depth
        */
        alias INEPTXFD = BitField!(31, 16, Mutability.rw);
    }

    /*************************************************************************
     OTG core LPM configuration
          register
    */
    final abstract class OTG_FS_GLPMCFG : Register!(0x54)
    {
        /*********************************************************************
         LPM support enable
        */
        alias LPMEN = Bit!(0, Mutability.rw);

        /*********************************************************************
         LPM token acknowledge
              enable
        */
        alias LPMACK = Bit!(1, Mutability.rw);

        /*********************************************************************
         Best effort service
              latency
        */
        alias BESL = BitField!(5, 2, Mutability.rw);

        /*********************************************************************
         bRemoteWake value
        */
        alias REMWAKE = Bit!(6, Mutability.rw);

        /*********************************************************************
         L1 Shallow Sleep enable
        */
        alias L1SSEN = Bit!(7, Mutability.rw);

        /*********************************************************************
         BESL threshold
        */
        alias BESLTHRS = BitField!(11, 8, Mutability.rw);

        /*********************************************************************
         L1 deep sleep enable
        */
        alias L1DSEN = Bit!(12, Mutability.rw);

        /*********************************************************************
         LPM response
        */
        alias LPMRST = BitField!(14, 13, Mutability.r);

        /*********************************************************************
         Port sleep status
        */
        alias SLPSTS = Bit!(15, Mutability.r);

        /*********************************************************************
         Sleep State Resume OK
        */
        alias L1RSMOK = Bit!(16, Mutability.r);

        /*********************************************************************
         LPM Channel Index
        */
        alias LPMCHIDX = BitField!(20, 17, Mutability.rw);

        /*********************************************************************
         LPM retry count
        */
        alias LPMRCNT = BitField!(23, 21, Mutability.rw);

        /*********************************************************************
         Send LPM transaction
        */
        alias SNDLPM = Bit!(24, Mutability.rw);

        /*********************************************************************
         LPM retry count status
        */
        alias LPMRCNTSTS = BitField!(27, 25, Mutability.r);

        /*********************************************************************
         Enable best effort service
              latency
        */
        alias ENBESL = Bit!(28, Mutability.rw);
    }
}
