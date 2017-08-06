module stm32f7x9.otg_fs_device;

import stm32f7x9.mmio;

/*****************************************************************************
 USB on the go full speed
*/
final abstract class OTG_FS_DEVICE : Peripheral!(0x50000800)
{
    /*************************************************************************
     OTG_FS device configuration register
          (OTG_FS_DCFG)
    */
    final abstract class OTG_FS_DCFG : Register!(00)
    {
        /*********************************************************************
         Device speed
        */
        alias DSPD = BitField!(1, 0, Mutability.rw);

        /*********************************************************************
         Non-zero-length status OUT
              handshake
        */
        alias NZLSOHSK = Bit!(2, Mutability.rw);

        /*********************************************************************
         Device address
        */
        alias DAD = BitField!(10, 4, Mutability.rw);

        /*********************************************************************
         Periodic frame interval
        */
        alias PFIVL = BitField!(12, 11, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS device control register
          (OTG_FS_DCTL)
    */
    final abstract class OTG_FS_DCTL : Register!(0x4)
    {
        /*********************************************************************
         Remote wakeup signaling
        */
        alias RWUSIG = Bit!(0, Mutability.rw);

        /*********************************************************************
         Soft disconnect
        */
        alias SDIS = Bit!(1, Mutability.rw);

        /*********************************************************************
         Global IN NAK status
        */
        alias GINSTS = Bit!(2, Mutability.r);

        /*********************************************************************
         Global OUT NAK status
        */
        alias GONSTS = Bit!(3, Mutability.r);

        /*********************************************************************
         Test control
        */
        alias TCTL = BitField!(6, 4, Mutability.rw);

        /*********************************************************************
         Set global IN NAK
        */
        alias SGINAK = Bit!(7, Mutability.rw);

        /*********************************************************************
         Clear global IN NAK
        */
        alias CGINAK = Bit!(8, Mutability.rw);

        /*********************************************************************
         Set global OUT NAK
        */
        alias SGONAK = Bit!(9, Mutability.rw);

        /*********************************************************************
         Clear global OUT NAK
        */
        alias CGONAK = Bit!(10, Mutability.rw);

        /*********************************************************************
         Power-on programming done
        */
        alias POPRGDNE = Bit!(11, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS device status register
          (OTG_FS_DSTS)
    */
    final abstract class OTG_FS_DSTS : Register!(0x8)
    {
        /*********************************************************************
         Suspend status
        */
        alias SUSPSTS = Bit!(0, Mutability.rw);

        /*********************************************************************
         Enumerated speed
        */
        alias ENUMSPD = BitField!(2, 1, Mutability.rw);

        /*********************************************************************
         Erratic error
        */
        alias EERR = Bit!(3, Mutability.rw);

        /*********************************************************************
         Frame number of the received
              SOF
        */
        alias FNSOF = BitField!(21, 8, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS device IN endpoint common interrupt
          mask register (OTG_FS_DIEPMSK)
    */
    final abstract class OTG_FS_DIEPMSK : Register!(0x10)
    {
        /*********************************************************************
         Transfer completed interrupt
              mask
        */
        alias XFRCM = Bit!(0, Mutability.rw);

        /*********************************************************************
         Endpoint disabled interrupt
              mask
        */
        alias EPDM = Bit!(1, Mutability.rw);

        /*********************************************************************
         Timeout condition mask (Non-isochronous
              endpoints)
        */
        alias TOM = Bit!(3, Mutability.rw);

        /*********************************************************************
         IN token received when TxFIFO empty
              mask
        */
        alias ITTXFEMSK = Bit!(4, Mutability.rw);

        /*********************************************************************
         IN token received with EP mismatch
              mask
        */
        alias INEPNMM = Bit!(5, Mutability.rw);

        /*********************************************************************
         IN endpoint NAK effective
              mask
        */
        alias INEPNEM = Bit!(6, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS device OUT endpoint common interrupt
          mask register (OTG_FS_DOEPMSK)
    */
    final abstract class OTG_FS_DOEPMSK : Register!(0x14)
    {
        /*********************************************************************
         Transfer completed interrupt
              mask
        */
        alias XFRCM = Bit!(0, Mutability.rw);

        /*********************************************************************
         Endpoint disabled interrupt
              mask
        */
        alias EPDM = Bit!(1, Mutability.rw);

        /*********************************************************************
         SETUP phase done mask
        */
        alias STUPM = Bit!(3, Mutability.rw);

        /*********************************************************************
         OUT token received when endpoint
              disabled mask
        */
        alias OTEPDM = Bit!(4, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS device all endpoints interrupt
          register (OTG_FS_DAINT)
    */
    final abstract class OTG_FS_DAINT : Register!(0x18)
    {
        /*********************************************************************
         IN endpoint interrupt bits
        */
        alias IEPINT = BitField!(15, 0, Mutability.rw);

        /*********************************************************************
         OUT endpoint interrupt
              bits
        */
        alias OEPINT = BitField!(31, 16, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS all endpoints interrupt mask register
          (OTG_FS_DAINTMSK)
    */
    final abstract class OTG_FS_DAINTMSK : Register!(0x1c)
    {
        /*********************************************************************
         IN EP interrupt mask bits
        */
        alias IEPM = BitField!(15, 0, Mutability.rw);

        /*********************************************************************
         OUT endpoint interrupt
              bits
        */
        alias OEPINT = BitField!(31, 16, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS device VBUS discharge time
          register
    */
    final abstract class OTG_FS_DVBUSDIS : Register!(0x28)
    {
        /*********************************************************************
         Device VBUS discharge time
        */
        alias VBUSDT = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS device VBUS pulsing time
          register
    */
    final abstract class OTG_FS_DVBUSPULSE : Register!(0x2c)
    {
        /*********************************************************************
         Device VBUS pulsing time
        */
        alias DVBUSP = BitField!(11, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS device IN endpoint FIFO empty
          interrupt mask register
    */
    final abstract class OTG_FS_DIEPEMPMSK : Register!(0x34)
    {
        /*********************************************************************
         IN EP Tx FIFO empty interrupt mask
              bits
        */
        alias INEPTXFEM = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS device control IN endpoint 0 control
          register (OTG_FS_DIEPCTL0)
    */
    final abstract class OTG_FS_DIEPCTL0 : Register!(0x100)
    {
        /*********************************************************************
         Maximum packet size
        */
        alias MPSIZ = BitField!(1, 0, Mutability.rw);

        /*********************************************************************
         USB active endpoint
        */
        alias USBAEP = Bit!(15, Mutability.r);

        /*********************************************************************
         NAK status
        */
        alias NAKSTS = Bit!(17, Mutability.r);

        /*********************************************************************
         Endpoint type
        */
        alias EPTYP = BitField!(19, 18, Mutability.r);

        /*********************************************************************
         STALL handshake
        */
        alias STALL = Bit!(21, Mutability.rw);

        /*********************************************************************
         TxFIFO number
        */
        alias TXFNUM = BitField!(25, 22, Mutability.rw);

        /*********************************************************************
         Clear NAK
        */
        alias CNAK = Bit!(26, Mutability.w);

        /*********************************************************************
         Set NAK
        */
        alias SNAK = Bit!(27, Mutability.w);

        /*********************************************************************
         Endpoint disable
        */
        alias EPDIS = Bit!(30, Mutability.r);

        /*********************************************************************
         Endpoint enable
        */
        alias EPENA = Bit!(31, Mutability.r);
    }

    /*************************************************************************
     OTG device endpoint-1 control
          register
    */
    final abstract class OTG_FS_DIEPCTL1 : Register!(0x120)
    {
        /*********************************************************************
         EPENA
        */
        alias EPENA = Bit!(31, Mutability.rw);

        /*********************************************************************
         EPDIS
        */
        alias EPDIS = Bit!(30, Mutability.rw);

        /*********************************************************************
         SODDFRM/SD1PID
        */
        alias SODDFRM_SD1PID = Bit!(29, Mutability.w);

        /*********************************************************************
         SD0PID/SEVNFRM
        */
        alias SD0PID_SEVNFRM = Bit!(28, Mutability.w);

        /*********************************************************************
         SNAK
        */
        alias SNAK = Bit!(27, Mutability.w);

        /*********************************************************************
         CNAK
        */
        alias CNAK = Bit!(26, Mutability.w);

        /*********************************************************************
         TXFNUM
        */
        alias TXFNUM = BitField!(25, 22, Mutability.rw);

        /*********************************************************************
         Stall
        */
        alias Stall = Bit!(21, Mutability.rw);

        /*********************************************************************
         EPTYP
        */
        alias EPTYP = BitField!(19, 18, Mutability.rw);

        /*********************************************************************
         NAKSTS
        */
        alias NAKSTS = Bit!(17, Mutability.r);

        /*********************************************************************
         EONUM/DPID
        */
        alias EONUM_DPID = Bit!(16, Mutability.r);

        /*********************************************************************
         USBAEP
        */
        alias USBAEP = Bit!(15, Mutability.rw);

        /*********************************************************************
         MPSIZ
        */
        alias MPSIZ = BitField!(10, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG device endpoint-2 control
          register
    */
    final abstract class OTG_FS_DIEPCTL2 : Register!(0x140)
    {
        /*********************************************************************
         EPENA
        */
        alias EPENA = Bit!(31, Mutability.rw);

        /*********************************************************************
         EPDIS
        */
        alias EPDIS = Bit!(30, Mutability.rw);

        /*********************************************************************
         SODDFRM
        */
        alias SODDFRM = Bit!(29, Mutability.w);

        /*********************************************************************
         SD0PID/SEVNFRM
        */
        alias SD0PID_SEVNFRM = Bit!(28, Mutability.w);

        /*********************************************************************
         SNAK
        */
        alias SNAK = Bit!(27, Mutability.w);

        /*********************************************************************
         CNAK
        */
        alias CNAK = Bit!(26, Mutability.w);

        /*********************************************************************
         TXFNUM
        */
        alias TXFNUM = BitField!(25, 22, Mutability.rw);

        /*********************************************************************
         Stall
        */
        alias Stall = Bit!(21, Mutability.rw);

        /*********************************************************************
         EPTYP
        */
        alias EPTYP = BitField!(19, 18, Mutability.rw);

        /*********************************************************************
         NAKSTS
        */
        alias NAKSTS = Bit!(17, Mutability.r);

        /*********************************************************************
         EONUM/DPID
        */
        alias EONUM_DPID = Bit!(16, Mutability.r);

        /*********************************************************************
         USBAEP
        */
        alias USBAEP = Bit!(15, Mutability.rw);

        /*********************************************************************
         MPSIZ
        */
        alias MPSIZ = BitField!(10, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG device endpoint-3 control
          register
    */
    final abstract class OTG_FS_DIEPCTL3 : Register!(0x160)
    {
        /*********************************************************************
         EPENA
        */
        alias EPENA = Bit!(31, Mutability.rw);

        /*********************************************************************
         EPDIS
        */
        alias EPDIS = Bit!(30, Mutability.rw);

        /*********************************************************************
         SODDFRM
        */
        alias SODDFRM = Bit!(29, Mutability.w);

        /*********************************************************************
         SD0PID/SEVNFRM
        */
        alias SD0PID_SEVNFRM = Bit!(28, Mutability.w);

        /*********************************************************************
         SNAK
        */
        alias SNAK = Bit!(27, Mutability.w);

        /*********************************************************************
         CNAK
        */
        alias CNAK = Bit!(26, Mutability.w);

        /*********************************************************************
         TXFNUM
        */
        alias TXFNUM = BitField!(25, 22, Mutability.rw);

        /*********************************************************************
         Stall
        */
        alias Stall = Bit!(21, Mutability.rw);

        /*********************************************************************
         EPTYP
        */
        alias EPTYP = BitField!(19, 18, Mutability.rw);

        /*********************************************************************
         NAKSTS
        */
        alias NAKSTS = Bit!(17, Mutability.r);

        /*********************************************************************
         EONUM/DPID
        */
        alias EONUM_DPID = Bit!(16, Mutability.r);

        /*********************************************************************
         USBAEP
        */
        alias USBAEP = Bit!(15, Mutability.rw);

        /*********************************************************************
         MPSIZ
        */
        alias MPSIZ = BitField!(10, 0, Mutability.rw);
    }

    /*************************************************************************
     device endpoint-0 control
          register
    */
    final abstract class OTG_FS_DOEPCTL0 : Register!(0x300)
    {
        /*********************************************************************
         EPENA
        */
        alias EPENA = Bit!(31, Mutability.w);

        /*********************************************************************
         EPDIS
        */
        alias EPDIS = Bit!(30, Mutability.r);

        /*********************************************************************
         SNAK
        */
        alias SNAK = Bit!(27, Mutability.w);

        /*********************************************************************
         CNAK
        */
        alias CNAK = Bit!(26, Mutability.w);

        /*********************************************************************
         Stall
        */
        alias Stall = Bit!(21, Mutability.rw);

        /*********************************************************************
         SNPM
        */
        alias SNPM = Bit!(20, Mutability.rw);

        /*********************************************************************
         EPTYP
        */
        alias EPTYP = BitField!(19, 18, Mutability.r);

        /*********************************************************************
         NAKSTS
        */
        alias NAKSTS = Bit!(17, Mutability.r);

        /*********************************************************************
         USBAEP
        */
        alias USBAEP = Bit!(15, Mutability.r);

        /*********************************************************************
         MPSIZ
        */
        alias MPSIZ = BitField!(1, 0, Mutability.r);
    }

    /*************************************************************************
     device endpoint-1 control
          register
    */
    final abstract class OTG_FS_DOEPCTL1 : Register!(0x320)
    {
        /*********************************************************************
         EPENA
        */
        alias EPENA = Bit!(31, Mutability.rw);

        /*********************************************************************
         EPDIS
        */
        alias EPDIS = Bit!(30, Mutability.rw);

        /*********************************************************************
         SODDFRM
        */
        alias SODDFRM = Bit!(29, Mutability.w);

        /*********************************************************************
         SD0PID/SEVNFRM
        */
        alias SD0PID_SEVNFRM = Bit!(28, Mutability.w);

        /*********************************************************************
         SNAK
        */
        alias SNAK = Bit!(27, Mutability.w);

        /*********************************************************************
         CNAK
        */
        alias CNAK = Bit!(26, Mutability.w);

        /*********************************************************************
         Stall
        */
        alias Stall = Bit!(21, Mutability.rw);

        /*********************************************************************
         SNPM
        */
        alias SNPM = Bit!(20, Mutability.rw);

        /*********************************************************************
         EPTYP
        */
        alias EPTYP = BitField!(19, 18, Mutability.rw);

        /*********************************************************************
         NAKSTS
        */
        alias NAKSTS = Bit!(17, Mutability.r);

        /*********************************************************************
         EONUM/DPID
        */
        alias EONUM_DPID = Bit!(16, Mutability.r);

        /*********************************************************************
         USBAEP
        */
        alias USBAEP = Bit!(15, Mutability.rw);

        /*********************************************************************
         MPSIZ
        */
        alias MPSIZ = BitField!(10, 0, Mutability.rw);
    }

    /*************************************************************************
     device endpoint-2 control
          register
    */
    final abstract class OTG_FS_DOEPCTL2 : Register!(0x340)
    {
        /*********************************************************************
         EPENA
        */
        alias EPENA = Bit!(31, Mutability.rw);

        /*********************************************************************
         EPDIS
        */
        alias EPDIS = Bit!(30, Mutability.rw);

        /*********************************************************************
         SODDFRM
        */
        alias SODDFRM = Bit!(29, Mutability.w);

        /*********************************************************************
         SD0PID/SEVNFRM
        */
        alias SD0PID_SEVNFRM = Bit!(28, Mutability.w);

        /*********************************************************************
         SNAK
        */
        alias SNAK = Bit!(27, Mutability.w);

        /*********************************************************************
         CNAK
        */
        alias CNAK = Bit!(26, Mutability.w);

        /*********************************************************************
         Stall
        */
        alias Stall = Bit!(21, Mutability.rw);

        /*********************************************************************
         SNPM
        */
        alias SNPM = Bit!(20, Mutability.rw);

        /*********************************************************************
         EPTYP
        */
        alias EPTYP = BitField!(19, 18, Mutability.rw);

        /*********************************************************************
         NAKSTS
        */
        alias NAKSTS = Bit!(17, Mutability.r);

        /*********************************************************************
         EONUM/DPID
        */
        alias EONUM_DPID = Bit!(16, Mutability.r);

        /*********************************************************************
         USBAEP
        */
        alias USBAEP = Bit!(15, Mutability.rw);

        /*********************************************************************
         MPSIZ
        */
        alias MPSIZ = BitField!(10, 0, Mutability.rw);
    }

    /*************************************************************************
     device endpoint-3 control
          register
    */
    final abstract class OTG_FS_DOEPCTL3 : Register!(0x360)
    {
        /*********************************************************************
         EPENA
        */
        alias EPENA = Bit!(31, Mutability.rw);

        /*********************************************************************
         EPDIS
        */
        alias EPDIS = Bit!(30, Mutability.rw);

        /*********************************************************************
         SODDFRM
        */
        alias SODDFRM = Bit!(29, Mutability.w);

        /*********************************************************************
         SD0PID/SEVNFRM
        */
        alias SD0PID_SEVNFRM = Bit!(28, Mutability.w);

        /*********************************************************************
         SNAK
        */
        alias SNAK = Bit!(27, Mutability.w);

        /*********************************************************************
         CNAK
        */
        alias CNAK = Bit!(26, Mutability.w);

        /*********************************************************************
         Stall
        */
        alias Stall = Bit!(21, Mutability.rw);

        /*********************************************************************
         SNPM
        */
        alias SNPM = Bit!(20, Mutability.rw);

        /*********************************************************************
         EPTYP
        */
        alias EPTYP = BitField!(19, 18, Mutability.rw);

        /*********************************************************************
         NAKSTS
        */
        alias NAKSTS = Bit!(17, Mutability.r);

        /*********************************************************************
         EONUM/DPID
        */
        alias EONUM_DPID = Bit!(16, Mutability.r);

        /*********************************************************************
         USBAEP
        */
        alias USBAEP = Bit!(15, Mutability.rw);

        /*********************************************************************
         MPSIZ
        */
        alias MPSIZ = BitField!(10, 0, Mutability.rw);
    }

    /*************************************************************************
     device endpoint-x interrupt
          register
    */
    final abstract class OTG_FS_DIEPINT0 : Register!(0x108)
    {
        /*********************************************************************
         TXFE
        */
        alias TXFE = Bit!(7, Mutability.r);

        /*********************************************************************
         INEPNE
        */
        alias INEPNE = Bit!(6, Mutability.rw);

        /*********************************************************************
         ITTXFE
        */
        alias ITTXFE = Bit!(4, Mutability.rw);

        /*********************************************************************
         TOC
        */
        alias TOC = Bit!(3, Mutability.rw);

        /*********************************************************************
         EPDISD
        */
        alias EPDISD = Bit!(1, Mutability.rw);

        /*********************************************************************
         XFRC
        */
        alias XFRC = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     device endpoint-1 interrupt
          register
    */
    final abstract class OTG_FS_DIEPINT1 : Register!(0x128)
    {
        /*********************************************************************
         TXFE
        */
        alias TXFE = Bit!(7, Mutability.r);

        /*********************************************************************
         INEPNE
        */
        alias INEPNE = Bit!(6, Mutability.rw);

        /*********************************************************************
         ITTXFE
        */
        alias ITTXFE = Bit!(4, Mutability.rw);

        /*********************************************************************
         TOC
        */
        alias TOC = Bit!(3, Mutability.rw);

        /*********************************************************************
         EPDISD
        */
        alias EPDISD = Bit!(1, Mutability.rw);

        /*********************************************************************
         XFRC
        */
        alias XFRC = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     device endpoint-2 interrupt
          register
    */
    final abstract class OTG_FS_DIEPINT2 : Register!(0x148)
    {
        /*********************************************************************
         TXFE
        */
        alias TXFE = Bit!(7, Mutability.r);

        /*********************************************************************
         INEPNE
        */
        alias INEPNE = Bit!(6, Mutability.rw);

        /*********************************************************************
         ITTXFE
        */
        alias ITTXFE = Bit!(4, Mutability.rw);

        /*********************************************************************
         TOC
        */
        alias TOC = Bit!(3, Mutability.rw);

        /*********************************************************************
         EPDISD
        */
        alias EPDISD = Bit!(1, Mutability.rw);

        /*********************************************************************
         XFRC
        */
        alias XFRC = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     device endpoint-3 interrupt
          register
    */
    final abstract class OTG_FS_DIEPINT3 : Register!(0x168)
    {
        /*********************************************************************
         TXFE
        */
        alias TXFE = Bit!(7, Mutability.r);

        /*********************************************************************
         INEPNE
        */
        alias INEPNE = Bit!(6, Mutability.rw);

        /*********************************************************************
         ITTXFE
        */
        alias ITTXFE = Bit!(4, Mutability.rw);

        /*********************************************************************
         TOC
        */
        alias TOC = Bit!(3, Mutability.rw);

        /*********************************************************************
         EPDISD
        */
        alias EPDISD = Bit!(1, Mutability.rw);

        /*********************************************************************
         XFRC
        */
        alias XFRC = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     device endpoint-0 interrupt
          register
    */
    final abstract class OTG_FS_DOEPINT0 : Register!(0x308)
    {
        /*********************************************************************
         B2BSTUP
        */
        alias B2BSTUP = Bit!(6, Mutability.rw);

        /*********************************************************************
         OTEPDIS
        */
        alias OTEPDIS = Bit!(4, Mutability.rw);

        /*********************************************************************
         STUP
        */
        alias STUP = Bit!(3, Mutability.rw);

        /*********************************************************************
         EPDISD
        */
        alias EPDISD = Bit!(1, Mutability.rw);

        /*********************************************************************
         XFRC
        */
        alias XFRC = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     device endpoint-1 interrupt
          register
    */
    final abstract class OTG_FS_DOEPINT1 : Register!(0x328)
    {
        /*********************************************************************
         B2BSTUP
        */
        alias B2BSTUP = Bit!(6, Mutability.rw);

        /*********************************************************************
         OTEPDIS
        */
        alias OTEPDIS = Bit!(4, Mutability.rw);

        /*********************************************************************
         STUP
        */
        alias STUP = Bit!(3, Mutability.rw);

        /*********************************************************************
         EPDISD
        */
        alias EPDISD = Bit!(1, Mutability.rw);

        /*********************************************************************
         XFRC
        */
        alias XFRC = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     device endpoint-2 interrupt
          register
    */
    final abstract class OTG_FS_DOEPINT2 : Register!(0x348)
    {
        /*********************************************************************
         B2BSTUP
        */
        alias B2BSTUP = Bit!(6, Mutability.rw);

        /*********************************************************************
         OTEPDIS
        */
        alias OTEPDIS = Bit!(4, Mutability.rw);

        /*********************************************************************
         STUP
        */
        alias STUP = Bit!(3, Mutability.rw);

        /*********************************************************************
         EPDISD
        */
        alias EPDISD = Bit!(1, Mutability.rw);

        /*********************************************************************
         XFRC
        */
        alias XFRC = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     device endpoint-3 interrupt
          register
    */
    final abstract class OTG_FS_DOEPINT3 : Register!(0x368)
    {
        /*********************************************************************
         B2BSTUP
        */
        alias B2BSTUP = Bit!(6, Mutability.rw);

        /*********************************************************************
         OTEPDIS
        */
        alias OTEPDIS = Bit!(4, Mutability.rw);

        /*********************************************************************
         STUP
        */
        alias STUP = Bit!(3, Mutability.rw);

        /*********************************************************************
         EPDISD
        */
        alias EPDISD = Bit!(1, Mutability.rw);

        /*********************************************************************
         XFRC
        */
        alias XFRC = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     device endpoint-0 transfer size
          register
    */
    final abstract class OTG_FS_DIEPTSIZ0 : Register!(0x110)
    {
        /*********************************************************************
         Packet count
        */
        alias PKTCNT = BitField!(20, 19, Mutability.rw);

        /*********************************************************************
         Transfer size
        */
        alias XFRSIZ = BitField!(6, 0, Mutability.rw);
    }

    /*************************************************************************
     device OUT endpoint-0 transfer size
          register
    */
    final abstract class OTG_FS_DOEPTSIZ0 : Register!(0x310)
    {
        /*********************************************************************
         SETUP packet count
        */
        alias STUPCNT = BitField!(30, 29, Mutability.rw);

        /*********************************************************************
         Packet count
        */
        alias PKTCNT = Bit!(19, Mutability.rw);

        /*********************************************************************
         Transfer size
        */
        alias XFRSIZ = BitField!(6, 0, Mutability.rw);
    }

    /*************************************************************************
     device endpoint-1 transfer size
          register
    */
    final abstract class OTG_FS_DIEPTSIZ1 : Register!(0x130)
    {
        /*********************************************************************
         Multi count
        */
        alias MCNT = BitField!(30, 29, Mutability.rw);

        /*********************************************************************
         Packet count
        */
        alias PKTCNT = BitField!(28, 19, Mutability.rw);

        /*********************************************************************
         Transfer size
        */
        alias XFRSIZ = BitField!(18, 0, Mutability.rw);
    }

    /*************************************************************************
     device endpoint-2 transfer size
          register
    */
    final abstract class OTG_FS_DIEPTSIZ2 : Register!(0x150)
    {
        /*********************************************************************
         Multi count
        */
        alias MCNT = BitField!(30, 29, Mutability.rw);

        /*********************************************************************
         Packet count
        */
        alias PKTCNT = BitField!(28, 19, Mutability.rw);

        /*********************************************************************
         Transfer size
        */
        alias XFRSIZ = BitField!(18, 0, Mutability.rw);
    }

    /*************************************************************************
     device endpoint-3 transfer size
          register
    */
    final abstract class OTG_FS_DIEPTSIZ3 : Register!(0x170)
    {
        /*********************************************************************
         Multi count
        */
        alias MCNT = BitField!(30, 29, Mutability.rw);

        /*********************************************************************
         Packet count
        */
        alias PKTCNT = BitField!(28, 19, Mutability.rw);

        /*********************************************************************
         Transfer size
        */
        alias XFRSIZ = BitField!(18, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS device IN endpoint transmit FIFO
          status register
    */
    final abstract class OTG_FS_DTXFSTS0 : Register!(0x118)
    {
        /*********************************************************************
         IN endpoint TxFIFO space
              available
        */
        alias INEPTFSAV = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS device IN endpoint transmit FIFO
          status register
    */
    final abstract class OTG_FS_DTXFSTS1 : Register!(0x138)
    {
        /*********************************************************************
         IN endpoint TxFIFO space
              available
        */
        alias INEPTFSAV = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS device IN endpoint transmit FIFO
          status register
    */
    final abstract class OTG_FS_DTXFSTS2 : Register!(0x158)
    {
        /*********************************************************************
         IN endpoint TxFIFO space
              available
        */
        alias INEPTFSAV = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS device IN endpoint transmit FIFO
          status register
    */
    final abstract class OTG_FS_DTXFSTS3 : Register!(0x178)
    {
        /*********************************************************************
         IN endpoint TxFIFO space
              available
        */
        alias INEPTFSAV = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     device OUT endpoint-1 transfer size
          register
    */
    final abstract class OTG_FS_DOEPTSIZ1 : Register!(0x330)
    {
        /*********************************************************************
         Received data PID/SETUP packet
              count
        */
        alias RXDPID_STUPCNT = BitField!(30, 29, Mutability.rw);

        /*********************************************************************
         Packet count
        */
        alias PKTCNT = BitField!(28, 19, Mutability.rw);

        /*********************************************************************
         Transfer size
        */
        alias XFRSIZ = BitField!(18, 0, Mutability.rw);
    }

    /*************************************************************************
     device OUT endpoint-2 transfer size
          register
    */
    final abstract class OTG_FS_DOEPTSIZ2 : Register!(0x350)
    {
        /*********************************************************************
         Received data PID/SETUP packet
              count
        */
        alias RXDPID_STUPCNT = BitField!(30, 29, Mutability.rw);

        /*********************************************************************
         Packet count
        */
        alias PKTCNT = BitField!(28, 19, Mutability.rw);

        /*********************************************************************
         Transfer size
        */
        alias XFRSIZ = BitField!(18, 0, Mutability.rw);
    }

    /*************************************************************************
     device OUT endpoint-3 transfer size
          register
    */
    final abstract class OTG_FS_DOEPTSIZ3 : Register!(0x370)
    {
        /*********************************************************************
         Received data PID/SETUP packet
              count
        */
        alias RXDPID_STUPCNT = BitField!(30, 29, Mutability.rw);

        /*********************************************************************
         Packet count
        */
        alias PKTCNT = BitField!(28, 19, Mutability.rw);

        /*********************************************************************
         Transfer size
        */
        alias XFRSIZ = BitField!(18, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG device endpoint-4 control
          register
    */
    final abstract class OTG_FS_DIEPCTL4 : Register!(0x180)
    {
        /*********************************************************************
         EPENA
        */
        alias EPENA = Bit!(31, Mutability.rw);

        /*********************************************************************
         EPDIS
        */
        alias EPDIS = Bit!(30, Mutability.rw);

        /*********************************************************************
         SODDFRM
        */
        alias SODDFRM = Bit!(29, Mutability.w);

        /*********************************************************************
         SD0PID/SEVNFRM
        */
        alias SD0PID_SEVNFRM = Bit!(28, Mutability.w);

        /*********************************************************************
         SNAK
        */
        alias SNAK = Bit!(27, Mutability.w);

        /*********************************************************************
         CNAK
        */
        alias CNAK = Bit!(26, Mutability.w);

        /*********************************************************************
         TXFNUM
        */
        alias TXFNUM = BitField!(25, 22, Mutability.rw);

        /*********************************************************************
         Stall
        */
        alias Stall = Bit!(21, Mutability.rw);

        /*********************************************************************
         EPTYP
        */
        alias EPTYP = BitField!(19, 18, Mutability.rw);

        /*********************************************************************
         NAKSTS
        */
        alias NAKSTS = Bit!(17, Mutability.r);

        /*********************************************************************
         EONUM/DPID
        */
        alias EONUM_DPID = Bit!(16, Mutability.r);

        /*********************************************************************
         USBAEP
        */
        alias USBAEP = Bit!(15, Mutability.rw);

        /*********************************************************************
         MPSIZ
        */
        alias MPSIZ = BitField!(10, 0, Mutability.rw);
    }

    /*************************************************************************
     device endpoint-4 interrupt
          register
    */
    final abstract class OTG_FS_DIEPINT4 : Register!(0x188)
    {
        /*********************************************************************
         TXFE
        */
        alias TXFE = Bit!(7, Mutability.r);

        /*********************************************************************
         INEPNE
        */
        alias INEPNE = Bit!(6, Mutability.rw);

        /*********************************************************************
         ITTXFE
        */
        alias ITTXFE = Bit!(4, Mutability.rw);

        /*********************************************************************
         TOC
        */
        alias TOC = Bit!(3, Mutability.rw);

        /*********************************************************************
         EPDISD
        */
        alias EPDISD = Bit!(1, Mutability.rw);

        /*********************************************************************
         XFRC
        */
        alias XFRC = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     device endpoint-4 transfer size
          register
    */
    final abstract class OTG_FS_DIEPTSIZ4 : Register!(0x194)
    {
        /*********************************************************************
         Multi count
        */
        alias MCNT = BitField!(30, 29, Mutability.rw);

        /*********************************************************************
         Packet count
        */
        alias PKTCNT = BitField!(28, 19, Mutability.rw);

        /*********************************************************************
         Transfer size
        */
        alias XFRSIZ = BitField!(18, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS device IN endpoint transmit FIFO
          status register
    */
    final abstract class OTG_FS_DTXFSTS4 : Register!(0x19c)
    {
        /*********************************************************************
         IN endpoint TxFIFO space
              available
        */
        alias INEPTFSAV = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG device endpoint-5 control
          register
    */
    final abstract class OTG_FS_DIEPCTL5 : Register!(0x1a0)
    {
        /*********************************************************************
         EPENA
        */
        alias EPENA = Bit!(31, Mutability.rw);

        /*********************************************************************
         EPDIS
        */
        alias EPDIS = Bit!(30, Mutability.rw);

        /*********************************************************************
         SODDFRM
        */
        alias SODDFRM = Bit!(29, Mutability.w);

        /*********************************************************************
         SD0PID/SEVNFRM
        */
        alias SD0PID_SEVNFRM = Bit!(28, Mutability.w);

        /*********************************************************************
         SNAK
        */
        alias SNAK = Bit!(27, Mutability.w);

        /*********************************************************************
         CNAK
        */
        alias CNAK = Bit!(26, Mutability.w);

        /*********************************************************************
         TXFNUM
        */
        alias TXFNUM = BitField!(25, 22, Mutability.rw);

        /*********************************************************************
         Stall
        */
        alias Stall = Bit!(21, Mutability.rw);

        /*********************************************************************
         EPTYP
        */
        alias EPTYP = BitField!(19, 18, Mutability.rw);

        /*********************************************************************
         NAKSTS
        */
        alias NAKSTS = Bit!(17, Mutability.r);

        /*********************************************************************
         EONUM/DPID
        */
        alias EONUM_DPID = Bit!(16, Mutability.r);

        /*********************************************************************
         USBAEP
        */
        alias USBAEP = Bit!(15, Mutability.rw);

        /*********************************************************************
         MPSIZ
        */
        alias MPSIZ = BitField!(10, 0, Mutability.rw);
    }

    /*************************************************************************
     device endpoint-5 interrupt
          register
    */
    final abstract class OTG_FS_DIEPINT5 : Register!(0x1a8)
    {
        /*********************************************************************
         TXFE
        */
        alias TXFE = Bit!(7, Mutability.r);

        /*********************************************************************
         INEPNE
        */
        alias INEPNE = Bit!(6, Mutability.rw);

        /*********************************************************************
         ITTXFE
        */
        alias ITTXFE = Bit!(4, Mutability.rw);

        /*********************************************************************
         TOC
        */
        alias TOC = Bit!(3, Mutability.rw);

        /*********************************************************************
         EPDISD
        */
        alias EPDISD = Bit!(1, Mutability.rw);

        /*********************************************************************
         XFRC
        */
        alias XFRC = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     device endpoint-5 transfer size
          register
    */
    final abstract class OTG_FS_DIEPTSIZ55 : Register!(0x1b0)
    {
        /*********************************************************************
         Multi count
        */
        alias MCNT = BitField!(30, 29, Mutability.rw);

        /*********************************************************************
         Packet count
        */
        alias PKTCNT = BitField!(28, 19, Mutability.rw);

        /*********************************************************************
         Transfer size
        */
        alias XFRSIZ = BitField!(18, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS device IN endpoint transmit FIFO
          status register
    */
    final abstract class OTG_FS_DTXFSTS55 : Register!(0x1b8)
    {
        /*********************************************************************
         IN endpoint TxFIFO space
              available
        */
        alias INEPTFSAV = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     device endpoint-4 control
          register
    */
    final abstract class OTG_FS_DOEPCTL4 : Register!(0x378)
    {
        /*********************************************************************
         EPENA
        */
        alias EPENA = Bit!(31, Mutability.rw);

        /*********************************************************************
         EPDIS
        */
        alias EPDIS = Bit!(30, Mutability.rw);

        /*********************************************************************
         SODDFRM
        */
        alias SODDFRM = Bit!(29, Mutability.w);

        /*********************************************************************
         SD0PID/SEVNFRM
        */
        alias SD0PID_SEVNFRM = Bit!(28, Mutability.w);

        /*********************************************************************
         SNAK
        */
        alias SNAK = Bit!(27, Mutability.w);

        /*********************************************************************
         CNAK
        */
        alias CNAK = Bit!(26, Mutability.w);

        /*********************************************************************
         Stall
        */
        alias Stall = Bit!(21, Mutability.rw);

        /*********************************************************************
         SNPM
        */
        alias SNPM = Bit!(20, Mutability.rw);

        /*********************************************************************
         EPTYP
        */
        alias EPTYP = BitField!(19, 18, Mutability.rw);

        /*********************************************************************
         NAKSTS
        */
        alias NAKSTS = Bit!(17, Mutability.r);

        /*********************************************************************
         EONUM/DPID
        */
        alias EONUM_DPID = Bit!(16, Mutability.r);

        /*********************************************************************
         USBAEP
        */
        alias USBAEP = Bit!(15, Mutability.rw);

        /*********************************************************************
         MPSIZ
        */
        alias MPSIZ = BitField!(10, 0, Mutability.rw);
    }

    /*************************************************************************
     device endpoint-4 interrupt
          register
    */
    final abstract class OTG_FS_DOEPINT4 : Register!(0x380)
    {
        /*********************************************************************
         B2BSTUP
        */
        alias B2BSTUP = Bit!(6, Mutability.rw);

        /*********************************************************************
         OTEPDIS
        */
        alias OTEPDIS = Bit!(4, Mutability.rw);

        /*********************************************************************
         STUP
        */
        alias STUP = Bit!(3, Mutability.rw);

        /*********************************************************************
         EPDISD
        */
        alias EPDISD = Bit!(1, Mutability.rw);

        /*********************************************************************
         XFRC
        */
        alias XFRC = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     device OUT endpoint-4 transfer size
          register
    */
    final abstract class OTG_FS_DOEPTSIZ4 : Register!(0x388)
    {
        /*********************************************************************
         Received data PID/SETUP packet
              count
        */
        alias RXDPID_STUPCNT = BitField!(30, 29, Mutability.rw);

        /*********************************************************************
         Packet count
        */
        alias PKTCNT = BitField!(28, 19, Mutability.rw);

        /*********************************************************************
         Transfer size
        */
        alias XFRSIZ = BitField!(18, 0, Mutability.rw);
    }

    /*************************************************************************
     device endpoint-5 control
          register
    */
    final abstract class OTG_FS_DOEPCTL5 : Register!(0x390)
    {
        /*********************************************************************
         EPENA
        */
        alias EPENA = Bit!(31, Mutability.rw);

        /*********************************************************************
         EPDIS
        */
        alias EPDIS = Bit!(30, Mutability.rw);

        /*********************************************************************
         SODDFRM
        */
        alias SODDFRM = Bit!(29, Mutability.w);

        /*********************************************************************
         SD0PID/SEVNFRM
        */
        alias SD0PID_SEVNFRM = Bit!(28, Mutability.w);

        /*********************************************************************
         SNAK
        */
        alias SNAK = Bit!(27, Mutability.w);

        /*********************************************************************
         CNAK
        */
        alias CNAK = Bit!(26, Mutability.w);

        /*********************************************************************
         Stall
        */
        alias Stall = Bit!(21, Mutability.rw);

        /*********************************************************************
         SNPM
        */
        alias SNPM = Bit!(20, Mutability.rw);

        /*********************************************************************
         EPTYP
        */
        alias EPTYP = BitField!(19, 18, Mutability.rw);

        /*********************************************************************
         NAKSTS
        */
        alias NAKSTS = Bit!(17, Mutability.r);

        /*********************************************************************
         EONUM/DPID
        */
        alias EONUM_DPID = Bit!(16, Mutability.r);

        /*********************************************************************
         USBAEP
        */
        alias USBAEP = Bit!(15, Mutability.rw);

        /*********************************************************************
         MPSIZ
        */
        alias MPSIZ = BitField!(10, 0, Mutability.rw);
    }

    /*************************************************************************
     device endpoint-5 interrupt
          register
    */
    final abstract class OTG_FS_DOEPINT5 : Register!(0x398)
    {
        /*********************************************************************
         B2BSTUP
        */
        alias B2BSTUP = Bit!(6, Mutability.rw);

        /*********************************************************************
         OTEPDIS
        */
        alias OTEPDIS = Bit!(4, Mutability.rw);

        /*********************************************************************
         STUP
        */
        alias STUP = Bit!(3, Mutability.rw);

        /*********************************************************************
         EPDISD
        */
        alias EPDISD = Bit!(1, Mutability.rw);

        /*********************************************************************
         XFRC
        */
        alias XFRC = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     device OUT endpoint-5 transfer size
          register
    */
    final abstract class OTG_FS_DOEPTSIZ5 : Register!(0x3a0)
    {
        /*********************************************************************
         Received data PID/SETUP packet
              count
        */
        alias RXDPID_STUPCNT = BitField!(30, 29, Mutability.rw);

        /*********************************************************************
         Packet count
        */
        alias PKTCNT = BitField!(28, 19, Mutability.rw);

        /*********************************************************************
         Transfer size
        */
        alias XFRSIZ = BitField!(18, 0, Mutability.rw);
    }
}
