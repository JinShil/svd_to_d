module stm32f7x9.otg_hs_host;

import stm32f7x9.mmio;

/*****************************************************************************
 USB on the go high speed
*/
final abstract class OTG_HS_HOST : Peripheral!(0x40040400)
{
    /*************************************************************************
     OTG_HS host configuration
          register
    */
    final abstract class OTG_HS_HCFG : Register!(0x0)
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
     OTG_HS Host frame interval
          register
    */
    final abstract class OTG_HS_HFIR : Register!(0x4)
    {
        /*********************************************************************
         Frame interval
        */
        alias FRIVL = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS host frame number/frame time
          remaining register
    */
    final abstract class OTG_HS_HFNUM : Register!(0x8)
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
     OTG_HS_Host periodic transmit FIFO/queue
          status register
    */
    final abstract class OTG_HS_HPTXSTS : Register!(0x10)
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
     OTG_HS Host all channels interrupt
          register
    */
    final abstract class OTG_HS_HAINT : Register!(0x14)
    {
        /*********************************************************************
         Channel interrupts
        */
        alias HAINT = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS host all channels interrupt mask
          register
    */
    final abstract class OTG_HS_HAINTMSK : Register!(0x18)
    {
        /*********************************************************************
         Channel interrupt mask
        */
        alias HAINTM = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS host port control and status
          register
    */
    final abstract class OTG_HS_HPRT : Register!(0x40)
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
     OTG_HS host channel-0 characteristics
          register
    */
    final abstract class OTG_HS_HCCHAR0 : Register!(0x100)
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
         Multi Count (MC) / Error Count
              (EC)
        */
        alias MC = BitField!(21, 20, Mutability.rw);

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
     OTG_HS host channel-1 characteristics
          register
    */
    final abstract class OTG_HS_HCCHAR1 : Register!(0x120)
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
         Multi Count (MC) / Error Count
              (EC)
        */
        alias MC = BitField!(21, 20, Mutability.rw);

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
     OTG_HS host channel-2 characteristics
          register
    */
    final abstract class OTG_HS_HCCHAR2 : Register!(0x140)
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
         Multi Count (MC) / Error Count
              (EC)
        */
        alias MC = BitField!(21, 20, Mutability.rw);

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
     OTG_HS host channel-3 characteristics
          register
    */
    final abstract class OTG_HS_HCCHAR3 : Register!(0x160)
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
         Multi Count (MC) / Error Count
              (EC)
        */
        alias MC = BitField!(21, 20, Mutability.rw);

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
     OTG_HS host channel-4 characteristics
          register
    */
    final abstract class OTG_HS_HCCHAR4 : Register!(0x180)
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
         Multi Count (MC) / Error Count
              (EC)
        */
        alias MC = BitField!(21, 20, Mutability.rw);

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
     OTG_HS host channel-5 characteristics
          register
    */
    final abstract class OTG_HS_HCCHAR5 : Register!(0x1A0)
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
         Multi Count (MC) / Error Count
              (EC)
        */
        alias MC = BitField!(21, 20, Mutability.rw);

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
     OTG_HS host channel-6 characteristics
          register
    */
    final abstract class OTG_HS_HCCHAR6 : Register!(0x1C0)
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
         Multi Count (MC) / Error Count
              (EC)
        */
        alias MC = BitField!(21, 20, Mutability.rw);

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
     OTG_HS host channel-7 characteristics
          register
    */
    final abstract class OTG_HS_HCCHAR7 : Register!(0x1E0)
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
         Multi Count (MC) / Error Count
              (EC)
        */
        alias MC = BitField!(21, 20, Mutability.rw);

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
     OTG_HS host channel-8 characteristics
          register
    */
    final abstract class OTG_HS_HCCHAR8 : Register!(0x200)
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
         Multi Count (MC) / Error Count
              (EC)
        */
        alias MC = BitField!(21, 20, Mutability.rw);

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
     OTG_HS host channel-9 characteristics
          register
    */
    final abstract class OTG_HS_HCCHAR9 : Register!(0x220)
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
         Multi Count (MC) / Error Count
              (EC)
        */
        alias MC = BitField!(21, 20, Mutability.rw);

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
     OTG_HS host channel-10 characteristics
          register
    */
    final abstract class OTG_HS_HCCHAR10 : Register!(0x240)
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
         Multi Count (MC) / Error Count
              (EC)
        */
        alias MC = BitField!(21, 20, Mutability.rw);

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
     OTG_HS host channel-11 characteristics
          register
    */
    final abstract class OTG_HS_HCCHAR11 : Register!(0x260)
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
         Multi Count (MC) / Error Count
              (EC)
        */
        alias MC = BitField!(21, 20, Mutability.rw);

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
     OTG_HS host channel-0 split control
          register
    */
    final abstract class OTG_HS_HCSPLT0 : Register!(0x104)
    {
        /*********************************************************************
         Port address
        */
        alias PRTADDR = BitField!(6, 0, Mutability.rw);

        /*********************************************************************
         Hub address
        */
        alias HUBADDR = BitField!(13, 7, Mutability.rw);

        /*********************************************************************
         XACTPOS
        */
        alias XACTPOS = BitField!(15, 14, Mutability.rw);

        /*********************************************************************
         Do complete split
        */
        alias COMPLSPLT = Bit!(16, Mutability.rw);

        /*********************************************************************
         Split enable
        */
        alias SPLITEN = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS host channel-1 split control
          register
    */
    final abstract class OTG_HS_HCSPLT1 : Register!(0x124)
    {
        /*********************************************************************
         Port address
        */
        alias PRTADDR = BitField!(6, 0, Mutability.rw);

        /*********************************************************************
         Hub address
        */
        alias HUBADDR = BitField!(13, 7, Mutability.rw);

        /*********************************************************************
         XACTPOS
        */
        alias XACTPOS = BitField!(15, 14, Mutability.rw);

        /*********************************************************************
         Do complete split
        */
        alias COMPLSPLT = Bit!(16, Mutability.rw);

        /*********************************************************************
         Split enable
        */
        alias SPLITEN = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS host channel-2 split control
          register
    */
    final abstract class OTG_HS_HCSPLT2 : Register!(0x144)
    {
        /*********************************************************************
         Port address
        */
        alias PRTADDR = BitField!(6, 0, Mutability.rw);

        /*********************************************************************
         Hub address
        */
        alias HUBADDR = BitField!(13, 7, Mutability.rw);

        /*********************************************************************
         XACTPOS
        */
        alias XACTPOS = BitField!(15, 14, Mutability.rw);

        /*********************************************************************
         Do complete split
        */
        alias COMPLSPLT = Bit!(16, Mutability.rw);

        /*********************************************************************
         Split enable
        */
        alias SPLITEN = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS host channel-3 split control
          register
    */
    final abstract class OTG_HS_HCSPLT3 : Register!(0x164)
    {
        /*********************************************************************
         Port address
        */
        alias PRTADDR = BitField!(6, 0, Mutability.rw);

        /*********************************************************************
         Hub address
        */
        alias HUBADDR = BitField!(13, 7, Mutability.rw);

        /*********************************************************************
         XACTPOS
        */
        alias XACTPOS = BitField!(15, 14, Mutability.rw);

        /*********************************************************************
         Do complete split
        */
        alias COMPLSPLT = Bit!(16, Mutability.rw);

        /*********************************************************************
         Split enable
        */
        alias SPLITEN = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS host channel-4 split control
          register
    */
    final abstract class OTG_HS_HCSPLT4 : Register!(0x184)
    {
        /*********************************************************************
         Port address
        */
        alias PRTADDR = BitField!(6, 0, Mutability.rw);

        /*********************************************************************
         Hub address
        */
        alias HUBADDR = BitField!(13, 7, Mutability.rw);

        /*********************************************************************
         XACTPOS
        */
        alias XACTPOS = BitField!(15, 14, Mutability.rw);

        /*********************************************************************
         Do complete split
        */
        alias COMPLSPLT = Bit!(16, Mutability.rw);

        /*********************************************************************
         Split enable
        */
        alias SPLITEN = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS host channel-5 split control
          register
    */
    final abstract class OTG_HS_HCSPLT5 : Register!(0x1A4)
    {
        /*********************************************************************
         Port address
        */
        alias PRTADDR = BitField!(6, 0, Mutability.rw);

        /*********************************************************************
         Hub address
        */
        alias HUBADDR = BitField!(13, 7, Mutability.rw);

        /*********************************************************************
         XACTPOS
        */
        alias XACTPOS = BitField!(15, 14, Mutability.rw);

        /*********************************************************************
         Do complete split
        */
        alias COMPLSPLT = Bit!(16, Mutability.rw);

        /*********************************************************************
         Split enable
        */
        alias SPLITEN = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS host channel-6 split control
          register
    */
    final abstract class OTG_HS_HCSPLT6 : Register!(0x1C4)
    {
        /*********************************************************************
         Port address
        */
        alias PRTADDR = BitField!(6, 0, Mutability.rw);

        /*********************************************************************
         Hub address
        */
        alias HUBADDR = BitField!(13, 7, Mutability.rw);

        /*********************************************************************
         XACTPOS
        */
        alias XACTPOS = BitField!(15, 14, Mutability.rw);

        /*********************************************************************
         Do complete split
        */
        alias COMPLSPLT = Bit!(16, Mutability.rw);

        /*********************************************************************
         Split enable
        */
        alias SPLITEN = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS host channel-7 split control
          register
    */
    final abstract class OTG_HS_HCSPLT7 : Register!(0x1E4)
    {
        /*********************************************************************
         Port address
        */
        alias PRTADDR = BitField!(6, 0, Mutability.rw);

        /*********************************************************************
         Hub address
        */
        alias HUBADDR = BitField!(13, 7, Mutability.rw);

        /*********************************************************************
         XACTPOS
        */
        alias XACTPOS = BitField!(15, 14, Mutability.rw);

        /*********************************************************************
         Do complete split
        */
        alias COMPLSPLT = Bit!(16, Mutability.rw);

        /*********************************************************************
         Split enable
        */
        alias SPLITEN = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS host channel-8 split control
          register
    */
    final abstract class OTG_HS_HCSPLT8 : Register!(0x204)
    {
        /*********************************************************************
         Port address
        */
        alias PRTADDR = BitField!(6, 0, Mutability.rw);

        /*********************************************************************
         Hub address
        */
        alias HUBADDR = BitField!(13, 7, Mutability.rw);

        /*********************************************************************
         XACTPOS
        */
        alias XACTPOS = BitField!(15, 14, Mutability.rw);

        /*********************************************************************
         Do complete split
        */
        alias COMPLSPLT = Bit!(16, Mutability.rw);

        /*********************************************************************
         Split enable
        */
        alias SPLITEN = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS host channel-9 split control
          register
    */
    final abstract class OTG_HS_HCSPLT9 : Register!(0x224)
    {
        /*********************************************************************
         Port address
        */
        alias PRTADDR = BitField!(6, 0, Mutability.rw);

        /*********************************************************************
         Hub address
        */
        alias HUBADDR = BitField!(13, 7, Mutability.rw);

        /*********************************************************************
         XACTPOS
        */
        alias XACTPOS = BitField!(15, 14, Mutability.rw);

        /*********************************************************************
         Do complete split
        */
        alias COMPLSPLT = Bit!(16, Mutability.rw);

        /*********************************************************************
         Split enable
        */
        alias SPLITEN = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS host channel-10 split control
          register
    */
    final abstract class OTG_HS_HCSPLT10 : Register!(0x244)
    {
        /*********************************************************************
         Port address
        */
        alias PRTADDR = BitField!(6, 0, Mutability.rw);

        /*********************************************************************
         Hub address
        */
        alias HUBADDR = BitField!(13, 7, Mutability.rw);

        /*********************************************************************
         XACTPOS
        */
        alias XACTPOS = BitField!(15, 14, Mutability.rw);

        /*********************************************************************
         Do complete split
        */
        alias COMPLSPLT = Bit!(16, Mutability.rw);

        /*********************************************************************
         Split enable
        */
        alias SPLITEN = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS host channel-11 split control
          register
    */
    final abstract class OTG_HS_HCSPLT11 : Register!(0x264)
    {
        /*********************************************************************
         Port address
        */
        alias PRTADDR = BitField!(6, 0, Mutability.rw);

        /*********************************************************************
         Hub address
        */
        alias HUBADDR = BitField!(13, 7, Mutability.rw);

        /*********************************************************************
         XACTPOS
        */
        alias XACTPOS = BitField!(15, 14, Mutability.rw);

        /*********************************************************************
         Do complete split
        */
        alias COMPLSPLT = Bit!(16, Mutability.rw);

        /*********************************************************************
         Split enable
        */
        alias SPLITEN = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS host channel-11 interrupt
          register
    */
    final abstract class OTG_HS_HCINT0 : Register!(0x108)
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
         AHB error
        */
        alias AHBERR = Bit!(2, Mutability.rw);

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
         Response received
              interrupt
        */
        alias NYET = Bit!(6, Mutability.rw);

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
     OTG_HS host channel-1 interrupt
          register
    */
    final abstract class OTG_HS_HCINT1 : Register!(0x128)
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
         AHB error
        */
        alias AHBERR = Bit!(2, Mutability.rw);

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
         Response received
              interrupt
        */
        alias NYET = Bit!(6, Mutability.rw);

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
     OTG_HS host channel-2 interrupt
          register
    */
    final abstract class OTG_HS_HCINT2 : Register!(0x148)
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
         AHB error
        */
        alias AHBERR = Bit!(2, Mutability.rw);

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
         Response received
              interrupt
        */
        alias NYET = Bit!(6, Mutability.rw);

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
     OTG_HS host channel-3 interrupt
          register
    */
    final abstract class OTG_HS_HCINT3 : Register!(0x168)
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
         AHB error
        */
        alias AHBERR = Bit!(2, Mutability.rw);

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
         Response received
              interrupt
        */
        alias NYET = Bit!(6, Mutability.rw);

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
     OTG_HS host channel-4 interrupt
          register
    */
    final abstract class OTG_HS_HCINT4 : Register!(0x188)
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
         AHB error
        */
        alias AHBERR = Bit!(2, Mutability.rw);

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
         Response received
              interrupt
        */
        alias NYET = Bit!(6, Mutability.rw);

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
     OTG_HS host channel-5 interrupt
          register
    */
    final abstract class OTG_HS_HCINT5 : Register!(0x1A8)
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
         AHB error
        */
        alias AHBERR = Bit!(2, Mutability.rw);

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
         Response received
              interrupt
        */
        alias NYET = Bit!(6, Mutability.rw);

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
     OTG_HS host channel-6 interrupt
          register
    */
    final abstract class OTG_HS_HCINT6 : Register!(0x1C8)
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
         AHB error
        */
        alias AHBERR = Bit!(2, Mutability.rw);

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
         Response received
              interrupt
        */
        alias NYET = Bit!(6, Mutability.rw);

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
     OTG_HS host channel-7 interrupt
          register
    */
    final abstract class OTG_HS_HCINT7 : Register!(0x1E8)
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
         AHB error
        */
        alias AHBERR = Bit!(2, Mutability.rw);

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
         Response received
              interrupt
        */
        alias NYET = Bit!(6, Mutability.rw);

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
     OTG_HS host channel-8 interrupt
          register
    */
    final abstract class OTG_HS_HCINT8 : Register!(0x208)
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
         AHB error
        */
        alias AHBERR = Bit!(2, Mutability.rw);

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
         Response received
              interrupt
        */
        alias NYET = Bit!(6, Mutability.rw);

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
     OTG_HS host channel-9 interrupt
          register
    */
    final abstract class OTG_HS_HCINT9 : Register!(0x228)
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
         AHB error
        */
        alias AHBERR = Bit!(2, Mutability.rw);

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
         Response received
              interrupt
        */
        alias NYET = Bit!(6, Mutability.rw);

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
     OTG_HS host channel-10 interrupt
          register
    */
    final abstract class OTG_HS_HCINT10 : Register!(0x248)
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
         AHB error
        */
        alias AHBERR = Bit!(2, Mutability.rw);

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
         Response received
              interrupt
        */
        alias NYET = Bit!(6, Mutability.rw);

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
     OTG_HS host channel-11 interrupt
          register
    */
    final abstract class OTG_HS_HCINT11 : Register!(0x268)
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
         AHB error
        */
        alias AHBERR = Bit!(2, Mutability.rw);

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
         Response received
              interrupt
        */
        alias NYET = Bit!(6, Mutability.rw);

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
     OTG_HS host channel-11 interrupt mask
          register
    */
    final abstract class OTG_HS_HCINTMSK0 : Register!(0x10C)
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
         AHB error
        */
        alias AHBERR = Bit!(2, Mutability.rw);

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
     OTG_HS host channel-1 interrupt mask
          register
    */
    final abstract class OTG_HS_HCINTMSK1 : Register!(0x12C)
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
         AHB error
        */
        alias AHBERR = Bit!(2, Mutability.rw);

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
     OTG_HS host channel-2 interrupt mask
          register
    */
    final abstract class OTG_HS_HCINTMSK2 : Register!(0x14C)
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
         AHB error
        */
        alias AHBERR = Bit!(2, Mutability.rw);

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
     OTG_HS host channel-3 interrupt mask
          register
    */
    final abstract class OTG_HS_HCINTMSK3 : Register!(0x16C)
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
         AHB error
        */
        alias AHBERR = Bit!(2, Mutability.rw);

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
     OTG_HS host channel-4 interrupt mask
          register
    */
    final abstract class OTG_HS_HCINTMSK4 : Register!(0x18C)
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
         AHB error
        */
        alias AHBERR = Bit!(2, Mutability.rw);

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
     OTG_HS host channel-5 interrupt mask
          register
    */
    final abstract class OTG_HS_HCINTMSK5 : Register!(0x1AC)
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
         AHB error
        */
        alias AHBERR = Bit!(2, Mutability.rw);

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
     OTG_HS host channel-6 interrupt mask
          register
    */
    final abstract class OTG_HS_HCINTMSK6 : Register!(0x1CC)
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
         AHB error
        */
        alias AHBERR = Bit!(2, Mutability.rw);

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
     OTG_HS host channel-7 interrupt mask
          register
    */
    final abstract class OTG_HS_HCINTMSK7 : Register!(0x1EC)
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
         AHB error
        */
        alias AHBERR = Bit!(2, Mutability.rw);

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
     OTG_HS host channel-8 interrupt mask
          register
    */
    final abstract class OTG_HS_HCINTMSK8 : Register!(0x20C)
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
         AHB error
        */
        alias AHBERR = Bit!(2, Mutability.rw);

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
     OTG_HS host channel-9 interrupt mask
          register
    */
    final abstract class OTG_HS_HCINTMSK9 : Register!(0x22C)
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
         AHB error
        */
        alias AHBERR = Bit!(2, Mutability.rw);

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
     OTG_HS host channel-10 interrupt mask
          register
    */
    final abstract class OTG_HS_HCINTMSK10 : Register!(0x24C)
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
         AHB error
        */
        alias AHBERR = Bit!(2, Mutability.rw);

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
     OTG_HS host channel-11 interrupt mask
          register
    */
    final abstract class OTG_HS_HCINTMSK11 : Register!(0x26C)
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
         AHB error
        */
        alias AHBERR = Bit!(2, Mutability.rw);

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
     OTG_HS host channel-11 transfer size
          register
    */
    final abstract class OTG_HS_HCTSIZ0 : Register!(0x110)
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
     OTG_HS host channel-1 transfer size
          register
    */
    final abstract class OTG_HS_HCTSIZ1 : Register!(0x130)
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
     OTG_HS host channel-2 transfer size
          register
    */
    final abstract class OTG_HS_HCTSIZ2 : Register!(0x150)
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
     OTG_HS host channel-3 transfer size
          register
    */
    final abstract class OTG_HS_HCTSIZ3 : Register!(0x170)
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
     OTG_HS host channel-4 transfer size
          register
    */
    final abstract class OTG_HS_HCTSIZ4 : Register!(0x190)
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
     OTG_HS host channel-5 transfer size
          register
    */
    final abstract class OTG_HS_HCTSIZ5 : Register!(0x1B0)
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
     OTG_HS host channel-6 transfer size
          register
    */
    final abstract class OTG_HS_HCTSIZ6 : Register!(0x1D0)
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
     OTG_HS host channel-7 transfer size
          register
    */
    final abstract class OTG_HS_HCTSIZ7 : Register!(0x1F0)
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
     OTG_HS host channel-8 transfer size
          register
    */
    final abstract class OTG_HS_HCTSIZ8 : Register!(0x210)
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
     OTG_HS host channel-9 transfer size
          register
    */
    final abstract class OTG_HS_HCTSIZ9 : Register!(0x230)
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
     OTG_HS host channel-10 transfer size
          register
    */
    final abstract class OTG_HS_HCTSIZ10 : Register!(0x250)
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
     OTG_HS host channel-11 transfer size
          register
    */
    final abstract class OTG_HS_HCTSIZ11 : Register!(0x270)
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
     OTG_HS host channel-0 DMA address
          register
    */
    final abstract class OTG_HS_HCDMA0 : Register!(0x114)
    {
        /*********************************************************************
         DMA address
        */
        alias DMAADDR = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS host channel-1 DMA address
          register
    */
    final abstract class OTG_HS_HCDMA1 : Register!(0x134)
    {
        /*********************************************************************
         DMA address
        */
        alias DMAADDR = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS host channel-2 DMA address
          register
    */
    final abstract class OTG_HS_HCDMA2 : Register!(0x154)
    {
        /*********************************************************************
         DMA address
        */
        alias DMAADDR = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS host channel-3 DMA address
          register
    */
    final abstract class OTG_HS_HCDMA3 : Register!(0x174)
    {
        /*********************************************************************
         DMA address
        */
        alias DMAADDR = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS host channel-4 DMA address
          register
    */
    final abstract class OTG_HS_HCDMA4 : Register!(0x194)
    {
        /*********************************************************************
         DMA address
        */
        alias DMAADDR = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS host channel-5 DMA address
          register
    */
    final abstract class OTG_HS_HCDMA5 : Register!(0x1B4)
    {
        /*********************************************************************
         DMA address
        */
        alias DMAADDR = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS host channel-6 DMA address
          register
    */
    final abstract class OTG_HS_HCDMA6 : Register!(0x1D4)
    {
        /*********************************************************************
         DMA address
        */
        alias DMAADDR = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS host channel-7 DMA address
          register
    */
    final abstract class OTG_HS_HCDMA7 : Register!(0x1F4)
    {
        /*********************************************************************
         DMA address
        */
        alias DMAADDR = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS host channel-8 DMA address
          register
    */
    final abstract class OTG_HS_HCDMA8 : Register!(0x214)
    {
        /*********************************************************************
         DMA address
        */
        alias DMAADDR = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS host channel-9 DMA address
          register
    */
    final abstract class OTG_HS_HCDMA9 : Register!(0x234)
    {
        /*********************************************************************
         DMA address
        */
        alias DMAADDR = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS host channel-10 DMA address
          register
    */
    final abstract class OTG_HS_HCDMA10 : Register!(0x254)
    {
        /*********************************************************************
         DMA address
        */
        alias DMAADDR = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS host channel-11 DMA address
          register
    */
    final abstract class OTG_HS_HCDMA11 : Register!(0x274)
    {
        /*********************************************************************
         DMA address
        */
        alias DMAADDR = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS host channel-12 characteristics
          register
    */
    final abstract class OTG_HS_HCCHAR12 : Register!(0x278)
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
         Multi Count (MC) / Error Count
              (EC)
        */
        alias MC = BitField!(21, 20, Mutability.rw);

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
     OTG_HS host channel-12 split control
          register
    */
    final abstract class OTG_HS_HCSPLT12 : Register!(0x27C)
    {
        /*********************************************************************
         Port address
        */
        alias PRTADDR = BitField!(6, 0, Mutability.rw);

        /*********************************************************************
         Hub address
        */
        alias HUBADDR = BitField!(13, 7, Mutability.rw);

        /*********************************************************************
         XACTPOS
        */
        alias XACTPOS = BitField!(15, 14, Mutability.rw);

        /*********************************************************************
         Do complete split
        */
        alias COMPLSPLT = Bit!(16, Mutability.rw);

        /*********************************************************************
         Split enable
        */
        alias SPLITEN = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS host channel-12 interrupt
          register
    */
    final abstract class OTG_HS_HCINT12 : Register!(0x280)
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
         AHB error
        */
        alias AHBERR = Bit!(2, Mutability.rw);

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
         Response received
              interrupt
        */
        alias NYET = Bit!(6, Mutability.rw);

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
     OTG_HS host channel-12 interrupt mask
          register
    */
    final abstract class OTG_HS_HCINTMSK12 : Register!(0x284)
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
         AHB error
        */
        alias AHBERR = Bit!(2, Mutability.rw);

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
         Response received
              interrupt
        */
        alias NYET = Bit!(6, Mutability.rw);

        /*********************************************************************
         Transaction error
        */
        alias TXERRM = Bit!(7, Mutability.rw);

        /*********************************************************************
         Babble error
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
     OTG_HS host channel-12 transfer size
          register
    */
    final abstract class OTG_HS_HCTSIZ12 : Register!(0x288)
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
     OTG_HS host channel-12 DMA address
          register
    */
    final abstract class OTG_HS_HCDMA12 : Register!(0x28C)
    {
        /*********************************************************************
         DMA address
        */
        alias DMAADDR = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS host channel-13 characteristics
          register
    */
    final abstract class OTG_HS_HCCHAR13 : Register!(0x290)
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
         Multi Count (MC) / Error Count
              (EC)
        */
        alias MC = BitField!(21, 20, Mutability.rw);

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
     OTG_HS host channel-13 split control
          register
    */
    final abstract class OTG_HS_HCSPLT13 : Register!(0x294)
    {
        /*********************************************************************
         Port address
        */
        alias PRTADDR = BitField!(6, 0, Mutability.rw);

        /*********************************************************************
         Hub address
        */
        alias HUBADDR = BitField!(13, 7, Mutability.rw);

        /*********************************************************************
         XACTPOS
        */
        alias XACTPOS = BitField!(15, 14, Mutability.rw);

        /*********************************************************************
         Do complete split
        */
        alias COMPLSPLT = Bit!(16, Mutability.rw);

        /*********************************************************************
         Split enable
        */
        alias SPLITEN = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS host channel-13 interrupt
          register
    */
    final abstract class OTG_HS_HCINT13 : Register!(0x298)
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
         AHB error
        */
        alias AHBERR = Bit!(2, Mutability.rw);

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
         Response received
              interrupt
        */
        alias NYET = Bit!(6, Mutability.rw);

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
     OTG_HS host channel-13 interrupt mask
          register
    */
    final abstract class OTG_HS_HCINTMSK13 : Register!(0x29C)
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
         AHB error
        */
        alias AHBERR = Bit!(2, Mutability.rw);

        /*********************************************************************
         STALLM response received interrupt
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
         Response received
              interrupt
        */
        alias NYET = Bit!(6, Mutability.rw);

        /*********************************************************************
         Transaction error
        */
        alias TXERRM = Bit!(7, Mutability.rw);

        /*********************************************************************
         Babble error
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
     OTG_HS host channel-13 transfer size
          register
    */
    final abstract class OTG_HS_HCTSIZ13 : Register!(0x2A0)
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
     OTG_HS host channel-13 DMA address
          register
    */
    final abstract class OTG_HS_HCDMA13 : Register!(0x2A4)
    {
        /*********************************************************************
         DMA address
        */
        alias DMAADDR = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS host channel-14 characteristics
          register
    */
    final abstract class OTG_HS_HCCHAR14 : Register!(0x2A8)
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
         Multi Count (MC) / Error Count
              (EC)
        */
        alias MC = BitField!(21, 20, Mutability.rw);

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
     OTG_HS host channel-14 split control
          register
    */
    final abstract class OTG_HS_HCSPLT14 : Register!(0x2AC)
    {
        /*********************************************************************
         Port address
        */
        alias PRTADDR = BitField!(6, 0, Mutability.rw);

        /*********************************************************************
         Hub address
        */
        alias HUBADDR = BitField!(13, 7, Mutability.rw);

        /*********************************************************************
         XACTPOS
        */
        alias XACTPOS = BitField!(15, 14, Mutability.rw);

        /*********************************************************************
         Do complete split
        */
        alias COMPLSPLT = Bit!(16, Mutability.rw);

        /*********************************************************************
         Split enable
        */
        alias SPLITEN = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS host channel-14 interrupt
          register
    */
    final abstract class OTG_HS_HCINT14 : Register!(0x2B0)
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
         AHB error
        */
        alias AHBERR = Bit!(2, Mutability.rw);

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
         Response received
              interrupt
        */
        alias NYET = Bit!(6, Mutability.rw);

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
     OTG_HS host channel-14 interrupt mask
          register
    */
    final abstract class OTG_HS_HCINTMSK14 : Register!(0x2B4)
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
         AHB error
        */
        alias AHBERR = Bit!(2, Mutability.rw);

        /*********************************************************************
         STALL response received interrupt
              mask
        */
        alias STALLM = Bit!(3, Mutability.rw);

        /*********************************************************************
         NAKM response received interrupt
              mask
        */
        alias NAKM = Bit!(4, Mutability.rw);

        /*********************************************************************
         ACKM response received/transmitted
              interrupt mask
        */
        alias ACKM = Bit!(5, Mutability.rw);

        /*********************************************************************
         Response received
              interrupt
        */
        alias NYET = Bit!(6, Mutability.rw);

        /*********************************************************************
         Transaction error
        */
        alias TXERRM = Bit!(7, Mutability.rw);

        /*********************************************************************
         Babble error
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
     OTG_HS host channel-14 transfer size
          register
    */
    final abstract class OTG_HS_HCTSIZ14 : Register!(0x2B8)
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
     OTG_HS host channel-14 DMA address
          register
    */
    final abstract class OTG_HS_HCDMA14 : Register!(0x2BC)
    {
        /*********************************************************************
         DMA address
        */
        alias DMAADDR = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS host channel-15 characteristics
          register
    */
    final abstract class OTG_HS_HCCHAR15 : Register!(0x2C0)
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
         Multi Count (MC) / Error Count
              (EC)
        */
        alias MC = BitField!(21, 20, Mutability.rw);

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
     OTG_HS host channel-15 split control
          register
    */
    final abstract class OTG_HS_HCSPLT15 : Register!(0x2C4)
    {
        /*********************************************************************
         Port address
        */
        alias PRTADDR = BitField!(6, 0, Mutability.rw);

        /*********************************************************************
         Hub address
        */
        alias HUBADDR = BitField!(13, 7, Mutability.rw);

        /*********************************************************************
         XACTPOS
        */
        alias XACTPOS = BitField!(15, 14, Mutability.rw);

        /*********************************************************************
         Do complete split
        */
        alias COMPLSPLT = Bit!(16, Mutability.rw);

        /*********************************************************************
         Split enable
        */
        alias SPLITEN = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     OTG_HS host channel-15 interrupt
          register
    */
    final abstract class OTG_HS_HCINT15 : Register!(0x2C8)
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
         AHB error
        */
        alias AHBERR = Bit!(2, Mutability.rw);

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
         Response received
              interrupt
        */
        alias NYET = Bit!(6, Mutability.rw);

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
     OTG_HS host channel-15 interrupt mask
          register
    */
    final abstract class OTG_HS_HCINTMSK15 : Register!(0x2CC)
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
         AHB error
        */
        alias AHBERR = Bit!(2, Mutability.rw);

        /*********************************************************************
         STALL response received interrupt
              mask
        */
        alias STALL = Bit!(3, Mutability.rw);

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
         Response received
              interrupt
        */
        alias NYET = Bit!(6, Mutability.rw);

        /*********************************************************************
         Transaction error
        */
        alias TXERRM = Bit!(7, Mutability.rw);

        /*********************************************************************
         Babble error
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
     OTG_HS host channel-15 transfer size
          register
    */
    final abstract class OTG_HS_HCTSIZ15 : Register!(0x2D0)
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
     OTG_HS host channel-15 DMA address
          register
    */
    final abstract class OTG_HS_HCDMA15 : Register!(0x2D4)
    {
        /*********************************************************************
         DMA address
        */
        alias DMAADDR = BitField!(31, 0, Mutability.rw);
    }
}
