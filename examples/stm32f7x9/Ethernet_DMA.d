module stm32f7x9.ethernet_dma;

import stm32f7x9.mmio;

/*****************************************************************************
 Ethernet: DMA controller operation
*/
final abstract class Ethernet_DMA : Peripheral!(0x40029000)
{
    /*************************************************************************
     Ethernet DMA bus mode register
    */
    final abstract class DMABMR : Register!(0x0)
    {
        /*********************************************************************
         no description available
        */
        alias SR = Bit!(0, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias DA = Bit!(1, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias DSL = BitField!(6, 2, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias EDFE = Bit!(7, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias PBL = BitField!(13, 8, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias RTPR = BitField!(15, 14, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias FB = Bit!(16, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias RDP = BitField!(22, 17, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias USP = Bit!(23, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias FPM = Bit!(24, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias AAB = Bit!(25, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias MB = Bit!(26, Mutability.rw);
    }

    /*************************************************************************
     Ethernet DMA transmit poll demand
          register
    */
    final abstract class DMATPDR : Register!(0x4)
    {
        /*********************************************************************
         no description available
        */
        alias TPD = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     EHERNET DMA receive poll demand
          register
    */
    final abstract class DMARPDR : Register!(0x8)
    {
        /*********************************************************************
         RPD
        */
        alias RPD = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Ethernet DMA receive descriptor list address
          register
    */
    final abstract class DMARDLAR : Register!(0xC)
    {
        /*********************************************************************
         no description available
        */
        alias SRL = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Ethernet DMA transmit descriptor list
          address register
    */
    final abstract class DMATDLAR : Register!(0x10)
    {
        /*********************************************************************
         no description available
        */
        alias STL = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Ethernet DMA status register
    */
    final abstract class DMASR : Register!(0x14)
    {
        /*********************************************************************
         no description available
        */
        alias TS = Bit!(0, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias TPSS = Bit!(1, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias TBUS = Bit!(2, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias TJTS = Bit!(3, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias ROS = Bit!(4, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias TUS = Bit!(5, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias RS = Bit!(6, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias RBUS = Bit!(7, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias RPSS = Bit!(8, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias PWTS = Bit!(9, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias ETS = Bit!(10, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias FBES = Bit!(13, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias ERS = Bit!(14, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias AIS = Bit!(15, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias NIS = Bit!(16, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias RPS = BitField!(19, 17, Mutability.r);

        /*********************************************************************
         no description available
        */
        alias TPS = BitField!(22, 20, Mutability.r);

        /*********************************************************************
         no description available
        */
        alias EBS = BitField!(25, 23, Mutability.r);

        /*********************************************************************
         no description available
        */
        alias MMCS = Bit!(27, Mutability.r);

        /*********************************************************************
         no description available
        */
        alias PMTS = Bit!(28, Mutability.r);

        /*********************************************************************
         no description available
        */
        alias TSTS = Bit!(29, Mutability.r);
    }

    /*************************************************************************
     Ethernet DMA operation mode
          register
    */
    final abstract class DMAOMR : Register!(0x18)
    {
        /*********************************************************************
         SR
        */
        alias SR = Bit!(1, Mutability.rw);

        /*********************************************************************
         OSF
        */
        alias OSF = Bit!(2, Mutability.rw);

        /*********************************************************************
         RTC
        */
        alias RTC = BitField!(4, 3, Mutability.rw);

        /*********************************************************************
         FUGF
        */
        alias FUGF = Bit!(6, Mutability.rw);

        /*********************************************************************
         FEF
        */
        alias FEF = Bit!(7, Mutability.rw);

        /*********************************************************************
         ST
        */
        alias ST = Bit!(13, Mutability.rw);

        /*********************************************************************
         TTC
        */
        alias TTC = BitField!(16, 14, Mutability.rw);

        /*********************************************************************
         FTF
        */
        alias FTF = Bit!(20, Mutability.rw);

        /*********************************************************************
         TSF
        */
        alias TSF = Bit!(21, Mutability.rw);

        /*********************************************************************
         DFRF
        */
        alias DFRF = Bit!(24, Mutability.rw);

        /*********************************************************************
         RSF
        */
        alias RSF = Bit!(25, Mutability.rw);

        /*********************************************************************
         DTCEFD
        */
        alias DTCEFD = Bit!(26, Mutability.rw);
    }

    /*************************************************************************
     Ethernet DMA interrupt enable
          register
    */
    final abstract class DMAIER : Register!(0x1C)
    {
        /*********************************************************************
         no description available
        */
        alias TIE = Bit!(0, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias TPSIE = Bit!(1, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias TBUIE = Bit!(2, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias TJTIE = Bit!(3, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias ROIE = Bit!(4, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias TUIE = Bit!(5, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias RIE = Bit!(6, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias RBUIE = Bit!(7, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias RPSIE = Bit!(8, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias RWTIE = Bit!(9, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias ETIE = Bit!(10, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias FBEIE = Bit!(13, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias ERIE = Bit!(14, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias AISE = Bit!(15, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias NISE = Bit!(16, Mutability.rw);
    }

    /*************************************************************************
     Ethernet DMA missed frame and buffer
          overflow counter register
    */
    final abstract class DMAMFBOCR : Register!(0x20)
    {
        /*********************************************************************
         no description available
        */
        alias MFC = BitField!(15, 0, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias OMFC = Bit!(16, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias MFA = BitField!(27, 17, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias OFOC = Bit!(28, Mutability.rw);
    }

    /*************************************************************************
     Ethernet DMA receive status watchdog timer
          register
    */
    final abstract class DMARSWTR : Register!(0x24)
    {
        /*********************************************************************
         RSWTC
        */
        alias RSWTC = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     Ethernet DMA current host transmit
          descriptor register
    */
    final abstract class DMACHTDR : Register!(0x48)
    {
        /*********************************************************************
         HTDAP
        */
        alias HTDAP = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Ethernet DMA current host receive descriptor
          register
    */
    final abstract class DMACHRDR : Register!(0x4C)
    {
        /*********************************************************************
         HRDAP
        */
        alias HRDAP = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Ethernet DMA current host transmit buffer
          address register
    */
    final abstract class DMACHTBAR : Register!(0x50)
    {
        /*********************************************************************
         no description available
        */
        alias HTBAP = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Ethernet DMA current host receive buffer
          address register
    */
    final abstract class DMACHRBAR : Register!(0x54)
    {
        /*********************************************************************
         no description available
        */
        alias HRBAP = BitField!(31, 0, Mutability.rw);
    }
}
