module stm32f7x9.ethernet_mmc;

import stm32f7x9.mmio;

/*****************************************************************************
 Ethernet: MAC management counters
*/
final abstract class Ethernet_MMC : Peripheral!(0x40028100)
{
    /*************************************************************************
     Ethernet MMC control register
    */
    final abstract class MMCCR : Register!(00)
    {
        /*********************************************************************
         no description available
        */
        alias CR = Bit!(0, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias CSR = Bit!(1, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias ROR = Bit!(2, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias MCF = Bit!(3, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias MCP = Bit!(4, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias MCFHP = Bit!(5, Mutability.rw);
    }

    /*************************************************************************
     Ethernet MMC receive interrupt
          register
    */
    final abstract class MMCRIR : Register!(0x4)
    {
        /*********************************************************************
         no description available
        */
        alias RFCES = Bit!(5, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias RFAES = Bit!(6, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias RGUFS = Bit!(17, Mutability.rw);
    }

    /*************************************************************************
     Ethernet MMC transmit interrupt
          register
    */
    final abstract class MMCTIR : Register!(0x8)
    {
        /*********************************************************************
         no description available
        */
        alias TGFSCS = Bit!(14, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias TGFMSCS = Bit!(15, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias TGFS = Bit!(21, Mutability.rw);
    }

    /*************************************************************************
     Ethernet MMC receive interrupt mask
          register
    */
    final abstract class MMCRIMR : Register!(0xc)
    {
        /*********************************************************************
         no description available
        */
        alias RFCEM = Bit!(5, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias RFAEM = Bit!(6, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias RGUFM = Bit!(17, Mutability.rw);
    }

    /*************************************************************************
     Ethernet MMC transmit interrupt mask
          register
    */
    final abstract class MMCTIMR : Register!(0x10)
    {
        /*********************************************************************
         no description available
        */
        alias TGFSCM = Bit!(14, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias TGFMSCM = Bit!(15, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias TGFM = Bit!(16, Mutability.rw);
    }

    /*************************************************************************
     Ethernet MMC transmitted good frames after a
          single collision counter
    */
    final abstract class MMCTGFSCCR : Register!(0x4c)
    {
        /*********************************************************************
         no description available
        */
        alias TGFSCC = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Ethernet MMC transmitted good frames after
          more than a single collision
    */
    final abstract class MMCTGFMSCCR : Register!(0x50)
    {
        /*********************************************************************
         no description available
        */
        alias TGFMSCC = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Ethernet MMC transmitted good frames counter
          register
    */
    final abstract class MMCTGFCR : Register!(0x68)
    {
        /*********************************************************************
         HTL
        */
        alias TGFC = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Ethernet MMC received frames with CRC error
          counter register
    */
    final abstract class MMCRFCECR : Register!(0x94)
    {
        /*********************************************************************
         no description available
        */
        alias RFCFC = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Ethernet MMC received frames with alignment
          error counter register
    */
    final abstract class MMCRFAECR : Register!(0x98)
    {
        /*********************************************************************
         no description available
        */
        alias RFAEC = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     MMC received good unicast frames counter
          register
    */
    final abstract class MMCRGUFCR : Register!(0xc4)
    {
        /*********************************************************************
         no description available
        */
        alias RGUFC = BitField!(31, 0, Mutability.rw);
    }
}
