module stm32f7x9.dcmi;

import stm32f7x9.mmio;

/*****************************************************************************
 Digital camera interface
*/
final abstract class DCMI : Peripheral!(0x50050000)
{
    /*************************************************************************
     control register 1
    */
    final abstract class CR : Register!(0x0)
    {
        /*********************************************************************
         DCMI enable
        */
        alias ENABLE = Bit!(14, Mutability.rw);

        /*********************************************************************
         Extended data mode
        */
        alias EDM = BitField!(11, 10, Mutability.rw);

        /*********************************************************************
         Frame capture rate control
        */
        alias FCRC = BitField!(9, 8, Mutability.rw);

        /*********************************************************************
         Vertical synchronization
              polarity
        */
        alias VSPOL = Bit!(7, Mutability.rw);

        /*********************************************************************
         Horizontal synchronization
              polarity
        */
        alias HSPOL = Bit!(6, Mutability.rw);

        /*********************************************************************
         Pixel clock polarity
        */
        alias PCKPOL = Bit!(5, Mutability.rw);

        /*********************************************************************
         Embedded synchronization
              select
        */
        alias ESS = Bit!(4, Mutability.rw);

        /*********************************************************************
         JPEG format
        */
        alias JPEG = Bit!(3, Mutability.rw);

        /*********************************************************************
         Crop feature
        */
        alias CROP = Bit!(2, Mutability.rw);

        /*********************************************************************
         Capture mode
        */
        alias CM = Bit!(1, Mutability.rw);

        /*********************************************************************
         Capture enable
        */
        alias CAPTURE = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     status register
    */
    final abstract class SR : Register!(0x4)
    {
        /*********************************************************************
         FIFO not empty
        */
        alias FNE = Bit!(2, Mutability.rw);

        /*********************************************************************
         VSYNC
        */
        alias VSYNC = Bit!(1, Mutability.rw);

        /*********************************************************************
         HSYNC
        */
        alias HSYNC = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     raw interrupt status register
    */
    final abstract class RIS : Register!(0x8)
    {
        /*********************************************************************
         Line raw interrupt status
        */
        alias LINE_RIS = Bit!(4, Mutability.rw);

        /*********************************************************************
         VSYNC raw interrupt status
        */
        alias VSYNC_RIS = Bit!(3, Mutability.rw);

        /*********************************************************************
         Synchronization error raw interrupt
              status
        */
        alias ERR_RIS = Bit!(2, Mutability.rw);

        /*********************************************************************
         Overrun raw interrupt
              status
        */
        alias OVR_RIS = Bit!(1, Mutability.rw);

        /*********************************************************************
         Capture complete raw interrupt
              status
        */
        alias FRAME_RIS = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     interrupt enable register
    */
    final abstract class IER : Register!(0xC)
    {
        /*********************************************************************
         Line interrupt enable
        */
        alias LINE_IE = Bit!(4, Mutability.rw);

        /*********************************************************************
         VSYNC interrupt enable
        */
        alias VSYNC_IE = Bit!(3, Mutability.rw);

        /*********************************************************************
         Synchronization error interrupt
              enable
        */
        alias ERR_IE = Bit!(2, Mutability.rw);

        /*********************************************************************
         Overrun interrupt enable
        */
        alias OVR_IE = Bit!(1, Mutability.rw);

        /*********************************************************************
         Capture complete interrupt
              enable
        */
        alias FRAME_IE = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     masked interrupt status
          register
    */
    final abstract class MIS : Register!(0x10)
    {
        /*********************************************************************
         Line masked interrupt
              status
        */
        alias LINE_MIS = Bit!(4, Mutability.rw);

        /*********************************************************************
         VSYNC masked interrupt
              status
        */
        alias VSYNC_MIS = Bit!(3, Mutability.rw);

        /*********************************************************************
         Synchronization error masked interrupt
              status
        */
        alias ERR_MIS = Bit!(2, Mutability.rw);

        /*********************************************************************
         Overrun masked interrupt
              status
        */
        alias OVR_MIS = Bit!(1, Mutability.rw);

        /*********************************************************************
         Capture complete masked interrupt
              status
        */
        alias FRAME_MIS = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     interrupt clear register
    */
    final abstract class ICR : Register!(0x14)
    {
        /*********************************************************************
         line interrupt status
              clear
        */
        alias LINE_ISC = Bit!(4, Mutability.rw);

        /*********************************************************************
         Vertical synch interrupt status
              clear
        */
        alias VSYNC_ISC = Bit!(3, Mutability.rw);

        /*********************************************************************
         Synchronization error interrupt status
              clear
        */
        alias ERR_ISC = Bit!(2, Mutability.rw);

        /*********************************************************************
         Overrun interrupt status
              clear
        */
        alias OVR_ISC = Bit!(1, Mutability.rw);

        /*********************************************************************
         Capture complete interrupt status
              clear
        */
        alias FRAME_ISC = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     embedded synchronization code
          register
    */
    final abstract class ESCR : Register!(0x18)
    {
        /*********************************************************************
         Frame end delimiter code
        */
        alias FEC = BitField!(31, 24, Mutability.rw);

        /*********************************************************************
         Line end delimiter code
        */
        alias LEC = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         Line start delimiter code
        */
        alias LSC = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         Frame start delimiter code
        */
        alias FSC = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     embedded synchronization unmask
          register
    */
    final abstract class ESUR : Register!(0x1C)
    {
        /*********************************************************************
         Frame end delimiter unmask
        */
        alias FEU = BitField!(31, 24, Mutability.rw);

        /*********************************************************************
         Line end delimiter unmask
        */
        alias LEU = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         Line start delimiter
              unmask
        */
        alias LSU = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         Frame start delimiter
              unmask
        */
        alias FSU = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     crop window start
    */
    final abstract class CWSTRT : Register!(0x20)
    {
        /*********************************************************************
         Vertical start line count
        */
        alias VST = BitField!(28, 16, Mutability.rw);

        /*********************************************************************
         Horizontal offset count
        */
        alias HOFFCNT = BitField!(13, 0, Mutability.rw);
    }

    /*************************************************************************
     crop window size
    */
    final abstract class CWSIZE : Register!(0x24)
    {
        /*********************************************************************
         Vertical line count
        */
        alias VLINE = BitField!(29, 16, Mutability.rw);

        /*********************************************************************
         Capture count
        */
        alias CAPCNT = BitField!(13, 0, Mutability.rw);
    }

    /*************************************************************************
     data register
    */
    final abstract class DR : Register!(0x28)
    {
        /*********************************************************************
         Data byte 3
        */
        alias Byte3 = BitField!(31, 24, Mutability.rw);

        /*********************************************************************
         Data byte 2
        */
        alias Byte2 = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         Data byte 1
        */
        alias Byte1 = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         Data byte 0
        */
        alias Byte0 = BitField!(7, 0, Mutability.rw);
    }
}
