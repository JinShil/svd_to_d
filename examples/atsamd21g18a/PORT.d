module atsamd21g18a.port;

import atsamd21g18a.mmio;

/*****************************************************************************
 Port Module
*/
final abstract class PORT : Peripheral!(0x41004400)
{
    /*************************************************************************
     Control
    */
    final abstract class CTRL%s : Register!(0x24)
    {
        /*********************************************************************
         Input Sampling Mode
        */
        alias SAMPLING = BitField!(31, 0, Mutability.w);
    }

    /*************************************************************************
     Data Direction
    */
    final abstract class DIR%s : Register!(0x00)
    {
        /*********************************************************************
         Port Data Direction
        */
        alias DIR = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Data Direction Clear
    */
    final abstract class DIRCLR%s : Register!(0x04)
    {
        /*********************************************************************
         Port Data Direction Clear
        */
        alias DIRCLR = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Data Direction Set
    */
    final abstract class DIRSET%s : Register!(0x08)
    {
        /*********************************************************************
         Port Data Direction Set
        */
        alias DIRSET = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Data Direction Toggle
    */
    final abstract class DIRTGL%s : Register!(0x0C)
    {
        /*********************************************************************
         Port Data Direction Toggle
        */
        alias DIRTGL = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Data Input Value
    */
    final abstract class IN%s : Register!(0x20)
    {
        /*********************************************************************
         Port Data Input Value
        */
        alias IN = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Data Output Value
    */
    final abstract class OUT%s : Register!(0x10)
    {
        /*********************************************************************
         Port Data Output Value
        */
        alias OUT = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Data Output Value Clear
    */
    final abstract class OUTCLR%s : Register!(0x14)
    {
        /*********************************************************************
         Port Data Output Value Clear
        */
        alias OUTCLR = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Data Output Value Set
    */
    final abstract class OUTSET%s : Register!(0x18)
    {
        /*********************************************************************
         Port Data Output Value Set
        */
        alias OUTSET = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Data Output Value Toggle
    */
    final abstract class OUTTGL%s : Register!(0x1C)
    {
        /*********************************************************************
         Port Data Output Value Toggle
        */
        alias OUTTGL = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Pin Configuration n - Group 0
    */
    final abstract class PINCFG0_%s : Register!(0x40)
    {
        /*********************************************************************
         Peripheral Multiplexer Enable
        */
        alias PMUXEN = Bit!(0, Mutability.rw);

        /*********************************************************************
         Input Enable
        */
        alias INEN = Bit!(1, Mutability.rw);

        /*********************************************************************
         Pull Enable
        */
        alias PULLEN = Bit!(2, Mutability.rw);

        /*********************************************************************
         Output Driver Strength Selection
        */
        alias DRVSTR = Bit!(6, Mutability.w);
    }

    /*************************************************************************
     Pin Configuration n - Group 1
    */
    final abstract class PINCFG1_%s : Register!(0xc0)
    {
    }

    /*************************************************************************
     Pin Configuration n - Group 2
    */
    final abstract class PINCFG2_%s : Register!(0x140)
    {
    }

    /*************************************************************************
     Peripheral Multiplexing n - Group 0
    */
    final abstract class PMUX0_%s : Register!(0x30)
    {
        /*********************************************************************
         Peripheral Multiplexing Even
        */
        final abstract class PMUXE
        {
            /*****************************************************************
             PMUXE's possible values
            */
            enum Values
            {
                /*************************************************************
                 Peripheral function A selected
                */
                A = 0x0,

                /*************************************************************
                 Peripheral function B selected
                */
                B = 0x1,

                /*************************************************************
                 Peripheral function C selected
                */
                C = 0x2,

                /*************************************************************
                 Peripheral function D selected
                */
                D = 0x3,

                /*************************************************************
                 Peripheral function E selected
                */
                E = 0x4,

                /*************************************************************
                 Peripheral function F selected
                */
                F = 0x5,

                /*************************************************************
                 Peripheral function G selected
                */
                G = 0x6,

                /*************************************************************
                 Peripheral function H selected
                */
                H = 0x7,
            }
            mixin BitFieldImplementation!(3, 0, Mutability.rw, values);
        }

        /*********************************************************************
         Peripheral Multiplexing Odd
        */
        final abstract class PMUXO
        {
            /*****************************************************************
             PMUXO's possible values
            */
            enum Values
            {
                /*************************************************************
                 Peripheral function A selected
                */
                A = 0x0,

                /*************************************************************
                 Peripheral function B selected
                */
                B = 0x1,

                /*************************************************************
                 Peripheral function C selected
                */
                C = 0x2,

                /*************************************************************
                 Peripheral function D selected
                */
                D = 0x3,

                /*************************************************************
                 Peripheral function E selected
                */
                E = 0x4,

                /*************************************************************
                 Peripheral function F selected
                */
                F = 0x5,

                /*************************************************************
                 Peripheral function G selected
                */
                G = 0x6,

                /*************************************************************
                 Peripheral function H selected
                */
                H = 0x7,
            }
            mixin BitFieldImplementation!(7, 4, Mutability.rw, values);
        }
    }

    /*************************************************************************
     Peripheral Multiplexing n - Group 1
    */
    final abstract class PMUX1_%s : Register!(0xb0)
    {
    }

    /*************************************************************************
     Peripheral Multiplexing n - Group 2
    */
    final abstract class PMUX2_%s : Register!(0x130)
    {
    }

    /*************************************************************************
     Write Configuration
    */
    final abstract class WRCONFIG%s : Register!(0x28)
    {
        /*********************************************************************
         Pin Mask for Multiple Pin Configuration
        */
        alias PINMASK = BitField!(15, 0, Mutability.rw);

        /*********************************************************************
         Peripheral Multiplexer Enable
        */
        alias PMUXEN = Bit!(16, Mutability.rw);

        /*********************************************************************
         Input Enable
        */
        alias INEN = Bit!(17, Mutability.rw);

        /*********************************************************************
         Pull Enable
        */
        alias PULLEN = Bit!(18, Mutability.rw);

        /*********************************************************************
         Output Driver Strength Selection
        */
        alias DRVSTR = Bit!(22, Mutability.rw);

        /*********************************************************************
         Peripheral Multiplexing
        */
        alias PMUX = BitField!(27, 24, Mutability.rw);

        /*********************************************************************
         Write PMUX
        */
        alias WRPMUX = Bit!(28, Mutability.rw);

        /*********************************************************************
         Write PINCFG
        */
        alias WRPINCFG = Bit!(30, Mutability.rw);

        /*********************************************************************
         Half-Word Select
        */
        alias HWSEL = Bit!(31, Mutability.rw);
    }
}
