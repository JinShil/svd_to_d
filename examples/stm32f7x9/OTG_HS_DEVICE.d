module stm32f7x9.otg_hs_device;

import stm32f7x9.mmio;

/*****************************************************************************
 USB on the go high speed
*/
final abstract class OTG_HS_DEVICE : Peripheral!(0x40040800)
{
    /*************************************************************************
     OTG_HS device configuration
          register
    */
    final abstract class OTG_HS_DCFG : Register!(00)
    {
        /*********************************************************************
         Device speed
        */
        alias DSPD = BitField!(1, 0, Mutability.rw);

        /*********************************************************************
         Nonzero-length status OUT
              handshake
        */
        alias NZLSOHSK = Bit!(2, Mutability.rw);

        /*********************************************************************
         Device address
        */
        alias DAD = BitField!(10, 4, Mutability.rw);

        /*********************************************************************
         Periodic (micro)frame
              interval
        */
        alias PFIVL = BitField!(12, 11, Mutability.rw);

        /*********************************************************************
         Periodic scheduling
              interval
        */
        alias PERSCHIVL = BitField!(25, 24, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device control register
    */
    final abstract class OTG_HS_DCTL : Register!(0x4)
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
        alias SGINAK = Bit!(7, Mutability.w);

        /*********************************************************************
         Clear global IN NAK
        */
        alias CGINAK = Bit!(8, Mutability.w);

        /*********************************************************************
         Set global OUT NAK
        */
        alias SGONAK = Bit!(9, Mutability.w);

        /*********************************************************************
         Clear global OUT NAK
        */
        alias CGONAK = Bit!(10, Mutability.w);

        /*********************************************************************
         Power-on programming done
        */
        alias POPRGDNE = Bit!(11, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device status register
    */
    final abstract class OTG_HS_DSTS : Register!(0x8)
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
     OTG_HS device IN endpoint common interrupt
          mask register
    */
    final abstract class OTG_HS_DIEPMSK : Register!(0x10)
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
         Timeout condition mask (nonisochronous
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

        /*********************************************************************
         FIFO underrun mask
        */
        alias TXFURM = Bit!(8, Mutability.rw);

        /*********************************************************************
         BNA interrupt mask
        */
        alias BIM = Bit!(9, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device OUT endpoint common interrupt
          mask register
    */
    final abstract class OTG_HS_DOEPMSK : Register!(0x14)
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

        /*********************************************************************
         Back-to-back SETUP packets received
              mask
        */
        alias B2BSTUP = Bit!(6, Mutability.rw);

        /*********************************************************************
         OUT packet error mask
        */
        alias OPEM = Bit!(8, Mutability.rw);

        /*********************************************************************
         BNA interrupt mask
        */
        alias BOIM = Bit!(9, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device all endpoints interrupt
          register
    */
    final abstract class OTG_HS_DAINT : Register!(0x18)
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
     OTG_HS all endpoints interrupt mask
          register
    */
    final abstract class OTG_HS_DAINTMSK : Register!(0x1c)
    {
        /*********************************************************************
         IN EP interrupt mask bits
        */
        alias IEPM = BitField!(15, 0, Mutability.rw);

        /*********************************************************************
         OUT EP interrupt mask bits
        */
        alias OEPM = BitField!(31, 16, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device VBUS discharge time
          register
    */
    final abstract class OTG_HS_DVBUSDIS : Register!(0x28)
    {
        /*********************************************************************
         Device VBUS discharge time
        */
        alias VBUSDT = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device VBUS pulsing time
          register
    */
    final abstract class OTG_HS_DVBUSPULSE : Register!(0x2c)
    {
        /*********************************************************************
         Device VBUS pulsing time
        */
        alias DVBUSP = BitField!(11, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS Device threshold control
          register
    */
    final abstract class OTG_HS_DTHRCTL : Register!(0x30)
    {
        /*********************************************************************
         Nonisochronous IN endpoints threshold
              enable
        */
        alias NONISOTHREN = Bit!(0, Mutability.rw);

        /*********************************************************************
         ISO IN endpoint threshold
              enable
        */
        alias ISOTHREN = Bit!(1, Mutability.rw);

        /*********************************************************************
         Transmit threshold length
        */
        alias TXTHRLEN = BitField!(10, 2, Mutability.rw);

        /*********************************************************************
         Receive threshold enable
        */
        alias RXTHREN = Bit!(16, Mutability.rw);

        /*********************************************************************
         Receive threshold length
        */
        alias RXTHRLEN = BitField!(25, 17, Mutability.rw);

        /*********************************************************************
         Arbiter parking enable
        */
        alias ARPEN = Bit!(27, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device IN endpoint FIFO empty
          interrupt mask register
    */
    final abstract class OTG_HS_DIEPEMPMSK : Register!(0x34)
    {
        /*********************************************************************
         IN EP Tx FIFO empty interrupt mask
              bits
        */
        alias INEPTXFEM = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device each endpoint interrupt
          register
    */
    final abstract class OTG_HS_DEACHINT : Register!(0x38)
    {
        /*********************************************************************
         IN endpoint 1interrupt bit
        */
        alias IEP1INT = Bit!(1, Mutability.rw);

        /*********************************************************************
         OUT endpoint 1 interrupt
              bit
        */
        alias OEP1INT = Bit!(17, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device each endpoint interrupt
          register mask
    */
    final abstract class OTG_HS_DEACHINTMSK : Register!(0x3c)
    {
        /*********************************************************************
         IN Endpoint 1 interrupt mask
              bit
        */
        alias IEP1INTM = Bit!(1, Mutability.rw);

        /*********************************************************************
         OUT Endpoint 1 interrupt mask
              bit
        */
        alias OEP1INTM = Bit!(17, Mutability.rw);
    }

    /*************************************************************************
     OTG device endpoint-0 control
          register
    */
    final abstract class OTG_HS_DIEPCTL0 : Register!(0x100)
    {
        /*********************************************************************
         Maximum packet size
        */
        alias MPSIZ = BitField!(10, 0, Mutability.rw);

        /*********************************************************************
         USB active endpoint
        */
        alias USBAEP = Bit!(15, Mutability.rw);

        /*********************************************************************
         Even/odd frame
        */
        alias EONUM_DPID = Bit!(16, Mutability.r);

        /*********************************************************************
         NAK status
        */
        alias NAKSTS = Bit!(17, Mutability.r);

        /*********************************************************************
         Endpoint type
        */
        alias EPTYP = BitField!(19, 18, Mutability.rw);

        /*********************************************************************
         STALL handshake
        */
        alias Stall = Bit!(21, Mutability.rw);

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
         Set DATA0 PID
        */
        alias SD0PID_SEVNFRM = Bit!(28, Mutability.w);

        /*********************************************************************
         Set odd frame
        */
        alias SODDFRM = Bit!(29, Mutability.w);

        /*********************************************************************
         Endpoint disable
        */
        alias EPDIS = Bit!(30, Mutability.rw);

        /*********************************************************************
         Endpoint enable
        */
        alias EPENA = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     OTG device endpoint-1 control
          register
    */
    final abstract class OTG_HS_DIEPCTL1 : Register!(0x120)
    {
        /*********************************************************************
         Maximum packet size
        */
        alias MPSIZ = BitField!(10, 0, Mutability.rw);

        /*********************************************************************
         USB active endpoint
        */
        alias USBAEP = Bit!(15, Mutability.rw);

        /*********************************************************************
         Even/odd frame
        */
        alias EONUM_DPID = Bit!(16, Mutability.r);

        /*********************************************************************
         NAK status
        */
        alias NAKSTS = Bit!(17, Mutability.r);

        /*********************************************************************
         Endpoint type
        */
        alias EPTYP = BitField!(19, 18, Mutability.rw);

        /*********************************************************************
         STALL handshake
        */
        alias Stall = Bit!(21, Mutability.rw);

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
         Set DATA0 PID
        */
        alias SD0PID_SEVNFRM = Bit!(28, Mutability.w);

        /*********************************************************************
         Set odd frame
        */
        alias SODDFRM = Bit!(29, Mutability.w);

        /*********************************************************************
         Endpoint disable
        */
        alias EPDIS = Bit!(30, Mutability.rw);

        /*********************************************************************
         Endpoint enable
        */
        alias EPENA = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     OTG device endpoint-2 control
          register
    */
    final abstract class OTG_HS_DIEPCTL2 : Register!(0x140)
    {
        /*********************************************************************
         Maximum packet size
        */
        alias MPSIZ = BitField!(10, 0, Mutability.rw);

        /*********************************************************************
         USB active endpoint
        */
        alias USBAEP = Bit!(15, Mutability.rw);

        /*********************************************************************
         Even/odd frame
        */
        alias EONUM_DPID = Bit!(16, Mutability.r);

        /*********************************************************************
         NAK status
        */
        alias NAKSTS = Bit!(17, Mutability.r);

        /*********************************************************************
         Endpoint type
        */
        alias EPTYP = BitField!(19, 18, Mutability.rw);

        /*********************************************************************
         STALL handshake
        */
        alias Stall = Bit!(21, Mutability.rw);

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
         Set DATA0 PID
        */
        alias SD0PID_SEVNFRM = Bit!(28, Mutability.w);

        /*********************************************************************
         Set odd frame
        */
        alias SODDFRM = Bit!(29, Mutability.w);

        /*********************************************************************
         Endpoint disable
        */
        alias EPDIS = Bit!(30, Mutability.rw);

        /*********************************************************************
         Endpoint enable
        */
        alias EPENA = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     OTG device endpoint-3 control
          register
    */
    final abstract class OTG_HS_DIEPCTL3 : Register!(0x160)
    {
        /*********************************************************************
         Maximum packet size
        */
        alias MPSIZ = BitField!(10, 0, Mutability.rw);

        /*********************************************************************
         USB active endpoint
        */
        alias USBAEP = Bit!(15, Mutability.rw);

        /*********************************************************************
         Even/odd frame
        */
        alias EONUM_DPID = Bit!(16, Mutability.r);

        /*********************************************************************
         NAK status
        */
        alias NAKSTS = Bit!(17, Mutability.r);

        /*********************************************************************
         Endpoint type
        */
        alias EPTYP = BitField!(19, 18, Mutability.rw);

        /*********************************************************************
         STALL handshake
        */
        alias Stall = Bit!(21, Mutability.rw);

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
         Set DATA0 PID
        */
        alias SD0PID_SEVNFRM = Bit!(28, Mutability.w);

        /*********************************************************************
         Set odd frame
        */
        alias SODDFRM = Bit!(29, Mutability.w);

        /*********************************************************************
         Endpoint disable
        */
        alias EPDIS = Bit!(30, Mutability.rw);

        /*********************************************************************
         Endpoint enable
        */
        alias EPENA = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     OTG device endpoint-4 control
          register
    */
    final abstract class OTG_HS_DIEPCTL4 : Register!(0x180)
    {
        /*********************************************************************
         Maximum packet size
        */
        alias MPSIZ = BitField!(10, 0, Mutability.rw);

        /*********************************************************************
         USB active endpoint
        */
        alias USBAEP = Bit!(15, Mutability.rw);

        /*********************************************************************
         Even/odd frame
        */
        alias EONUM_DPID = Bit!(16, Mutability.r);

        /*********************************************************************
         NAK status
        */
        alias NAKSTS = Bit!(17, Mutability.r);

        /*********************************************************************
         Endpoint type
        */
        alias EPTYP = BitField!(19, 18, Mutability.rw);

        /*********************************************************************
         STALL handshake
        */
        alias Stall = Bit!(21, Mutability.rw);

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
         Set DATA0 PID
        */
        alias SD0PID_SEVNFRM = Bit!(28, Mutability.w);

        /*********************************************************************
         Set odd frame
        */
        alias SODDFRM = Bit!(29, Mutability.w);

        /*********************************************************************
         Endpoint disable
        */
        alias EPDIS = Bit!(30, Mutability.rw);

        /*********************************************************************
         Endpoint enable
        */
        alias EPENA = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     OTG device endpoint-5 control
          register
    */
    final abstract class OTG_HS_DIEPCTL5 : Register!(0x1a0)
    {
        /*********************************************************************
         Maximum packet size
        */
        alias MPSIZ = BitField!(10, 0, Mutability.rw);

        /*********************************************************************
         USB active endpoint
        */
        alias USBAEP = Bit!(15, Mutability.rw);

        /*********************************************************************
         Even/odd frame
        */
        alias EONUM_DPID = Bit!(16, Mutability.r);

        /*********************************************************************
         NAK status
        */
        alias NAKSTS = Bit!(17, Mutability.r);

        /*********************************************************************
         Endpoint type
        */
        alias EPTYP = BitField!(19, 18, Mutability.rw);

        /*********************************************************************
         STALL handshake
        */
        alias Stall = Bit!(21, Mutability.rw);

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
         Set DATA0 PID
        */
        alias SD0PID_SEVNFRM = Bit!(28, Mutability.w);

        /*********************************************************************
         Set odd frame
        */
        alias SODDFRM = Bit!(29, Mutability.w);

        /*********************************************************************
         Endpoint disable
        */
        alias EPDIS = Bit!(30, Mutability.rw);

        /*********************************************************************
         Endpoint enable
        */
        alias EPENA = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     OTG device endpoint-6 control
          register
    */
    final abstract class OTG_HS_DIEPCTL6 : Register!(0x1c0)
    {
        /*********************************************************************
         Maximum packet size
        */
        alias MPSIZ = BitField!(10, 0, Mutability.rw);

        /*********************************************************************
         USB active endpoint
        */
        alias USBAEP = Bit!(15, Mutability.rw);

        /*********************************************************************
         Even/odd frame
        */
        alias EONUM_DPID = Bit!(16, Mutability.r);

        /*********************************************************************
         NAK status
        */
        alias NAKSTS = Bit!(17, Mutability.r);

        /*********************************************************************
         Endpoint type
        */
        alias EPTYP = BitField!(19, 18, Mutability.rw);

        /*********************************************************************
         STALL handshake
        */
        alias Stall = Bit!(21, Mutability.rw);

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
         Set DATA0 PID
        */
        alias SD0PID_SEVNFRM = Bit!(28, Mutability.w);

        /*********************************************************************
         Set odd frame
        */
        alias SODDFRM = Bit!(29, Mutability.w);

        /*********************************************************************
         Endpoint disable
        */
        alias EPDIS = Bit!(30, Mutability.rw);

        /*********************************************************************
         Endpoint enable
        */
        alias EPENA = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     OTG device endpoint-7 control
          register
    */
    final abstract class OTG_HS_DIEPCTL7 : Register!(0x1e0)
    {
        /*********************************************************************
         Maximum packet size
        */
        alias MPSIZ = BitField!(10, 0, Mutability.rw);

        /*********************************************************************
         USB active endpoint
        */
        alias USBAEP = Bit!(15, Mutability.rw);

        /*********************************************************************
         Even/odd frame
        */
        alias EONUM_DPID = Bit!(16, Mutability.r);

        /*********************************************************************
         NAK status
        */
        alias NAKSTS = Bit!(17, Mutability.r);

        /*********************************************************************
         Endpoint type
        */
        alias EPTYP = BitField!(19, 18, Mutability.rw);

        /*********************************************************************
         STALL handshake
        */
        alias Stall = Bit!(21, Mutability.rw);

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
         Set DATA0 PID
        */
        alias SD0PID_SEVNFRM = Bit!(28, Mutability.w);

        /*********************************************************************
         Set odd frame
        */
        alias SODDFRM = Bit!(29, Mutability.w);

        /*********************************************************************
         Endpoint disable
        */
        alias EPDIS = Bit!(30, Mutability.rw);

        /*********************************************************************
         Endpoint enable
        */
        alias EPENA = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     OTG device endpoint-0 interrupt
          register
    */
    final abstract class OTG_HS_DIEPINT0 : Register!(0x108)
    {
        /*********************************************************************
         Transfer completed
              interrupt
        */
        alias XFRC = Bit!(0, Mutability.rw);

        /*********************************************************************
         Endpoint disabled
              interrupt
        */
        alias EPDISD = Bit!(1, Mutability.rw);

        /*********************************************************************
         Timeout condition
        */
        alias TOC = Bit!(3, Mutability.rw);

        /*********************************************************************
         IN token received when TxFIFO is
              empty
        */
        alias ITTXFE = Bit!(4, Mutability.rw);

        /*********************************************************************
         IN endpoint NAK effective
        */
        alias INEPNE = Bit!(6, Mutability.rw);

        /*********************************************************************
         Transmit FIFO empty
        */
        alias TXFE = Bit!(7, Mutability.r);

        /*********************************************************************
         Transmit Fifo Underrun
        */
        alias TXFIFOUDRN = Bit!(8, Mutability.rw);

        /*********************************************************************
         Buffer not available
              interrupt
        */
        alias BNA = Bit!(9, Mutability.rw);

        /*********************************************************************
         Packet dropped status
        */
        alias PKTDRPSTS = Bit!(11, Mutability.rw);

        /*********************************************************************
         Babble error interrupt
        */
        alias BERR = Bit!(12, Mutability.rw);

        /*********************************************************************
         NAK interrupt
        */
        alias NAK = Bit!(13, Mutability.rw);
    }

    /*************************************************************************
     OTG device endpoint-1 interrupt
          register
    */
    final abstract class OTG_HS_DIEPINT1 : Register!(0x128)
    {
        /*********************************************************************
         Transfer completed
              interrupt
        */
        alias XFRC = Bit!(0, Mutability.rw);

        /*********************************************************************
         Endpoint disabled
              interrupt
        */
        alias EPDISD = Bit!(1, Mutability.rw);

        /*********************************************************************
         Timeout condition
        */
        alias TOC = Bit!(3, Mutability.rw);

        /*********************************************************************
         IN token received when TxFIFO is
              empty
        */
        alias ITTXFE = Bit!(4, Mutability.rw);

        /*********************************************************************
         IN endpoint NAK effective
        */
        alias INEPNE = Bit!(6, Mutability.rw);

        /*********************************************************************
         Transmit FIFO empty
        */
        alias TXFE = Bit!(7, Mutability.r);

        /*********************************************************************
         Transmit Fifo Underrun
        */
        alias TXFIFOUDRN = Bit!(8, Mutability.rw);

        /*********************************************************************
         Buffer not available
              interrupt
        */
        alias BNA = Bit!(9, Mutability.rw);

        /*********************************************************************
         Packet dropped status
        */
        alias PKTDRPSTS = Bit!(11, Mutability.rw);

        /*********************************************************************
         Babble error interrupt
        */
        alias BERR = Bit!(12, Mutability.rw);

        /*********************************************************************
         NAK interrupt
        */
        alias NAK = Bit!(13, Mutability.rw);
    }

    /*************************************************************************
     OTG device endpoint-2 interrupt
          register
    */
    final abstract class OTG_HS_DIEPINT2 : Register!(0x148)
    {
        /*********************************************************************
         Transfer completed
              interrupt
        */
        alias XFRC = Bit!(0, Mutability.rw);

        /*********************************************************************
         Endpoint disabled
              interrupt
        */
        alias EPDISD = Bit!(1, Mutability.rw);

        /*********************************************************************
         Timeout condition
        */
        alias TOC = Bit!(3, Mutability.rw);

        /*********************************************************************
         IN token received when TxFIFO is
              empty
        */
        alias ITTXFE = Bit!(4, Mutability.rw);

        /*********************************************************************
         IN endpoint NAK effective
        */
        alias INEPNE = Bit!(6, Mutability.rw);

        /*********************************************************************
         Transmit FIFO empty
        */
        alias TXFE = Bit!(7, Mutability.r);

        /*********************************************************************
         Transmit Fifo Underrun
        */
        alias TXFIFOUDRN = Bit!(8, Mutability.rw);

        /*********************************************************************
         Buffer not available
              interrupt
        */
        alias BNA = Bit!(9, Mutability.rw);

        /*********************************************************************
         Packet dropped status
        */
        alias PKTDRPSTS = Bit!(11, Mutability.rw);

        /*********************************************************************
         Babble error interrupt
        */
        alias BERR = Bit!(12, Mutability.rw);

        /*********************************************************************
         NAK interrupt
        */
        alias NAK = Bit!(13, Mutability.rw);
    }

    /*************************************************************************
     OTG device endpoint-3 interrupt
          register
    */
    final abstract class OTG_HS_DIEPINT3 : Register!(0x168)
    {
        /*********************************************************************
         Transfer completed
              interrupt
        */
        alias XFRC = Bit!(0, Mutability.rw);

        /*********************************************************************
         Endpoint disabled
              interrupt
        */
        alias EPDISD = Bit!(1, Mutability.rw);

        /*********************************************************************
         Timeout condition
        */
        alias TOC = Bit!(3, Mutability.rw);

        /*********************************************************************
         IN token received when TxFIFO is
              empty
        */
        alias ITTXFE = Bit!(4, Mutability.rw);

        /*********************************************************************
         IN endpoint NAK effective
        */
        alias INEPNE = Bit!(6, Mutability.rw);

        /*********************************************************************
         Transmit FIFO empty
        */
        alias TXFE = Bit!(7, Mutability.r);

        /*********************************************************************
         Transmit Fifo Underrun
        */
        alias TXFIFOUDRN = Bit!(8, Mutability.rw);

        /*********************************************************************
         Buffer not available
              interrupt
        */
        alias BNA = Bit!(9, Mutability.rw);

        /*********************************************************************
         Packet dropped status
        */
        alias PKTDRPSTS = Bit!(11, Mutability.rw);

        /*********************************************************************
         Babble error interrupt
        */
        alias BERR = Bit!(12, Mutability.rw);

        /*********************************************************************
         NAK interrupt
        */
        alias NAK = Bit!(13, Mutability.rw);
    }

    /*************************************************************************
     OTG device endpoint-4 interrupt
          register
    */
    final abstract class OTG_HS_DIEPINT4 : Register!(0x188)
    {
        /*********************************************************************
         Transfer completed
              interrupt
        */
        alias XFRC = Bit!(0, Mutability.rw);

        /*********************************************************************
         Endpoint disabled
              interrupt
        */
        alias EPDISD = Bit!(1, Mutability.rw);

        /*********************************************************************
         Timeout condition
        */
        alias TOC = Bit!(3, Mutability.rw);

        /*********************************************************************
         IN token received when TxFIFO is
              empty
        */
        alias ITTXFE = Bit!(4, Mutability.rw);

        /*********************************************************************
         IN endpoint NAK effective
        */
        alias INEPNE = Bit!(6, Mutability.rw);

        /*********************************************************************
         Transmit FIFO empty
        */
        alias TXFE = Bit!(7, Mutability.r);

        /*********************************************************************
         Transmit Fifo Underrun
        */
        alias TXFIFOUDRN = Bit!(8, Mutability.rw);

        /*********************************************************************
         Buffer not available
              interrupt
        */
        alias BNA = Bit!(9, Mutability.rw);

        /*********************************************************************
         Packet dropped status
        */
        alias PKTDRPSTS = Bit!(11, Mutability.rw);

        /*********************************************************************
         Babble error interrupt
        */
        alias BERR = Bit!(12, Mutability.rw);

        /*********************************************************************
         NAK interrupt
        */
        alias NAK = Bit!(13, Mutability.rw);
    }

    /*************************************************************************
     OTG device endpoint-5 interrupt
          register
    */
    final abstract class OTG_HS_DIEPINT5 : Register!(0x1a8)
    {
        /*********************************************************************
         Transfer completed
              interrupt
        */
        alias XFRC = Bit!(0, Mutability.rw);

        /*********************************************************************
         Endpoint disabled
              interrupt
        */
        alias EPDISD = Bit!(1, Mutability.rw);

        /*********************************************************************
         Timeout condition
        */
        alias TOC = Bit!(3, Mutability.rw);

        /*********************************************************************
         IN token received when TxFIFO is
              empty
        */
        alias ITTXFE = Bit!(4, Mutability.rw);

        /*********************************************************************
         IN endpoint NAK effective
        */
        alias INEPNE = Bit!(6, Mutability.rw);

        /*********************************************************************
         Transmit FIFO empty
        */
        alias TXFE = Bit!(7, Mutability.r);

        /*********************************************************************
         Transmit Fifo Underrun
        */
        alias TXFIFOUDRN = Bit!(8, Mutability.rw);

        /*********************************************************************
         Buffer not available
              interrupt
        */
        alias BNA = Bit!(9, Mutability.rw);

        /*********************************************************************
         Packet dropped status
        */
        alias PKTDRPSTS = Bit!(11, Mutability.rw);

        /*********************************************************************
         Babble error interrupt
        */
        alias BERR = Bit!(12, Mutability.rw);

        /*********************************************************************
         NAK interrupt
        */
        alias NAK = Bit!(13, Mutability.rw);
    }

    /*************************************************************************
     OTG device endpoint-6 interrupt
          register
    */
    final abstract class OTG_HS_DIEPINT6 : Register!(0x1c8)
    {
        /*********************************************************************
         Transfer completed
              interrupt
        */
        alias XFRC = Bit!(0, Mutability.rw);

        /*********************************************************************
         Endpoint disabled
              interrupt
        */
        alias EPDISD = Bit!(1, Mutability.rw);

        /*********************************************************************
         Timeout condition
        */
        alias TOC = Bit!(3, Mutability.rw);

        /*********************************************************************
         IN token received when TxFIFO is
              empty
        */
        alias ITTXFE = Bit!(4, Mutability.rw);

        /*********************************************************************
         IN endpoint NAK effective
        */
        alias INEPNE = Bit!(6, Mutability.rw);

        /*********************************************************************
         Transmit FIFO empty
        */
        alias TXFE = Bit!(7, Mutability.r);

        /*********************************************************************
         Transmit Fifo Underrun
        */
        alias TXFIFOUDRN = Bit!(8, Mutability.rw);

        /*********************************************************************
         Buffer not available
              interrupt
        */
        alias BNA = Bit!(9, Mutability.rw);

        /*********************************************************************
         Packet dropped status
        */
        alias PKTDRPSTS = Bit!(11, Mutability.rw);

        /*********************************************************************
         Babble error interrupt
        */
        alias BERR = Bit!(12, Mutability.rw);

        /*********************************************************************
         NAK interrupt
        */
        alias NAK = Bit!(13, Mutability.rw);
    }

    /*************************************************************************
     OTG device endpoint-7 interrupt
          register
    */
    final abstract class OTG_HS_DIEPINT7 : Register!(0x1e8)
    {
        /*********************************************************************
         Transfer completed
              interrupt
        */
        alias XFRC = Bit!(0, Mutability.rw);

        /*********************************************************************
         Endpoint disabled
              interrupt
        */
        alias EPDISD = Bit!(1, Mutability.rw);

        /*********************************************************************
         Timeout condition
        */
        alias TOC = Bit!(3, Mutability.rw);

        /*********************************************************************
         IN token received when TxFIFO is
              empty
        */
        alias ITTXFE = Bit!(4, Mutability.rw);

        /*********************************************************************
         IN endpoint NAK effective
        */
        alias INEPNE = Bit!(6, Mutability.rw);

        /*********************************************************************
         Transmit FIFO empty
        */
        alias TXFE = Bit!(7, Mutability.r);

        /*********************************************************************
         Transmit Fifo Underrun
        */
        alias TXFIFOUDRN = Bit!(8, Mutability.rw);

        /*********************************************************************
         Buffer not available
              interrupt
        */
        alias BNA = Bit!(9, Mutability.rw);

        /*********************************************************************
         Packet dropped status
        */
        alias PKTDRPSTS = Bit!(11, Mutability.rw);

        /*********************************************************************
         Babble error interrupt
        */
        alias BERR = Bit!(12, Mutability.rw);

        /*********************************************************************
         NAK interrupt
        */
        alias NAK = Bit!(13, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device IN endpoint 0 transfer size
          register
    */
    final abstract class OTG_HS_DIEPTSIZ0 : Register!(0x110)
    {
        /*********************************************************************
         Transfer size
        */
        alias XFRSIZ = BitField!(6, 0, Mutability.rw);

        /*********************************************************************
         Packet count
        */
        alias PKTCNT = BitField!(20, 19, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device endpoint-1 DMA address
          register
    */
    final abstract class OTG_HS_DIEPDMA1 : Register!(0x114)
    {
        /*********************************************************************
         DMA address
        */
        alias DMAADDR = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device endpoint-2 DMA address
          register
    */
    final abstract class OTG_HS_DIEPDMA2 : Register!(0x134)
    {
        /*********************************************************************
         DMA address
        */
        alias DMAADDR = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device endpoint-3 DMA address
          register
    */
    final abstract class OTG_HS_DIEPDMA3 : Register!(0x154)
    {
        /*********************************************************************
         DMA address
        */
        alias DMAADDR = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device endpoint-4 DMA address
          register
    */
    final abstract class OTG_HS_DIEPDMA4 : Register!(0x174)
    {
        /*********************************************************************
         DMA address
        */
        alias DMAADDR = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device endpoint-5 DMA address
          register
    */
    final abstract class OTG_HS_DIEPDMA5 : Register!(0x194)
    {
        /*********************************************************************
         DMA address
        */
        alias DMAADDR = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device IN endpoint transmit FIFO
          status register
    */
    final abstract class OTG_HS_DTXFSTS0 : Register!(0x118)
    {
        /*********************************************************************
         IN endpoint TxFIFO space
              avail
        */
        alias INEPTFSAV = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device IN endpoint transmit FIFO
          status register
    */
    final abstract class OTG_HS_DTXFSTS1 : Register!(0x138)
    {
        /*********************************************************************
         IN endpoint TxFIFO space
              avail
        */
        alias INEPTFSAV = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device IN endpoint transmit FIFO
          status register
    */
    final abstract class OTG_HS_DTXFSTS2 : Register!(0x158)
    {
        /*********************************************************************
         IN endpoint TxFIFO space
              avail
        */
        alias INEPTFSAV = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device IN endpoint transmit FIFO
          status register
    */
    final abstract class OTG_HS_DTXFSTS3 : Register!(0x178)
    {
        /*********************************************************************
         IN endpoint TxFIFO space
              avail
        */
        alias INEPTFSAV = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device IN endpoint transmit FIFO
          status register
    */
    final abstract class OTG_HS_DTXFSTS4 : Register!(0x198)
    {
        /*********************************************************************
         IN endpoint TxFIFO space
              avail
        */
        alias INEPTFSAV = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device IN endpoint transmit FIFO
          status register
    */
    final abstract class OTG_HS_DTXFSTS5 : Register!(0x1b8)
    {
        /*********************************************************************
         IN endpoint TxFIFO space
              avail
        */
        alias INEPTFSAV = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device endpoint transfer size
          register
    */
    final abstract class OTG_HS_DIEPTSIZ1 : Register!(0x130)
    {
        /*********************************************************************
         Transfer size
        */
        alias XFRSIZ = BitField!(18, 0, Mutability.rw);

        /*********************************************************************
         Packet count
        */
        alias PKTCNT = BitField!(28, 19, Mutability.rw);

        /*********************************************************************
         Multi count
        */
        alias MCNT = BitField!(30, 29, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device endpoint transfer size
          register
    */
    final abstract class OTG_HS_DIEPTSIZ2 : Register!(0x150)
    {
        /*********************************************************************
         Transfer size
        */
        alias XFRSIZ = BitField!(18, 0, Mutability.rw);

        /*********************************************************************
         Packet count
        */
        alias PKTCNT = BitField!(28, 19, Mutability.rw);

        /*********************************************************************
         Multi count
        */
        alias MCNT = BitField!(30, 29, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device endpoint transfer size
          register
    */
    final abstract class OTG_HS_DIEPTSIZ3 : Register!(0x170)
    {
        /*********************************************************************
         Transfer size
        */
        alias XFRSIZ = BitField!(18, 0, Mutability.rw);

        /*********************************************************************
         Packet count
        */
        alias PKTCNT = BitField!(28, 19, Mutability.rw);

        /*********************************************************************
         Multi count
        */
        alias MCNT = BitField!(30, 29, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device endpoint transfer size
          register
    */
    final abstract class OTG_HS_DIEPTSIZ4 : Register!(0x190)
    {
        /*********************************************************************
         Transfer size
        */
        alias XFRSIZ = BitField!(18, 0, Mutability.rw);

        /*********************************************************************
         Packet count
        */
        alias PKTCNT = BitField!(28, 19, Mutability.rw);

        /*********************************************************************
         Multi count
        */
        alias MCNT = BitField!(30, 29, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device endpoint transfer size
          register
    */
    final abstract class OTG_HS_DIEPTSIZ5 : Register!(0x1b0)
    {
        /*********************************************************************
         Transfer size
        */
        alias XFRSIZ = BitField!(18, 0, Mutability.rw);

        /*********************************************************************
         Packet count
        */
        alias PKTCNT = BitField!(28, 19, Mutability.rw);

        /*********************************************************************
         Multi count
        */
        alias MCNT = BitField!(30, 29, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device control OUT endpoint 0 control
          register
    */
    final abstract class OTG_HS_DOEPCTL0 : Register!(0x300)
    {
        /*********************************************************************
         Maximum packet size
        */
        alias MPSIZ = BitField!(1, 0, Mutability.r);

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
         Snoop mode
        */
        alias SNPM = Bit!(20, Mutability.rw);

        /*********************************************************************
         STALL handshake
        */
        alias Stall = Bit!(21, Mutability.rw);

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
        alias EPENA = Bit!(31, Mutability.w);
    }

    /*************************************************************************
     OTG device endpoint-1 control
          register
    */
    final abstract class OTG_HS_DOEPCTL1 : Register!(0x320)
    {
        /*********************************************************************
         Maximum packet size
        */
        alias MPSIZ = BitField!(10, 0, Mutability.rw);

        /*********************************************************************
         USB active endpoint
        */
        alias USBAEP = Bit!(15, Mutability.rw);

        /*********************************************************************
         Even odd frame/Endpoint data
              PID
        */
        alias EONUM_DPID = Bit!(16, Mutability.r);

        /*********************************************************************
         NAK status
        */
        alias NAKSTS = Bit!(17, Mutability.r);

        /*********************************************************************
         Endpoint type
        */
        alias EPTYP = BitField!(19, 18, Mutability.rw);

        /*********************************************************************
         Snoop mode
        */
        alias SNPM = Bit!(20, Mutability.rw);

        /*********************************************************************
         STALL handshake
        */
        alias Stall = Bit!(21, Mutability.rw);

        /*********************************************************************
         Clear NAK
        */
        alias CNAK = Bit!(26, Mutability.w);

        /*********************************************************************
         Set NAK
        */
        alias SNAK = Bit!(27, Mutability.w);

        /*********************************************************************
         Set DATA0 PID/Set even
              frame
        */
        alias SD0PID_SEVNFRM = Bit!(28, Mutability.w);

        /*********************************************************************
         Set odd frame
        */
        alias SODDFRM = Bit!(29, Mutability.w);

        /*********************************************************************
         Endpoint disable
        */
        alias EPDIS = Bit!(30, Mutability.rw);

        /*********************************************************************
         Endpoint enable
        */
        alias EPENA = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     OTG device endpoint-2 control
          register
    */
    final abstract class OTG_HS_DOEPCTL2 : Register!(0x340)
    {
        /*********************************************************************
         Maximum packet size
        */
        alias MPSIZ = BitField!(10, 0, Mutability.rw);

        /*********************************************************************
         USB active endpoint
        */
        alias USBAEP = Bit!(15, Mutability.rw);

        /*********************************************************************
         Even odd frame/Endpoint data
              PID
        */
        alias EONUM_DPID = Bit!(16, Mutability.r);

        /*********************************************************************
         NAK status
        */
        alias NAKSTS = Bit!(17, Mutability.r);

        /*********************************************************************
         Endpoint type
        */
        alias EPTYP = BitField!(19, 18, Mutability.rw);

        /*********************************************************************
         Snoop mode
        */
        alias SNPM = Bit!(20, Mutability.rw);

        /*********************************************************************
         STALL handshake
        */
        alias Stall = Bit!(21, Mutability.rw);

        /*********************************************************************
         Clear NAK
        */
        alias CNAK = Bit!(26, Mutability.w);

        /*********************************************************************
         Set NAK
        */
        alias SNAK = Bit!(27, Mutability.w);

        /*********************************************************************
         Set DATA0 PID/Set even
              frame
        */
        alias SD0PID_SEVNFRM = Bit!(28, Mutability.w);

        /*********************************************************************
         Set odd frame
        */
        alias SODDFRM = Bit!(29, Mutability.w);

        /*********************************************************************
         Endpoint disable
        */
        alias EPDIS = Bit!(30, Mutability.rw);

        /*********************************************************************
         Endpoint enable
        */
        alias EPENA = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     OTG device endpoint-3 control
          register
    */
    final abstract class OTG_HS_DOEPCTL3 : Register!(0x360)
    {
        /*********************************************************************
         Maximum packet size
        */
        alias MPSIZ = BitField!(10, 0, Mutability.rw);

        /*********************************************************************
         USB active endpoint
        */
        alias USBAEP = Bit!(15, Mutability.rw);

        /*********************************************************************
         Even odd frame/Endpoint data
              PID
        */
        alias EONUM_DPID = Bit!(16, Mutability.r);

        /*********************************************************************
         NAK status
        */
        alias NAKSTS = Bit!(17, Mutability.r);

        /*********************************************************************
         Endpoint type
        */
        alias EPTYP = BitField!(19, 18, Mutability.rw);

        /*********************************************************************
         Snoop mode
        */
        alias SNPM = Bit!(20, Mutability.rw);

        /*********************************************************************
         STALL handshake
        */
        alias Stall = Bit!(21, Mutability.rw);

        /*********************************************************************
         Clear NAK
        */
        alias CNAK = Bit!(26, Mutability.w);

        /*********************************************************************
         Set NAK
        */
        alias SNAK = Bit!(27, Mutability.w);

        /*********************************************************************
         Set DATA0 PID/Set even
              frame
        */
        alias SD0PID_SEVNFRM = Bit!(28, Mutability.w);

        /*********************************************************************
         Set odd frame
        */
        alias SODDFRM = Bit!(29, Mutability.w);

        /*********************************************************************
         Endpoint disable
        */
        alias EPDIS = Bit!(30, Mutability.rw);

        /*********************************************************************
         Endpoint enable
        */
        alias EPENA = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device endpoint-0 interrupt
          register
    */
    final abstract class OTG_HS_DOEPINT0 : Register!(0x308)
    {
        /*********************************************************************
         Transfer completed
              interrupt
        */
        alias XFRC = Bit!(0, Mutability.rw);

        /*********************************************************************
         Endpoint disabled
              interrupt
        */
        alias EPDISD = Bit!(1, Mutability.rw);

        /*********************************************************************
         SETUP phase done
        */
        alias STUP = Bit!(3, Mutability.rw);

        /*********************************************************************
         OUT token received when endpoint
              disabled
        */
        alias OTEPDIS = Bit!(4, Mutability.rw);

        /*********************************************************************
         Back-to-back SETUP packets
              received
        */
        alias B2BSTUP = Bit!(6, Mutability.rw);

        /*********************************************************************
         NYET interrupt
        */
        alias NYET = Bit!(14, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device endpoint-1 interrupt
          register
    */
    final abstract class OTG_HS_DOEPINT1 : Register!(0x328)
    {
        /*********************************************************************
         Transfer completed
              interrupt
        */
        alias XFRC = Bit!(0, Mutability.rw);

        /*********************************************************************
         Endpoint disabled
              interrupt
        */
        alias EPDISD = Bit!(1, Mutability.rw);

        /*********************************************************************
         SETUP phase done
        */
        alias STUP = Bit!(3, Mutability.rw);

        /*********************************************************************
         OUT token received when endpoint
              disabled
        */
        alias OTEPDIS = Bit!(4, Mutability.rw);

        /*********************************************************************
         Back-to-back SETUP packets
              received
        */
        alias B2BSTUP = Bit!(6, Mutability.rw);

        /*********************************************************************
         NYET interrupt
        */
        alias NYET = Bit!(14, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device endpoint-2 interrupt
          register
    */
    final abstract class OTG_HS_DOEPINT2 : Register!(0x348)
    {
        /*********************************************************************
         Transfer completed
              interrupt
        */
        alias XFRC = Bit!(0, Mutability.rw);

        /*********************************************************************
         Endpoint disabled
              interrupt
        */
        alias EPDISD = Bit!(1, Mutability.rw);

        /*********************************************************************
         SETUP phase done
        */
        alias STUP = Bit!(3, Mutability.rw);

        /*********************************************************************
         OUT token received when endpoint
              disabled
        */
        alias OTEPDIS = Bit!(4, Mutability.rw);

        /*********************************************************************
         Back-to-back SETUP packets
              received
        */
        alias B2BSTUP = Bit!(6, Mutability.rw);

        /*********************************************************************
         NYET interrupt
        */
        alias NYET = Bit!(14, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device endpoint-3 interrupt
          register
    */
    final abstract class OTG_HS_DOEPINT3 : Register!(0x368)
    {
        /*********************************************************************
         Transfer completed
              interrupt
        */
        alias XFRC = Bit!(0, Mutability.rw);

        /*********************************************************************
         Endpoint disabled
              interrupt
        */
        alias EPDISD = Bit!(1, Mutability.rw);

        /*********************************************************************
         SETUP phase done
        */
        alias STUP = Bit!(3, Mutability.rw);

        /*********************************************************************
         OUT token received when endpoint
              disabled
        */
        alias OTEPDIS = Bit!(4, Mutability.rw);

        /*********************************************************************
         Back-to-back SETUP packets
              received
        */
        alias B2BSTUP = Bit!(6, Mutability.rw);

        /*********************************************************************
         NYET interrupt
        */
        alias NYET = Bit!(14, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device endpoint-4 interrupt
          register
    */
    final abstract class OTG_HS_DOEPINT4 : Register!(0x388)
    {
        /*********************************************************************
         Transfer completed
              interrupt
        */
        alias XFRC = Bit!(0, Mutability.rw);

        /*********************************************************************
         Endpoint disabled
              interrupt
        */
        alias EPDISD = Bit!(1, Mutability.rw);

        /*********************************************************************
         SETUP phase done
        */
        alias STUP = Bit!(3, Mutability.rw);

        /*********************************************************************
         OUT token received when endpoint
              disabled
        */
        alias OTEPDIS = Bit!(4, Mutability.rw);

        /*********************************************************************
         Back-to-back SETUP packets
              received
        */
        alias B2BSTUP = Bit!(6, Mutability.rw);

        /*********************************************************************
         NYET interrupt
        */
        alias NYET = Bit!(14, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device endpoint-5 interrupt
          register
    */
    final abstract class OTG_HS_DOEPINT5 : Register!(0x3a8)
    {
        /*********************************************************************
         Transfer completed
              interrupt
        */
        alias XFRC = Bit!(0, Mutability.rw);

        /*********************************************************************
         Endpoint disabled
              interrupt
        */
        alias EPDISD = Bit!(1, Mutability.rw);

        /*********************************************************************
         SETUP phase done
        */
        alias STUP = Bit!(3, Mutability.rw);

        /*********************************************************************
         OUT token received when endpoint
              disabled
        */
        alias OTEPDIS = Bit!(4, Mutability.rw);

        /*********************************************************************
         Back-to-back SETUP packets
              received
        */
        alias B2BSTUP = Bit!(6, Mutability.rw);

        /*********************************************************************
         NYET interrupt
        */
        alias NYET = Bit!(14, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device endpoint-6 interrupt
          register
    */
    final abstract class OTG_HS_DOEPINT6 : Register!(0x3c8)
    {
        /*********************************************************************
         Transfer completed
              interrupt
        */
        alias XFRC = Bit!(0, Mutability.rw);

        /*********************************************************************
         Endpoint disabled
              interrupt
        */
        alias EPDISD = Bit!(1, Mutability.rw);

        /*********************************************************************
         SETUP phase done
        */
        alias STUP = Bit!(3, Mutability.rw);

        /*********************************************************************
         OUT token received when endpoint
              disabled
        */
        alias OTEPDIS = Bit!(4, Mutability.rw);

        /*********************************************************************
         Back-to-back SETUP packets
              received
        */
        alias B2BSTUP = Bit!(6, Mutability.rw);

        /*********************************************************************
         NYET interrupt
        */
        alias NYET = Bit!(14, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device endpoint-7 interrupt
          register
    */
    final abstract class OTG_HS_DOEPINT7 : Register!(0x3e8)
    {
        /*********************************************************************
         Transfer completed
              interrupt
        */
        alias XFRC = Bit!(0, Mutability.rw);

        /*********************************************************************
         Endpoint disabled
              interrupt
        */
        alias EPDISD = Bit!(1, Mutability.rw);

        /*********************************************************************
         SETUP phase done
        */
        alias STUP = Bit!(3, Mutability.rw);

        /*********************************************************************
         OUT token received when endpoint
              disabled
        */
        alias OTEPDIS = Bit!(4, Mutability.rw);

        /*********************************************************************
         Back-to-back SETUP packets
              received
        */
        alias B2BSTUP = Bit!(6, Mutability.rw);

        /*********************************************************************
         NYET interrupt
        */
        alias NYET = Bit!(14, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device endpoint-0 transfer size
          register
    */
    final abstract class OTG_HS_DOEPTSIZ0 : Register!(0x310)
    {
        /*********************************************************************
         Transfer size
        */
        alias XFRSIZ = BitField!(6, 0, Mutability.rw);

        /*********************************************************************
         Packet count
        */
        alias PKTCNT = Bit!(19, Mutability.rw);

        /*********************************************************************
         SETUP packet count
        */
        alias STUPCNT = BitField!(30, 29, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device endpoint-1 transfer size
          register
    */
    final abstract class OTG_HS_DOEPTSIZ1 : Register!(0x330)
    {
        /*********************************************************************
         Transfer size
        */
        alias XFRSIZ = BitField!(18, 0, Mutability.rw);

        /*********************************************************************
         Packet count
        */
        alias PKTCNT = BitField!(28, 19, Mutability.rw);

        /*********************************************************************
         Received data PID/SETUP packet
              count
        */
        alias RXDPID_STUPCNT = BitField!(30, 29, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device endpoint-2 transfer size
          register
    */
    final abstract class OTG_HS_DOEPTSIZ2 : Register!(0x350)
    {
        /*********************************************************************
         Transfer size
        */
        alias XFRSIZ = BitField!(18, 0, Mutability.rw);

        /*********************************************************************
         Packet count
        */
        alias PKTCNT = BitField!(28, 19, Mutability.rw);

        /*********************************************************************
         Received data PID/SETUP packet
              count
        */
        alias RXDPID_STUPCNT = BitField!(30, 29, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device endpoint-3 transfer size
          register
    */
    final abstract class OTG_HS_DOEPTSIZ3 : Register!(0x370)
    {
        /*********************************************************************
         Transfer size
        */
        alias XFRSIZ = BitField!(18, 0, Mutability.rw);

        /*********************************************************************
         Packet count
        */
        alias PKTCNT = BitField!(28, 19, Mutability.rw);

        /*********************************************************************
         Received data PID/SETUP packet
              count
        */
        alias RXDPID_STUPCNT = BitField!(30, 29, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device endpoint-4 transfer size
          register
    */
    final abstract class OTG_HS_DOEPTSIZ4 : Register!(0x390)
    {
        /*********************************************************************
         Transfer size
        */
        alias XFRSIZ = BitField!(18, 0, Mutability.rw);

        /*********************************************************************
         Packet count
        */
        alias PKTCNT = BitField!(28, 19, Mutability.rw);

        /*********************************************************************
         Received data PID/SETUP packet
              count
        */
        alias RXDPID_STUPCNT = BitField!(30, 29, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device endpoint transfer size
          register
    */
    final abstract class OTG_HS_DIEPTSIZ6 : Register!(0x1a0)
    {
        /*********************************************************************
         Transfer size
        */
        alias XFRSIZ = BitField!(18, 0, Mutability.rw);

        /*********************************************************************
         Packet count
        */
        alias PKTCNT = BitField!(28, 19, Mutability.rw);

        /*********************************************************************
         Multi count
        */
        alias MCNT = BitField!(30, 29, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device IN endpoint transmit FIFO
          status register
    */
    final abstract class OTG_HS_DTXFSTS6 : Register!(0x1a4)
    {
        /*********************************************************************
         IN endpoint TxFIFO space
              avail
        */
        alias INEPTFSAV = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device endpoint transfer size
          register
    */
    final abstract class OTG_HS_DIEPTSIZ7 : Register!(0x1a8)
    {
        /*********************************************************************
         Transfer size
        */
        alias XFRSIZ = BitField!(18, 0, Mutability.rw);

        /*********************************************************************
         Packet count
        */
        alias PKTCNT = BitField!(28, 19, Mutability.rw);

        /*********************************************************************
         Multi count
        */
        alias MCNT = BitField!(30, 29, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device IN endpoint transmit FIFO
          status register
    */
    final abstract class OTG_HS_DTXFSTS7 : Register!(0x1ac)
    {
        /*********************************************************************
         IN endpoint TxFIFO space
              avail
        */
        alias INEPTFSAV = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG device endpoint-4 control
          register
    */
    final abstract class OTG_HS_DOEPCTL4 : Register!(0x380)
    {
        /*********************************************************************
         Maximum packet size
        */
        alias MPSIZ = BitField!(10, 0, Mutability.rw);

        /*********************************************************************
         USB active endpoint
        */
        alias USBAEP = Bit!(15, Mutability.rw);

        /*********************************************************************
         Even odd frame/Endpoint data
              PID
        */
        alias EONUM_DPID = Bit!(16, Mutability.r);

        /*********************************************************************
         NAK status
        */
        alias NAKSTS = Bit!(17, Mutability.r);

        /*********************************************************************
         Endpoint type
        */
        alias EPTYP = BitField!(19, 18, Mutability.rw);

        /*********************************************************************
         Snoop mode
        */
        alias SNPM = Bit!(20, Mutability.rw);

        /*********************************************************************
         STALL handshake
        */
        alias Stall = Bit!(21, Mutability.rw);

        /*********************************************************************
         Clear NAK
        */
        alias CNAK = Bit!(26, Mutability.w);

        /*********************************************************************
         Set NAK
        */
        alias SNAK = Bit!(27, Mutability.w);

        /*********************************************************************
         Set DATA0 PID/Set even
              frame
        */
        alias SD0PID_SEVNFRM = Bit!(28, Mutability.w);

        /*********************************************************************
         Set odd frame
        */
        alias SODDFRM = Bit!(29, Mutability.w);

        /*********************************************************************
         Endpoint disable
        */
        alias EPDIS = Bit!(30, Mutability.rw);

        /*********************************************************************
         Endpoint enable
        */
        alias EPENA = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     OTG device endpoint-5 control
          register
    */
    final abstract class OTG_HS_DOEPCTL5 : Register!(0x3a0)
    {
        /*********************************************************************
         Maximum packet size
        */
        alias MPSIZ = BitField!(10, 0, Mutability.rw);

        /*********************************************************************
         USB active endpoint
        */
        alias USBAEP = Bit!(15, Mutability.rw);

        /*********************************************************************
         Even odd frame/Endpoint data
              PID
        */
        alias EONUM_DPID = Bit!(16, Mutability.r);

        /*********************************************************************
         NAK status
        */
        alias NAKSTS = Bit!(17, Mutability.r);

        /*********************************************************************
         Endpoint type
        */
        alias EPTYP = BitField!(19, 18, Mutability.rw);

        /*********************************************************************
         Snoop mode
        */
        alias SNPM = Bit!(20, Mutability.rw);

        /*********************************************************************
         STALL handshake
        */
        alias Stall = Bit!(21, Mutability.rw);

        /*********************************************************************
         Clear NAK
        */
        alias CNAK = Bit!(26, Mutability.w);

        /*********************************************************************
         Set NAK
        */
        alias SNAK = Bit!(27, Mutability.w);

        /*********************************************************************
         Set DATA0 PID/Set even
              frame
        */
        alias SD0PID_SEVNFRM = Bit!(28, Mutability.w);

        /*********************************************************************
         Set odd frame
        */
        alias SODDFRM = Bit!(29, Mutability.w);

        /*********************************************************************
         Endpoint disable
        */
        alias EPDIS = Bit!(30, Mutability.rw);

        /*********************************************************************
         Endpoint enable
        */
        alias EPENA = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     OTG device endpoint-6 control
          register
    */
    final abstract class OTG_HS_DOEPCTL6 : Register!(0x3c0)
    {
        /*********************************************************************
         Maximum packet size
        */
        alias MPSIZ = BitField!(10, 0, Mutability.rw);

        /*********************************************************************
         USB active endpoint
        */
        alias USBAEP = Bit!(15, Mutability.rw);

        /*********************************************************************
         Even odd frame/Endpoint data
              PID
        */
        alias EONUM_DPID = Bit!(16, Mutability.r);

        /*********************************************************************
         NAK status
        */
        alias NAKSTS = Bit!(17, Mutability.r);

        /*********************************************************************
         Endpoint type
        */
        alias EPTYP = BitField!(19, 18, Mutability.rw);

        /*********************************************************************
         Snoop mode
        */
        alias SNPM = Bit!(20, Mutability.rw);

        /*********************************************************************
         STALL handshake
        */
        alias Stall = Bit!(21, Mutability.rw);

        /*********************************************************************
         Clear NAK
        */
        alias CNAK = Bit!(26, Mutability.w);

        /*********************************************************************
         Set NAK
        */
        alias SNAK = Bit!(27, Mutability.w);

        /*********************************************************************
         Set DATA0 PID/Set even
              frame
        */
        alias SD0PID_SEVNFRM = Bit!(28, Mutability.w);

        /*********************************************************************
         Set odd frame
        */
        alias SODDFRM = Bit!(29, Mutability.w);

        /*********************************************************************
         Endpoint disable
        */
        alias EPDIS = Bit!(30, Mutability.rw);

        /*********************************************************************
         Endpoint enable
        */
        alias EPENA = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     OTG device endpoint-7 control
          register
    */
    final abstract class OTG_HS_DOEPCTL7 : Register!(0x3e0)
    {
        /*********************************************************************
         Maximum packet size
        */
        alias MPSIZ = BitField!(10, 0, Mutability.rw);

        /*********************************************************************
         USB active endpoint
        */
        alias USBAEP = Bit!(15, Mutability.rw);

        /*********************************************************************
         Even odd frame/Endpoint data
              PID
        */
        alias EONUM_DPID = Bit!(16, Mutability.r);

        /*********************************************************************
         NAK status
        */
        alias NAKSTS = Bit!(17, Mutability.r);

        /*********************************************************************
         Endpoint type
        */
        alias EPTYP = BitField!(19, 18, Mutability.rw);

        /*********************************************************************
         Snoop mode
        */
        alias SNPM = Bit!(20, Mutability.rw);

        /*********************************************************************
         STALL handshake
        */
        alias Stall = Bit!(21, Mutability.rw);

        /*********************************************************************
         Clear NAK
        */
        alias CNAK = Bit!(26, Mutability.w);

        /*********************************************************************
         Set NAK
        */
        alias SNAK = Bit!(27, Mutability.w);

        /*********************************************************************
         Set DATA0 PID/Set even
              frame
        */
        alias SD0PID_SEVNFRM = Bit!(28, Mutability.w);

        /*********************************************************************
         Set odd frame
        */
        alias SODDFRM = Bit!(29, Mutability.w);

        /*********************************************************************
         Endpoint disable
        */
        alias EPDIS = Bit!(30, Mutability.rw);

        /*********************************************************************
         Endpoint enable
        */
        alias EPENA = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device endpoint-5 transfer size
          register
    */
    final abstract class OTG_HS_DOEPTSIZ5 : Register!(0x3b0)
    {
        /*********************************************************************
         Transfer size
        */
        alias XFRSIZ = BitField!(18, 0, Mutability.rw);

        /*********************************************************************
         Packet count
        */
        alias PKTCNT = BitField!(28, 19, Mutability.rw);

        /*********************************************************************
         Received data PID/SETUP packet
              count
        */
        alias RXDPID_STUPCNT = BitField!(30, 29, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device endpoint-6 transfer size
          register
    */
    final abstract class OTG_HS_DOEPTSIZ6 : Register!(0x3d0)
    {
        /*********************************************************************
         Transfer size
        */
        alias XFRSIZ = BitField!(18, 0, Mutability.rw);

        /*********************************************************************
         Packet count
        */
        alias PKTCNT = BitField!(28, 19, Mutability.rw);

        /*********************************************************************
         Received data PID/SETUP packet
              count
        */
        alias RXDPID_STUPCNT = BitField!(30, 29, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS device endpoint-7 transfer size
          register
    */
    final abstract class OTG_HS_DOEPTSIZ7 : Register!(0x3f0)
    {
        /*********************************************************************
         Transfer size
        */
        alias XFRSIZ = BitField!(18, 0, Mutability.rw);

        /*********************************************************************
         Packet count
        */
        alias PKTCNT = BitField!(28, 19, Mutability.rw);

        /*********************************************************************
         Received data PID/SETUP packet
              count
        */
        alias RXDPID_STUPCNT = BitField!(30, 29, Mutability.rw);
    }
}
