module stm32f7x9.iwdg;

import stm32f7x9.mmio;

/*****************************************************************************
 Independent watchdog
*/
final abstract class IWDG : Peripheral!(0x40003000)
{
    /*************************************************************************
     Key register
    */
    final abstract class KR : Register!(00)
    {
        /*********************************************************************
         Key value (write only, read
              0000h)
        */
        alias KEY = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     Prescaler register
    */
    final abstract class PR : Register!(0x4)
    {
        /*********************************************************************
         Prescaler divider
        */
        alias PR = BitField!(2, 0, Mutability.rw);
    }

    /*************************************************************************
     Reload register
    */
    final abstract class RLR : Register!(0x8)
    {
        /*********************************************************************
         Watchdog counter reload
              value
        */
        alias RL = BitField!(11, 0, Mutability.rw);
    }

    /*************************************************************************
     Status register
    */
    final abstract class SR : Register!(0xc)
    {
        /*********************************************************************
         Watchdog counter reload value
              update
        */
        alias RVU = Bit!(1, Mutability.rw);

        /*********************************************************************
         Watchdog prescaler value
              update
        */
        alias PVU = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     Window register
    */
    final abstract class WINR : Register!(0x10)
    {
        /*********************************************************************
         Watchdog counter window
              value
        */
        alias WIN = BitField!(11, 0, Mutability.rw);
    }
}
