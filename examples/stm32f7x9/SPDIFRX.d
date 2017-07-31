module stm32f7x9.spdifrx;

import stm32f7x9.mmio;

/*****************************************************************************
 Receiver Interface
*/
final abstract class SPDIFRX : Peripheral!(0x40004000)
{
    /*************************************************************************
     Control register
    */
    final abstract class CR : Register!(0x0)
    {
        /*********************************************************************
         Peripheral Block Enable
        */
        alias SPDIFEN = BitField!(1, 0, Mutability.rw);

        /*********************************************************************
         Receiver DMA ENable for data
              flow
        */
        alias RXDMAEN = Bit!(2, Mutability.rw);

        /*********************************************************************
         STerEO Mode
        */
        alias RXSTEO = Bit!(3, Mutability.rw);

        /*********************************************************************
         RX Data format
        */
        alias DRFMT = BitField!(5, 4, Mutability.rw);

        /*********************************************************************
         Mask Parity error bit
        */
        alias PMSK = Bit!(6, Mutability.rw);

        /*********************************************************************
         Mask of Validity bit
        */
        alias VMSK = Bit!(7, Mutability.rw);

        /*********************************************************************
         Mask of channel status and user
              bits
        */
        alias CUMSK = Bit!(8, Mutability.rw);

        /*********************************************************************
         Mask of Preamble Type bits
        */
        alias PTMSK = Bit!(9, Mutability.rw);

        /*********************************************************************
         Control Buffer DMA ENable for control
              flow
        */
        alias CBDMAEN = Bit!(10, Mutability.rw);

        /*********************************************************************
         Channel Selection
        */
        alias CHSEL = Bit!(11, Mutability.rw);

        /*********************************************************************
         Maximum allowed re-tries during
              synchronization phase
        */
        alias NBTR = BitField!(13, 12, Mutability.rw);

        /*********************************************************************
         Wait For Activity
        */
        alias WFA = Bit!(14, Mutability.rw);

        /*********************************************************************
         input selection
        */
        alias INSEL = BitField!(18, 16, Mutability.rw);
    }

    /*************************************************************************
     Interrupt mask register
    */
    final abstract class IMR : Register!(0x4)
    {
        /*********************************************************************
         RXNE interrupt enable
        */
        alias RXNEIE = Bit!(0, Mutability.rw);

        /*********************************************************************
         Control Buffer Ready Interrupt
              Enable
        */
        alias CSRNEIE = Bit!(1, Mutability.rw);

        /*********************************************************************
         Parity error interrupt
              enable
        */
        alias PERRIE = Bit!(2, Mutability.rw);

        /*********************************************************************
         Overrun error Interrupt
              Enable
        */
        alias OVRIE = Bit!(3, Mutability.rw);

        /*********************************************************************
         Synchronization Block Detected Interrupt
              Enable
        */
        alias SBLKIE = Bit!(4, Mutability.rw);

        /*********************************************************************
         Synchronization Done
        */
        alias SYNCDIE = Bit!(5, Mutability.rw);

        /*********************************************************************
         Serial Interface Error Interrupt
              Enable
        */
        alias IFEIE = Bit!(6, Mutability.rw);
    }

    /*************************************************************************
     Status register
    */
    final abstract class SR : Register!(0x8)
    {
        /*********************************************************************
         Read data register not
              empty
        */
        alias RXNE = Bit!(0, Mutability.rw);

        /*********************************************************************
         Control Buffer register is not
              empty
        */
        alias CSRNE = Bit!(1, Mutability.rw);

        /*********************************************************************
         Parity error
        */
        alias PERR = Bit!(2, Mutability.rw);

        /*********************************************************************
         Overrun error
        */
        alias OVR = Bit!(3, Mutability.rw);

        /*********************************************************************
         Synchronization Block
              Detected
        */
        alias SBD = Bit!(4, Mutability.rw);

        /*********************************************************************
         Synchronization Done
        */
        alias SYNCD = Bit!(5, Mutability.rw);

        /*********************************************************************
         Framing error
        */
        alias FERR = Bit!(6, Mutability.rw);

        /*********************************************************************
         Synchronization error
        */
        alias SERR = Bit!(7, Mutability.rw);

        /*********************************************************************
         Time-out error
        */
        alias TERR = Bit!(8, Mutability.rw);

        /*********************************************************************
         Duration of 5 symbols counted with
              SPDIF_CLK
        */
        alias WIDTH5 = BitField!(30, 16, Mutability.rw);
    }

    /*************************************************************************
     Interrupt Flag Clear register
    */
    final abstract class IFCR : Register!(0xC)
    {
        /*********************************************************************
         Clears the Parity error
              flag
        */
        alias PERRCF = Bit!(2, Mutability.rw);

        /*********************************************************************
         Clears the Overrun error
              flag
        */
        alias OVRCF = Bit!(3, Mutability.rw);

        /*********************************************************************
         Clears the Synchronization Block
              Detected flag
        */
        alias SBDCF = Bit!(4, Mutability.rw);

        /*********************************************************************
         Clears the Synchronization Done
              flag
        */
        alias SYNCDCF = Bit!(5, Mutability.rw);
    }

    /*************************************************************************
     Data input register
    */
    final abstract class DR : Register!(0x10)
    {
        /*********************************************************************
         Parity Error bit
        */
        alias DR = BitField!(23, 0, Mutability.rw);

        /*********************************************************************
         Parity Error bit
        */
        alias PE = Bit!(24, Mutability.rw);

        /*********************************************************************
         Validity bit
        */
        alias V = Bit!(25, Mutability.rw);

        /*********************************************************************
         User bit
        */
        alias U = Bit!(26, Mutability.rw);

        /*********************************************************************
         Channel Status bit
        */
        alias C = Bit!(27, Mutability.rw);

        /*********************************************************************
         Preamble Type
        */
        alias PT = BitField!(29, 28, Mutability.rw);
    }

    /*************************************************************************
     Channel Status register
    */
    final abstract class CSR : Register!(0x14)
    {
        /*********************************************************************
         User data information
        */
        alias USR = BitField!(15, 0, Mutability.rw);

        /*********************************************************************
         Channel A status
              information
        */
        alias CS = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         Start Of Block
        */
        alias SOB = Bit!(24, Mutability.rw);
    }

    /*************************************************************************
     Debug Information register
    */
    final abstract class DIR : Register!(0x18)
    {
        /*********************************************************************
         Threshold HIGH
        */
        alias THI = BitField!(12, 0, Mutability.rw);

        /*********************************************************************
         Threshold LOW
        */
        alias TLO = BitField!(28, 16, Mutability.rw);
    }
}
