module stm32f7x9.ethernet_mac;

import stm32f7x9.mmio;

/*****************************************************************************
 Ethernet: media access control
      (MAC)
*/
final abstract class Ethernet_MAC : Peripheral!(0x40028000)
{
    /*************************************************************************
     Ethernet MAC configuration
          register
    */
    final abstract class MACCR : Register!(0x0)
    {
        /*********************************************************************
         RE
        */
        alias RE = Bit!(2, Mutability.rw);

        /*********************************************************************
         TE
        */
        alias TE = Bit!(3, Mutability.rw);

        /*********************************************************************
         DC
        */
        alias DC = Bit!(4, Mutability.rw);

        /*********************************************************************
         BL
        */
        alias BL = BitField!(6, 5, Mutability.rw);

        /*********************************************************************
         APCS
        */
        alias APCS = Bit!(7, Mutability.rw);

        /*********************************************************************
         RD
        */
        alias RD = Bit!(9, Mutability.rw);

        /*********************************************************************
         IPCO
        */
        alias IPCO = Bit!(10, Mutability.rw);

        /*********************************************************************
         DM
        */
        alias DM = Bit!(11, Mutability.rw);

        /*********************************************************************
         LM
        */
        alias LM = Bit!(12, Mutability.rw);

        /*********************************************************************
         ROD
        */
        alias ROD = Bit!(13, Mutability.rw);

        /*********************************************************************
         FES
        */
        alias FES = Bit!(14, Mutability.rw);

        /*********************************************************************
         CSD
        */
        alias CSD = Bit!(16, Mutability.rw);

        /*********************************************************************
         IFG
        */
        alias IFG = BitField!(19, 17, Mutability.rw);

        /*********************************************************************
         JD
        */
        alias JD = Bit!(22, Mutability.rw);

        /*********************************************************************
         WD
        */
        alias WD = Bit!(23, Mutability.rw);

        /*********************************************************************
         CSTF
        */
        alias CSTF = Bit!(25, Mutability.rw);
    }

    /*************************************************************************
     Ethernet MAC frame filter
          register
    */
    final abstract class MACFFR : Register!(0x4)
    {
        /*********************************************************************
         no description available
        */
        alias PM = Bit!(0, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias HU = Bit!(1, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias HM = Bit!(2, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias DAIF = Bit!(3, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias RAM = Bit!(4, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias BFD = Bit!(5, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias PCF = Bit!(6, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias SAIF = Bit!(7, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias SAF = Bit!(8, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias HPF = Bit!(9, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias RA = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Ethernet MAC hash table high
          register
    */
    final abstract class MACHTHR : Register!(0x8)
    {
        /*********************************************************************
         no description available
        */
        alias HTH = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Ethernet MAC hash table low
          register
    */
    final abstract class MACHTLR : Register!(0xC)
    {
        /*********************************************************************
         no description available
        */
        alias HTL = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Ethernet MAC MII address
          register
    */
    final abstract class MACMIIAR : Register!(0x10)
    {
        /*********************************************************************
         no description available
        */
        alias MB = Bit!(0, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias MW = Bit!(1, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias CR = BitField!(4, 2, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias MR = BitField!(10, 6, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias PA = BitField!(15, 11, Mutability.rw);
    }

    /*************************************************************************
     Ethernet MAC MII data register
    */
    final abstract class MACMIIDR : Register!(0x14)
    {
        /*********************************************************************
         no description available
        */
        alias TD = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     Ethernet MAC flow control
          register
    */
    final abstract class MACFCR : Register!(0x18)
    {
        /*********************************************************************
         no description available
        */
        alias FCB = Bit!(0, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias TFCE = Bit!(1, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias RFCE = Bit!(2, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias UPFD = Bit!(3, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias PLT = BitField!(5, 4, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias ZQPD = Bit!(7, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias PT = BitField!(31, 16, Mutability.rw);
    }

    /*************************************************************************
     Ethernet MAC VLAN tag register
    */
    final abstract class MACVLANTR : Register!(0x1C)
    {
        /*********************************************************************
         no description available
        */
        alias VLANTI = BitField!(15, 0, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias VLANTC = Bit!(16, Mutability.rw);
    }

    /*************************************************************************
     Ethernet MAC PMT control and status
          register
    */
    final abstract class MACPMTCSR : Register!(0x2C)
    {
        /*********************************************************************
         no description available
        */
        alias PD = Bit!(0, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias MPE = Bit!(1, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias WFE = Bit!(2, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias MPR = Bit!(5, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias WFR = Bit!(6, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias GU = Bit!(9, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias WFFRPR = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Ethernet MAC debug register
    */
    final abstract class MACDBGR : Register!(0x34)
    {
        /*********************************************************************
         CR
        */
        alias CR = Bit!(0, Mutability.rw);

        /*********************************************************************
         CSR
        */
        alias CSR = Bit!(1, Mutability.rw);

        /*********************************************************************
         ROR
        */
        alias ROR = Bit!(2, Mutability.rw);

        /*********************************************************************
         MCF
        */
        alias MCF = Bit!(3, Mutability.rw);

        /*********************************************************************
         MCP
        */
        alias MCP = Bit!(4, Mutability.rw);

        /*********************************************************************
         MCFHP
        */
        alias MCFHP = Bit!(5, Mutability.rw);
    }

    /*************************************************************************
     Ethernet MAC interrupt status
          register
    */
    final abstract class MACSR : Register!(0x38)
    {
        /*********************************************************************
         no description available
        */
        alias PMTS = Bit!(3, Mutability.r);

        /*********************************************************************
         no description available
        */
        alias MMCS = Bit!(4, Mutability.r);

        /*********************************************************************
         no description available
        */
        alias MMCRS = Bit!(5, Mutability.r);

        /*********************************************************************
         no description available
        */
        alias MMCTS = Bit!(6, Mutability.r);

        /*********************************************************************
         no description available
        */
        alias TSTS = Bit!(9, Mutability.rw);
    }

    /*************************************************************************
     Ethernet MAC interrupt mask
          register
    */
    final abstract class MACIMR : Register!(0x3C)
    {
        /*********************************************************************
         no description available
        */
        alias PMTIM = Bit!(3, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias TSTIM = Bit!(9, Mutability.rw);
    }

    /*************************************************************************
     Ethernet MAC address 0 high
          register
    */
    final abstract class MACA0HR : Register!(0x40)
    {
        /*********************************************************************
         MAC address0 high
        */
        alias MACA0H = BitField!(15, 0, Mutability.rw);

        /*********************************************************************
         Always 1
        */
        alias MO = Bit!(31, Mutability.r);
    }

    /*************************************************************************
     Ethernet MAC address 0 low
          register
    */
    final abstract class MACA0LR : Register!(0x44)
    {
        /*********************************************************************
         0
        */
        alias MACA0L = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Ethernet MAC address 1 high
          register
    */
    final abstract class MACA1HR : Register!(0x48)
    {
        /*********************************************************************
         no description available
        */
        alias MACA1H = BitField!(15, 0, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias MBC = BitField!(29, 24, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias SA = Bit!(30, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias AE = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Ethernet MAC address1 low
          register
    */
    final abstract class MACA1LR : Register!(0x4C)
    {
        /*********************************************************************
         no description available
        */
        alias MACA1LR = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Ethernet MAC address 2 high
          register
    */
    final abstract class MACA2HR : Register!(0x50)
    {
        /*********************************************************************
         no description available
        */
        alias MAC2AH = BitField!(15, 0, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias MBC = BitField!(29, 24, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias SA = Bit!(30, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias AE = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Ethernet MAC address 2 low
          register
    */
    final abstract class MACA2LR : Register!(0x54)
    {
        /*********************************************************************
         no description available
        */
        alias MACA2L = BitField!(30, 0, Mutability.rw);
    }

    /*************************************************************************
     Ethernet MAC address 3 high
          register
    */
    final abstract class MACA3HR : Register!(0x58)
    {
        /*********************************************************************
         no description available
        */
        alias MACA3H = BitField!(15, 0, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias MBC = BitField!(29, 24, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias SA = Bit!(30, Mutability.rw);

        /*********************************************************************
         no description available
        */
        alias AE = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Ethernet MAC address 3 low
          register
    */
    final abstract class MACA3LR : Register!(0x5C)
    {
        /*********************************************************************
         no description available
        */
        alias MBCA3L = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Ethernet MAC remote wakeup frame filter
          register
    */
    final abstract class MACRWUFFER : Register!(0x60)
    {
    }
}
