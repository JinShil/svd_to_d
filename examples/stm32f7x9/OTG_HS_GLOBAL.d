module stm32f7x9.otg_hs_global;

import stm32f7x9.mmio;

/*****************************************************************************
 USB on the go high speed
*/
final abstract class OTG_HS_GLOBAL : Peripheral!(0x40040000)
{
    /*************************************************************************
     OTG_HS control and status
          register
    */
    final abstract class OTG_HS_GOTGCTL : Register!(00)
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
         Embedded host enable
        */
        alias EHEN = Bit!(12, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS interrupt register
    */
    final abstract class OTG_HS_GOTGINT : Register!(0x4)
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
     OTG_HS AHB configuration
          register
    */
    final abstract class OTG_HS_GAHBCFG : Register!(0x8)
    {
        /*********************************************************************
         Global interrupt mask
        */
        alias GINT = Bit!(0, Mutability.rw);

        /*********************************************************************
         Burst length/type
        */
        alias HBSTLEN = BitField!(4, 1, Mutability.rw);

        /*********************************************************************
         DMA enable
        */
        alias DMAEN = Bit!(5, Mutability.rw);

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
     OTG_HS USB configuration
          register
    */
    final abstract class OTG_HS_GUSBCFG : Register!(0xc)
    {
        /*********************************************************************
         FS timeout calibration
        */
        alias TOCAL = BitField!(2, 0, Mutability.rw);

        /*********************************************************************
         USB 2.0 high-speed ULPI PHY or USB 1.1
              full-speed serial transceiver select
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
         PHY Low-power clock select
        */
        alias PHYLPCS = Bit!(15, Mutability.rw);

        /*********************************************************************
         ULPI FS/LS select
        */
        alias ULPIFSLS = Bit!(17, Mutability.rw);

        /*********************************************************************
         ULPI Auto-resume
        */
        alias ULPIAR = Bit!(18, Mutability.rw);

        /*********************************************************************
         ULPI Clock SuspendM
        */
        alias ULPICSM = Bit!(19, Mutability.rw);

        /*********************************************************************
         ULPI External VBUS Drive
        */
        alias ULPIEVBUSD = Bit!(20, Mutability.rw);

        /*********************************************************************
         ULPI external VBUS
              indicator
        */
        alias ULPIEVBUSI = Bit!(21, Mutability.rw);

        /*********************************************************************
         TermSel DLine pulsing
              selection
        */
        alias TSDPS = Bit!(22, Mutability.rw);

        /*********************************************************************
         Indicator complement
        */
        alias PCCI = Bit!(23, Mutability.rw);

        /*********************************************************************
         Indicator pass through
        */
        alias PTCI = Bit!(24, Mutability.rw);

        /*********************************************************************
         ULPI interface protect
              disable
        */
        alias ULPIIPD = Bit!(25, Mutability.rw);

        /*********************************************************************
         Forced host mode
        */
        alias FHMOD = Bit!(29, Mutability.rw);

        /*********************************************************************
         Forced peripheral mode
        */
        alias FDMOD = Bit!(30, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS reset register
    */
    final abstract class OTG_HS_GRSTCTL : Register!(0x10)
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

        /*********************************************************************
         DMA request signal enabled for USB OTG
              HS
        */
        alias DMAREQ = Bit!(30, Mutability.r);
    }

    /*************************************************************************
     OTG_HS core interrupt register
    */
    final abstract class OTG_HS_GINTSTS : Register!(0x14)
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
         RxFIFO nonempty
        */
        alias RXFLVL = Bit!(4, Mutability.r);

        /*********************************************************************
         Nonperiodic TxFIFO empty
        */
        alias NPTXFE = Bit!(5, Mutability.r);

        /*********************************************************************
         Global IN nonperiodic NAK
              effective
        */
        alias GINAKEFF = Bit!(6, Mutability.r);

        /*********************************************************************
         Global OUT NAK effective
        */
        alias BOUTNAKEFF = Bit!(7, Mutability.r);

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
         Incomplete periodic
              transfer
        */
        alias PXFR_INCOMPISOOUT = Bit!(21, Mutability.rw);

        /*********************************************************************
         Data fetch suspended
        */
        alias DATAFSUSP = Bit!(22, Mutability.rw);

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
        alias WKUINT = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS interrupt mask register
    */
    final abstract class OTG_HS_GINTMSK : Register!(0x18)
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
         Receive FIFO nonempty mask
        */
        alias RXFLVLM = Bit!(4, Mutability.rw);

        /*********************************************************************
         Nonperiodic TxFIFO empty
              mask
        */
        alias NPTXFEM = Bit!(5, Mutability.rw);

        /*********************************************************************
         Global nonperiodic IN NAK effective
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
         Incomplete periodic transfer
              mask
        */
        alias PXFRM_IISOOXFRM = Bit!(21, Mutability.rw);

        /*********************************************************************
         Data fetch suspended mask
        */
        alias FSUSPM = Bit!(22, Mutability.rw);

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
        alias RSTDE = Bit!(23, Mutability.rw);

        /*********************************************************************
         LPM interrupt mask
        */
        alias LPMINTM = Bit!(27, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS Receive status debug read register
          (host mode)
    */
    final abstract class OTG_HS_GRXSTSR_Host : Register!(0x1c)
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
     OTG_HS status read and pop register (host
          mode)
    */
    final abstract class OTG_HS_GRXSTSP_Host : Register!(0x20)
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
     OTG_HS Receive FIFO size
          register
    */
    final abstract class OTG_HS_GRXFSIZ : Register!(0x24)
    {
        /*********************************************************************
         RxFIFO depth
        */
        alias RXFD = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS nonperiodic transmit FIFO size
          register (host mode)
    */
    final abstract class OTG_HS_HNPTXFSIZ_Host : Register!(0x28)
    {
        /*********************************************************************
         Nonperiodic transmit RAM start
              address
        */
        alias NPTXFSA = BitField!(15, 0, Mutability.rw);

        /*********************************************************************
         Nonperiodic TxFIFO depth
        */
        alias NPTXFD = BitField!(31, 16, Mutability.rw);
    }

    /*************************************************************************
     Endpoint 0 transmit FIFO size (peripheral
          mode)
    */
    final abstract class OTG_HS_DIEPTXF0_Device : Register!(0x28)
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
     OTG_HS nonperiodic transmit FIFO/queue
          status register
    */
    final abstract class OTG_HS_GNPTXSTS : Register!(0x2c)
    {
        /*********************************************************************
         Nonperiodic TxFIFO space
              available
        */
        alias NPTXFSAV = BitField!(15, 0, Mutability.rw);

        /*********************************************************************
         Nonperiodic transmit request queue space
              available
        */
        alias NPTQXSAV = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         Top of the nonperiodic transmit request
              queue
        */
        alias NPTXQTOP = BitField!(30, 24, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS general core configuration
          register
    */
    final abstract class OTG_HS_GCCFG : Register!(0x38)
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
     OTG_HS core ID register
    */
    final abstract class OTG_HS_CID : Register!(0x3c)
    {
        /*********************************************************************
         Product ID field
        */
        alias PRODUCT_ID = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS Host periodic transmit FIFO size
          register
    */
    final abstract class OTG_HS_HPTXFSIZ : Register!(0x100)
    {
        /*********************************************************************
         Host periodic TxFIFO start
              address
        */
        alias PTXSA = BitField!(15, 0, Mutability.rw);

        /*********************************************************************
         Host periodic TxFIFO depth
        */
        alias PTXFD = BitField!(31, 16, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device IN endpoint transmit FIFO size
          register
    */
    final abstract class OTG_HS_DIEPTXF1 : Register!(0x104)
    {
        /*********************************************************************
         IN endpoint FIFOx transmit RAM start
              address
        */
        alias INEPTXSA = BitField!(15, 0, Mutability.rw);

        /*********************************************************************
         IN endpoint TxFIFO depth
        */
        alias INEPTXFD = BitField!(31, 16, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device IN endpoint transmit FIFO size
          register
    */
    final abstract class OTG_HS_DIEPTXF2 : Register!(0x108)
    {
        /*********************************************************************
         IN endpoint FIFOx transmit RAM start
              address
        */
        alias INEPTXSA = BitField!(15, 0, Mutability.rw);

        /*********************************************************************
         IN endpoint TxFIFO depth
        */
        alias INEPTXFD = BitField!(31, 16, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device IN endpoint transmit FIFO size
          register
    */
    final abstract class OTG_HS_DIEPTXF3 : Register!(0x11c)
    {
        /*********************************************************************
         IN endpoint FIFOx transmit RAM start
              address
        */
        alias INEPTXSA = BitField!(15, 0, Mutability.rw);

        /*********************************************************************
         IN endpoint TxFIFO depth
        */
        alias INEPTXFD = BitField!(31, 16, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device IN endpoint transmit FIFO size
          register
    */
    final abstract class OTG_HS_DIEPTXF4 : Register!(0x120)
    {
        /*********************************************************************
         IN endpoint FIFOx transmit RAM start
              address
        */
        alias INEPTXSA = BitField!(15, 0, Mutability.rw);

        /*********************************************************************
         IN endpoint TxFIFO depth
        */
        alias INEPTXFD = BitField!(31, 16, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device IN endpoint transmit FIFO size
          register
    */
    final abstract class OTG_HS_DIEPTXF5 : Register!(0x124)
    {
        /*********************************************************************
         IN endpoint FIFOx transmit RAM start
              address
        */
        alias INEPTXSA = BitField!(15, 0, Mutability.rw);

        /*********************************************************************
         IN endpoint TxFIFO depth
        */
        alias INEPTXFD = BitField!(31, 16, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device IN endpoint transmit FIFO size
          register
    */
    final abstract class OTG_HS_DIEPTXF6 : Register!(0x128)
    {
        /*********************************************************************
         IN endpoint FIFOx transmit RAM start
              address
        */
        alias INEPTXSA = BitField!(15, 0, Mutability.rw);

        /*********************************************************************
         IN endpoint TxFIFO depth
        */
        alias INEPTXFD = BitField!(31, 16, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device IN endpoint transmit FIFO size
          register
    */
    final abstract class OTG_HS_DIEPTXF7 : Register!(0x12c)
    {
        /*********************************************************************
         IN endpoint FIFOx transmit RAM start
              address
        */
        alias INEPTXSA = BitField!(15, 0, Mutability.rw);

        /*********************************************************************
         IN endpoint TxFIFO depth
        */
        alias INEPTXFD = BitField!(31, 16, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS Receive status debug read register
          (peripheral mode mode)
    */
    final abstract class OTG_HS_GRXSTSR_Device : Register!(0x1c)
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
     OTG_HS status read and pop register
          (peripheral mode)
    */
    final abstract class OTG_HS_GRXSTSP_Device : Register!(0x20)
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
     OTG core LPM configuration
          register
    */
    final abstract class OTG_HS_GLPMCFG : Register!(0x54)
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
        alias BESL = BitField!(5, 2, Mutability.r);

        /*********************************************************************
         bRemoteWake value
        */
        alias REMWAKE = Bit!(6, Mutability.r);

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
