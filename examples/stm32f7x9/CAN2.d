module stm32f7x9.can2;

import stm32f7x9.mmio;

/*****************************************************************************
 
*/
final abstract class CAN2 : Peripheral!(0x40006800)
{
    /*************************************************************************
     master control register
    */
    final abstract class MCR : Register!(00)
    {
        /*********************************************************************
         DBF
        */
        alias DBF = Bit!(16, Mutability.rw);

        /*********************************************************************
         RESET
        */
        alias RESET = Bit!(15, Mutability.rw);

        /*********************************************************************
         TTCM
        */
        alias TTCM = Bit!(7, Mutability.rw);

        /*********************************************************************
         ABOM
        */
        alias ABOM = Bit!(6, Mutability.rw);

        /*********************************************************************
         AWUM
        */
        alias AWUM = Bit!(5, Mutability.rw);

        /*********************************************************************
         NART
        */
        alias NART = Bit!(4, Mutability.rw);

        /*********************************************************************
         RFLM
        */
        alias RFLM = Bit!(3, Mutability.rw);

        /*********************************************************************
         TXFP
        */
        alias TXFP = Bit!(2, Mutability.rw);

        /*********************************************************************
         SLEEP
        */
        alias SLEEP = Bit!(1, Mutability.rw);

        /*********************************************************************
         INRQ
        */
        alias INRQ = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     master status register
    */
    final abstract class MSR : Register!(0x4)
    {
        /*********************************************************************
         RX
        */
        alias RX = Bit!(11, Mutability.r);

        /*********************************************************************
         SAMP
        */
        alias SAMP = Bit!(10, Mutability.r);

        /*********************************************************************
         RXM
        */
        alias RXM = Bit!(9, Mutability.r);

        /*********************************************************************
         TXM
        */
        alias TXM = Bit!(8, Mutability.r);

        /*********************************************************************
         SLAKI
        */
        alias SLAKI = Bit!(4, Mutability.rw);

        /*********************************************************************
         WKUI
        */
        alias WKUI = Bit!(3, Mutability.rw);

        /*********************************************************************
         ERRI
        */
        alias ERRI = Bit!(2, Mutability.rw);

        /*********************************************************************
         SLAK
        */
        alias SLAK = Bit!(1, Mutability.r);

        /*********************************************************************
         INAK
        */
        alias INAK = Bit!(0, Mutability.r);
    }

    /*************************************************************************
     transmit status register
    */
    final abstract class TSR : Register!(0x8)
    {
        /*********************************************************************
         Lowest priority flag for mailbox
              2
        */
        alias LOW2 = Bit!(31, Mutability.r);

        /*********************************************************************
         Lowest priority flag for mailbox
              1
        */
        alias LOW1 = Bit!(30, Mutability.r);

        /*********************************************************************
         Lowest priority flag for mailbox
              0
        */
        alias LOW0 = Bit!(29, Mutability.r);

        /*********************************************************************
         Lowest priority flag for mailbox
              2
        */
        alias TME2 = Bit!(28, Mutability.r);

        /*********************************************************************
         Lowest priority flag for mailbox
              1
        */
        alias TME1 = Bit!(27, Mutability.r);

        /*********************************************************************
         Lowest priority flag for mailbox
              0
        */
        alias TME0 = Bit!(26, Mutability.r);

        /*********************************************************************
         CODE
        */
        alias CODE = BitField!(25, 24, Mutability.r);

        /*********************************************************************
         ABRQ2
        */
        alias ABRQ2 = Bit!(23, Mutability.rw);

        /*********************************************************************
         TERR2
        */
        alias TERR2 = Bit!(19, Mutability.rw);

        /*********************************************************************
         ALST2
        */
        alias ALST2 = Bit!(18, Mutability.rw);

        /*********************************************************************
         TXOK2
        */
        alias TXOK2 = Bit!(17, Mutability.rw);

        /*********************************************************************
         RQCP2
        */
        alias RQCP2 = Bit!(16, Mutability.rw);

        /*********************************************************************
         ABRQ1
        */
        alias ABRQ1 = Bit!(15, Mutability.rw);

        /*********************************************************************
         TERR1
        */
        alias TERR1 = Bit!(11, Mutability.rw);

        /*********************************************************************
         ALST1
        */
        alias ALST1 = Bit!(10, Mutability.rw);

        /*********************************************************************
         TXOK1
        */
        alias TXOK1 = Bit!(9, Mutability.rw);

        /*********************************************************************
         RQCP1
        */
        alias RQCP1 = Bit!(8, Mutability.rw);

        /*********************************************************************
         ABRQ0
        */
        alias ABRQ0 = Bit!(7, Mutability.rw);

        /*********************************************************************
         TERR0
        */
        alias TERR0 = Bit!(3, Mutability.rw);

        /*********************************************************************
         ALST0
        */
        alias ALST0 = Bit!(2, Mutability.rw);

        /*********************************************************************
         TXOK0
        */
        alias TXOK0 = Bit!(1, Mutability.rw);

        /*********************************************************************
         RQCP0
        */
        alias RQCP0 = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     receive FIFO 0 register
    */
    final abstract class RF0R : Register!(0xc)
    {
        /*********************************************************************
         RFOM0
        */
        alias RFOM0 = Bit!(5, Mutability.rw);

        /*********************************************************************
         FOVR0
        */
        alias FOVR0 = Bit!(4, Mutability.rw);

        /*********************************************************************
         FULL0
        */
        alias FULL0 = Bit!(3, Mutability.rw);

        /*********************************************************************
         FMP0
        */
        alias FMP0 = BitField!(1, 0, Mutability.r);
    }

    /*************************************************************************
     receive FIFO 1 register
    */
    final abstract class RF1R : Register!(0x10)
    {
        /*********************************************************************
         RFOM1
        */
        alias RFOM1 = Bit!(5, Mutability.rw);

        /*********************************************************************
         FOVR1
        */
        alias FOVR1 = Bit!(4, Mutability.rw);

        /*********************************************************************
         FULL1
        */
        alias FULL1 = Bit!(3, Mutability.rw);

        /*********************************************************************
         FMP1
        */
        alias FMP1 = BitField!(1, 0, Mutability.r);
    }

    /*************************************************************************
     interrupt enable register
    */
    final abstract class IER : Register!(0x14)
    {
        /*********************************************************************
         SLKIE
        */
        alias SLKIE = Bit!(17, Mutability.rw);

        /*********************************************************************
         WKUIE
        */
        alias WKUIE = Bit!(16, Mutability.rw);

        /*********************************************************************
         ERRIE
        */
        alias ERRIE = Bit!(15, Mutability.rw);

        /*********************************************************************
         LECIE
        */
        alias LECIE = Bit!(11, Mutability.rw);

        /*********************************************************************
         BOFIE
        */
        alias BOFIE = Bit!(10, Mutability.rw);

        /*********************************************************************
         EPVIE
        */
        alias EPVIE = Bit!(9, Mutability.rw);

        /*********************************************************************
         EWGIE
        */
        alias EWGIE = Bit!(8, Mutability.rw);

        /*********************************************************************
         FOVIE1
        */
        alias FOVIE1 = Bit!(6, Mutability.rw);

        /*********************************************************************
         FFIE1
        */
        alias FFIE1 = Bit!(5, Mutability.rw);

        /*********************************************************************
         FMPIE1
        */
        alias FMPIE1 = Bit!(4, Mutability.rw);

        /*********************************************************************
         FOVIE0
        */
        alias FOVIE0 = Bit!(3, Mutability.rw);

        /*********************************************************************
         FFIE0
        */
        alias FFIE0 = Bit!(2, Mutability.rw);

        /*********************************************************************
         FMPIE0
        */
        alias FMPIE0 = Bit!(1, Mutability.rw);

        /*********************************************************************
         TMEIE
        */
        alias TMEIE = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     interrupt enable register
    */
    final abstract class ESR : Register!(0x18)
    {
        /*********************************************************************
         REC
        */
        alias REC = BitField!(31, 24, Mutability.r);

        /*********************************************************************
         TEC
        */
        alias TEC = BitField!(23, 16, Mutability.r);

        /*********************************************************************
         LEC
        */
        alias LEC = BitField!(6, 4, Mutability.rw);

        /*********************************************************************
         BOFF
        */
        alias BOFF = Bit!(2, Mutability.r);

        /*********************************************************************
         EPVF
        */
        alias EPVF = Bit!(1, Mutability.r);

        /*********************************************************************
         EWGF
        */
        alias EWGF = Bit!(0, Mutability.r);
    }

    /*************************************************************************
     bit timing register
    */
    final abstract class BTR : Register!(0x1c)
    {
        /*********************************************************************
         SILM
        */
        alias SILM = Bit!(31, Mutability.rw);

        /*********************************************************************
         LBKM
        */
        alias LBKM = Bit!(30, Mutability.rw);

        /*********************************************************************
         SJW
        */
        alias SJW = BitField!(25, 24, Mutability.rw);

        /*********************************************************************
         TS2
        */
        alias TS2 = BitField!(22, 20, Mutability.rw);

        /*********************************************************************
         TS1
        */
        alias TS1 = BitField!(19, 16, Mutability.rw);

        /*********************************************************************
         BRP
        */
        alias BRP = BitField!(9, 0, Mutability.rw);
    }

    /*************************************************************************
     TX mailbox identifier register
    */
    final abstract class TI0R : Register!(0x180)
    {
        /*********************************************************************
         STID
        */
        alias STID = BitField!(31, 21, Mutability.rw);

        /*********************************************************************
         EXID
        */
        alias EXID = BitField!(20, 3, Mutability.rw);

        /*********************************************************************
         IDE
        */
        alias IDE = Bit!(2, Mutability.rw);

        /*********************************************************************
         RTR
        */
        alias RTR = Bit!(1, Mutability.rw);

        /*********************************************************************
         TXRQ
        */
        alias TXRQ = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     mailbox data length control and time stamp
          register
    */
    final abstract class TDT0R : Register!(0x184)
    {
        /*********************************************************************
         TIME
        */
        alias TIME = BitField!(31, 16, Mutability.rw);

        /*********************************************************************
         TGT
        */
        alias TGT = Bit!(8, Mutability.rw);

        /*********************************************************************
         DLC
        */
        alias DLC = BitField!(3, 0, Mutability.rw);
    }

    /*************************************************************************
     mailbox data low register
    */
    final abstract class TDL0R : Register!(0x188)
    {
        /*********************************************************************
         DATA3
        */
        alias DATA3 = BitField!(31, 24, Mutability.rw);

        /*********************************************************************
         DATA2
        */
        alias DATA2 = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         DATA1
        */
        alias DATA1 = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         DATA0
        */
        alias DATA0 = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     mailbox data high register
    */
    final abstract class TDH0R : Register!(0x18c)
    {
        /*********************************************************************
         DATA7
        */
        alias DATA7 = BitField!(31, 24, Mutability.rw);

        /*********************************************************************
         DATA6
        */
        alias DATA6 = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         DATA5
        */
        alias DATA5 = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         DATA4
        */
        alias DATA4 = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     mailbox identifier register
    */
    final abstract class TI1R : Register!(0x190)
    {
        /*********************************************************************
         STID
        */
        alias STID = BitField!(31, 21, Mutability.rw);

        /*********************************************************************
         EXID
        */
        alias EXID = BitField!(20, 3, Mutability.rw);

        /*********************************************************************
         IDE
        */
        alias IDE = Bit!(2, Mutability.rw);

        /*********************************************************************
         RTR
        */
        alias RTR = Bit!(1, Mutability.rw);

        /*********************************************************************
         TXRQ
        */
        alias TXRQ = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     mailbox data length control and time stamp
          register
    */
    final abstract class TDT1R : Register!(0x194)
    {
        /*********************************************************************
         TIME
        */
        alias TIME = BitField!(31, 16, Mutability.rw);

        /*********************************************************************
         TGT
        */
        alias TGT = Bit!(8, Mutability.rw);

        /*********************************************************************
         DLC
        */
        alias DLC = BitField!(3, 0, Mutability.rw);
    }

    /*************************************************************************
     mailbox data low register
    */
    final abstract class TDL1R : Register!(0x198)
    {
        /*********************************************************************
         DATA3
        */
        alias DATA3 = BitField!(31, 24, Mutability.rw);

        /*********************************************************************
         DATA2
        */
        alias DATA2 = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         DATA1
        */
        alias DATA1 = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         DATA0
        */
        alias DATA0 = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     mailbox data high register
    */
    final abstract class TDH1R : Register!(0x19c)
    {
        /*********************************************************************
         DATA7
        */
        alias DATA7 = BitField!(31, 24, Mutability.rw);

        /*********************************************************************
         DATA6
        */
        alias DATA6 = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         DATA5
        */
        alias DATA5 = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         DATA4
        */
        alias DATA4 = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     mailbox identifier register
    */
    final abstract class TI2R : Register!(0x1a0)
    {
        /*********************************************************************
         STID
        */
        alias STID = BitField!(31, 21, Mutability.rw);

        /*********************************************************************
         EXID
        */
        alias EXID = BitField!(20, 3, Mutability.rw);

        /*********************************************************************
         IDE
        */
        alias IDE = Bit!(2, Mutability.rw);

        /*********************************************************************
         RTR
        */
        alias RTR = Bit!(1, Mutability.rw);

        /*********************************************************************
         TXRQ
        */
        alias TXRQ = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     mailbox data length control and time stamp
          register
    */
    final abstract class TDT2R : Register!(0x1a4)
    {
        /*********************************************************************
         TIME
        */
        alias TIME = BitField!(31, 16, Mutability.rw);

        /*********************************************************************
         TGT
        */
        alias TGT = Bit!(8, Mutability.rw);

        /*********************************************************************
         DLC
        */
        alias DLC = BitField!(3, 0, Mutability.rw);
    }

    /*************************************************************************
     mailbox data low register
    */
    final abstract class TDL2R : Register!(0x1a8)
    {
        /*********************************************************************
         DATA3
        */
        alias DATA3 = BitField!(31, 24, Mutability.rw);

        /*********************************************************************
         DATA2
        */
        alias DATA2 = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         DATA1
        */
        alias DATA1 = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         DATA0
        */
        alias DATA0 = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     mailbox data high register
    */
    final abstract class TDH2R : Register!(0x1ac)
    {
        /*********************************************************************
         DATA7
        */
        alias DATA7 = BitField!(31, 24, Mutability.rw);

        /*********************************************************************
         DATA6
        */
        alias DATA6 = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         DATA5
        */
        alias DATA5 = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         DATA4
        */
        alias DATA4 = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     receive FIFO mailbox identifier
          register
    */
    final abstract class RI0R : Register!(0x1b0)
    {
        /*********************************************************************
         STID
        */
        alias STID = BitField!(31, 21, Mutability.rw);

        /*********************************************************************
         EXID
        */
        alias EXID = BitField!(20, 3, Mutability.rw);

        /*********************************************************************
         IDE
        */
        alias IDE = Bit!(2, Mutability.rw);

        /*********************************************************************
         RTR
        */
        alias RTR = Bit!(1, Mutability.rw);
    }

    /*************************************************************************
     mailbox data high register
    */
    final abstract class RDT0R : Register!(0x1b4)
    {
        /*********************************************************************
         TIME
        */
        alias TIME = BitField!(31, 16, Mutability.rw);

        /*********************************************************************
         FMI
        */
        alias FMI = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         DLC
        */
        alias DLC = BitField!(3, 0, Mutability.rw);
    }

    /*************************************************************************
     mailbox data high register
    */
    final abstract class RDL0R : Register!(0x1b8)
    {
        /*********************************************************************
         DATA3
        */
        alias DATA3 = BitField!(31, 24, Mutability.rw);

        /*********************************************************************
         DATA2
        */
        alias DATA2 = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         DATA1
        */
        alias DATA1 = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         DATA0
        */
        alias DATA0 = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     receive FIFO mailbox data high
          register
    */
    final abstract class RDH0R : Register!(0x1bc)
    {
        /*********************************************************************
         DATA7
        */
        alias DATA7 = BitField!(31, 24, Mutability.rw);

        /*********************************************************************
         DATA6
        */
        alias DATA6 = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         DATA5
        */
        alias DATA5 = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         DATA4
        */
        alias DATA4 = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     mailbox data high register
    */
    final abstract class RI1R : Register!(0x1c0)
    {
        /*********************************************************************
         STID
        */
        alias STID = BitField!(31, 21, Mutability.rw);

        /*********************************************************************
         EXID
        */
        alias EXID = BitField!(20, 3, Mutability.rw);

        /*********************************************************************
         IDE
        */
        alias IDE = Bit!(2, Mutability.rw);

        /*********************************************************************
         RTR
        */
        alias RTR = Bit!(1, Mutability.rw);
    }

    /*************************************************************************
     mailbox data high register
    */
    final abstract class RDT1R : Register!(0x1c4)
    {
        /*********************************************************************
         TIME
        */
        alias TIME = BitField!(31, 16, Mutability.rw);

        /*********************************************************************
         FMI
        */
        alias FMI = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         DLC
        */
        alias DLC = BitField!(3, 0, Mutability.rw);
    }

    /*************************************************************************
     mailbox data high register
    */
    final abstract class RDL1R : Register!(0x1c8)
    {
        /*********************************************************************
         DATA3
        */
        alias DATA3 = BitField!(31, 24, Mutability.rw);

        /*********************************************************************
         DATA2
        */
        alias DATA2 = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         DATA1
        */
        alias DATA1 = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         DATA0
        */
        alias DATA0 = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     mailbox data high register
    */
    final abstract class RDH1R : Register!(0x1cc)
    {
        /*********************************************************************
         DATA7
        */
        alias DATA7 = BitField!(31, 24, Mutability.rw);

        /*********************************************************************
         DATA6
        */
        alias DATA6 = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         DATA5
        */
        alias DATA5 = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         DATA4
        */
        alias DATA4 = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     filter master register
    */
    final abstract class FMR : Register!(0x200)
    {
        /*********************************************************************
         CAN2SB
        */
        alias CAN2SB = BitField!(13, 8, Mutability.rw);

        /*********************************************************************
         FINIT
        */
        alias FINIT = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     filter mode register
    */
    final abstract class FM1R : Register!(0x204)
    {
        /*********************************************************************
         Filter mode
        */
        alias FBM0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter mode
        */
        alias FBM1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter mode
        */
        alias FBM2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter mode
        */
        alias FBM3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter mode
        */
        alias FBM4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter mode
        */
        alias FBM5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter mode
        */
        alias FBM6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter mode
        */
        alias FBM7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter mode
        */
        alias FBM8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter mode
        */
        alias FBM9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter mode
        */
        alias FBM10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter mode
        */
        alias FBM11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter mode
        */
        alias FBM12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter mode
        */
        alias FBM13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter mode
        */
        alias FBM14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter mode
        */
        alias FBM15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter mode
        */
        alias FBM16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter mode
        */
        alias FBM17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter mode
        */
        alias FBM18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter mode
        */
        alias FBM19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter mode
        */
        alias FBM20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter mode
        */
        alias FBM21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter mode
        */
        alias FBM22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter mode
        */
        alias FBM23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter mode
        */
        alias FBM24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter mode
        */
        alias FBM25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter mode
        */
        alias FBM26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter mode
        */
        alias FBM27 = Bit!(27, Mutability.rw);
    }

    /*************************************************************************
     filter scale register
    */
    final abstract class FS1R : Register!(0x20c)
    {
        /*********************************************************************
         Filter scale configuration
        */
        alias FSC0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter scale configuration
        */
        alias FSC1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter scale configuration
        */
        alias FSC2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter scale configuration
        */
        alias FSC3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter scale configuration
        */
        alias FSC4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter scale configuration
        */
        alias FSC5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter scale configuration
        */
        alias FSC6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter scale configuration
        */
        alias FSC7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter scale configuration
        */
        alias FSC8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter scale configuration
        */
        alias FSC9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter scale configuration
        */
        alias FSC10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter scale configuration
        */
        alias FSC11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter scale configuration
        */
        alias FSC12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter scale configuration
        */
        alias FSC13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter scale configuration
        */
        alias FSC14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter scale configuration
        */
        alias FSC15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter scale configuration
        */
        alias FSC16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter scale configuration
        */
        alias FSC17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter scale configuration
        */
        alias FSC18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter scale configuration
        */
        alias FSC19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter scale configuration
        */
        alias FSC20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter scale configuration
        */
        alias FSC21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter scale configuration
        */
        alias FSC22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter scale configuration
        */
        alias FSC23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter scale configuration
        */
        alias FSC24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter scale configuration
        */
        alias FSC25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter scale configuration
        */
        alias FSC26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter scale configuration
        */
        alias FSC27 = Bit!(27, Mutability.rw);
    }

    /*************************************************************************
     filter FIFO assignment
          register
    */
    final abstract class FFA1R : Register!(0x214)
    {
        /*********************************************************************
         Filter FIFO assignment for filter
              0
        */
        alias FFA0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter FIFO assignment for filter
              1
        */
        alias FFA1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter FIFO assignment for filter
              2
        */
        alias FFA2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter FIFO assignment for filter
              3
        */
        alias FFA3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter FIFO assignment for filter
              4
        */
        alias FFA4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter FIFO assignment for filter
              5
        */
        alias FFA5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter FIFO assignment for filter
              6
        */
        alias FFA6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter FIFO assignment for filter
              7
        */
        alias FFA7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter FIFO assignment for filter
              8
        */
        alias FFA8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter FIFO assignment for filter
              9
        */
        alias FFA9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter FIFO assignment for filter
              10
        */
        alias FFA10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter FIFO assignment for filter
              11
        */
        alias FFA11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter FIFO assignment for filter
              12
        */
        alias FFA12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter FIFO assignment for filter
              13
        */
        alias FFA13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter FIFO assignment for filter
              14
        */
        alias FFA14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter FIFO assignment for filter
              15
        */
        alias FFA15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter FIFO assignment for filter
              16
        */
        alias FFA16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter FIFO assignment for filter
              17
        */
        alias FFA17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter FIFO assignment for filter
              18
        */
        alias FFA18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter FIFO assignment for filter
              19
        */
        alias FFA19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter FIFO assignment for filter
              20
        */
        alias FFA20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter FIFO assignment for filter
              21
        */
        alias FFA21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter FIFO assignment for filter
              22
        */
        alias FFA22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter FIFO assignment for filter
              23
        */
        alias FFA23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter FIFO assignment for filter
              24
        */
        alias FFA24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter FIFO assignment for filter
              25
        */
        alias FFA25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter FIFO assignment for filter
              26
        */
        alias FFA26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter FIFO assignment for filter
              27
        */
        alias FFA27 = Bit!(27, Mutability.rw);
    }

    /*************************************************************************
     filter activation register
    */
    final abstract class FA1R : Register!(0x21c)
    {
        /*********************************************************************
         Filter active
        */
        alias FACT0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter active
        */
        alias FACT1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter active
        */
        alias FACT2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter active
        */
        alias FACT3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter active
        */
        alias FACT4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter active
        */
        alias FACT5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter active
        */
        alias FACT6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter active
        */
        alias FACT7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter active
        */
        alias FACT8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter active
        */
        alias FACT9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter active
        */
        alias FACT10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter active
        */
        alias FACT11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter active
        */
        alias FACT12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter active
        */
        alias FACT13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter active
        */
        alias FACT14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter active
        */
        alias FACT15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter active
        */
        alias FACT16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter active
        */
        alias FACT17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter active
        */
        alias FACT18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter active
        */
        alias FACT19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter active
        */
        alias FACT20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter active
        */
        alias FACT21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter active
        */
        alias FACT22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter active
        */
        alias FACT23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter active
        */
        alias FACT24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter active
        */
        alias FACT25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter active
        */
        alias FACT26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter active
        */
        alias FACT27 = Bit!(27, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 0 register 1
    */
    final abstract class F0R1 : Register!(0x240)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 0 register 2
    */
    final abstract class F0R2 : Register!(0x244)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 1 register 1
    */
    final abstract class F1R1 : Register!(0x248)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 1 register 2
    */
    final abstract class F1R2 : Register!(0x24c)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 2 register 1
    */
    final abstract class F2R1 : Register!(0x250)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 2 register 2
    */
    final abstract class F2R2 : Register!(0x254)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 3 register 1
    */
    final abstract class F3R1 : Register!(0x258)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 3 register 2
    */
    final abstract class F3R2 : Register!(0x25c)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 4 register 1
    */
    final abstract class F4R1 : Register!(0x260)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 4 register 2
    */
    final abstract class F4R2 : Register!(0x264)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 5 register 1
    */
    final abstract class F5R1 : Register!(0x268)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 5 register 2
    */
    final abstract class F5R2 : Register!(0x26c)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 6 register 1
    */
    final abstract class F6R1 : Register!(0x270)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 6 register 2
    */
    final abstract class F6R2 : Register!(0x274)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 7 register 1
    */
    final abstract class F7R1 : Register!(0x278)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 7 register 2
    */
    final abstract class F7R2 : Register!(0x27c)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 8 register 1
    */
    final abstract class F8R1 : Register!(0x280)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 8 register 2
    */
    final abstract class F8R2 : Register!(0x284)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 9 register 1
    */
    final abstract class F9R1 : Register!(0x288)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 9 register 2
    */
    final abstract class F9R2 : Register!(0x28c)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 10 register 1
    */
    final abstract class F10R1 : Register!(0x290)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 10 register 2
    */
    final abstract class F10R2 : Register!(0x294)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 11 register 1
    */
    final abstract class F11R1 : Register!(0x298)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 11 register 2
    */
    final abstract class F11R2 : Register!(0x29c)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 4 register 1
    */
    final abstract class F12R1 : Register!(0x2a0)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 12 register 2
    */
    final abstract class F12R2 : Register!(0x2a4)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 13 register 1
    */
    final abstract class F13R1 : Register!(0x2a8)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 13 register 2
    */
    final abstract class F13R2 : Register!(0x2ac)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 14 register 1
    */
    final abstract class F14R1 : Register!(0x2b0)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 14 register 2
    */
    final abstract class F14R2 : Register!(0x2b4)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 15 register 1
    */
    final abstract class F15R1 : Register!(0x2b8)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 15 register 2
    */
    final abstract class F15R2 : Register!(0x2bc)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 16 register 1
    */
    final abstract class F16R1 : Register!(0x2c0)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 16 register 2
    */
    final abstract class F16R2 : Register!(0x2c4)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 17 register 1
    */
    final abstract class F17R1 : Register!(0x2c8)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 17 register 2
    */
    final abstract class F17R2 : Register!(0x2cc)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 18 register 1
    */
    final abstract class F18R1 : Register!(0x2d0)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 18 register 2
    */
    final abstract class F18R2 : Register!(0x2d4)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 19 register 1
    */
    final abstract class F19R1 : Register!(0x2d8)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 19 register 2
    */
    final abstract class F19R2 : Register!(0x2dc)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 20 register 1
    */
    final abstract class F20R1 : Register!(0x2e0)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 20 register 2
    */
    final abstract class F20R2 : Register!(0x2e4)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 21 register 1
    */
    final abstract class F21R1 : Register!(0x2e8)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 21 register 2
    */
    final abstract class F21R2 : Register!(0x2ec)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 22 register 1
    */
    final abstract class F22R1 : Register!(0x2f0)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 22 register 2
    */
    final abstract class F22R2 : Register!(0x2f4)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 23 register 1
    */
    final abstract class F23R1 : Register!(0x2f8)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 23 register 2
    */
    final abstract class F23R2 : Register!(0x2fc)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 24 register 1
    */
    final abstract class F24R1 : Register!(0x300)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 24 register 2
    */
    final abstract class F24R2 : Register!(0x304)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 25 register 1
    */
    final abstract class F25R1 : Register!(0x308)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 25 register 2
    */
    final abstract class F25R2 : Register!(0x30c)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 26 register 1
    */
    final abstract class F26R1 : Register!(0x310)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 26 register 2
    */
    final abstract class F26R2 : Register!(0x314)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 27 register 1
    */
    final abstract class F27R1 : Register!(0x318)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     Filter bank 27 register 2
    */
    final abstract class F27R2 : Register!(0x31c)
    {
        /*********************************************************************
         Filter bits
        */
        alias FB0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB16 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB17 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB18 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB19 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB20 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB21 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB22 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB23 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB24 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB25 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB26 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB27 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB28 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB29 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB30 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Filter bits
        */
        alias FB31 = Bit!(31, Mutability.rw);
    }
}
