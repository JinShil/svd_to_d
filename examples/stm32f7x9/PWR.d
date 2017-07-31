module stm32f7x9.pwr;

import stm32f7x9.mmio;

/*****************************************************************************
 Power control
*/
final abstract class PWR : Peripheral!(0x40007000)
{
    /*************************************************************************
     power control register
    */
    final abstract class CR1 : Register!(0x0)
    {
        /*********************************************************************
         Low-power deep sleep
        */
        alias LPDS = Bit!(0, Mutability.rw);

        /*********************************************************************
         Power down deepsleep
        */
        alias PDDS = Bit!(1, Mutability.rw);

        /*********************************************************************
         Clear standby flag
        */
        alias CSBF = Bit!(3, Mutability.rw);

        /*********************************************************************
         Power voltage detector
              enable
        */
        alias PVDE = Bit!(4, Mutability.rw);

        /*********************************************************************
         PVD level selection
        */
        alias PLS = BitField!(7, 5, Mutability.rw);

        /*********************************************************************
         Disable backup domain write
              protection
        */
        alias DBP = Bit!(8, Mutability.rw);

        /*********************************************************************
         Flash power down in Stop
              mode
        */
        alias FPDS = Bit!(9, Mutability.rw);

        /*********************************************************************
         Low-power regulator in deepsleep
              under-drive mode
        */
        alias LPUDS = Bit!(10, Mutability.rw);

        /*********************************************************************
         Main regulator in deepsleep under-drive
              mode
        */
        alias MRUDS = Bit!(11, Mutability.rw);

        /*********************************************************************
         ADCDC1
        */
        alias ADCDC1 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Regulator voltage scaling output
              selection
        */
        alias VOS = BitField!(15, 14, Mutability.rw);

        /*********************************************************************
         Over-drive enable
        */
        alias ODEN = Bit!(16, Mutability.rw);

        /*********************************************************************
         Over-drive switching
              enabled
        */
        alias ODSWEN = Bit!(17, Mutability.rw);

        /*********************************************************************
         Under-drive enable in stop
              mode
        */
        alias UDEN = BitField!(19, 18, Mutability.rw);
    }

    /*************************************************************************
     power control/status register
    */
    final abstract class CSR1 : Register!(0x4)
    {
        /*********************************************************************
         Wakeup internal flag
        */
        alias WUIF = Bit!(0, Mutability.r);

        /*********************************************************************
         Standby flag
        */
        alias SBF = Bit!(1, Mutability.r);

        /*********************************************************************
         PVD output
        */
        alias PVDO = Bit!(2, Mutability.r);

        /*********************************************************************
         Backup regulator ready
        */
        alias BRR = Bit!(3, Mutability.r);

        /*********************************************************************
         Backup regulator enable
        */
        alias BRE = Bit!(9, Mutability.rw);

        /*********************************************************************
         Regulator voltage scaling output
              selection ready bit
        */
        alias VOSRDY = Bit!(14, Mutability.rw);

        /*********************************************************************
         Over-drive mode ready
        */
        alias ODRDY = Bit!(16, Mutability.rw);

        /*********************************************************************
         Over-drive mode switching
              ready
        */
        alias ODSWRDY = Bit!(17, Mutability.rw);

        /*********************************************************************
         Under-drive ready flag
        */
        alias UDRDY = BitField!(19, 18, Mutability.rw);
    }

    /*************************************************************************
     power control register
    */
    final abstract class CR2 : Register!(0x8)
    {
        /*********************************************************************
         Clear Wakeup Pin flag for
              PA0
        */
        alias CWUPF1 = Bit!(0, Mutability.r);

        /*********************************************************************
         Clear Wakeup Pin flag for
              PA2
        */
        alias CWUPF2 = Bit!(1, Mutability.r);

        /*********************************************************************
         Clear Wakeup Pin flag for
              PC1
        */
        alias CWUPF3 = Bit!(2, Mutability.r);

        /*********************************************************************
         Clear Wakeup Pin flag for
              PC13
        */
        alias CWUPF4 = Bit!(3, Mutability.r);

        /*********************************************************************
         Clear Wakeup Pin flag for
              PI8
        */
        alias CWUPF5 = Bit!(4, Mutability.r);

        /*********************************************************************
         Clear Wakeup Pin flag for
              PI11
        */
        alias CWUPF6 = Bit!(5, Mutability.r);

        /*********************************************************************
         Wakeup pin polarity bit for
              PA0
        */
        alias WUPP1 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Wakeup pin polarity bit for
              PA2
        */
        alias WUPP2 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Wakeup pin polarity bit for
              PC1
        */
        alias WUPP3 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Wakeup pin polarity bit for
              PC13
        */
        alias WUPP4 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Wakeup pin polarity bit for
              PI8
        */
        alias WUPP5 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Wakeup pin polarity bit for
              PI11
        */
        alias WUPP6 = Bit!(13, Mutability.rw);
    }

    /*************************************************************************
     power control/status register
    */
    final abstract class CSR2 : Register!(0xC)
    {
        /*********************************************************************
         Wakeup Pin flag for PA0
        */
        alias WUPF1 = Bit!(0, Mutability.r);

        /*********************************************************************
         Wakeup Pin flag for PA2
        */
        alias WUPF2 = Bit!(1, Mutability.r);

        /*********************************************************************
         Wakeup Pin flag for PC1
        */
        alias WUPF3 = Bit!(2, Mutability.r);

        /*********************************************************************
         Wakeup Pin flag for PC13
        */
        alias WUPF4 = Bit!(3, Mutability.r);

        /*********************************************************************
         Wakeup Pin flag for PI8
        */
        alias WUPF5 = Bit!(4, Mutability.r);

        /*********************************************************************
         Wakeup Pin flag for PI11
        */
        alias WUPF6 = Bit!(5, Mutability.r);

        /*********************************************************************
         Enable Wakeup pin for PA0
        */
        alias EWUP1 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Enable Wakeup pin for PA2
        */
        alias EWUP2 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Enable Wakeup pin for PC1
        */
        alias EWUP3 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Enable Wakeup pin for PC13
        */
        alias EWUP4 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Enable Wakeup pin for PI8
        */
        alias EWUP5 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Enable Wakeup pin for PI11
        */
        alias EWUP6 = Bit!(13, Mutability.rw);
    }
}
