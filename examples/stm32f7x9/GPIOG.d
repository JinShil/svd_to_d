module stm32f7x9.gpiog;

import stm32f7x9.mmio;

/*****************************************************************************
 
*/
final abstract class GPIOG : Peripheral!(0X40021800)
{
    /*************************************************************************
     GPIO port mode register
    */
    final abstract class MODER : Register!(00)
    {
        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias MODER15 = BitField!(31, 30, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias MODER14 = BitField!(29, 28, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias MODER13 = BitField!(27, 26, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias MODER12 = BitField!(25, 24, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias MODER11 = BitField!(23, 22, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias MODER10 = BitField!(21, 20, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias MODER9 = BitField!(19, 18, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias MODER8 = BitField!(17, 16, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias MODER7 = BitField!(15, 14, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias MODER6 = BitField!(13, 12, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias MODER5 = BitField!(11, 10, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias MODER4 = BitField!(9, 8, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias MODER3 = BitField!(7, 6, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias MODER2 = BitField!(5, 4, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias MODER1 = BitField!(3, 2, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias MODER0 = BitField!(1, 0, Mutability.rw);
    }

    /*************************************************************************
     GPIO port output type register
    */
    final abstract class OTYPER : Register!(0x4)
    {
        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias OT15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias OT14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias OT13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias OT12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias OT11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias OT10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias OT9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias OT8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias OT7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias OT6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias OT5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias OT4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias OT3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias OT2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias OT1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias OT0 = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     GPIO port output speed
          register
    */
    final abstract class GPIOB_OSPEEDR : Register!(0x8)
    {
        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias OSPEEDR15 = BitField!(31, 30, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias OSPEEDR14 = BitField!(29, 28, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias OSPEEDR13 = BitField!(27, 26, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias OSPEEDR12 = BitField!(25, 24, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias OSPEEDR11 = BitField!(23, 22, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias OSPEEDR10 = BitField!(21, 20, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias OSPEEDR9 = BitField!(19, 18, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias OSPEEDR8 = BitField!(17, 16, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias OSPEEDR7 = BitField!(15, 14, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias OSPEEDR6 = BitField!(13, 12, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias OSPEEDR5 = BitField!(11, 10, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias OSPEEDR4 = BitField!(9, 8, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias OSPEEDR3 = BitField!(7, 6, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias OSPEEDR2 = BitField!(5, 4, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias OSPEEDR1 = BitField!(3, 2, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias OSPEEDR0 = BitField!(1, 0, Mutability.rw);
    }

    /*************************************************************************
     GPIO port pull-up/pull-down
          register
    */
    final abstract class PUPDR : Register!(0xc)
    {
        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias PUPDR15 = BitField!(31, 30, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias PUPDR14 = BitField!(29, 28, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias PUPDR13 = BitField!(27, 26, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias PUPDR12 = BitField!(25, 24, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias PUPDR11 = BitField!(23, 22, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias PUPDR10 = BitField!(21, 20, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias PUPDR9 = BitField!(19, 18, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias PUPDR8 = BitField!(17, 16, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias PUPDR7 = BitField!(15, 14, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias PUPDR6 = BitField!(13, 12, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias PUPDR5 = BitField!(11, 10, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias PUPDR4 = BitField!(9, 8, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias PUPDR3 = BitField!(7, 6, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias PUPDR2 = BitField!(5, 4, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias PUPDR1 = BitField!(3, 2, Mutability.rw);

        /*********************************************************************
         Port x configuration bits (y =
              0..15)
        */
        alias PUPDR0 = BitField!(1, 0, Mutability.rw);
    }

    /*************************************************************************
     GPIO port input data register
    */
    final abstract class IDR : Register!(0x10)
    {
        /*********************************************************************
         Port input data (y =
              0..15)
        */
        alias IDR15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Port input data (y =
              0..15)
        */
        alias IDR14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Port input data (y =
              0..15)
        */
        alias IDR13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Port input data (y =
              0..15)
        */
        alias IDR12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Port input data (y =
              0..15)
        */
        alias IDR11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Port input data (y =
              0..15)
        */
        alias IDR10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Port input data (y =
              0..15)
        */
        alias IDR9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Port input data (y =
              0..15)
        */
        alias IDR8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Port input data (y =
              0..15)
        */
        alias IDR7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Port input data (y =
              0..15)
        */
        alias IDR6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Port input data (y =
              0..15)
        */
        alias IDR5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Port input data (y =
              0..15)
        */
        alias IDR4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Port input data (y =
              0..15)
        */
        alias IDR3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Port input data (y =
              0..15)
        */
        alias IDR2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Port input data (y =
              0..15)
        */
        alias IDR1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Port input data (y =
              0..15)
        */
        alias IDR0 = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     GPIO port output data register
    */
    final abstract class ODR : Register!(0x14)
    {
        /*********************************************************************
         Port output data (y =
              0..15)
        */
        alias ODR15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Port output data (y =
              0..15)
        */
        alias ODR14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Port output data (y =
              0..15)
        */
        alias ODR13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Port output data (y =
              0..15)
        */
        alias ODR12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Port output data (y =
              0..15)
        */
        alias ODR11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Port output data (y =
              0..15)
        */
        alias ODR10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Port output data (y =
              0..15)
        */
        alias ODR9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Port output data (y =
              0..15)
        */
        alias ODR8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Port output data (y =
              0..15)
        */
        alias ODR7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Port output data (y =
              0..15)
        */
        alias ODR6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Port output data (y =
              0..15)
        */
        alias ODR5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Port output data (y =
              0..15)
        */
        alias ODR4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Port output data (y =
              0..15)
        */
        alias ODR3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Port output data (y =
              0..15)
        */
        alias ODR2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Port output data (y =
              0..15)
        */
        alias ODR1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Port output data (y =
              0..15)
        */
        alias ODR0 = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     GPIO port bit set/reset
          register
    */
    final abstract class BSRR : Register!(0x18)
    {
        /*********************************************************************
         Port x reset bit y (y =
              0..15)
        */
        alias BR15 = Bit!(31, Mutability.rw);

        /*********************************************************************
         Port x reset bit y (y =
              0..15)
        */
        alias BR14 = Bit!(30, Mutability.rw);

        /*********************************************************************
         Port x reset bit y (y =
              0..15)
        */
        alias BR13 = Bit!(29, Mutability.rw);

        /*********************************************************************
         Port x reset bit y (y =
              0..15)
        */
        alias BR12 = Bit!(28, Mutability.rw);

        /*********************************************************************
         Port x reset bit y (y =
              0..15)
        */
        alias BR11 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Port x reset bit y (y =
              0..15)
        */
        alias BR10 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Port x reset bit y (y =
              0..15)
        */
        alias BR9 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Port x reset bit y (y =
              0..15)
        */
        alias BR8 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Port x reset bit y (y =
              0..15)
        */
        alias BR7 = Bit!(23, Mutability.rw);

        /*********************************************************************
         Port x reset bit y (y =
              0..15)
        */
        alias BR6 = Bit!(22, Mutability.rw);

        /*********************************************************************
         Port x reset bit y (y =
              0..15)
        */
        alias BR5 = Bit!(21, Mutability.rw);

        /*********************************************************************
         Port x reset bit y (y =
              0..15)
        */
        alias BR4 = Bit!(20, Mutability.rw);

        /*********************************************************************
         Port x reset bit y (y =
              0..15)
        */
        alias BR3 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Port x reset bit y (y =
              0..15)
        */
        alias BR2 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Port x reset bit y (y =
              0..15)
        */
        alias BR1 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Port x set bit y (y=
              0..15)
        */
        alias BR0 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Port x set bit y (y=
              0..15)
        */
        alias BS15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Port x set bit y (y=
              0..15)
        */
        alias BS14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Port x set bit y (y=
              0..15)
        */
        alias BS13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Port x set bit y (y=
              0..15)
        */
        alias BS12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Port x set bit y (y=
              0..15)
        */
        alias BS11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Port x set bit y (y=
              0..15)
        */
        alias BS10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Port x set bit y (y=
              0..15)
        */
        alias BS9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Port x set bit y (y=
              0..15)
        */
        alias BS8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Port x set bit y (y=
              0..15)
        */
        alias BS7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Port x set bit y (y=
              0..15)
        */
        alias BS6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Port x set bit y (y=
              0..15)
        */
        alias BS5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Port x set bit y (y=
              0..15)
        */
        alias BS4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Port x set bit y (y=
              0..15)
        */
        alias BS3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Port x set bit y (y=
              0..15)
        */
        alias BS2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Port x set bit y (y=
              0..15)
        */
        alias BS1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Port x set bit y (y=
              0..15)
        */
        alias BS0 = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     GPIO port configuration lock
          register
    */
    final abstract class LCKR : Register!(0x1c)
    {
        /*********************************************************************
         Port x lock bit y (y=
              0..15)
        */
        alias LCKK = Bit!(16, Mutability.rw);

        /*********************************************************************
         Port x lock bit y (y=
              0..15)
        */
        alias LCK15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Port x lock bit y (y=
              0..15)
        */
        alias LCK14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Port x lock bit y (y=
              0..15)
        */
        alias LCK13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Port x lock bit y (y=
              0..15)
        */
        alias LCK12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Port x lock bit y (y=
              0..15)
        */
        alias LCK11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Port x lock bit y (y=
              0..15)
        */
        alias LCK10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Port x lock bit y (y=
              0..15)
        */
        alias LCK9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Port x lock bit y (y=
              0..15)
        */
        alias LCK8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Port x lock bit y (y=
              0..15)
        */
        alias LCK7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Port x lock bit y (y=
              0..15)
        */
        alias LCK6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Port x lock bit y (y=
              0..15)
        */
        alias LCK5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Port x lock bit y (y=
              0..15)
        */
        alias LCK4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Port x lock bit y (y=
              0..15)
        */
        alias LCK3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Port x lock bit y (y=
              0..15)
        */
        alias LCK2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Port x lock bit y (y=
              0..15)
        */
        alias LCK1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Port x lock bit y (y=
              0..15)
        */
        alias LCK0 = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     GPIO alternate function
          lowregister
    */
    final abstract class AFRL : Register!(0x20)
    {
        /*********************************************************************
         Alternate function selection for port x
              bit y (y = 0..7)
        */
        alias AFRL7 = BitField!(31, 28, Mutability.rw);

        /*********************************************************************
         Alternate function selection for port x
              bit y (y = 0..7)
        */
        alias AFRL6 = BitField!(27, 24, Mutability.rw);

        /*********************************************************************
         Alternate function selection for port x
              bit y (y = 0..7)
        */
        alias AFRL5 = BitField!(23, 20, Mutability.rw);

        /*********************************************************************
         Alternate function selection for port x
              bit y (y = 0..7)
        */
        alias AFRL4 = BitField!(19, 16, Mutability.rw);

        /*********************************************************************
         Alternate function selection for port x
              bit y (y = 0..7)
        */
        alias AFRL3 = BitField!(15, 12, Mutability.rw);

        /*********************************************************************
         Alternate function selection for port x
              bit y (y = 0..7)
        */
        alias AFRL2 = BitField!(11, 8, Mutability.rw);

        /*********************************************************************
         Alternate function selection for port x
              bit y (y = 0..7)
        */
        alias AFRL1 = BitField!(7, 4, Mutability.rw);

        /*********************************************************************
         Alternate function selection for port x
              bit y (y = 0..7)
        */
        alias AFRL0 = BitField!(3, 0, Mutability.rw);
    }

    /*************************************************************************
     GPIO alternate function high
          register
    */
    final abstract class AFRH : Register!(0x24)
    {
        /*********************************************************************
         Alternate function selection for port x
              bit y (y = 8..15)
        */
        alias AFRH15 = BitField!(31, 28, Mutability.rw);

        /*********************************************************************
         Alternate function selection for port x
              bit y (y = 8..15)
        */
        alias AFRH14 = BitField!(27, 24, Mutability.rw);

        /*********************************************************************
         Alternate function selection for port x
              bit y (y = 8..15)
        */
        alias AFRH13 = BitField!(23, 20, Mutability.rw);

        /*********************************************************************
         Alternate function selection for port x
              bit y (y = 8..15)
        */
        alias AFRH12 = BitField!(19, 16, Mutability.rw);

        /*********************************************************************
         Alternate function selection for port x
              bit y (y = 8..15)
        */
        alias AFRH11 = BitField!(15, 12, Mutability.rw);

        /*********************************************************************
         Alternate function selection for port x
              bit y (y = 8..15)
        */
        alias AFRH10 = BitField!(11, 8, Mutability.rw);

        /*********************************************************************
         Alternate function selection for port x
              bit y (y = 8..15)
        */
        alias AFRH9 = BitField!(7, 4, Mutability.rw);

        /*********************************************************************
         Alternate function selection for port x
              bit y (y = 8..15)
        */
        alias AFRH8 = BitField!(3, 0, Mutability.rw);
    }

    /*************************************************************************
     GPIO port bit reset register
    */
    final abstract class BRR : Register!(0x28)
    {
        /*********************************************************************
         Port D Reset bit 0
        */
        alias BR0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Port D Reset bit 1
        */
        alias BR1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Port D Reset bit 2
        */
        alias BR2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Port D Reset bit 3
        */
        alias BR3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Port D Reset bit 4
        */
        alias BR4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Port D Reset bit 5
        */
        alias BR5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Port D Reset bit 6
        */
        alias BR6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Port D Reset bit 7
        */
        alias BR7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Port D Reset bit 8
        */
        alias BR8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Port D Reset bit 9
        */
        alias BR9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Port D Reset bit 10
        */
        alias BR10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Port D Reset bit 11
        */
        alias BR11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Port D Reset bit 12
        */
        alias BR12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Port D Reset bit 13
        */
        alias BR13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Port D Reset bit 14
        */
        alias BR14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Port D Reset bit 15
        */
        alias BR15 = Bit!(15, Mutability.rw);
    }
}
