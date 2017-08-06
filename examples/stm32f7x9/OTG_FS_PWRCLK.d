module stm32f7x9.otg_fs_pwrclk;

import stm32f7x9.mmio;

/*****************************************************************************
 USB on the go full speed
*/
final abstract class OTG_FS_PWRCLK : Peripheral!(0x50000E00)
{
    /*************************************************************************
     OTG_FS power and clock gating control
          register (OTG_FS_PCGCCTL)
    */
    final abstract class OTG_FS_PCGCCTL : Register!(00)
    {
        /*********************************************************************
         Stop PHY clock
        */
        alias STPPCLK = Bit!(0, Mutability.rw);

        /*********************************************************************
         Gate HCLK
        */
        alias GATEHCLK = Bit!(1, Mutability.rw);

        /*********************************************************************
         PHY Suspended
        */
        alias PHYSUSP = Bit!(4, Mutability.rw);
    }
}
