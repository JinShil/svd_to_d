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
    final abstract class CTRL1 : Register!(0x24)
    {
        /*********************************************************************
         Input Sampling Mode
        */
        alias SAMPLING = BitField!(31, 0, Mutability.w);
    }
    /*************************************************************************
     Control
    */
    final abstract class CTRL2 : Register!(0xa4)
    {
        /*********************************************************************
         Input Sampling Mode
        */
        alias SAMPLING = BitField!(31, 0, Mutability.w);
    }
    /*************************************************************************
     Control
    */
    final abstract class CTRL3 : Register!(0x124)
    {
        /*********************************************************************
         Input Sampling Mode
        */
        alias SAMPLING = BitField!(31, 0, Mutability.w);
    }

    /*************************************************************************
     Data Direction
    */
    final abstract class DIR1 : Register!(00)
    {
        /*********************************************************************
         Port Data Direction
        */
        alias DIR = BitField!(31, 0, Mutability.rw);
    }
    /*************************************************************************
     Data Direction
    */
    final abstract class DIR2 : Register!(0x80)
    {
        /*********************************************************************
         Port Data Direction
        */
        alias DIR = BitField!(31, 0, Mutability.rw);
    }
    /*************************************************************************
     Data Direction
    */
    final abstract class DIR3 : Register!(0x100)
    {
        /*********************************************************************
         Port Data Direction
        */
        alias DIR = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Data Direction Clear
    */
    final abstract class DIRCLR1 : Register!(0x4)
    {
        /*********************************************************************
         Port Data Direction Clear
        */
        alias DIRCLR = BitField!(31, 0, Mutability.rw);
    }
    /*************************************************************************
     Data Direction Clear
    */
    final abstract class DIRCLR2 : Register!(0x84)
    {
        /*********************************************************************
         Port Data Direction Clear
        */
        alias DIRCLR = BitField!(31, 0, Mutability.rw);
    }
    /*************************************************************************
     Data Direction Clear
    */
    final abstract class DIRCLR3 : Register!(0x104)
    {
        /*********************************************************************
         Port Data Direction Clear
        */
        alias DIRCLR = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Data Direction Set
    */
    final abstract class DIRSET1 : Register!(0x8)
    {
        /*********************************************************************
         Port Data Direction Set
        */
        alias DIRSET = BitField!(31, 0, Mutability.rw);
    }
    /*************************************************************************
     Data Direction Set
    */
    final abstract class DIRSET2 : Register!(0x88)
    {
        /*********************************************************************
         Port Data Direction Set
        */
        alias DIRSET = BitField!(31, 0, Mutability.rw);
    }
    /*************************************************************************
     Data Direction Set
    */
    final abstract class DIRSET3 : Register!(0x108)
    {
        /*********************************************************************
         Port Data Direction Set
        */
        alias DIRSET = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Data Direction Toggle
    */
    final abstract class DIRTGL1 : Register!(0xc)
    {
        /*********************************************************************
         Port Data Direction Toggle
        */
        alias DIRTGL = BitField!(31, 0, Mutability.rw);
    }
    /*************************************************************************
     Data Direction Toggle
    */
    final abstract class DIRTGL2 : Register!(0x8c)
    {
        /*********************************************************************
         Port Data Direction Toggle
        */
        alias DIRTGL = BitField!(31, 0, Mutability.rw);
    }
    /*************************************************************************
     Data Direction Toggle
    */
    final abstract class DIRTGL3 : Register!(0x10c)
    {
        /*********************************************************************
         Port Data Direction Toggle
        */
        alias DIRTGL = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Data Input Value
    */
    final abstract class IN1 : Register!(0x20)
    {
        /*********************************************************************
         Port Data Input Value
        */
        alias IN = BitField!(31, 0, Mutability.rw);
    }
    /*************************************************************************
     Data Input Value
    */
    final abstract class IN2 : Register!(0xa0)
    {
        /*********************************************************************
         Port Data Input Value
        */
        alias IN = BitField!(31, 0, Mutability.rw);
    }
    /*************************************************************************
     Data Input Value
    */
    final abstract class IN3 : Register!(0x120)
    {
        /*********************************************************************
         Port Data Input Value
        */
        alias IN = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Data Output Value
    */
    final abstract class OUT1 : Register!(0x10)
    {
        /*********************************************************************
         Port Data Output Value
        */
        alias OUT = BitField!(31, 0, Mutability.rw);
    }
    /*************************************************************************
     Data Output Value
    */
    final abstract class OUT2 : Register!(0x90)
    {
        /*********************************************************************
         Port Data Output Value
        */
        alias OUT = BitField!(31, 0, Mutability.rw);
    }
    /*************************************************************************
     Data Output Value
    */
    final abstract class OUT3 : Register!(0x110)
    {
        /*********************************************************************
         Port Data Output Value
        */
        alias OUT = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Data Output Value Clear
    */
    final abstract class OUTCLR1 : Register!(0x14)
    {
        /*********************************************************************
         Port Data Output Value Clear
        */
        alias OUTCLR = BitField!(31, 0, Mutability.rw);
    }
    /*************************************************************************
     Data Output Value Clear
    */
    final abstract class OUTCLR2 : Register!(0x94)
    {
        /*********************************************************************
         Port Data Output Value Clear
        */
        alias OUTCLR = BitField!(31, 0, Mutability.rw);
    }
    /*************************************************************************
     Data Output Value Clear
    */
    final abstract class OUTCLR3 : Register!(0x114)
    {
        /*********************************************************************
         Port Data Output Value Clear
        */
        alias OUTCLR = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Data Output Value Set
    */
    final abstract class OUTSET1 : Register!(0x18)
    {
        /*********************************************************************
         Port Data Output Value Set
        */
        alias OUTSET = BitField!(31, 0, Mutability.rw);
    }
    /*************************************************************************
     Data Output Value Set
    */
    final abstract class OUTSET2 : Register!(0x98)
    {
        /*********************************************************************
         Port Data Output Value Set
        */
        alias OUTSET = BitField!(31, 0, Mutability.rw);
    }
    /*************************************************************************
     Data Output Value Set
    */
    final abstract class OUTSET3 : Register!(0x118)
    {
        /*********************************************************************
         Port Data Output Value Set
        */
        alias OUTSET = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Data Output Value Toggle
    */
    final abstract class OUTTGL1 : Register!(0x1c)
    {
        /*********************************************************************
         Port Data Output Value Toggle
        */
        alias OUTTGL = BitField!(31, 0, Mutability.rw);
    }
    /*************************************************************************
     Data Output Value Toggle
    */
    final abstract class OUTTGL2 : Register!(0x9c)
    {
        /*********************************************************************
         Port Data Output Value Toggle
        */
        alias OUTTGL = BitField!(31, 0, Mutability.rw);
    }
    /*************************************************************************
     Data Output Value Toggle
    */
    final abstract class OUTTGL3 : Register!(0x11c)
    {
        /*********************************************************************
         Port Data Output Value Toggle
        */
        alias OUTTGL = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     Pin Configuration n - Group 0
    */
    final abstract class PINCFG0_1 : Register!(0x40)
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
     Pin Configuration n - Group 0
    */
    final abstract class PINCFG0_2 : Register!(0x41)
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
     Pin Configuration n - Group 0
    */
    final abstract class PINCFG0_3 : Register!(0x42)
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
     Pin Configuration n - Group 0
    */
    final abstract class PINCFG0_4 : Register!(0x43)
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
     Pin Configuration n - Group 0
    */
    final abstract class PINCFG0_5 : Register!(0x44)
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
     Pin Configuration n - Group 0
    */
    final abstract class PINCFG0_6 : Register!(0x45)
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
     Pin Configuration n - Group 0
    */
    final abstract class PINCFG0_7 : Register!(0x46)
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
     Pin Configuration n - Group 0
    */
    final abstract class PINCFG0_8 : Register!(0x47)
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
     Pin Configuration n - Group 0
    */
    final abstract class PINCFG0_9 : Register!(0x48)
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
     Pin Configuration n - Group 0
    */
    final abstract class PINCFG0_10 : Register!(0x49)
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
     Pin Configuration n - Group 0
    */
    final abstract class PINCFG0_11 : Register!(0x4a)
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
     Pin Configuration n - Group 0
    */
    final abstract class PINCFG0_12 : Register!(0x4b)
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
     Pin Configuration n - Group 0
    */
    final abstract class PINCFG0_13 : Register!(0x4c)
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
     Pin Configuration n - Group 0
    */
    final abstract class PINCFG0_14 : Register!(0x4d)
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
     Pin Configuration n - Group 0
    */
    final abstract class PINCFG0_15 : Register!(0x4e)
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
     Pin Configuration n - Group 0
    */
    final abstract class PINCFG0_16 : Register!(0x4f)
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
     Pin Configuration n - Group 0
    */
    final abstract class PINCFG0_17 : Register!(0x50)
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
     Pin Configuration n - Group 0
    */
    final abstract class PINCFG0_18 : Register!(0x51)
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
     Pin Configuration n - Group 0
    */
    final abstract class PINCFG0_19 : Register!(0x52)
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
     Pin Configuration n - Group 0
    */
    final abstract class PINCFG0_20 : Register!(0x53)
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
     Pin Configuration n - Group 0
    */
    final abstract class PINCFG0_21 : Register!(0x54)
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
     Pin Configuration n - Group 0
    */
    final abstract class PINCFG0_22 : Register!(0x55)
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
     Pin Configuration n - Group 0
    */
    final abstract class PINCFG0_23 : Register!(0x56)
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
     Pin Configuration n - Group 0
    */
    final abstract class PINCFG0_24 : Register!(0x57)
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
     Pin Configuration n - Group 0
    */
    final abstract class PINCFG0_25 : Register!(0x58)
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
     Pin Configuration n - Group 0
    */
    final abstract class PINCFG0_26 : Register!(0x59)
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
     Pin Configuration n - Group 0
    */
    final abstract class PINCFG0_27 : Register!(0x5a)
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
     Pin Configuration n - Group 0
    */
    final abstract class PINCFG0_28 : Register!(0x5b)
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
     Pin Configuration n - Group 0
    */
    final abstract class PINCFG0_29 : Register!(0x5c)
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
     Pin Configuration n - Group 0
    */
    final abstract class PINCFG0_30 : Register!(0x5d)
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
     Pin Configuration n - Group 0
    */
    final abstract class PINCFG0_31 : Register!(0x5e)
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
     Pin Configuration n - Group 0
    */
    final abstract class PINCFG0_32 : Register!(0x5f)
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
    final abstract class PINCFG1_1 : Register!(0xc0)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 1
    */
    final abstract class PINCFG1_2 : Register!(0xc1)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 1
    */
    final abstract class PINCFG1_3 : Register!(0xc2)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 1
    */
    final abstract class PINCFG1_4 : Register!(0xc3)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 1
    */
    final abstract class PINCFG1_5 : Register!(0xc4)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 1
    */
    final abstract class PINCFG1_6 : Register!(0xc5)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 1
    */
    final abstract class PINCFG1_7 : Register!(0xc6)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 1
    */
    final abstract class PINCFG1_8 : Register!(0xc7)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 1
    */
    final abstract class PINCFG1_9 : Register!(0xc8)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 1
    */
    final abstract class PINCFG1_10 : Register!(0xc9)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 1
    */
    final abstract class PINCFG1_11 : Register!(0xca)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 1
    */
    final abstract class PINCFG1_12 : Register!(0xcb)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 1
    */
    final abstract class PINCFG1_13 : Register!(0xcc)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 1
    */
    final abstract class PINCFG1_14 : Register!(0xcd)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 1
    */
    final abstract class PINCFG1_15 : Register!(0xce)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 1
    */
    final abstract class PINCFG1_16 : Register!(0xcf)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 1
    */
    final abstract class PINCFG1_17 : Register!(0xd0)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 1
    */
    final abstract class PINCFG1_18 : Register!(0xd1)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 1
    */
    final abstract class PINCFG1_19 : Register!(0xd2)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 1
    */
    final abstract class PINCFG1_20 : Register!(0xd3)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 1
    */
    final abstract class PINCFG1_21 : Register!(0xd4)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 1
    */
    final abstract class PINCFG1_22 : Register!(0xd5)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 1
    */
    final abstract class PINCFG1_23 : Register!(0xd6)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 1
    */
    final abstract class PINCFG1_24 : Register!(0xd7)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 1
    */
    final abstract class PINCFG1_25 : Register!(0xd8)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 1
    */
    final abstract class PINCFG1_26 : Register!(0xd9)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 1
    */
    final abstract class PINCFG1_27 : Register!(0xda)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 1
    */
    final abstract class PINCFG1_28 : Register!(0xdb)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 1
    */
    final abstract class PINCFG1_29 : Register!(0xdc)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 1
    */
    final abstract class PINCFG1_30 : Register!(0xdd)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 1
    */
    final abstract class PINCFG1_31 : Register!(0xde)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 1
    */
    final abstract class PINCFG1_32 : Register!(0xdf)
    {
    }

    /*************************************************************************
     Pin Configuration n - Group 2
    */
    final abstract class PINCFG2_1 : Register!(0x140)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 2
    */
    final abstract class PINCFG2_2 : Register!(0x141)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 2
    */
    final abstract class PINCFG2_3 : Register!(0x142)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 2
    */
    final abstract class PINCFG2_4 : Register!(0x143)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 2
    */
    final abstract class PINCFG2_5 : Register!(0x144)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 2
    */
    final abstract class PINCFG2_6 : Register!(0x145)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 2
    */
    final abstract class PINCFG2_7 : Register!(0x146)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 2
    */
    final abstract class PINCFG2_8 : Register!(0x147)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 2
    */
    final abstract class PINCFG2_9 : Register!(0x148)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 2
    */
    final abstract class PINCFG2_10 : Register!(0x149)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 2
    */
    final abstract class PINCFG2_11 : Register!(0x14a)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 2
    */
    final abstract class PINCFG2_12 : Register!(0x14b)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 2
    */
    final abstract class PINCFG2_13 : Register!(0x14c)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 2
    */
    final abstract class PINCFG2_14 : Register!(0x14d)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 2
    */
    final abstract class PINCFG2_15 : Register!(0x14e)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 2
    */
    final abstract class PINCFG2_16 : Register!(0x14f)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 2
    */
    final abstract class PINCFG2_17 : Register!(0x150)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 2
    */
    final abstract class PINCFG2_18 : Register!(0x151)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 2
    */
    final abstract class PINCFG2_19 : Register!(0x152)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 2
    */
    final abstract class PINCFG2_20 : Register!(0x153)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 2
    */
    final abstract class PINCFG2_21 : Register!(0x154)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 2
    */
    final abstract class PINCFG2_22 : Register!(0x155)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 2
    */
    final abstract class PINCFG2_23 : Register!(0x156)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 2
    */
    final abstract class PINCFG2_24 : Register!(0x157)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 2
    */
    final abstract class PINCFG2_25 : Register!(0x158)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 2
    */
    final abstract class PINCFG2_26 : Register!(0x159)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 2
    */
    final abstract class PINCFG2_27 : Register!(0x15a)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 2
    */
    final abstract class PINCFG2_28 : Register!(0x15b)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 2
    */
    final abstract class PINCFG2_29 : Register!(0x15c)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 2
    */
    final abstract class PINCFG2_30 : Register!(0x15d)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 2
    */
    final abstract class PINCFG2_31 : Register!(0x15e)
    {
    }
    /*************************************************************************
     Pin Configuration n - Group 2
    */
    final abstract class PINCFG2_32 : Register!(0x15f)
    {
    }

    /*************************************************************************
     Peripheral Multiplexing n - Group 0
    */
    final abstract class PMUX0_1 : Register!(0x30)
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
            mixin BitFieldImplementation!(3, 0, Mutability.rw, Values);
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
            mixin BitFieldImplementation!(7, 4, Mutability.rw, Values);
        }
    }
    /*************************************************************************
     Peripheral Multiplexing n - Group 0
    */
    final abstract class PMUX0_2 : Register!(0x31)
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
            mixin BitFieldImplementation!(3, 0, Mutability.rw, Values);
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
            mixin BitFieldImplementation!(7, 4, Mutability.rw, Values);
        }
    }
    /*************************************************************************
     Peripheral Multiplexing n - Group 0
    */
    final abstract class PMUX0_3 : Register!(0x32)
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
            mixin BitFieldImplementation!(3, 0, Mutability.rw, Values);
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
            mixin BitFieldImplementation!(7, 4, Mutability.rw, Values);
        }
    }
    /*************************************************************************
     Peripheral Multiplexing n - Group 0
    */
    final abstract class PMUX0_4 : Register!(0x33)
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
            mixin BitFieldImplementation!(3, 0, Mutability.rw, Values);
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
            mixin BitFieldImplementation!(7, 4, Mutability.rw, Values);
        }
    }
    /*************************************************************************
     Peripheral Multiplexing n - Group 0
    */
    final abstract class PMUX0_5 : Register!(0x34)
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
            mixin BitFieldImplementation!(3, 0, Mutability.rw, Values);
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
            mixin BitFieldImplementation!(7, 4, Mutability.rw, Values);
        }
    }
    /*************************************************************************
     Peripheral Multiplexing n - Group 0
    */
    final abstract class PMUX0_6 : Register!(0x35)
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
            mixin BitFieldImplementation!(3, 0, Mutability.rw, Values);
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
            mixin BitFieldImplementation!(7, 4, Mutability.rw, Values);
        }
    }
    /*************************************************************************
     Peripheral Multiplexing n - Group 0
    */
    final abstract class PMUX0_7 : Register!(0x36)
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
            mixin BitFieldImplementation!(3, 0, Mutability.rw, Values);
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
            mixin BitFieldImplementation!(7, 4, Mutability.rw, Values);
        }
    }
    /*************************************************************************
     Peripheral Multiplexing n - Group 0
    */
    final abstract class PMUX0_8 : Register!(0x37)
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
            mixin BitFieldImplementation!(3, 0, Mutability.rw, Values);
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
            mixin BitFieldImplementation!(7, 4, Mutability.rw, Values);
        }
    }
    /*************************************************************************
     Peripheral Multiplexing n - Group 0
    */
    final abstract class PMUX0_9 : Register!(0x38)
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
            mixin BitFieldImplementation!(3, 0, Mutability.rw, Values);
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
            mixin BitFieldImplementation!(7, 4, Mutability.rw, Values);
        }
    }
    /*************************************************************************
     Peripheral Multiplexing n - Group 0
    */
    final abstract class PMUX0_10 : Register!(0x39)
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
            mixin BitFieldImplementation!(3, 0, Mutability.rw, Values);
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
            mixin BitFieldImplementation!(7, 4, Mutability.rw, Values);
        }
    }
    /*************************************************************************
     Peripheral Multiplexing n - Group 0
    */
    final abstract class PMUX0_11 : Register!(0x3a)
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
            mixin BitFieldImplementation!(3, 0, Mutability.rw, Values);
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
            mixin BitFieldImplementation!(7, 4, Mutability.rw, Values);
        }
    }
    /*************************************************************************
     Peripheral Multiplexing n - Group 0
    */
    final abstract class PMUX0_12 : Register!(0x3b)
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
            mixin BitFieldImplementation!(3, 0, Mutability.rw, Values);
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
            mixin BitFieldImplementation!(7, 4, Mutability.rw, Values);
        }
    }
    /*************************************************************************
     Peripheral Multiplexing n - Group 0
    */
    final abstract class PMUX0_13 : Register!(0x3c)
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
            mixin BitFieldImplementation!(3, 0, Mutability.rw, Values);
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
            mixin BitFieldImplementation!(7, 4, Mutability.rw, Values);
        }
    }
    /*************************************************************************
     Peripheral Multiplexing n - Group 0
    */
    final abstract class PMUX0_14 : Register!(0x3d)
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
            mixin BitFieldImplementation!(3, 0, Mutability.rw, Values);
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
            mixin BitFieldImplementation!(7, 4, Mutability.rw, Values);
        }
    }
    /*************************************************************************
     Peripheral Multiplexing n - Group 0
    */
    final abstract class PMUX0_15 : Register!(0x3e)
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
            mixin BitFieldImplementation!(3, 0, Mutability.rw, Values);
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
            mixin BitFieldImplementation!(7, 4, Mutability.rw, Values);
        }
    }
    /*************************************************************************
     Peripheral Multiplexing n - Group 0
    */
    final abstract class PMUX0_16 : Register!(0x3f)
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
            mixin BitFieldImplementation!(3, 0, Mutability.rw, Values);
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
            mixin BitFieldImplementation!(7, 4, Mutability.rw, Values);
        }
    }

    /*************************************************************************
     Peripheral Multiplexing n - Group 1
    */
    final abstract class PMUX1_1 : Register!(0xb0)
    {
    }
    /*************************************************************************
     Peripheral Multiplexing n - Group 1
    */
    final abstract class PMUX1_2 : Register!(0xb1)
    {
    }
    /*************************************************************************
     Peripheral Multiplexing n - Group 1
    */
    final abstract class PMUX1_3 : Register!(0xb2)
    {
    }
    /*************************************************************************
     Peripheral Multiplexing n - Group 1
    */
    final abstract class PMUX1_4 : Register!(0xb3)
    {
    }
    /*************************************************************************
     Peripheral Multiplexing n - Group 1
    */
    final abstract class PMUX1_5 : Register!(0xb4)
    {
    }
    /*************************************************************************
     Peripheral Multiplexing n - Group 1
    */
    final abstract class PMUX1_6 : Register!(0xb5)
    {
    }
    /*************************************************************************
     Peripheral Multiplexing n - Group 1
    */
    final abstract class PMUX1_7 : Register!(0xb6)
    {
    }
    /*************************************************************************
     Peripheral Multiplexing n - Group 1
    */
    final abstract class PMUX1_8 : Register!(0xb7)
    {
    }
    /*************************************************************************
     Peripheral Multiplexing n - Group 1
    */
    final abstract class PMUX1_9 : Register!(0xb8)
    {
    }
    /*************************************************************************
     Peripheral Multiplexing n - Group 1
    */
    final abstract class PMUX1_10 : Register!(0xb9)
    {
    }
    /*************************************************************************
     Peripheral Multiplexing n - Group 1
    */
    final abstract class PMUX1_11 : Register!(0xba)
    {
    }
    /*************************************************************************
     Peripheral Multiplexing n - Group 1
    */
    final abstract class PMUX1_12 : Register!(0xbb)
    {
    }
    /*************************************************************************
     Peripheral Multiplexing n - Group 1
    */
    final abstract class PMUX1_13 : Register!(0xbc)
    {
    }
    /*************************************************************************
     Peripheral Multiplexing n - Group 1
    */
    final abstract class PMUX1_14 : Register!(0xbd)
    {
    }
    /*************************************************************************
     Peripheral Multiplexing n - Group 1
    */
    final abstract class PMUX1_15 : Register!(0xbe)
    {
    }
    /*************************************************************************
     Peripheral Multiplexing n - Group 1
    */
    final abstract class PMUX1_16 : Register!(0xbf)
    {
    }

    /*************************************************************************
     Peripheral Multiplexing n - Group 2
    */
    final abstract class PMUX2_1 : Register!(0x130)
    {
    }
    /*************************************************************************
     Peripheral Multiplexing n - Group 2
    */
    final abstract class PMUX2_2 : Register!(0x131)
    {
    }
    /*************************************************************************
     Peripheral Multiplexing n - Group 2
    */
    final abstract class PMUX2_3 : Register!(0x132)
    {
    }
    /*************************************************************************
     Peripheral Multiplexing n - Group 2
    */
    final abstract class PMUX2_4 : Register!(0x133)
    {
    }
    /*************************************************************************
     Peripheral Multiplexing n - Group 2
    */
    final abstract class PMUX2_5 : Register!(0x134)
    {
    }
    /*************************************************************************
     Peripheral Multiplexing n - Group 2
    */
    final abstract class PMUX2_6 : Register!(0x135)
    {
    }
    /*************************************************************************
     Peripheral Multiplexing n - Group 2
    */
    final abstract class PMUX2_7 : Register!(0x136)
    {
    }
    /*************************************************************************
     Peripheral Multiplexing n - Group 2
    */
    final abstract class PMUX2_8 : Register!(0x137)
    {
    }
    /*************************************************************************
     Peripheral Multiplexing n - Group 2
    */
    final abstract class PMUX2_9 : Register!(0x138)
    {
    }
    /*************************************************************************
     Peripheral Multiplexing n - Group 2
    */
    final abstract class PMUX2_10 : Register!(0x139)
    {
    }
    /*************************************************************************
     Peripheral Multiplexing n - Group 2
    */
    final abstract class PMUX2_11 : Register!(0x13a)
    {
    }
    /*************************************************************************
     Peripheral Multiplexing n - Group 2
    */
    final abstract class PMUX2_12 : Register!(0x13b)
    {
    }
    /*************************************************************************
     Peripheral Multiplexing n - Group 2
    */
    final abstract class PMUX2_13 : Register!(0x13c)
    {
    }
    /*************************************************************************
     Peripheral Multiplexing n - Group 2
    */
    final abstract class PMUX2_14 : Register!(0x13d)
    {
    }
    /*************************************************************************
     Peripheral Multiplexing n - Group 2
    */
    final abstract class PMUX2_15 : Register!(0x13e)
    {
    }
    /*************************************************************************
     Peripheral Multiplexing n - Group 2
    */
    final abstract class PMUX2_16 : Register!(0x13f)
    {
    }

    /*************************************************************************
     Write Configuration
    */
    final abstract class WRCONFIG1 : Register!(0x28)
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
    /*************************************************************************
     Write Configuration
    */
    final abstract class WRCONFIG2 : Register!(0xa8)
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
    /*************************************************************************
     Write Configuration
    */
    final abstract class WRCONFIG3 : Register!(0x128)
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
