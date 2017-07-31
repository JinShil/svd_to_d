module stm32f7x9.otg_fs_host;

import stm32f7x9.mmio;

/*****************************************************************************
 USB on the go full speed
*/
final abstract class OTG_FS_HOST : Peripheral!(0x50000400)
{
    /*************************************************************************
     OTG_FS host configuration register
          (OTG_FS_HCFG)
    */
    final abstract class OTG_FS_HCFG : Register!(0x0)
    {
        /*********************************************************************
         FS/LS PHY clock select
        */
        alias FSLSPCS = BitField!(1, 0, Mutability.rw);

        /*********************************************************************
         FS- and LS-only support
        */
        alias FSLSS = Bit!(2, Mutability.r);
    }

    /*************************************************************************
     OTG_FS Host frame interval
          register
    */
    final abstract class OTG_FS_HFIR : Register!(0x4)
    {
        /*********************************************************************
         Frame interval
        */
        alias FRIVL = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host frame number/frame time
          remaining register (OTG_FS_HFNUM)
    */
    final abstract class OTG_FS_HFNUM : Register!(0x8)
    {
        /*********************************************************************
         Frame number
        */
        alias FRNUM = BitField!(15, 0, Mutability.rw);

        /*********************************************************************
         Frame time remaining
        */
        alias FTREM = BitField!(31, 16, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS_Host periodic transmit FIFO/queue
          status register (OTG_FS_HPTXSTS)
    */
    final abstract class OTG_FS_HPTXSTS : Register!(0x10)
    {
        /*********************************************************************
         Periodic transmit data FIFO space
              available
        */
        alias PTXFSAVL = BitField!(15, 0, Mutability.rw);

        /*********************************************************************
         Periodic transmit request queue space
              available
        */
        alias PTXQSAV = BitField!(23, 16, Mutability.r);

        /*********************************************************************
         Top of the periodic transmit request
              queue
        */
        alias PTXQTOP = BitField!(31, 24, Mutability.r);
    }

    /*************************************************************************
     OTG_FS Host all channels interrupt
          register
    */
    final abstract class OTG_FS_HAINT : Register!(0x14)
    {
        /*********************************************************************
         Channel interrupts
        */
        alias HAINT = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host all channels interrupt mask
          register
    */
    final abstract class OTG_FS_HAINTMSK : Register!(0x18)
    {
        /*********************************************************************
         Channel interrupt mask
        */
        alias HAINTM = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host port control and status register
          (OTG_FS_HPRT)
    */
    final abstract class OTG_FS_HPRT : Register!(0x40)
    {
        /*********************************************************************
         Port connect status
        */
        alias PCSTS = Bit!(0, Mutability.r);

        /*********************************************************************
         Port connect detected
        */
        alias PCDET = Bit!(1, Mutability.rw);

        /*********************************************************************
         Port enable
        */
        alias PENA = Bit!(2, Mutability.rw);

        /*********************************************************************
         Port enable/disable change
        */
        alias PENCHNG = Bit!(3, Mutability.rw);

        /*********************************************************************
         Port overcurrent active
        */
        alias POCA = Bit!(4, Mutability.r);

        /*********************************************************************
         Port overcurrent change
        */
        alias POCCHNG = Bit!(5, Mutability.rw);

        /*********************************************************************
         Port resume
        */
        alias PRES = Bit!(6, Mutability.rw);

        /*********************************************************************
         Port suspend
        */
        alias PSUSP = Bit!(7, Mutability.rw);

        /*********************************************************************
         Port reset
        */
        alias PRST = Bit!(8, Mutability.rw);

        /*********************************************************************
         Port line status
        */
        alias PLSTS = BitField!(11, 10, Mutability.r);

        /*********************************************************************
         Port power
        */
        alias PPWR = Bit!(12, Mutability.rw);

        /*********************************************************************
         Port test control
        */
        alias PTCTL = BitField!(16, 13, Mutability.rw);

        /*********************************************************************
         Port speed
        */
        alias PSPD = BitField!(18, 17, Mutability.r);
    }

    /*************************************************************************
     OTG_FS host channel-0 characteristics
          register (OTG_FS_HCCHAR0)
    */
    final abstract class OTG_FS_HCCHAR0 : Register!(0x100)
    {
        /*********************************************************************
         Maximum packet size
        */
        alias MPSIZ = BitField!(10, 0, Mutability.rw);

        /*********************************************************************
         Endpoint number
        */
        alias EPNUM = BitField!(14, 11, Mutability.rw);

        /*********************************************************************
         Endpoint direction
        */
        alias EPDIR = Bit!(15, Mutability.rw);

        /*********************************************************************
         Low-speed device
        */
        alias LSDEV = Bit!(17, Mutability.rw);

        /*********************************************************************
         Endpoint type
        */
        alias EPTYP = BitField!(19, 18, Mutability.rw);

        /*********************************************************************
         Multicount
        */
        alias MCNT = BitField!(21, 20, Mutability.rw);

        /*********************************************************************
         Device address
        */
        alias DAD = BitField!(28, 22, Mutability.rw);

        /*********************************************************************
         Odd frame
        */
        alias ODDFRM = Bit!(29, Mutability.rw);

        /*********************************************************************
         Channel disable
        */
        alias CHDIS = Bit!(30, Mutability.rw);

        /*********************************************************************
         Channel enable
        */
        alias CHENA = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-1 characteristics
          register (OTG_FS_HCCHAR1)
    */
    final abstract class OTG_FS_HCCHAR1 : Register!(0x120)
    {
        /*********************************************************************
         Maximum packet size
        */
        alias MPSIZ = BitField!(10, 0, Mutability.rw);

        /*********************************************************************
         Endpoint number
        */
        alias EPNUM = BitField!(14, 11, Mutability.rw);

        /*********************************************************************
         Endpoint direction
        */
        alias EPDIR = Bit!(15, Mutability.rw);

        /*********************************************************************
         Low-speed device
        */
        alias LSDEV = Bit!(17, Mutability.rw);

        /*********************************************************************
         Endpoint type
        */
        alias EPTYP = BitField!(19, 18, Mutability.rw);

        /*********************************************************************
         Multicount
        */
        alias MCNT = BitField!(21, 20, Mutability.rw);

        /*********************************************************************
         Device address
        */
        alias DAD = BitField!(28, 22, Mutability.rw);

        /*********************************************************************
         Odd frame
        */
        alias ODDFRM = Bit!(29, Mutability.rw);

        /*********************************************************************
         Channel disable
        */
        alias CHDIS = Bit!(30, Mutability.rw);

        /*********************************************************************
         Channel enable
        */
        alias CHENA = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-2 characteristics
          register (OTG_FS_HCCHAR2)
    */
    final abstract class OTG_FS_HCCHAR2 : Register!(0x140)
    {
        /*********************************************************************
         Maximum packet size
        */
        alias MPSIZ = BitField!(10, 0, Mutability.rw);

        /*********************************************************************
         Endpoint number
        */
        alias EPNUM = BitField!(14, 11, Mutability.rw);

        /*********************************************************************
         Endpoint direction
        */
        alias EPDIR = Bit!(15, Mutability.rw);

        /*********************************************************************
         Low-speed device
        */
        alias LSDEV = Bit!(17, Mutability.rw);

        /*********************************************************************
         Endpoint type
        */
        alias EPTYP = BitField!(19, 18, Mutability.rw);

        /*********************************************************************
         Multicount
        */
        alias MCNT = BitField!(21, 20, Mutability.rw);

        /*********************************************************************
         Device address
        */
        alias DAD = BitField!(28, 22, Mutability.rw);

        /*********************************************************************
         Odd frame
        */
        alias ODDFRM = Bit!(29, Mutability.rw);

        /*********************************************************************
         Channel disable
        */
        alias CHDIS = Bit!(30, Mutability.rw);

        /*********************************************************************
         Channel enable
        */
        alias CHENA = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-3 characteristics
          register (OTG_FS_HCCHAR3)
    */
    final abstract class OTG_FS_HCCHAR3 : Register!(0x160)
    {
        /*********************************************************************
         Maximum packet size
        */
        alias MPSIZ = BitField!(10, 0, Mutability.rw);

        /*********************************************************************
         Endpoint number
        */
        alias EPNUM = BitField!(14, 11, Mutability.rw);

        /*********************************************************************
         Endpoint direction
        */
        alias EPDIR = Bit!(15, Mutability.rw);

        /*********************************************************************
         Low-speed device
        */
        alias LSDEV = Bit!(17, Mutability.rw);

        /*********************************************************************
         Endpoint type
        */
        alias EPTYP = BitField!(19, 18, Mutability.rw);

        /*********************************************************************
         Multicount
        */
        alias MCNT = BitField!(21, 20, Mutability.rw);

        /*********************************************************************
         Device address
        */
        alias DAD = BitField!(28, 22, Mutability.rw);

        /*********************************************************************
         Odd frame
        */
        alias ODDFRM = Bit!(29, Mutability.rw);

        /*********************************************************************
         Channel disable
        */
        alias CHDIS = Bit!(30, Mutability.rw);

        /*********************************************************************
         Channel enable
        */
        alias CHENA = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-4 characteristics
          register (OTG_FS_HCCHAR4)
    */
    final abstract class OTG_FS_HCCHAR4 : Register!(0x180)
    {
        /*********************************************************************
         Maximum packet size
        */
        alias MPSIZ = BitField!(10, 0, Mutability.rw);

        /*********************************************************************
         Endpoint number
        */
        alias EPNUM = BitField!(14, 11, Mutability.rw);

        /*********************************************************************
         Endpoint direction
        */
        alias EPDIR = Bit!(15, Mutability.rw);

        /*********************************************************************
         Low-speed device
        */
        alias LSDEV = Bit!(17, Mutability.rw);

        /*********************************************************************
         Endpoint type
        */
        alias EPTYP = BitField!(19, 18, Mutability.rw);

        /*********************************************************************
         Multicount
        */
        alias MCNT = BitField!(21, 20, Mutability.rw);

        /*********************************************************************
         Device address
        */
        alias DAD = BitField!(28, 22, Mutability.rw);

        /*********************************************************************
         Odd frame
        */
        alias ODDFRM = Bit!(29, Mutability.rw);

        /*********************************************************************
         Channel disable
        */
        alias CHDIS = Bit!(30, Mutability.rw);

        /*********************************************************************
         Channel enable
        */
        alias CHENA = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-5 characteristics
          register (OTG_FS_HCCHAR5)
    */
    final abstract class OTG_FS_HCCHAR5 : Register!(0x1A0)
    {
        /*********************************************************************
         Maximum packet size
        */
        alias MPSIZ = BitField!(10, 0, Mutability.rw);

        /*********************************************************************
         Endpoint number
        */
        alias EPNUM = BitField!(14, 11, Mutability.rw);

        /*********************************************************************
         Endpoint direction
        */
        alias EPDIR = Bit!(15, Mutability.rw);

        /*********************************************************************
         Low-speed device
        */
        alias LSDEV = Bit!(17, Mutability.rw);

        /*********************************************************************
         Endpoint type
        */
        alias EPTYP = BitField!(19, 18, Mutability.rw);

        /*********************************************************************
         Multicount
        */
        alias MCNT = BitField!(21, 20, Mutability.rw);

        /*********************************************************************
         Device address
        */
        alias DAD = BitField!(28, 22, Mutability.rw);

        /*********************************************************************
         Odd frame
        */
        alias ODDFRM = Bit!(29, Mutability.rw);

        /*********************************************************************
         Channel disable
        */
        alias CHDIS = Bit!(30, Mutability.rw);

        /*********************************************************************
         Channel enable
        */
        alias CHENA = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-6 characteristics
          register (OTG_FS_HCCHAR6)
    */
    final abstract class OTG_FS_HCCHAR6 : Register!(0x1C0)
    {
        /*********************************************************************
         Maximum packet size
        */
        alias MPSIZ = BitField!(10, 0, Mutability.rw);

        /*********************************************************************
         Endpoint number
        */
        alias EPNUM = BitField!(14, 11, Mutability.rw);

        /*********************************************************************
         Endpoint direction
        */
        alias EPDIR = Bit!(15, Mutability.rw);

        /*********************************************************************
         Low-speed device
        */
        alias LSDEV = Bit!(17, Mutability.rw);

        /*********************************************************************
         Endpoint type
        */
        alias EPTYP = BitField!(19, 18, Mutability.rw);

        /*********************************************************************
         Multicount
        */
        alias MCNT = BitField!(21, 20, Mutability.rw);

        /*********************************************************************
         Device address
        */
        alias DAD = BitField!(28, 22, Mutability.rw);

        /*********************************************************************
         Odd frame
        */
        alias ODDFRM = Bit!(29, Mutability.rw);

        /*********************************************************************
         Channel disable
        */
        alias CHDIS = Bit!(30, Mutability.rw);

        /*********************************************************************
         Channel enable
        */
        alias CHENA = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-7 characteristics
          register (OTG_FS_HCCHAR7)
    */
    final abstract class OTG_FS_HCCHAR7 : Register!(0x1E0)
    {
        /*********************************************************************
         Maximum packet size
        */
        alias MPSIZ = BitField!(10, 0, Mutability.rw);

        /*********************************************************************
         Endpoint number
        */
        alias EPNUM = BitField!(14, 11, Mutability.rw);

        /*********************************************************************
         Endpoint direction
        */
        alias EPDIR = Bit!(15, Mutability.rw);

        /*********************************************************************
         Low-speed device
        */
        alias LSDEV = Bit!(17, Mutability.rw);

        /*********************************************************************
         Endpoint type
        */
        alias EPTYP = BitField!(19, 18, Mutability.rw);

        /*********************************************************************
         Multicount
        */
        alias MCNT = BitField!(21, 20, Mutability.rw);

        /*********************************************************************
         Device address
        */
        alias DAD = BitField!(28, 22, Mutability.rw);

        /*********************************************************************
         Odd frame
        */
        alias ODDFRM = Bit!(29, Mutability.rw);

        /*********************************************************************
         Channel disable
        */
        alias CHDIS = Bit!(30, Mutability.rw);

        /*********************************************************************
         Channel enable
        */
        alias CHENA = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-0 interrupt register
          (OTG_FS_HCINT0)
    */
    final abstract class OTG_FS_HCINT0 : Register!(0x108)
    {
        /*********************************************************************
         Transfer completed
        */
        alias XFRC = Bit!(0, Mutability.rw);

        /*********************************************************************
         Channel halted
        */
        alias CHH = Bit!(1, Mutability.rw);

        /*********************************************************************
         STALL response received
              interrupt
        */
        alias STALL = Bit!(3, Mutability.rw);

        /*********************************************************************
         NAK response received
              interrupt
        */
        alias NAK = Bit!(4, Mutability.rw);

        /*********************************************************************
         ACK response received/transmitted
              interrupt
        */
        alias ACK = Bit!(5, Mutability.rw);

        /*********************************************************************
         Transaction error
        */
        alias TXERR = Bit!(7, Mutability.rw);

        /*********************************************************************
         Babble error
        */
        alias BBERR = Bit!(8, Mutability.rw);

        /*********************************************************************
         Frame overrun
        */
        alias FRMOR = Bit!(9, Mutability.rw);

        /*********************************************************************
         Data toggle error
        */
        alias DTERR = Bit!(10, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-1 interrupt register
          (OTG_FS_HCINT1)
    */
    final abstract class OTG_FS_HCINT1 : Register!(0x128)
    {
        /*********************************************************************
         Transfer completed
        */
        alias XFRC = Bit!(0, Mutability.rw);

        /*********************************************************************
         Channel halted
        */
        alias CHH = Bit!(1, Mutability.rw);

        /*********************************************************************
         STALL response received
              interrupt
        */
        alias STALL = Bit!(3, Mutability.rw);

        /*********************************************************************
         NAK response received
              interrupt
        */
        alias NAK = Bit!(4, Mutability.rw);

        /*********************************************************************
         ACK response received/transmitted
              interrupt
        */
        alias ACK = Bit!(5, Mutability.rw);

        /*********************************************************************
         Transaction error
        */
        alias TXERR = Bit!(7, Mutability.rw);

        /*********************************************************************
         Babble error
        */
        alias BBERR = Bit!(8, Mutability.rw);

        /*********************************************************************
         Frame overrun
        */
        alias FRMOR = Bit!(9, Mutability.rw);

        /*********************************************************************
         Data toggle error
        */
        alias DTERR = Bit!(10, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-2 interrupt register
          (OTG_FS_HCINT2)
    */
    final abstract class OTG_FS_HCINT2 : Register!(0x148)
    {
        /*********************************************************************
         Transfer completed
        */
        alias XFRC = Bit!(0, Mutability.rw);

        /*********************************************************************
         Channel halted
        */
        alias CHH = Bit!(1, Mutability.rw);

        /*********************************************************************
         STALL response received
              interrupt
        */
        alias STALL = Bit!(3, Mutability.rw);

        /*********************************************************************
         NAK response received
              interrupt
        */
        alias NAK = Bit!(4, Mutability.rw);

        /*********************************************************************
         ACK response received/transmitted
              interrupt
        */
        alias ACK = Bit!(5, Mutability.rw);

        /*********************************************************************
         Transaction error
        */
        alias TXERR = Bit!(7, Mutability.rw);

        /*********************************************************************
         Babble error
        */
        alias BBERR = Bit!(8, Mutability.rw);

        /*********************************************************************
         Frame overrun
        */
        alias FRMOR = Bit!(9, Mutability.rw);

        /*********************************************************************
         Data toggle error
        */
        alias DTERR = Bit!(10, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-3 interrupt register
          (OTG_FS_HCINT3)
    */
    final abstract class OTG_FS_HCINT3 : Register!(0x168)
    {
        /*********************************************************************
         Transfer completed
        */
        alias XFRC = Bit!(0, Mutability.rw);

        /*********************************************************************
         Channel halted
        */
        alias CHH = Bit!(1, Mutability.rw);

        /*********************************************************************
         STALL response received
              interrupt
        */
        alias STALL = Bit!(3, Mutability.rw);

        /*********************************************************************
         NAK response received
              interrupt
        */
        alias NAK = Bit!(4, Mutability.rw);

        /*********************************************************************
         ACK response received/transmitted
              interrupt
        */
        alias ACK = Bit!(5, Mutability.rw);

        /*********************************************************************
         Transaction error
        */
        alias TXERR = Bit!(7, Mutability.rw);

        /*********************************************************************
         Babble error
        */
        alias BBERR = Bit!(8, Mutability.rw);

        /*********************************************************************
         Frame overrun
        */
        alias FRMOR = Bit!(9, Mutability.rw);

        /*********************************************************************
         Data toggle error
        */
        alias DTERR = Bit!(10, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-4 interrupt register
          (OTG_FS_HCINT4)
    */
    final abstract class OTG_FS_HCINT4 : Register!(0x188)
    {
        /*********************************************************************
         Transfer completed
        */
        alias XFRC = Bit!(0, Mutability.rw);

        /*********************************************************************
         Channel halted
        */
        alias CHH = Bit!(1, Mutability.rw);

        /*********************************************************************
         STALL response received
              interrupt
        */
        alias STALL = Bit!(3, Mutability.rw);

        /*********************************************************************
         NAK response received
              interrupt
        */
        alias NAK = Bit!(4, Mutability.rw);

        /*********************************************************************
         ACK response received/transmitted
              interrupt
        */
        alias ACK = Bit!(5, Mutability.rw);

        /*********************************************************************
         Transaction error
        */
        alias TXERR = Bit!(7, Mutability.rw);

        /*********************************************************************
         Babble error
        */
        alias BBERR = Bit!(8, Mutability.rw);

        /*********************************************************************
         Frame overrun
        */
        alias FRMOR = Bit!(9, Mutability.rw);

        /*********************************************************************
         Data toggle error
        */
        alias DTERR = Bit!(10, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-5 interrupt register
          (OTG_FS_HCINT5)
    */
    final abstract class OTG_FS_HCINT5 : Register!(0x1A8)
    {
        /*********************************************************************
         Transfer completed
        */
        alias XFRC = Bit!(0, Mutability.rw);

        /*********************************************************************
         Channel halted
        */
        alias CHH = Bit!(1, Mutability.rw);

        /*********************************************************************
         STALL response received
              interrupt
        */
        alias STALL = Bit!(3, Mutability.rw);

        /*********************************************************************
         NAK response received
              interrupt
        */
        alias NAK = Bit!(4, Mutability.rw);

        /*********************************************************************
         ACK response received/transmitted
              interrupt
        */
        alias ACK = Bit!(5, Mutability.rw);

        /*********************************************************************
         Transaction error
        */
        alias TXERR = Bit!(7, Mutability.rw);

        /*********************************************************************
         Babble error
        */
        alias BBERR = Bit!(8, Mutability.rw);

        /*********************************************************************
         Frame overrun
        */
        alias FRMOR = Bit!(9, Mutability.rw);

        /*********************************************************************
         Data toggle error
        */
        alias DTERR = Bit!(10, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-6 interrupt register
          (OTG_FS_HCINT6)
    */
    final abstract class OTG_FS_HCINT6 : Register!(0x1C8)
    {
        /*********************************************************************
         Transfer completed
        */
        alias XFRC = Bit!(0, Mutability.rw);

        /*********************************************************************
         Channel halted
        */
        alias CHH = Bit!(1, Mutability.rw);

        /*********************************************************************
         STALL response received
              interrupt
        */
        alias STALL = Bit!(3, Mutability.rw);

        /*********************************************************************
         NAK response received
              interrupt
        */
        alias NAK = Bit!(4, Mutability.rw);

        /*********************************************************************
         ACK response received/transmitted
              interrupt
        */
        alias ACK = Bit!(5, Mutability.rw);

        /*********************************************************************
         Transaction error
        */
        alias TXERR = Bit!(7, Mutability.rw);

        /*********************************************************************
         Babble error
        */
        alias BBERR = Bit!(8, Mutability.rw);

        /*********************************************************************
         Frame overrun
        */
        alias FRMOR = Bit!(9, Mutability.rw);

        /*********************************************************************
         Data toggle error
        */
        alias DTERR = Bit!(10, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-7 interrupt register
          (OTG_FS_HCINT7)
    */
    final abstract class OTG_FS_HCINT7 : Register!(0x1E8)
    {
        /*********************************************************************
         Transfer completed
        */
        alias XFRC = Bit!(0, Mutability.rw);

        /*********************************************************************
         Channel halted
        */
        alias CHH = Bit!(1, Mutability.rw);

        /*********************************************************************
         STALL response received
              interrupt
        */
        alias STALL = Bit!(3, Mutability.rw);

        /*********************************************************************
         NAK response received
              interrupt
        */
        alias NAK = Bit!(4, Mutability.rw);

        /*********************************************************************
         ACK response received/transmitted
              interrupt
        */
        alias ACK = Bit!(5, Mutability.rw);

        /*********************************************************************
         Transaction error
        */
        alias TXERR = Bit!(7, Mutability.rw);

        /*********************************************************************
         Babble error
        */
        alias BBERR = Bit!(8, Mutability.rw);

        /*********************************************************************
         Frame overrun
        */
        alias FRMOR = Bit!(9, Mutability.rw);

        /*********************************************************************
         Data toggle error
        */
        alias DTERR = Bit!(10, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-0 mask register
          (OTG_FS_HCINTMSK0)
    */
    final abstract class OTG_FS_HCINTMSK0 : Register!(0x10C)
    {
        /*********************************************************************
         Transfer completed mask
        */
        alias XFRCM = Bit!(0, Mutability.rw);

        /*********************************************************************
         Channel halted mask
        */
        alias CHHM = Bit!(1, Mutability.rw);

        /*********************************************************************
         STALL response received interrupt
              mask
        */
        alias STALLM = Bit!(3, Mutability.rw);

        /*********************************************************************
         NAK response received interrupt
              mask
        */
        alias NAKM = Bit!(4, Mutability.rw);

        /*********************************************************************
         ACK response received/transmitted
              interrupt mask
        */
        alias ACKM = Bit!(5, Mutability.rw);

        /*********************************************************************
         response received interrupt
              mask
        */
        alias NYET = Bit!(6, Mutability.rw);

        /*********************************************************************
         Transaction error mask
        */
        alias TXERRM = Bit!(7, Mutability.rw);

        /*********************************************************************
         Babble error mask
        */
        alias BBERRM = Bit!(8, Mutability.rw);

        /*********************************************************************
         Frame overrun mask
        */
        alias FRMORM = Bit!(9, Mutability.rw);

        /*********************************************************************
         Data toggle error mask
        */
        alias DTERRM = Bit!(10, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-1 mask register
          (OTG_FS_HCINTMSK1)
    */
    final abstract class OTG_FS_HCINTMSK1 : Register!(0x12C)
    {
        /*********************************************************************
         Transfer completed mask
        */
        alias XFRCM = Bit!(0, Mutability.rw);

        /*********************************************************************
         Channel halted mask
        */
        alias CHHM = Bit!(1, Mutability.rw);

        /*********************************************************************
         STALL response received interrupt
              mask
        */
        alias STALLM = Bit!(3, Mutability.rw);

        /*********************************************************************
         NAK response received interrupt
              mask
        */
        alias NAKM = Bit!(4, Mutability.rw);

        /*********************************************************************
         ACK response received/transmitted
              interrupt mask
        */
        alias ACKM = Bit!(5, Mutability.rw);

        /*********************************************************************
         response received interrupt
              mask
        */
        alias NYET = Bit!(6, Mutability.rw);

        /*********************************************************************
         Transaction error mask
        */
        alias TXERRM = Bit!(7, Mutability.rw);

        /*********************************************************************
         Babble error mask
        */
        alias BBERRM = Bit!(8, Mutability.rw);

        /*********************************************************************
         Frame overrun mask
        */
        alias FRMORM = Bit!(9, Mutability.rw);

        /*********************************************************************
         Data toggle error mask
        */
        alias DTERRM = Bit!(10, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-2 mask register
          (OTG_FS_HCINTMSK2)
    */
    final abstract class OTG_FS_HCINTMSK2 : Register!(0x14C)
    {
        /*********************************************************************
         Transfer completed mask
        */
        alias XFRCM = Bit!(0, Mutability.rw);

        /*********************************************************************
         Channel halted mask
        */
        alias CHHM = Bit!(1, Mutability.rw);

        /*********************************************************************
         STALL response received interrupt
              mask
        */
        alias STALLM = Bit!(3, Mutability.rw);

        /*********************************************************************
         NAK response received interrupt
              mask
        */
        alias NAKM = Bit!(4, Mutability.rw);

        /*********************************************************************
         ACK response received/transmitted
              interrupt mask
        */
        alias ACKM = Bit!(5, Mutability.rw);

        /*********************************************************************
         response received interrupt
              mask
        */
        alias NYET = Bit!(6, Mutability.rw);

        /*********************************************************************
         Transaction error mask
        */
        alias TXERRM = Bit!(7, Mutability.rw);

        /*********************************************************************
         Babble error mask
        */
        alias BBERRM = Bit!(8, Mutability.rw);

        /*********************************************************************
         Frame overrun mask
        */
        alias FRMORM = Bit!(9, Mutability.rw);

        /*********************************************************************
         Data toggle error mask
        */
        alias DTERRM = Bit!(10, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-3 mask register
          (OTG_FS_HCINTMSK3)
    */
    final abstract class OTG_FS_HCINTMSK3 : Register!(0x16C)
    {
        /*********************************************************************
         Transfer completed mask
        */
        alias XFRCM = Bit!(0, Mutability.rw);

        /*********************************************************************
         Channel halted mask
        */
        alias CHHM = Bit!(1, Mutability.rw);

        /*********************************************************************
         STALL response received interrupt
              mask
        */
        alias STALLM = Bit!(3, Mutability.rw);

        /*********************************************************************
         NAK response received interrupt
              mask
        */
        alias NAKM = Bit!(4, Mutability.rw);

        /*********************************************************************
         ACK response received/transmitted
              interrupt mask
        */
        alias ACKM = Bit!(5, Mutability.rw);

        /*********************************************************************
         response received interrupt
              mask
        */
        alias NYET = Bit!(6, Mutability.rw);

        /*********************************************************************
         Transaction error mask
        */
        alias TXERRM = Bit!(7, Mutability.rw);

        /*********************************************************************
         Babble error mask
        */
        alias BBERRM = Bit!(8, Mutability.rw);

        /*********************************************************************
         Frame overrun mask
        */
        alias FRMORM = Bit!(9, Mutability.rw);

        /*********************************************************************
         Data toggle error mask
        */
        alias DTERRM = Bit!(10, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-4 mask register
          (OTG_FS_HCINTMSK4)
    */
    final abstract class OTG_FS_HCINTMSK4 : Register!(0x18C)
    {
        /*********************************************************************
         Transfer completed mask
        */
        alias XFRCM = Bit!(0, Mutability.rw);

        /*********************************************************************
         Channel halted mask
        */
        alias CHHM = Bit!(1, Mutability.rw);

        /*********************************************************************
         STALL response received interrupt
              mask
        */
        alias STALLM = Bit!(3, Mutability.rw);

        /*********************************************************************
         NAK response received interrupt
              mask
        */
        alias NAKM = Bit!(4, Mutability.rw);

        /*********************************************************************
         ACK response received/transmitted
              interrupt mask
        */
        alias ACKM = Bit!(5, Mutability.rw);

        /*********************************************************************
         response received interrupt
              mask
        */
        alias NYET = Bit!(6, Mutability.rw);

        /*********************************************************************
         Transaction error mask
        */
        alias TXERRM = Bit!(7, Mutability.rw);

        /*********************************************************************
         Babble error mask
        */
        alias BBERRM = Bit!(8, Mutability.rw);

        /*********************************************************************
         Frame overrun mask
        */
        alias FRMORM = Bit!(9, Mutability.rw);

        /*********************************************************************
         Data toggle error mask
        */
        alias DTERRM = Bit!(10, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-5 mask register
          (OTG_FS_HCINTMSK5)
    */
    final abstract class OTG_FS_HCINTMSK5 : Register!(0x1AC)
    {
        /*********************************************************************
         Transfer completed mask
        */
        alias XFRCM = Bit!(0, Mutability.rw);

        /*********************************************************************
         Channel halted mask
        */
        alias CHHM = Bit!(1, Mutability.rw);

        /*********************************************************************
         STALL response received interrupt
              mask
        */
        alias STALLM = Bit!(3, Mutability.rw);

        /*********************************************************************
         NAK response received interrupt
              mask
        */
        alias NAKM = Bit!(4, Mutability.rw);

        /*********************************************************************
         ACK response received/transmitted
              interrupt mask
        */
        alias ACKM = Bit!(5, Mutability.rw);

        /*********************************************************************
         response received interrupt
              mask
        */
        alias NYET = Bit!(6, Mutability.rw);

        /*********************************************************************
         Transaction error mask
        */
        alias TXERRM = Bit!(7, Mutability.rw);

        /*********************************************************************
         Babble error mask
        */
        alias BBERRM = Bit!(8, Mutability.rw);

        /*********************************************************************
         Frame overrun mask
        */
        alias FRMORM = Bit!(9, Mutability.rw);

        /*********************************************************************
         Data toggle error mask
        */
        alias DTERRM = Bit!(10, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-6 mask register
          (OTG_FS_HCINTMSK6)
    */
    final abstract class OTG_FS_HCINTMSK6 : Register!(0x1CC)
    {
        /*********************************************************************
         Transfer completed mask
        */
        alias XFRCM = Bit!(0, Mutability.rw);

        /*********************************************************************
         Channel halted mask
        */
        alias CHHM = Bit!(1, Mutability.rw);

        /*********************************************************************
         STALL response received interrupt
              mask
        */
        alias STALLM = Bit!(3, Mutability.rw);

        /*********************************************************************
         NAK response received interrupt
              mask
        */
        alias NAKM = Bit!(4, Mutability.rw);

        /*********************************************************************
         ACK response received/transmitted
              interrupt mask
        */
        alias ACKM = Bit!(5, Mutability.rw);

        /*********************************************************************
         response received interrupt
              mask
        */
        alias NYET = Bit!(6, Mutability.rw);

        /*********************************************************************
         Transaction error mask
        */
        alias TXERRM = Bit!(7, Mutability.rw);

        /*********************************************************************
         Babble error mask
        */
        alias BBERRM = Bit!(8, Mutability.rw);

        /*********************************************************************
         Frame overrun mask
        */
        alias FRMORM = Bit!(9, Mutability.rw);

        /*********************************************************************
         Data toggle error mask
        */
        alias DTERRM = Bit!(10, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-7 mask register
          (OTG_FS_HCINTMSK7)
    */
    final abstract class OTG_FS_HCINTMSK7 : Register!(0x1EC)
    {
        /*********************************************************************
         Transfer completed mask
        */
        alias XFRCM = Bit!(0, Mutability.rw);

        /*********************************************************************
         Channel halted mask
        */
        alias CHHM = Bit!(1, Mutability.rw);

        /*********************************************************************
         STALL response received interrupt
              mask
        */
        alias STALLM = Bit!(3, Mutability.rw);

        /*********************************************************************
         NAK response received interrupt
              mask
        */
        alias NAKM = Bit!(4, Mutability.rw);

        /*********************************************************************
         ACK response received/transmitted
              interrupt mask
        */
        alias ACKM = Bit!(5, Mutability.rw);

        /*********************************************************************
         response received interrupt
              mask
        */
        alias NYET = Bit!(6, Mutability.rw);

        /*********************************************************************
         Transaction error mask
        */
        alias TXERRM = Bit!(7, Mutability.rw);

        /*********************************************************************
         Babble error mask
        */
        alias BBERRM = Bit!(8, Mutability.rw);

        /*********************************************************************
         Frame overrun mask
        */
        alias FRMORM = Bit!(9, Mutability.rw);

        /*********************************************************************
         Data toggle error mask
        */
        alias DTERRM = Bit!(10, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-0 transfer size
          register
    */
    final abstract class OTG_FS_HCTSIZ0 : Register!(0x110)
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
         Data PID
        */
        alias DPID = BitField!(30, 29, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-1 transfer size
          register
    */
    final abstract class OTG_FS_HCTSIZ1 : Register!(0x130)
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
         Data PID
        */
        alias DPID = BitField!(30, 29, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-2 transfer size
          register
    */
    final abstract class OTG_FS_HCTSIZ2 : Register!(0x150)
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
         Data PID
        */
        alias DPID = BitField!(30, 29, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-3 transfer size
          register
    */
    final abstract class OTG_FS_HCTSIZ3 : Register!(0x170)
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
         Data PID
        */
        alias DPID = BitField!(30, 29, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-x transfer size
          register
    */
    final abstract class OTG_FS_HCTSIZ4 : Register!(0x190)
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
         Data PID
        */
        alias DPID = BitField!(30, 29, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-5 transfer size
          register
    */
    final abstract class OTG_FS_HCTSIZ5 : Register!(0x1B0)
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
         Data PID
        */
        alias DPID = BitField!(30, 29, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-6 transfer size
          register
    */
    final abstract class OTG_FS_HCTSIZ6 : Register!(0x1D0)
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
         Data PID
        */
        alias DPID = BitField!(30, 29, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-7 transfer size
          register
    */
    final abstract class OTG_FS_HCTSIZ7 : Register!(0x1F0)
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
         Data PID
        */
        alias DPID = BitField!(30, 29, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-8 characteristics
          register
    */
    final abstract class OTG_FS_HCCHAR8 : Register!(0x1F4)
    {
        /*********************************************************************
         Maximum packet size
        */
        alias MPSIZ = BitField!(10, 0, Mutability.rw);

        /*********************************************************************
         Endpoint number
        */
        alias EPNUM = BitField!(14, 11, Mutability.rw);

        /*********************************************************************
         Endpoint direction
        */
        alias EPDIR = Bit!(15, Mutability.rw);

        /*********************************************************************
         Low-speed device
        */
        alias LSDEV = Bit!(17, Mutability.rw);

        /*********************************************************************
         Endpoint type
        */
        alias EPTYP = BitField!(19, 18, Mutability.rw);

        /*********************************************************************
         Multicount
        */
        alias MCNT = BitField!(21, 20, Mutability.rw);

        /*********************************************************************
         Device address
        */
        alias DAD = BitField!(28, 22, Mutability.rw);

        /*********************************************************************
         Odd frame
        */
        alias ODDFRM = Bit!(29, Mutability.rw);

        /*********************************************************************
         Channel disable
        */
        alias CHDIS = Bit!(30, Mutability.rw);

        /*********************************************************************
         Channel enable
        */
        alias CHENA = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-8 interrupt
          register
    */
    final abstract class OTG_FS_HCINT8 : Register!(0x1F8)
    {
        /*********************************************************************
         Transfer completed
        */
        alias XFRC = Bit!(0, Mutability.rw);

        /*********************************************************************
         Channel halted
        */
        alias CHH = Bit!(1, Mutability.rw);

        /*********************************************************************
         STALL response received
              interrupt
        */
        alias STALL = Bit!(3, Mutability.rw);

        /*********************************************************************
         NAK response received
              interrupt
        */
        alias NAK = Bit!(4, Mutability.rw);

        /*********************************************************************
         ACK response received/transmitted
              interrupt
        */
        alias ACK = Bit!(5, Mutability.rw);

        /*********************************************************************
         Transaction error
        */
        alias TXERR = Bit!(7, Mutability.rw);

        /*********************************************************************
         Babble error
        */
        alias BBERR = Bit!(8, Mutability.rw);

        /*********************************************************************
         Frame overrun
        */
        alias FRMOR = Bit!(9, Mutability.rw);

        /*********************************************************************
         Data toggle error
        */
        alias DTERR = Bit!(10, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-8 mask
          register
    */
    final abstract class OTG_FS_HCINTMSK8 : Register!(0x1FC)
    {
        /*********************************************************************
         Transfer completed mask
        */
        alias XFRCM = Bit!(0, Mutability.rw);

        /*********************************************************************
         Channel halted mask
        */
        alias CHHM = Bit!(1, Mutability.rw);

        /*********************************************************************
         STALL response received interrupt
              mask
        */
        alias STALLM = Bit!(3, Mutability.rw);

        /*********************************************************************
         NAK response received interrupt
              mask
        */
        alias NAKM = Bit!(4, Mutability.rw);

        /*********************************************************************
         ACK response received/transmitted
              interrupt mask
        */
        alias ACKM = Bit!(5, Mutability.rw);

        /*********************************************************************
         response received interrupt
              mask
        */
        alias NYET = Bit!(6, Mutability.rw);

        /*********************************************************************
         Transaction error
        */
        alias TXERRM = Bit!(7, Mutability.rw);

        /*********************************************************************
         Babble error mask
        */
        alias BBERRM = Bit!(8, Mutability.rw);

        /*********************************************************************
         Frame overrun mask
        */
        alias FRMORM = Bit!(9, Mutability.rw);

        /*********************************************************************
         Data toggle error mask
        */
        alias DTERRM = Bit!(10, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-8 transfer size
          register
    */
    final abstract class OTG_FS_HCTSIZ8 : Register!(0x200)
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
         Data PID
        */
        alias DPID = BitField!(30, 29, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-9 characteristics
          register
    */
    final abstract class OTG_FS_HCCHAR9 : Register!(0x204)
    {
        /*********************************************************************
         Maximum packet size
        */
        alias MPSIZ = BitField!(10, 0, Mutability.rw);

        /*********************************************************************
         Endpoint number
        */
        alias EPNUM = BitField!(14, 11, Mutability.rw);

        /*********************************************************************
         Endpoint direction
        */
        alias EPDIR = Bit!(15, Mutability.rw);

        /*********************************************************************
         Low-speed device
        */
        alias LSDEV = Bit!(17, Mutability.rw);

        /*********************************************************************
         Endpoint type
        */
        alias EPTYP = BitField!(19, 18, Mutability.rw);

        /*********************************************************************
         Multicount
        */
        alias MCNT = BitField!(21, 20, Mutability.rw);

        /*********************************************************************
         Device address
        */
        alias DAD = BitField!(28, 22, Mutability.rw);

        /*********************************************************************
         Odd frame
        */
        alias ODDFRM = Bit!(29, Mutability.rw);

        /*********************************************************************
         Channel disable
        */
        alias CHDIS = Bit!(30, Mutability.rw);

        /*********************************************************************
         Channel enable
        */
        alias CHENA = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-9 interrupt
          register
    */
    final abstract class OTG_FS_HCINT9 : Register!(0x208)
    {
        /*********************************************************************
         Transfer completed
        */
        alias XFRC = Bit!(0, Mutability.rw);

        /*********************************************************************
         Channel halted
        */
        alias CHH = Bit!(1, Mutability.rw);

        /*********************************************************************
         STALL response received
              interrupt
        */
        alias STALL = Bit!(3, Mutability.rw);

        /*********************************************************************
         NAK response received
              interrupt
        */
        alias NAK = Bit!(4, Mutability.rw);

        /*********************************************************************
         ACK response received/transmitted
              interrupt
        */
        alias ACK = Bit!(5, Mutability.rw);

        /*********************************************************************
         Transaction error
        */
        alias TXERR = Bit!(7, Mutability.rw);

        /*********************************************************************
         Babble error
        */
        alias BBERR = Bit!(8, Mutability.rw);

        /*********************************************************************
         Frame overrun
        */
        alias FRMOR = Bit!(9, Mutability.rw);

        /*********************************************************************
         Data toggle error
        */
        alias DTERR = Bit!(10, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-9 mask
          register
    */
    final abstract class OTG_FS_HCINTMSK9 : Register!(0x20C)
    {
        /*********************************************************************
         Transfer completed mask
        */
        alias XFRCM = Bit!(0, Mutability.rw);

        /*********************************************************************
         Channel halted mask
        */
        alias CHHM = Bit!(1, Mutability.rw);

        /*********************************************************************
         STALL response received interrupt
              mask
        */
        alias STALLM = Bit!(3, Mutability.rw);

        /*********************************************************************
         NAK response received interrupt
              mask
        */
        alias NAKM = Bit!(4, Mutability.rw);

        /*********************************************************************
         ACK response received/transmitted
              interrupt mask
        */
        alias ACKM = Bit!(5, Mutability.rw);

        /*********************************************************************
         response received interrupt
              mask
        */
        alias NYET = Bit!(6, Mutability.rw);

        /*********************************************************************
         Transaction error mask
        */
        alias TXERRM = Bit!(7, Mutability.rw);

        /*********************************************************************
         Babble error mask
        */
        alias BBERRM = Bit!(8, Mutability.rw);

        /*********************************************************************
         Frame overrun mask
        */
        alias FRMORM = Bit!(9, Mutability.rw);

        /*********************************************************************
         Data toggle error mask
        */
        alias DTERRM = Bit!(10, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-9 transfer size
          register
    */
    final abstract class OTG_FS_HCTSIZ9 : Register!(0x210)
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
         Data PID
        */
        alias DPID = BitField!(30, 29, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-10 characteristics
          register
    */
    final abstract class OTG_FS_HCCHAR10 : Register!(0x214)
    {
        /*********************************************************************
         Maximum packet size
        */
        alias MPSIZ = BitField!(10, 0, Mutability.rw);

        /*********************************************************************
         Endpoint number
        */
        alias EPNUM = BitField!(14, 11, Mutability.rw);

        /*********************************************************************
         Endpoint direction
        */
        alias EPDIR = Bit!(15, Mutability.rw);

        /*********************************************************************
         Low-speed device
        */
        alias LSDEV = Bit!(17, Mutability.rw);

        /*********************************************************************
         Endpoint type
        */
        alias EPTYP = BitField!(19, 18, Mutability.rw);

        /*********************************************************************
         Multicount
        */
        alias MCNT = BitField!(21, 20, Mutability.rw);

        /*********************************************************************
         Device address
        */
        alias DAD = BitField!(28, 22, Mutability.rw);

        /*********************************************************************
         Odd frame
        */
        alias ODDFRM = Bit!(29, Mutability.rw);

        /*********************************************************************
         Channel disable
        */
        alias CHDIS = Bit!(30, Mutability.rw);

        /*********************************************************************
         Channel enable
        */
        alias CHENA = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-10 interrupt
          register
    */
    final abstract class OTG_FS_HCINT10 : Register!(0x218)
    {
        /*********************************************************************
         Transfer completed
        */
        alias XFRC = Bit!(0, Mutability.rw);

        /*********************************************************************
         Channel halted
        */
        alias CHH = Bit!(1, Mutability.rw);

        /*********************************************************************
         STALL response received
              interrupt
        */
        alias STALL = Bit!(3, Mutability.rw);

        /*********************************************************************
         NAK response received
              interrupt
        */
        alias NAK = Bit!(4, Mutability.rw);

        /*********************************************************************
         ACK response received/transmitted
              interrupt
        */
        alias ACK = Bit!(5, Mutability.rw);

        /*********************************************************************
         Transaction error
        */
        alias TXERR = Bit!(7, Mutability.rw);

        /*********************************************************************
         Babble error
        */
        alias BBERR = Bit!(8, Mutability.rw);

        /*********************************************************************
         Frame overrun
        */
        alias FRMOR = Bit!(9, Mutability.rw);

        /*********************************************************************
         Data toggle error
        */
        alias DTERR = Bit!(10, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-10 mask
          register
    */
    final abstract class OTG_FS_HCINTMSK10 : Register!(0x21C)
    {
        /*********************************************************************
         Transfer completed mask
        */
        alias XFRCM = Bit!(0, Mutability.rw);

        /*********************************************************************
         Channel halted mask
        */
        alias CHHM = Bit!(1, Mutability.rw);

        /*********************************************************************
         STALL response received interrupt
              mask
        */
        alias STALLM = Bit!(3, Mutability.rw);

        /*********************************************************************
         NAK response received interrupt
              mask
        */
        alias NAKM = Bit!(4, Mutability.rw);

        /*********************************************************************
         ACK response received/transmitted
              interrupt mask
        */
        alias ACKM = Bit!(5, Mutability.rw);

        /*********************************************************************
         response received interrupt
              mask
        */
        alias NYET = Bit!(6, Mutability.rw);

        /*********************************************************************
         Transaction error mask
        */
        alias TXERRM = Bit!(7, Mutability.rw);

        /*********************************************************************
         Babble error mask
        */
        alias BBERRM = Bit!(8, Mutability.rw);

        /*********************************************************************
         Frame overrun mask
        */
        alias FRMORM = Bit!(9, Mutability.rw);

        /*********************************************************************
         Data toggle error mask
        */
        alias DTERRM = Bit!(10, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-10 transfer size
          register
    */
    final abstract class OTG_FS_HCTSIZ10 : Register!(0x220)
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
         Data PID
        */
        alias DPID = BitField!(30, 29, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-11 characteristics
          register
    */
    final abstract class OTG_FS_HCCHAR11 : Register!(0x224)
    {
        /*********************************************************************
         Maximum packet size
        */
        alias MPSIZ = BitField!(10, 0, Mutability.rw);

        /*********************************************************************
         Endpoint number
        */
        alias EPNUM = BitField!(14, 11, Mutability.rw);

        /*********************************************************************
         Endpoint direction
        */
        alias EPDIR = Bit!(15, Mutability.rw);

        /*********************************************************************
         Low-speed device
        */
        alias LSDEV = Bit!(17, Mutability.rw);

        /*********************************************************************
         Endpoint type
        */
        alias EPTYP = BitField!(19, 18, Mutability.rw);

        /*********************************************************************
         Multicount
        */
        alias MCNT = BitField!(21, 20, Mutability.rw);

        /*********************************************************************
         Device address
        */
        alias DAD = BitField!(28, 22, Mutability.rw);

        /*********************************************************************
         Odd frame
        */
        alias ODDFRM = Bit!(29, Mutability.rw);

        /*********************************************************************
         Channel disable
        */
        alias CHDIS = Bit!(30, Mutability.rw);

        /*********************************************************************
         Channel enable
        */
        alias CHENA = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-11 interrupt
          register
    */
    final abstract class OTG_FS_HCINT11 : Register!(0x228)
    {
        /*********************************************************************
         Transfer completed
        */
        alias XFRC = Bit!(0, Mutability.rw);

        /*********************************************************************
         Channel halted
        */
        alias CHH = Bit!(1, Mutability.rw);

        /*********************************************************************
         STALL response received
              interrupt
        */
        alias STALL = Bit!(3, Mutability.rw);

        /*********************************************************************
         NAK response received
              interrupt
        */
        alias NAK = Bit!(4, Mutability.rw);

        /*********************************************************************
         ACK response received/transmitted
              interrupt
        */
        alias ACK = Bit!(5, Mutability.rw);

        /*********************************************************************
         Transaction error
        */
        alias TXERR = Bit!(7, Mutability.rw);

        /*********************************************************************
         Babble error
        */
        alias BBERR = Bit!(8, Mutability.rw);

        /*********************************************************************
         Frame overrun
        */
        alias FRMOR = Bit!(9, Mutability.rw);

        /*********************************************************************
         Data toggle error
        */
        alias DTERR = Bit!(10, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-11 mask
          register
    */
    final abstract class OTG_FS_HCINTMSK11 : Register!(0x22C)
    {
        /*********************************************************************
         Transfer completed mask
        */
        alias XFRCM = Bit!(0, Mutability.rw);

        /*********************************************************************
         Channel halted mask
        */
        alias CHHM = Bit!(1, Mutability.rw);

        /*********************************************************************
         STALL response received interrupt
              mask
        */
        alias STALLM = Bit!(3, Mutability.rw);

        /*********************************************************************
         NAK response received interrupt
              mask
        */
        alias NAKM = Bit!(4, Mutability.rw);

        /*********************************************************************
         ACK response received/transmitted
              interrupt mask
        */
        alias ACKM = Bit!(5, Mutability.rw);

        /*********************************************************************
         response received interrupt
              mask
        */
        alias NYET = Bit!(6, Mutability.rw);

        /*********************************************************************
         Transaction error mask
        */
        alias TXERRM = Bit!(7, Mutability.rw);

        /*********************************************************************
         Babble error mask
        */
        alias BBERRM = Bit!(8, Mutability.rw);

        /*********************************************************************
         Frame overrun mask
        */
        alias FRMORM = Bit!(9, Mutability.rw);

        /*********************************************************************
         Data toggle error mask
        */
        alias DTERRM = Bit!(10, Mutability.rw);
    }

    /*************************************************************************
     OTG_FS host channel-11 transfer size
          register
    */
    final abstract class OTG_FS_HCTSIZ11 : Register!(0x230)
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
         Data PID
        */
        alias DPID = BitField!(30, 29, Mutability.rw);
    }
}
