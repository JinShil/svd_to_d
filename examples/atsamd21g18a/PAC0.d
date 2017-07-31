module atsamd21g18a.pac0;

import atsamd21g18a.mmio;

/*****************************************************************************
 Peripheral Access Controller 0
*/
final abstract class PAC0 : Peripheral!(0x40000000)
{
    /*************************************************************************
     Write Protection Clear
    */
    final abstract class WPCLR : Register!(0x0)
    {
        /*********************************************************************
         Write Protection Clear
        */
        alias WP = BitField!(31, 1, Mutability.rw);
    }

    /*************************************************************************
     Write Protection Set
    */
    final abstract class WPSET : Register!(0x4)
    {
        /*********************************************************************
         Write Protection Set
        */
        alias WP = BitField!(31, 1, Mutability.rw);
    }
}
