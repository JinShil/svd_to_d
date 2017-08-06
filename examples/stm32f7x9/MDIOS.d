module stm32f7x9.mdios;

import stm32f7x9.mmio;

/*****************************************************************************
 Management data input/output slave
*/
final abstract class MDIOS : Peripheral!(0x40017800)
{
    /*************************************************************************
     MDIOS configuration register
    */
    final abstract class MDIOS_CR : Register!(00)
    {
        /*********************************************************************
         Peripheral enable
        */
        alias EN = Bit!(0, Mutability.rw);

        /*********************************************************************
         Register write interrupt
              enable
        */
        alias WRIE = Bit!(1, Mutability.rw);

        /*********************************************************************
         Register Read Interrupt
              Enable
        */
        alias RDIE = Bit!(2, Mutability.rw);

        /*********************************************************************
         Error interrupt enable
        */
        alias EIE = Bit!(3, Mutability.rw);

        /*********************************************************************
         Disable Preamble Check
        */
        alias DPC = Bit!(7, Mutability.rw);

        /*********************************************************************
         Slaves's address
        */
        alias PORT_ADDRESS = BitField!(12, 8, Mutability.rw);
    }

    /*************************************************************************
     MDIOS write flag register
    */
    final abstract class MDIOS_WRFR : Register!(0x4)
    {
        /*********************************************************************
         Write flags for MDIO registers 0 to
              31
        */
        alias WRF = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS clear write flag
          register
    */
    final abstract class MDIOS_CWRFR : Register!(0x8)
    {
        /*********************************************************************
         Clear the write flag
        */
        alias CWRF = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS read flag register
    */
    final abstract class MDIOS_RDFR : Register!(0xc)
    {
        /*********************************************************************
         Read flags for MDIO registers 0 to
              31
        */
        alias RDF = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS clear read flag register
    */
    final abstract class MDIOS_CRDFR : Register!(0x10)
    {
        /*********************************************************************
         Clear the read flag
        */
        alias CRDF = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS status register
    */
    final abstract class MDIOS_SR : Register!(0x14)
    {
        /*********************************************************************
         Preamble error flag
        */
        alias PERF = Bit!(0, Mutability.rw);

        /*********************************************************************
         Start error flag
        */
        alias SERF = Bit!(1, Mutability.rw);

        /*********************************************************************
         Turnaround error flag
        */
        alias TERF = Bit!(2, Mutability.rw);
    }

    /*************************************************************************
     MDIOS clear flag register
    */
    final abstract class MDIOS_CLRFR : Register!(0x18)
    {
        /*********************************************************************
         Clear the preamble error
              flag
        */
        alias CPERF = Bit!(0, Mutability.rw);

        /*********************************************************************
         Clear the start error flag
        */
        alias CSERF = Bit!(1, Mutability.rw);

        /*********************************************************************
         Clear the turnaround error
              flag
        */
        alias CTERF = Bit!(2, Mutability.rw);
    }

    /*************************************************************************
     MDIOS input data register 0
    */
    final abstract class MDIOS_DINR0 : Register!(0x1c)
    {
        /*********************************************************************
         Input data received from MDIO Master
              during write frames
        */
        alias DIN0 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS input data register 1
    */
    final abstract class MDIOS_DINR1 : Register!(0x20)
    {
        /*********************************************************************
         Input data received from MDIO Master
              during write frames
        */
        alias DIN1 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS input data register 2
    */
    final abstract class MDIOS_DINR2 : Register!(0x24)
    {
        /*********************************************************************
         Input data received from MDIO Master
              during write frames
        */
        alias DIN2 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS input data register 3
    */
    final abstract class MDIOS_DINR3 : Register!(0x28)
    {
        /*********************************************************************
         Input data received from MDIO Master
              during write frames
        */
        alias DIN3 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS input data register 4
    */
    final abstract class MDIOS_DINR4 : Register!(0x2c)
    {
        /*********************************************************************
         Input data received from MDIO Master
              during write frames
        */
        alias DIN4 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS input data register 5
    */
    final abstract class MDIOS_DINR5 : Register!(0x30)
    {
        /*********************************************************************
         Input data received from MDIO Master
              during write frames
        */
        alias DIN5 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS input data register 6
    */
    final abstract class MDIOS_DINR6 : Register!(0x34)
    {
        /*********************************************************************
         Input data received from MDIO Master
              during write frames
        */
        alias DIN6 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS input data register 7
    */
    final abstract class MDIOS_DINR7 : Register!(0x38)
    {
        /*********************************************************************
         Input data received from MDIO Master
              during write frames
        */
        alias DIN7 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS input data register 8
    */
    final abstract class MDIOS_DINR8 : Register!(0x3c)
    {
        /*********************************************************************
         Input data received from MDIO Master
              during write frames
        */
        alias DIN8 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS input data register 9
    */
    final abstract class MDIOS_DINR9 : Register!(0x40)
    {
        /*********************************************************************
         Input data received from MDIO Master
              during write frames
        */
        alias DIN9 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS input data register 10
    */
    final abstract class MDIOS_DINR10 : Register!(0x44)
    {
        /*********************************************************************
         Input data received from MDIO Master
              during write frames
        */
        alias DIN10 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS input data register 11
    */
    final abstract class MDIOS_DINR11 : Register!(0x48)
    {
        /*********************************************************************
         Input data received from MDIO Master
              during write frames
        */
        alias DIN11 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS input data register 12
    */
    final abstract class MDIOS_DINR12 : Register!(0x4c)
    {
        /*********************************************************************
         Input data received from MDIO Master
              during write frames
        */
        alias DIN12 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS input data register 13
    */
    final abstract class MDIOS_DINR13 : Register!(0x50)
    {
        /*********************************************************************
         Input data received from MDIO Master
              during write frames
        */
        alias DIN13 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS input data register 14
    */
    final abstract class MDIOS_DINR14 : Register!(0x54)
    {
        /*********************************************************************
         Input data received from MDIO Master
              during write frames
        */
        alias DIN14 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS input data register 15
    */
    final abstract class MDIOS_DINR15 : Register!(0x58)
    {
        /*********************************************************************
         Input data received from MDIO Master
              during write frames
        */
        alias DIN15 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS input data register 16
    */
    final abstract class MDIOS_DINR16 : Register!(0x5c)
    {
        /*********************************************************************
         Input data received from MDIO Master
              during write frames
        */
        alias DIN16 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS input data register 17
    */
    final abstract class MDIOS_DINR17 : Register!(0x60)
    {
        /*********************************************************************
         Input data received from MDIO Master
              during write frames
        */
        alias DIN17 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS input data register 18
    */
    final abstract class MDIOS_DINR18 : Register!(0x64)
    {
        /*********************************************************************
         Input data received from MDIO Master
              during write frames
        */
        alias DIN18 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS input data register 19
    */
    final abstract class MDIOS_DINR19 : Register!(0x68)
    {
        /*********************************************************************
         Input data received from MDIO Master
              during write frames
        */
        alias DIN19 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS input data register 20
    */
    final abstract class MDIOS_DINR20 : Register!(0x6c)
    {
        /*********************************************************************
         Input data received from MDIO Master
              during write frames
        */
        alias DIN20 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS input data register 21
    */
    final abstract class MDIOS_DINR21 : Register!(0x70)
    {
        /*********************************************************************
         Input data received from MDIO Master
              during write frames
        */
        alias DIN21 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS input data register 22
    */
    final abstract class MDIOS_DINR22 : Register!(0x74)
    {
        /*********************************************************************
         Input data received from MDIO Master
              during write frames
        */
        alias DIN22 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS input data register 23
    */
    final abstract class MDIOS_DINR23 : Register!(0x78)
    {
        /*********************************************************************
         Input data received from MDIO Master
              during write frames
        */
        alias DIN23 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS input data register 24
    */
    final abstract class MDIOS_DINR24 : Register!(0x7c)
    {
        /*********************************************************************
         Input data received from MDIO Master
              during write frames
        */
        alias DIN24 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS input data register 25
    */
    final abstract class MDIOS_DINR25 : Register!(0x80)
    {
        /*********************************************************************
         Input data received from MDIO Master
              during write frames
        */
        alias DIN25 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS input data register 26
    */
    final abstract class MDIOS_DINR26 : Register!(0x84)
    {
        /*********************************************************************
         Input data received from MDIO Master
              during write frames
        */
        alias DIN26 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS input data register 27
    */
    final abstract class MDIOS_DINR27 : Register!(0x88)
    {
        /*********************************************************************
         Input data received from MDIO Master
              during write frames
        */
        alias DIN27 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS input data register 28
    */
    final abstract class MDIOS_DINR28 : Register!(0x8c)
    {
        /*********************************************************************
         Input data received from MDIO Master
              during write frames
        */
        alias DIN28 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS input data register 29
    */
    final abstract class MDIOS_DINR29 : Register!(0x90)
    {
        /*********************************************************************
         Input data received from MDIO Master
              during write frames
        */
        alias DIN29 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS input data register 30
    */
    final abstract class MDIOS_DINR30 : Register!(0x94)
    {
        /*********************************************************************
         Input data received from MDIO Master
              during write frames
        */
        alias DIN30 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS input data register 31
    */
    final abstract class MDIOS_DINR31 : Register!(0x98)
    {
        /*********************************************************************
         Input data received from MDIO Master
              during write frames
        */
        alias DIN31 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS output data register 0
    */
    final abstract class MDIOS_DOUTR0 : Register!(0x9c)
    {
        /*********************************************************************
         Output data sent to MDIO Master during
              read frames
        */
        alias DOUT0 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS output data register 1
    */
    final abstract class MDIOS_DOUTR1 : Register!(0xa0)
    {
        /*********************************************************************
         Output data sent to MDIO Master during
              read frames
        */
        alias DOUT1 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS output data register 2
    */
    final abstract class MDIOS_DOUTR2 : Register!(0xa4)
    {
        /*********************************************************************
         Output data sent to MDIO Master during
              read frames
        */
        alias DOUT2 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS output data register 3
    */
    final abstract class MDIOS_DOUTR3 : Register!(0xa8)
    {
        /*********************************************************************
         Output data sent to MDIO Master during
              read frames
        */
        alias DOUT3 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS output data register 4
    */
    final abstract class MDIOS_DOUTR4 : Register!(0xac)
    {
        /*********************************************************************
         Output data sent to MDIO Master during
              read frames
        */
        alias DOUT4 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS output data register 5
    */
    final abstract class MDIOS_DOUTR5 : Register!(0xb0)
    {
        /*********************************************************************
         Output data sent to MDIO Master during
              read frames
        */
        alias DOUT5 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS output data register 6
    */
    final abstract class MDIOS_DOUTR6 : Register!(0xb4)
    {
        /*********************************************************************
         Output data sent to MDIO Master during
              read frames
        */
        alias DOUT6 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS output data register 7
    */
    final abstract class MDIOS_DOUTR7 : Register!(0xb8)
    {
        /*********************************************************************
         Output data sent to MDIO Master during
              read frames
        */
        alias DOUT7 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS output data register 8
    */
    final abstract class MDIOS_DOUTR8 : Register!(0xbc)
    {
        /*********************************************************************
         Output data sent to MDIO Master during
              read frames
        */
        alias DOUT8 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS output data register 9
    */
    final abstract class MDIOS_DOUTR9 : Register!(0xc0)
    {
        /*********************************************************************
         Output data sent to MDIO Master during
              read frames
        */
        alias DOUT9 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS output data register 10
    */
    final abstract class MDIOS_DOUTR10 : Register!(0xc4)
    {
        /*********************************************************************
         Output data sent to MDIO Master during
              read frames
        */
        alias DOUT10 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS output data register 11
    */
    final abstract class MDIOS_DOUTR11 : Register!(0xc8)
    {
        /*********************************************************************
         Output data sent to MDIO Master during
              read frames
        */
        alias DOUT11 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS output data register 12
    */
    final abstract class MDIOS_DOUTR12 : Register!(0xcc)
    {
        /*********************************************************************
         Output data sent to MDIO Master during
              read frames
        */
        alias DOUT12 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS output data register 13
    */
    final abstract class MDIOS_DOUTR13 : Register!(0xd0)
    {
        /*********************************************************************
         Output data sent to MDIO Master during
              read frames
        */
        alias DOUT13 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS output data register 14
    */
    final abstract class MDIOS_DOUTR14 : Register!(0xd4)
    {
        /*********************************************************************
         Output data sent to MDIO Master during
              read frames
        */
        alias DOUT14 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS output data register 15
    */
    final abstract class MDIOS_DOUTR15 : Register!(0xd8)
    {
        /*********************************************************************
         Output data sent to MDIO Master during
              read frames
        */
        alias DOUT15 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS output data register 16
    */
    final abstract class MDIOS_DOUTR16 : Register!(0xdc)
    {
        /*********************************************************************
         Output data sent to MDIO Master during
              read frames
        */
        alias DOUT16 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS output data register 17
    */
    final abstract class MDIOS_DOUTR17 : Register!(0xe0)
    {
        /*********************************************************************
         Output data sent to MDIO Master during
              read frames
        */
        alias DOUT17 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS output data register 18
    */
    final abstract class MDIOS_DOUTR18 : Register!(0xe4)
    {
        /*********************************************************************
         Output data sent to MDIO Master during
              read frames
        */
        alias DOUT18 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS output data register 19
    */
    final abstract class MDIOS_DOUTR19 : Register!(0xe8)
    {
        /*********************************************************************
         Output data sent to MDIO Master during
              read frames
        */
        alias DOUT19 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS output data register 20
    */
    final abstract class MDIOS_DOUTR20 : Register!(0xec)
    {
        /*********************************************************************
         Output data sent to MDIO Master during
              read frames
        */
        alias DOUT20 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS output data register 21
    */
    final abstract class MDIOS_DOUTR21 : Register!(0xf0)
    {
        /*********************************************************************
         Output data sent to MDIO Master during
              read frames
        */
        alias DOUT21 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS output data register 22
    */
    final abstract class MDIOS_DOUTR22 : Register!(0xf4)
    {
        /*********************************************************************
         Output data sent to MDIO Master during
              read frames
        */
        alias DOUT22 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS output data register 23
    */
    final abstract class MDIOS_DOUTR23 : Register!(0xf8)
    {
        /*********************************************************************
         Output data sent to MDIO Master during
              read frames
        */
        alias DOUT23 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS output data register 24
    */
    final abstract class MDIOS_DOUTR24 : Register!(0xfc)
    {
        /*********************************************************************
         Output data sent to MDIO Master during
              read frames
        */
        alias DOUT24 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS output data register 25
    */
    final abstract class MDIOS_DOUTR25 : Register!(0x100)
    {
        /*********************************************************************
         Output data sent to MDIO Master during
              read frames
        */
        alias DOUT25 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS output data register 26
    */
    final abstract class MDIOS_DOUTR26 : Register!(0x104)
    {
        /*********************************************************************
         Output data sent to MDIO Master during
              read frames
        */
        alias DOUT26 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS output data register 27
    */
    final abstract class MDIOS_DOUTR27 : Register!(0x108)
    {
        /*********************************************************************
         Output data sent to MDIO Master during
              read frames
        */
        alias DOUT27 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS output data register 28
    */
    final abstract class MDIOS_DOUTR28 : Register!(0x10c)
    {
        /*********************************************************************
         Output data sent to MDIO Master during
              read frames
        */
        alias DOUT28 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS output data register 29
    */
    final abstract class MDIOS_DOUTR29 : Register!(0x110)
    {
        /*********************************************************************
         Output data sent to MDIO Master during
              read frames
        */
        alias DOUT29 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS output data register 30
    */
    final abstract class MDIOS_DOUTR30 : Register!(0x114)
    {
        /*********************************************************************
         Output data sent to MDIO Master during
              read frames
        */
        alias DOUT30 = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     MDIOS output data register 31
    */
    final abstract class MDIOS_DOUTR31 : Register!(0x118)
    {
        /*********************************************************************
         Output data sent to MDIO Master during
              read frames
        */
        alias DOUT31 = BitField!(15, 0, Mutability.rw);
    }
}
