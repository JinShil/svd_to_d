module stm32f7x9.crc;

import stm32f7x9.mmio;

/*****************************************************************************
 Cryptographic processor
*/
final abstract class CRC : Peripheral!(0x40023000)
{
    /*************************************************************************
     Data register
    */
    final abstract class DR : Register!(00)
    {
        /*********************************************************************
         Data Register
        */
        alias DR = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Independent Data register
    */
    final abstract class IDR : Register!(0x4)
    {
        /*********************************************************************
         Independent Data register
        */
        alias IDR = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     Control register
    */
    final abstract class CR : Register!(0x8)
    {
        /*********************************************************************
         Control regidter
        */
        alias CR = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     Initial CRC value
    */
    final abstract class INIT : Register!(0xc)
    {
        /*********************************************************************
         Programmable initial CRC
              value
        */
        alias CRC_INIT = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     CRC polynomial
    */
    final abstract class POL : Register!(0x10)
    {
        /*********************************************************************
         Programmable polynomial
        */
        alias POL = BitField!(31, 0, Mutability.rw);
    }
}
