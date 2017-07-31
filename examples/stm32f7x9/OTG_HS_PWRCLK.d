module stm32f7x9.otg_hs_pwrclk;

import stm32f7x9.mmio;

/*****************************************************************************
 USB on the go high speed
*/
final abstract class OTG_HS_PWRCLK : Peripheral!(0x40040E00)
{
    /*************************************************************************
     Power and clock gating control
          register
    */
    final abstract class OTG_HS_PCGCR : Register!(0x0)
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
         PHY suspended
        */
        alias PHYSUSP = Bit!(4, Mutability.rw);
    }
}
