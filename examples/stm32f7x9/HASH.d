module stm32f7x9.hash;

import stm32f7x9.mmio;

/*****************************************************************************
 Hash processor
*/
final abstract class HASH : Peripheral!(0x50060400)
{
    /*************************************************************************
     control register
    */
    final abstract class CR : Register!(00)
    {
        /*********************************************************************
         Initialize message digest
              calculation
        */
        alias INIT = Bit!(2, Mutability.w);

        /*********************************************************************
         DMA enable
        */
        alias DMAE = Bit!(3, Mutability.rw);

        /*********************************************************************
         Data type selection
        */
        alias DATATYPE = BitField!(5, 4, Mutability.rw);

        /*********************************************************************
         Mode selection
        */
        alias MODE = Bit!(6, Mutability.rw);

        /*********************************************************************
         Algorithm selection
        */
        alias ALGO0 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Number of words already
              pushed
        */
        alias NBW = BitField!(11, 8, Mutability.r);

        /*********************************************************************
         DIN not empty
        */
        alias DINNE = Bit!(12, Mutability.r);

        /*********************************************************************
         Multiple DMA Transfers
        */
        alias MDMAT = Bit!(13, Mutability.rw);

        /*********************************************************************
         Long key selection
        */
        alias LKEY = Bit!(16, Mutability.rw);

        /*********************************************************************
         ALGO
        */
        alias ALGO1 = Bit!(18, Mutability.rw);
    }

    /*************************************************************************
     data input register
    */
    final abstract class DIN : Register!(0x4)
    {
        /*********************************************************************
         Data input
        */
        alias DATAIN = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     start register
    */
    final abstract class STR : Register!(0x8)
    {
        /*********************************************************************
         Digest calculation
        */
        alias DCAL = Bit!(8, Mutability.w);

        /*********************************************************************
         Number of valid bits in the last word of
              the message
        */
        alias NBLW = BitField!(4, 0, Mutability.rw);
    }

    /*************************************************************************
     digest registers
    */
    final abstract class HR0 : Register!(0xc)
    {
        /*********************************************************************
         H0
        */
        alias H0 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     digest registers
    */
    final abstract class HR1 : Register!(0x10)
    {
        /*********************************************************************
         H1
        */
        alias H1 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     digest registers
    */
    final abstract class HR2 : Register!(0x14)
    {
        /*********************************************************************
         H2
        */
        alias H2 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     digest registers
    */
    final abstract class HR3 : Register!(0x18)
    {
        /*********************************************************************
         H3
        */
        alias H3 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     digest registers
    */
    final abstract class HR4 : Register!(0x1c)
    {
        /*********************************************************************
         H4
        */
        alias H4 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     interrupt enable register
    */
    final abstract class IMR : Register!(0x20)
    {
        /*********************************************************************
         Digest calculation completion interrupt
              enable
        */
        alias DCIE = Bit!(1, Mutability.rw);

        /*********************************************************************
         Data input interrupt
              enable
        */
        alias DINIE = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     status register
    */
    final abstract class SR : Register!(0x24)
    {
        /*********************************************************************
         Busy bit
        */
        alias BUSY = Bit!(3, Mutability.r);

        /*********************************************************************
         DMA Status
        */
        alias DMAS = Bit!(2, Mutability.r);

        /*********************************************************************
         Digest calculation completion interrupt
              status
        */
        alias DCIS = Bit!(1, Mutability.rw);

        /*********************************************************************
         Data input interrupt
              status
        */
        alias DINIS = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR0 : Register!(0xf8)
    {
        /*********************************************************************
         CSR0
        */
        alias CSR0 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR1 : Register!(0xfc)
    {
        /*********************************************************************
         CSR1
        */
        alias CSR1 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR2 : Register!(0x100)
    {
        /*********************************************************************
         CSR2
        */
        alias CSR2 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR3 : Register!(0x104)
    {
        /*********************************************************************
         CSR3
        */
        alias CSR3 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR4 : Register!(0x108)
    {
        /*********************************************************************
         CSR4
        */
        alias CSR4 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR5 : Register!(0x10c)
    {
        /*********************************************************************
         CSR5
        */
        alias CSR5 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR6 : Register!(0x110)
    {
        /*********************************************************************
         CSR6
        */
        alias CSR6 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR7 : Register!(0x114)
    {
        /*********************************************************************
         CSR7
        */
        alias CSR7 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR8 : Register!(0x118)
    {
        /*********************************************************************
         CSR8
        */
        alias CSR8 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR9 : Register!(0x11c)
    {
        /*********************************************************************
         CSR9
        */
        alias CSR9 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR10 : Register!(0x120)
    {
        /*********************************************************************
         CSR10
        */
        alias CSR10 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR11 : Register!(0x124)
    {
        /*********************************************************************
         CSR11
        */
        alias CSR11 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR12 : Register!(0x128)
    {
        /*********************************************************************
         CSR12
        */
        alias CSR12 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR13 : Register!(0x12c)
    {
        /*********************************************************************
         CSR13
        */
        alias CSR13 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR14 : Register!(0x130)
    {
        /*********************************************************************
         CSR14
        */
        alias CSR14 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR15 : Register!(0x134)
    {
        /*********************************************************************
         CSR15
        */
        alias CSR15 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR16 : Register!(0x138)
    {
        /*********************************************************************
         CSR16
        */
        alias CSR16 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR17 : Register!(0x13c)
    {
        /*********************************************************************
         CSR17
        */
        alias CSR17 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR18 : Register!(0x140)
    {
        /*********************************************************************
         CSR18
        */
        alias CSR18 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR19 : Register!(0x144)
    {
        /*********************************************************************
         CSR19
        */
        alias CSR19 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR20 : Register!(0x148)
    {
        /*********************************************************************
         CSR20
        */
        alias CSR20 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR21 : Register!(0x14c)
    {
        /*********************************************************************
         CSR21
        */
        alias CSR21 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR22 : Register!(0x150)
    {
        /*********************************************************************
         CSR22
        */
        alias CSR22 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR23 : Register!(0x154)
    {
        /*********************************************************************
         CSR23
        */
        alias CSR23 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR24 : Register!(0x158)
    {
        /*********************************************************************
         CSR24
        */
        alias CSR24 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR25 : Register!(0x15c)
    {
        /*********************************************************************
         CSR25
        */
        alias CSR25 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR26 : Register!(0x160)
    {
        /*********************************************************************
         CSR26
        */
        alias CSR26 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR27 : Register!(0x164)
    {
        /*********************************************************************
         CSR27
        */
        alias CSR27 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR28 : Register!(0x168)
    {
        /*********************************************************************
         CSR28
        */
        alias CSR28 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR29 : Register!(0x16c)
    {
        /*********************************************************************
         CSR29
        */
        alias CSR29 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR30 : Register!(0x170)
    {
        /*********************************************************************
         CSR30
        */
        alias CSR30 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR31 : Register!(0x174)
    {
        /*********************************************************************
         CSR31
        */
        alias CSR31 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR32 : Register!(0x178)
    {
        /*********************************************************************
         CSR32
        */
        alias CSR32 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR33 : Register!(0x17c)
    {
        /*********************************************************************
         CSR33
        */
        alias CSR33 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR34 : Register!(0x180)
    {
        /*********************************************************************
         CSR34
        */
        alias CSR34 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR35 : Register!(0x184)
    {
        /*********************************************************************
         CSR35
        */
        alias CSR35 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR36 : Register!(0x188)
    {
        /*********************************************************************
         CSR36
        */
        alias CSR36 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR37 : Register!(0x18c)
    {
        /*********************************************************************
         CSR37
        */
        alias CSR37 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR38 : Register!(0x190)
    {
        /*********************************************************************
         CSR38
        */
        alias CSR38 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR39 : Register!(0x194)
    {
        /*********************************************************************
         CSR39
        */
        alias CSR39 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR40 : Register!(0x198)
    {
        /*********************************************************************
         CSR40
        */
        alias CSR40 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR41 : Register!(0x19c)
    {
        /*********************************************************************
         CSR41
        */
        alias CSR41 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR42 : Register!(0x1a0)
    {
        /*********************************************************************
         CSR42
        */
        alias CSR42 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR43 : Register!(0x1a4)
    {
        /*********************************************************************
         CSR43
        */
        alias CSR43 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR44 : Register!(0x1a8)
    {
        /*********************************************************************
         CSR44
        */
        alias CSR44 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR45 : Register!(0x1ac)
    {
        /*********************************************************************
         CSR45
        */
        alias CSR45 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR46 : Register!(0x1b0)
    {
        /*********************************************************************
         CSR46
        */
        alias CSR46 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR47 : Register!(0x1b4)
    {
        /*********************************************************************
         CSR47
        */
        alias CSR47 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR48 : Register!(0x1b8)
    {
        /*********************************************************************
         CSR48
        */
        alias CSR48 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR49 : Register!(0x1bc)
    {
        /*********************************************************************
         CSR49
        */
        alias CSR49 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR50 : Register!(0x1c0)
    {
        /*********************************************************************
         CSR50
        */
        alias CSR50 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR51 : Register!(0x1c4)
    {
        /*********************************************************************
         CSR51
        */
        alias CSR51 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR52 : Register!(0x1c8)
    {
        /*********************************************************************
         CSR52
        */
        alias CSR52 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     context swap registers
    */
    final abstract class CSR53 : Register!(0x1cc)
    {
        /*********************************************************************
         CSR53
        */
        alias CSR53 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     HASH digest register
    */
    final abstract class HASH_HR0 : Register!(0x310)
    {
        /*********************************************************************
         H0
        */
        alias H0 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     read-only
    */
    final abstract class HASH_HR1 : Register!(0x314)
    {
        /*********************************************************************
         H1
        */
        alias H1 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     read-only
    */
    final abstract class HASH_HR2 : Register!(0x318)
    {
        /*********************************************************************
         H2
        */
        alias H2 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     read-only
    */
    final abstract class HASH_HR3 : Register!(0x31c)
    {
        /*********************************************************************
         H3
        */
        alias H3 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     read-only
    */
    final abstract class HASH_HR4 : Register!(0x320)
    {
        /*********************************************************************
         H4
        */
        alias H4 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     read-only
    */
    final abstract class HASH_HR5 : Register!(0x324)
    {
        /*********************************************************************
         H5
        */
        alias H5 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     read-only
    */
    final abstract class HASH_HR6 : Register!(0x328)
    {
        /*********************************************************************
         H6
        */
        alias H6 = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     read-only
    */
    final abstract class HASH_HR7 : Register!(0x32c)
    {
        /*********************************************************************
         H7
        */
        alias H7 = BitField!(31, 0, Mutability.rw);
    }
}
