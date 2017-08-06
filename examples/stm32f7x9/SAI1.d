module stm32f7x9.sai1;

import stm32f7x9.mmio;

/*****************************************************************************
 Serial audio interface
*/
final abstract class SAI1 : Peripheral!(0x40015800)
{
    /*************************************************************************
     BConfiguration register 1
    */
    final abstract class BCR1 : Register!(0x24)
    {
        /*********************************************************************
         Master clock divider
        */
        alias MCJDIV = BitField!(23, 20, Mutability.rw);

        /*********************************************************************
         No divider
        */
        alias NODIV = Bit!(19, Mutability.rw);

        /*********************************************************************
         DMA enable
        */
        alias DMAEN = Bit!(17, Mutability.rw);

        /*********************************************************************
         Audio block B enable
        */
        alias SAIBEN = Bit!(16, Mutability.rw);

        /*********************************************************************
         Output drive
        */
        alias OutDri = Bit!(13, Mutability.rw);

        /*********************************************************************
         Mono mode
        */
        alias MONO = Bit!(12, Mutability.rw);

        /*********************************************************************
         Synchronization enable
        */
        alias SYNCEN = BitField!(11, 10, Mutability.rw);

        /*********************************************************************
         Clock strobing edge
        */
        alias CKSTR = Bit!(9, Mutability.rw);

        /*********************************************************************
         Least significant bit
              first
        */
        alias LSBFIRST = Bit!(8, Mutability.rw);

        /*********************************************************************
         Data size
        */
        alias DS = BitField!(7, 5, Mutability.rw);

        /*********************************************************************
         Protocol configuration
        */
        alias PRTCFG = BitField!(3, 2, Mutability.rw);

        /*********************************************************************
         Audio block mode
        */
        alias MODE = BitField!(1, 0, Mutability.rw);
    }

    /*************************************************************************
     BConfiguration register 2
    */
    final abstract class BCR2 : Register!(0x28)
    {
        /*********************************************************************
         Companding mode
        */
        alias COMP = BitField!(15, 14, Mutability.rw);

        /*********************************************************************
         Complement bit
        */
        alias CPL = Bit!(13, Mutability.rw);

        /*********************************************************************
         Mute counter
        */
        alias MUTECN = BitField!(12, 7, Mutability.rw);

        /*********************************************************************
         Mute value
        */
        alias MUTEVAL = Bit!(6, Mutability.rw);

        /*********************************************************************
         Mute
        */
        alias MUTE = Bit!(5, Mutability.rw);

        /*********************************************************************
         Tristate management on data
              line
        */
        alias TRIS = Bit!(4, Mutability.rw);

        /*********************************************************************
         FIFO flush
        */
        alias FFLUS = Bit!(3, Mutability.rw);

        /*********************************************************************
         FIFO threshold
        */
        alias FTH = BitField!(2, 0, Mutability.rw);
    }

    /*************************************************************************
     BFRCR
    */
    final abstract class BFRCR : Register!(0x2c)
    {
        /*********************************************************************
         Frame synchronization
              offset
        */
        alias FSOFF = Bit!(18, Mutability.rw);

        /*********************************************************************
         Frame synchronization
              polarity
        */
        alias FSPOL = Bit!(17, Mutability.rw);

        /*********************************************************************
         Frame synchronization
              definition
        */
        alias FSDEF = Bit!(16, Mutability.rw);

        /*********************************************************************
         Frame synchronization active level
              length
        */
        alias FSALL = BitField!(14, 8, Mutability.rw);

        /*********************************************************************
         Frame length
        */
        alias FRL = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     BSlot register
    */
    final abstract class BSLOTR : Register!(0x30)
    {
        /*********************************************************************
         Slot enable
        */
        alias SLOTEN = BitField!(31, 16, Mutability.rw);

        /*********************************************************************
         Number of slots in an audio
              frame
        */
        alias NBSLOT = BitField!(11, 8, Mutability.rw);

        /*********************************************************************
         Slot size
        */
        alias SLOTSZ = BitField!(7, 6, Mutability.rw);

        /*********************************************************************
         First bit offset
        */
        alias FBOFF = BitField!(4, 0, Mutability.rw);
    }

    /*************************************************************************
     BInterrupt mask register2
    */
    final abstract class BIM : Register!(0x34)
    {
        /*********************************************************************
         Late frame synchronization detection
              interrupt enable
        */
        alias LFSDETIE = Bit!(6, Mutability.rw);

        /*********************************************************************
         Anticipated frame synchronization
              detection interrupt enable
        */
        alias AFSDETIE = Bit!(5, Mutability.rw);

        /*********************************************************************
         Codec not ready interrupt
              enable
        */
        alias CNRDYIE = Bit!(4, Mutability.rw);

        /*********************************************************************
         FIFO request interrupt
              enable
        */
        alias FREQIE = Bit!(3, Mutability.rw);

        /*********************************************************************
         Wrong clock configuration interrupt
              enable
        */
        alias WCKCFG = Bit!(2, Mutability.rw);

        /*********************************************************************
         Mute detection interrupt
              enable
        */
        alias MUTEDET = Bit!(1, Mutability.rw);

        /*********************************************************************
         Overrun/underrun interrupt
              enable
        */
        alias OVRUDRIE = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     BStatus register
    */
    final abstract class BSR : Register!(0x38)
    {
        /*********************************************************************
         FIFO level threshold
        */
        alias FLVL = BitField!(18, 16, Mutability.rw);

        /*********************************************************************
         Late frame synchronization
              detection
        */
        alias LFSDET = Bit!(6, Mutability.rw);

        /*********************************************************************
         Anticipated frame synchronization
              detection
        */
        alias AFSDET = Bit!(5, Mutability.rw);

        /*********************************************************************
         Codec not ready
        */
        alias CNRDY = Bit!(4, Mutability.rw);

        /*********************************************************************
         FIFO request
        */
        alias FREQ = Bit!(3, Mutability.rw);

        /*********************************************************************
         Wrong clock configuration
              flag
        */
        alias WCKCFG = Bit!(2, Mutability.rw);

        /*********************************************************************
         Mute detection
        */
        alias MUTEDET = Bit!(1, Mutability.rw);

        /*********************************************************************
         Overrun / underrun
        */
        alias OVRUDR = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     BClear flag register
    */
    final abstract class BCLRFR : Register!(0x3c)
    {
        /*********************************************************************
         Clear late frame synchronization
              detection flag
        */
        alias LFSDET = Bit!(6, Mutability.rw);

        /*********************************************************************
         Clear anticipated frame synchronization
              detection flag
        */
        alias CAFSDET = Bit!(5, Mutability.rw);

        /*********************************************************************
         Clear codec not ready flag
        */
        alias CNRDY = Bit!(4, Mutability.rw);

        /*********************************************************************
         Clear wrong clock configuration
              flag
        */
        alias WCKCFG = Bit!(2, Mutability.rw);

        /*********************************************************************
         Mute detection flag
        */
        alias MUTEDET = Bit!(1, Mutability.rw);

        /*********************************************************************
         Clear overrun / underrun
        */
        alias OVRUDR = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     BData register
    */
    final abstract class BDR : Register!(0x40)
    {
        /*********************************************************************
         Data
        */
        alias DATA = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     AConfiguration register 1
    */
    final abstract class ACR1 : Register!(0x4)
    {
        /*********************************************************************
         Master clock divider
        */
        alias MCJDIV = BitField!(23, 20, Mutability.rw);

        /*********************************************************************
         No divider
        */
        alias NODIV = Bit!(19, Mutability.rw);

        /*********************************************************************
         DMA enable
        */
        alias DMAEN = Bit!(17, Mutability.rw);

        /*********************************************************************
         Audio block A enable
        */
        alias SAIAEN = Bit!(16, Mutability.rw);

        /*********************************************************************
         Output drive
        */
        alias OutDri = Bit!(13, Mutability.rw);

        /*********************************************************************
         Mono mode
        */
        alias MONO = Bit!(12, Mutability.rw);

        /*********************************************************************
         Synchronization enable
        */
        alias SYNCEN = BitField!(11, 10, Mutability.rw);

        /*********************************************************************
         Clock strobing edge
        */
        alias CKSTR = Bit!(9, Mutability.rw);

        /*********************************************************************
         Least significant bit
              first
        */
        alias LSBFIRST = Bit!(8, Mutability.rw);

        /*********************************************************************
         Data size
        */
        alias DS = BitField!(7, 5, Mutability.rw);

        /*********************************************************************
         Protocol configuration
        */
        alias PRTCFG = BitField!(3, 2, Mutability.rw);

        /*********************************************************************
         Audio block mode
        */
        alias MODE = BitField!(1, 0, Mutability.rw);
    }

    /*************************************************************************
     AConfiguration register 2
    */
    final abstract class ACR2 : Register!(0x8)
    {
        /*********************************************************************
         Companding mode
        */
        alias COMP = BitField!(15, 14, Mutability.rw);

        /*********************************************************************
         Complement bit
        */
        alias CPL = Bit!(13, Mutability.rw);

        /*********************************************************************
         Mute counter
        */
        alias MUTECN = BitField!(12, 7, Mutability.rw);

        /*********************************************************************
         Mute value
        */
        alias MUTEVAL = Bit!(6, Mutability.rw);

        /*********************************************************************
         Mute
        */
        alias MUTE = Bit!(5, Mutability.rw);

        /*********************************************************************
         Tristate management on data
              line
        */
        alias TRIS = Bit!(4, Mutability.rw);

        /*********************************************************************
         FIFO flush
        */
        alias FFLUS = Bit!(3, Mutability.rw);

        /*********************************************************************
         FIFO threshold
        */
        alias FTH = BitField!(2, 0, Mutability.rw);
    }

    /*************************************************************************
     AFRCR
    */
    final abstract class AFRCR : Register!(0xc)
    {
        /*********************************************************************
         Frame synchronization
              offset
        */
        alias FSOFF = Bit!(18, Mutability.rw);

        /*********************************************************************
         Frame synchronization
              polarity
        */
        alias FSPOL = Bit!(17, Mutability.rw);

        /*********************************************************************
         Frame synchronization
              definition
        */
        alias FSDEF = Bit!(16, Mutability.rw);

        /*********************************************************************
         Frame synchronization active level
              length
        */
        alias FSALL = BitField!(14, 8, Mutability.rw);

        /*********************************************************************
         Frame length
        */
        alias FRL = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     ASlot register
    */
    final abstract class ASLOTR : Register!(0x10)
    {
        /*********************************************************************
         Slot enable
        */
        alias SLOTEN = BitField!(31, 16, Mutability.rw);

        /*********************************************************************
         Number of slots in an audio
              frame
        */
        alias NBSLOT = BitField!(11, 8, Mutability.rw);

        /*********************************************************************
         Slot size
        */
        alias SLOTSZ = BitField!(7, 6, Mutability.rw);

        /*********************************************************************
         First bit offset
        */
        alias FBOFF = BitField!(4, 0, Mutability.rw);
    }

    /*************************************************************************
     AInterrupt mask register2
    */
    final abstract class AIM : Register!(0x14)
    {
        /*********************************************************************
         Late frame synchronization detection
              interrupt enable
        */
        alias LFSDET = Bit!(6, Mutability.rw);

        /*********************************************************************
         Anticipated frame synchronization
              detection interrupt enable
        */
        alias AFSDETIE = Bit!(5, Mutability.rw);

        /*********************************************************************
         Codec not ready interrupt
              enable
        */
        alias CNRDYIE = Bit!(4, Mutability.rw);

        /*********************************************************************
         FIFO request interrupt
              enable
        */
        alias FREQIE = Bit!(3, Mutability.rw);

        /*********************************************************************
         Wrong clock configuration interrupt
              enable
        */
        alias WCKCFG = Bit!(2, Mutability.rw);

        /*********************************************************************
         Mute detection interrupt
              enable
        */
        alias MUTEDET = Bit!(1, Mutability.rw);

        /*********************************************************************
         Overrun/underrun interrupt
              enable
        */
        alias OVRUDRIE = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     AStatus register
    */
    final abstract class ASR : Register!(0x18)
    {
        /*********************************************************************
         FIFO level threshold
        */
        alias FLVL = BitField!(18, 16, Mutability.rw);

        /*********************************************************************
         Late frame synchronization
              detection
        */
        alias LFSDET = Bit!(6, Mutability.rw);

        /*********************************************************************
         Anticipated frame synchronization
              detection
        */
        alias AFSDET = Bit!(5, Mutability.rw);

        /*********************************************************************
         Codec not ready
        */
        alias CNRDY = Bit!(4, Mutability.rw);

        /*********************************************************************
         FIFO request
        */
        alias FREQ = Bit!(3, Mutability.rw);

        /*********************************************************************
         Wrong clock configuration flag. This bit
              is read only.
        */
        alias WCKCFG = Bit!(2, Mutability.rw);

        /*********************************************************************
         Mute detection
        */
        alias MUTEDET = Bit!(1, Mutability.rw);

        /*********************************************************************
         Overrun / underrun
        */
        alias OVRUDR = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     AClear flag register
    */
    final abstract class ACLRFR : Register!(0x1c)
    {
        /*********************************************************************
         Clear late frame synchronization
              detection flag
        */
        alias LFSDET = Bit!(6, Mutability.rw);

        /*********************************************************************
         Clear anticipated frame synchronization
              detection flag.
        */
        alias CAFSDET = Bit!(5, Mutability.rw);

        /*********************************************************************
         Clear codec not ready flag
        */
        alias CNRDY = Bit!(4, Mutability.rw);

        /*********************************************************************
         Clear wrong clock configuration
              flag
        */
        alias WCKCFG = Bit!(2, Mutability.rw);

        /*********************************************************************
         Mute detection flag
        */
        alias MUTEDET = Bit!(1, Mutability.rw);

        /*********************************************************************
         Clear overrun / underrun
        */
        alias OVRUDR = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     AData register
    */
    final abstract class ADR : Register!(0x20)
    {
        /*********************************************************************
         Data
        */
        alias DATA = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Global configuration register
    */
    final abstract class GCR : Register!(00)
    {
        /*********************************************************************
         Synchronization inputs
        */
        alias SYNCIN = BitField!(1, 0, Mutability.rw);

        /*********************************************************************
         Synchronization outputs
        */
        alias SYNCOUT = BitField!(5, 4, Mutability.rw);
    }
}
