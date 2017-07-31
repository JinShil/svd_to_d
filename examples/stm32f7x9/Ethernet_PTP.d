module stm32f7x9.ethernet_ptp;

import stm32f7x9.mmio;

/*****************************************************************************
 Ethernet: Precision time protocol
*/
final abstract class Ethernet_PTP : Peripheral!(0x40028700)
{
    /*************************************************************************
     Ethernet PTP time stamp control
          register
    */
    final abstract class PTPTSCR : Register!(0x0)
    {
        /*********************************************************************
         no description available
        */
        alias TSE = Bit!(0, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias TSFCU = Bit!(1, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias TSPTPPSV2E = Bit!(10, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias TSSPTPOEFE = Bit!(11, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias TSSIPV6FE = Bit!(12, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias TSSIPV4FE = Bit!(13, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias TSSEME = Bit!(14, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias TSSMRME = Bit!(15, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias TSCNT = BitField!(17, 16, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias TSPFFMAE = Bit!(18, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias TSSTI = Bit!(2, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias TSSTU = Bit!(3, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias TSITE = Bit!(4, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias TTSARU = Bit!(5, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias TSSARFE = Bit!(8, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias TSSSR = Bit!(9, Mutability.rw);
    }

    /*************************************************************************
     Ethernet PTP subsecond increment
          register
    */
    final abstract class PTPSSIR : Register!(0x4)
    {
        /*********************************************************************
         no description available
        */
        alias STSSI = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     Ethernet PTP time stamp high
          register
    */
    final abstract class PTPTSHR : Register!(0x8)
    {
        /*********************************************************************
         no description available
        */
        alias STS = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Ethernet PTP time stamp low
          register
    */
    final abstract class PTPTSLR : Register!(0xC)
    {
        /*********************************************************************
         no description available
        */
        alias STSS = BitField!(30, 0, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias STPNS = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Ethernet PTP time stamp high update
          register
    */
    final abstract class PTPTSHUR : Register!(0x10)
    {
        /*********************************************************************
         no description available
        */
        alias TSUS = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Ethernet PTP time stamp low update
          register
    */
    final abstract class PTPTSLUR : Register!(0x14)
    {
        /*********************************************************************
         no description available
        */
        alias TSUSS = BitField!(30, 0, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias TSUPNS = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Ethernet PTP time stamp addend
          register
    */
    final abstract class PTPTSAR : Register!(0x18)
    {
        /*********************************************************************
         no description available
        */
        alias TSA = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Ethernet PTP target time high
          register
    */
    final abstract class PTPTTHR : Register!(0x1C)
    {
        /*********************************************************************
         0
        */
        alias TTSH = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Ethernet PTP target time low
          register
    */
    final abstract class PTPTTLR : Register!(0x20)
    {
        /*********************************************************************
         no description available
        */
        alias TTSL = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Ethernet PTP time stamp status
          register
    */
    final abstract class PTPTSSR : Register!(0x28)
    {
        /*********************************************************************
         no description available
        */
        alias TSSO = Bit!(0, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias TSTTR = Bit!(1, Mutability.rw);
    }

    /*************************************************************************
     Ethernet PTP PPS control
          register
    */
    final abstract class PTPPPSCR : Register!(0x2C)
    {
        /*********************************************************************
         TSSO
        */
        alias TSSO = Bit!(0, Mutability.rw);

        /*********************************************************************
         TSTTR
        */
        alias TSTTR = Bit!(1, Mutability.rw);
    }
}
