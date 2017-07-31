module stm32f7x9.dfsdm;

import stm32f7x9.mmio;

/*****************************************************************************
 Digital filter for sigma delta
      modulators
*/
final abstract class DFSDM : Peripheral!(0x40017400)
{
    /*************************************************************************
     DFSDM channel configuration 0 register
          1
    */
    final abstract class DFSDM_CHCFG0R1 : Register!(0x0)
    {
        /*********************************************************************
         Serial interface type for channel
              0
        */
        alias SITP = BitField!(1, 0, Mutability.rw);

        /*********************************************************************
         SPI clock select for channel
              0
        */
        alias SPICKSEL = BitField!(3, 2, Mutability.rw);

        /*********************************************************************
         Short-circuit detector enable on channel
              0
        */
        alias SCDEN = Bit!(5, Mutability.rw);

        /*********************************************************************
         Clock absence detector enable on channel
              0
        */
        alias CKABEN = Bit!(6, Mutability.rw);

        /*********************************************************************
         Channel 0 enable
        */
        alias CHEN = Bit!(7, Mutability.rw);

        /*********************************************************************
         Channel inputs selection
        */
        alias CHINSEL = Bit!(8, Mutability.rw);

        /*********************************************************************
         Input data multiplexer for channel
              0
        */
        alias DATMPX = BitField!(13, 12, Mutability.rw);

        /*********************************************************************
         Data packing mode in DFSDM_CHDATINyR
              register
        */
        alias DATPACK = BitField!(15, 14, Mutability.rw);

        /*********************************************************************
         Output serial clock
              divider
        */
        alias CKOUTDIV = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         Output serial clock source
              selection
        */
        alias CKOUTSRC = Bit!(30, Mutability.rw);

        /*********************************************************************
         Global enable for DFSDM
              interface
        */
        alias DFSDMEN = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     DFSDM channel configuration 1 register
          1
    */
    final abstract class DFSDM_CHCFG1R1 : Register!(0x4)
    {
        /*********************************************************************
         Serial interface type for channel
              1
        */
        alias SITP = BitField!(1, 0, Mutability.rw);

        /*********************************************************************
         SPI clock select for channel
              1
        */
        alias SPICKSEL = BitField!(3, 2, Mutability.rw);

        /*********************************************************************
         Short-circuit detector enable on channel
              1
        */
        alias SCDEN = Bit!(5, Mutability.rw);

        /*********************************************************************
         Clock absence detector enable on channel
              1
        */
        alias CKABEN = Bit!(6, Mutability.rw);

        /*********************************************************************
         Channel 1 enable
        */
        alias CHEN = Bit!(7, Mutability.rw);

        /*********************************************************************
         Channel inputs selection
        */
        alias CHINSEL = Bit!(8, Mutability.rw);

        /*********************************************************************
         Input data multiplexer for channel
              1
        */
        alias DATMPX = BitField!(13, 12, Mutability.rw);

        /*********************************************************************
         Data packing mode in DFSDM_CHDATINyR
              register
        */
        alias DATPACK = BitField!(15, 14, Mutability.rw);

        /*********************************************************************
         Output serial clock
              divider
        */
        alias CKOUTDIV = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         Output serial clock source
              selection
        */
        alias CKOUTSRC = Bit!(30, Mutability.rw);

        /*********************************************************************
         Global enable for DFSDM
              interface
        */
        alias DFSDMEN = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     DFSDM channel configuration 2 register
          1
    */
    final abstract class DFSDM_CHCFG2R1 : Register!(0x8)
    {
        /*********************************************************************
         Serial interface type for channel
              2
        */
        alias SITP = BitField!(1, 0, Mutability.rw);

        /*********************************************************************
         SPI clock select for channel
              2
        */
        alias SPICKSEL = BitField!(3, 2, Mutability.rw);

        /*********************************************************************
         Short-circuit detector enable on channel
              2
        */
        alias SCDEN = Bit!(5, Mutability.rw);

        /*********************************************************************
         Clock absence detector enable on channel
              2
        */
        alias CKABEN = Bit!(6, Mutability.rw);

        /*********************************************************************
         Channel 2 enable
        */
        alias CHEN = Bit!(7, Mutability.rw);

        /*********************************************************************
         Channel inputs selection
        */
        alias CHINSEL = Bit!(8, Mutability.rw);

        /*********************************************************************
         Input data multiplexer for channel
              2
        */
        alias DATMPX = BitField!(13, 12, Mutability.rw);

        /*********************************************************************
         Data packing mode in DFSDM_CHDATINyR
              register
        */
        alias DATPACK = BitField!(15, 14, Mutability.rw);

        /*********************************************************************
         Output serial clock
              divider
        */
        alias CKOUTDIV = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         Output serial clock source
              selection
        */
        alias CKOUTSRC = Bit!(30, Mutability.rw);

        /*********************************************************************
         Global enable for DFSDM
              interface
        */
        alias DFSDMEN = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     DFSDM channel configuration 3 register
          1
    */
    final abstract class DFSDM_CHCFG3R1 : Register!(0xC)
    {
        /*********************************************************************
         Serial interface type for channel
              3
        */
        alias SITP = BitField!(1, 0, Mutability.rw);

        /*********************************************************************
         SPI clock select for channel
              3
        */
        alias SPICKSEL = BitField!(3, 2, Mutability.rw);

        /*********************************************************************
         Short-circuit detector enable on channel
              3
        */
        alias SCDEN = Bit!(5, Mutability.rw);

        /*********************************************************************
         Clock absence detector enable on channel
              3
        */
        alias CKABEN = Bit!(6, Mutability.rw);

        /*********************************************************************
         Channel 3 enable
        */
        alias CHEN = Bit!(7, Mutability.rw);

        /*********************************************************************
         Channel inputs selection
        */
        alias CHINSEL = Bit!(8, Mutability.rw);

        /*********************************************************************
         Input data multiplexer for channel
              3
        */
        alias DATMPX = BitField!(13, 12, Mutability.rw);

        /*********************************************************************
         Data packing mode in DFSDM_CHDATINyR
              register
        */
        alias DATPACK = BitField!(15, 14, Mutability.rw);

        /*********************************************************************
         Output serial clock
              divider
        */
        alias CKOUTDIV = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         Output serial clock source
              selection
        */
        alias CKOUTSRC = Bit!(30, Mutability.rw);

        /*********************************************************************
         Global enable for DFSDM
              interface
        */
        alias DFSDMEN = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     DFSDM channel configuration 4 register
          1
    */
    final abstract class DFSDM_CHCFG4R1 : Register!(0x10)
    {
        /*********************************************************************
         Serial interface type for channel
              4
        */
        alias SITP = BitField!(1, 0, Mutability.rw);

        /*********************************************************************
         SPI clock select for channel
              4
        */
        alias SPICKSEL = BitField!(3, 2, Mutability.rw);

        /*********************************************************************
         Short-circuit detector enable on channel
              4
        */
        alias SCDEN = Bit!(5, Mutability.rw);

        /*********************************************************************
         Clock absence detector enable on channel
              4
        */
        alias CKABEN = Bit!(6, Mutability.rw);

        /*********************************************************************
         Channel 4 enable
        */
        alias CHEN = Bit!(7, Mutability.rw);

        /*********************************************************************
         Channel inputs selection
        */
        alias CHINSEL = Bit!(8, Mutability.rw);

        /*********************************************************************
         Input data multiplexer for channel
              4
        */
        alias DATMPX = BitField!(13, 12, Mutability.rw);

        /*********************************************************************
         Data packing mode in DFSDM_CHDATINyR
              register
        */
        alias DATPACK = BitField!(15, 14, Mutability.rw);

        /*********************************************************************
         Output serial clock
              divider
        */
        alias CKOUTDIV = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         Output serial clock source
              selection
        */
        alias CKOUTSRC = Bit!(30, Mutability.rw);

        /*********************************************************************
         Global enable for DFSDM
              interface
        */
        alias DFSDMEN = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     DFSDM channel configuration 5 register
          1
    */
    final abstract class DFSDM_CHCFG5R1 : Register!(0x14)
    {
        /*********************************************************************
         Serial interface type for channel
              5
        */
        alias SITP = BitField!(1, 0, Mutability.rw);

        /*********************************************************************
         SPI clock select for channel
              5
        */
        alias SPICKSEL = BitField!(3, 2, Mutability.rw);

        /*********************************************************************
         Short-circuit detector enable on channel
              5
        */
        alias SCDEN = Bit!(5, Mutability.rw);

        /*********************************************************************
         Clock absence detector enable on channel
              5
        */
        alias CKABEN = Bit!(6, Mutability.rw);

        /*********************************************************************
         Channel 5 enable
        */
        alias CHEN = Bit!(7, Mutability.rw);

        /*********************************************************************
         Channel inputs selection
        */
        alias CHINSEL = Bit!(8, Mutability.rw);

        /*********************************************************************
         Input data multiplexer for channel
              5
        */
        alias DATMPX = BitField!(13, 12, Mutability.rw);

        /*********************************************************************
         Data packing mode in DFSDM_CHDATINyR
              register
        */
        alias DATPACK = BitField!(15, 14, Mutability.rw);

        /*********************************************************************
         Output serial clock
              divider
        */
        alias CKOUTDIV = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         Output serial clock source
              selection
        */
        alias CKOUTSRC = Bit!(30, Mutability.rw);

        /*********************************************************************
         Global enable for DFSDM
              interface
        */
        alias DFSDMEN = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     DFSDM channel configuration 6 register
          1
    */
    final abstract class DFSDM_CHCFG6R1 : Register!(0x18)
    {
        /*********************************************************************
         Serial interface type for channel
              6
        */
        alias SITP = BitField!(1, 0, Mutability.rw);

        /*********************************************************************
         SPI clock select for channel
              6
        */
        alias SPICKSEL = BitField!(3, 2, Mutability.rw);

        /*********************************************************************
         Short-circuit detector enable on channel
              6
        */
        alias SCDEN = Bit!(5, Mutability.rw);

        /*********************************************************************
         Clock absence detector enable on channel
              6
        */
        alias CKABEN = Bit!(6, Mutability.rw);

        /*********************************************************************
         Channel 6 enable
        */
        alias CHEN = Bit!(7, Mutability.rw);

        /*********************************************************************
         Channel inputs selection
        */
        alias CHINSEL = Bit!(8, Mutability.rw);

        /*********************************************************************
         Input data multiplexer for channel
              6
        */
        alias DATMPX = BitField!(13, 12, Mutability.rw);

        /*********************************************************************
         Data packing mode in DFSDM_CHDATINyR
              register
        */
        alias DATPACK = BitField!(15, 14, Mutability.rw);

        /*********************************************************************
         Output serial clock
              divider
        */
        alias CKOUTDIV = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         Output serial clock source
              selection
        */
        alias CKOUTSRC = Bit!(30, Mutability.rw);

        /*********************************************************************
         Global enable for DFSDM
              interface
        */
        alias DFSDMEN = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     DFSDM channel configuration 7 register
          1
    */
    final abstract class DFSDM_CHCFG7R1 : Register!(0x1C)
    {
        /*********************************************************************
         Serial interface type for channel
              7
        */
        alias SITP = BitField!(1, 0, Mutability.rw);

        /*********************************************************************
         SPI clock select for channel
              7
        */
        alias SPICKSEL = BitField!(3, 2, Mutability.rw);

        /*********************************************************************
         Short-circuit detector enable on channel
              7
        */
        alias SCDEN = Bit!(5, Mutability.rw);

        /*********************************************************************
         Clock absence detector enable on channel
              7
        */
        alias CKABEN = Bit!(6, Mutability.rw);

        /*********************************************************************
         Channel 7 enable
        */
        alias CHEN = Bit!(7, Mutability.rw);

        /*********************************************************************
         Channel inputs selection
        */
        alias CHINSEL = Bit!(8, Mutability.rw);

        /*********************************************************************
         Input data multiplexer for channel
              7
        */
        alias DATMPX = BitField!(13, 12, Mutability.rw);

        /*********************************************************************
         Data packing mode in DFSDM_CHDATINyR
              register
        */
        alias DATPACK = BitField!(15, 14, Mutability.rw);

        /*********************************************************************
         Output serial clock
              divider
        */
        alias CKOUTDIV = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         Output serial clock source
              selection
        */
        alias CKOUTSRC = Bit!(30, Mutability.rw);

        /*********************************************************************
         Global enable for DFSDM
              interface
        */
        alias DFSDMEN = Bit!(31, Mutability.rw);
    }

    /*************************************************************************
     DFSDM channel configuration 0 register
          2
    */
    final abstract class DFSDM_CHCFG0R2 : Register!(0x20)
    {
        /*********************************************************************
         Data right bit-shift for channel
              0
        */
        alias DTRBS = BitField!(7, 3, Mutability.rw);

        /*********************************************************************
         24-bit calibration offset for channel
              0
        */
        alias OFFSET = BitField!(31, 8, Mutability.rw);
    }

    /*************************************************************************
     DFSDM channel configuration 1 register
          2
    */
    final abstract class DFSDM_CHCFG1R2 : Register!(0x24)
    {
        /*********************************************************************
         Data right bit-shift for channel
              1
        */
        alias DTRBS = BitField!(7, 3, Mutability.rw);

        /*********************************************************************
         24-bit calibration offset for channel
              1
        */
        alias OFFSET = BitField!(31, 8, Mutability.rw);
    }

    /*************************************************************************
     DFSDM channel configuration 2 register
          2
    */
    final abstract class DFSDM_CHCFG2R2 : Register!(0x28)
    {
        /*********************************************************************
         Data right bit-shift for channel
              2
        */
        alias DTRBS = BitField!(7, 3, Mutability.rw);

        /*********************************************************************
         24-bit calibration offset for channel
              2
        */
        alias OFFSET = BitField!(31, 8, Mutability.rw);
    }

    /*************************************************************************
     DFSDM channel configuration 3 register
          2
    */
    final abstract class DFSDM_CHCFG3R2 : Register!(0x2C)
    {
        /*********************************************************************
         Data right bit-shift for channel
              3
        */
        alias DTRBS = BitField!(7, 3, Mutability.rw);

        /*********************************************************************
         24-bit calibration offset for channel
              3
        */
        alias OFFSET = BitField!(31, 8, Mutability.rw);
    }

    /*************************************************************************
     DFSDM channel configuration 4 register
          2
    */
    final abstract class DFSDM_CHCFG4R2 : Register!(0x30)
    {
        /*********************************************************************
         Data right bit-shift for channel
              4
        */
        alias DTRBS = BitField!(7, 3, Mutability.rw);

        /*********************************************************************
         24-bit calibration offset for channel
              4
        */
        alias OFFSET = BitField!(31, 8, Mutability.rw);
    }

    /*************************************************************************
     DFSDM channel configuration 5 register
          2
    */
    final abstract class DFSDM_CHCFG5R2 : Register!(0x34)
    {
        /*********************************************************************
         Data right bit-shift for channel
              5
        */
        alias DTRBS = BitField!(7, 3, Mutability.rw);

        /*********************************************************************
         24-bit calibration offset for channel
              5
        */
        alias OFFSET = BitField!(31, 8, Mutability.rw);
    }

    /*************************************************************************
     DFSDM channel configuration 6 register
          2
    */
    final abstract class DFSDM_CHCFG6R2 : Register!(0x38)
    {
        /*********************************************************************
         Data right bit-shift for channel
              6
        */
        alias DTRBS = BitField!(7, 3, Mutability.rw);

        /*********************************************************************
         24-bit calibration offset for channel
              6
        */
        alias OFFSET = BitField!(31, 8, Mutability.rw);
    }

    /*************************************************************************
     DFSDM channel configuration 7 register
          2
    */
    final abstract class DFSDM_CHCFG7R2 : Register!(0x3C)
    {
        /*********************************************************************
         Data right bit-shift for channel
              7
        */
        alias DTRBS = BitField!(7, 3, Mutability.rw);

        /*********************************************************************
         24-bit calibration offset for channel
              7
        */
        alias OFFSET = BitField!(31, 8, Mutability.rw);
    }

    /*************************************************************************
     DFSDM analog watchdog and short-circuit
          detector register
    */
    final abstract class DFSDM_AWSCD0R : Register!(0x40)
    {
        /*********************************************************************
         short-circuit detector threshold for
              channel 0
        */
        alias SCDT = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         Break signal assignment for
              short-circuit detector on channel 0
        */
        alias BKSCD = BitField!(15, 12, Mutability.rw);

        /*********************************************************************
         Analog watchdog filter oversampling
              ratio (decimation rate) on channel 0
        */
        alias AWFOSR = BitField!(20, 16, Mutability.rw);

        /*********************************************************************
         Analog watchdog Sinc filter order on
              channel 0
        */
        alias AWFORD = BitField!(23, 22, Mutability.rw);
    }

    /*************************************************************************
     DFSDM analog watchdog and short-circuit
          detector register
    */
    final abstract class DFSDM_AWSCD1R : Register!(0x44)
    {
        /*********************************************************************
         short-circuit detector threshold for
              channel 1
        */
        alias SCDT = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         Break signal assignment for
              short-circuit detector on channel 1
        */
        alias BKSCD = BitField!(15, 12, Mutability.rw);

        /*********************************************************************
         Analog watchdog filter oversampling
              ratio (decimation rate) on channel 1
        */
        alias AWFOSR = BitField!(20, 16, Mutability.rw);

        /*********************************************************************
         Analog watchdog Sinc filter order on
              channel 1
        */
        alias AWFORD = BitField!(23, 22, Mutability.rw);
    }

    /*************************************************************************
     DFSDM analog watchdog and short-circuit
          detector register
    */
    final abstract class DFSDM_AWSCD2R : Register!(0x48)
    {
        /*********************************************************************
         short-circuit detector threshold for
              channel 2
        */
        alias SCDT = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         Break signal assignment for
              short-circuit detector on channel 2
        */
        alias BKSCD = BitField!(15, 12, Mutability.rw);

        /*********************************************************************
         Analog watchdog filter oversampling
              ratio (decimation rate) on channel 2
        */
        alias AWFOSR = BitField!(20, 16, Mutability.rw);

        /*********************************************************************
         Analog watchdog Sinc filter order on
              channel 2
        */
        alias AWFORD = BitField!(23, 22, Mutability.rw);
    }

    /*************************************************************************
     DFSDM analog watchdog and short-circuit
          detector register
    */
    final abstract class DFSDM_AWSCD3R : Register!(0x4C)
    {
        /*********************************************************************
         short-circuit detector threshold for
              channel 3
        */
        alias SCDT = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         Break signal assignment for
              short-circuit detector on channel 3
        */
        alias BKSCD = BitField!(15, 12, Mutability.rw);

        /*********************************************************************
         Analog watchdog filter oversampling
              ratio (decimation rate) on channel 3
        */
        alias AWFOSR = BitField!(20, 16, Mutability.rw);

        /*********************************************************************
         Analog watchdog Sinc filter order on
              channel 3
        */
        alias AWFORD = BitField!(23, 22, Mutability.rw);
    }

    /*************************************************************************
     DFSDM analog watchdog and short-circuit
          detector register
    */
    final abstract class DFSDM_AWSCD4R : Register!(0x50)
    {
        /*********************************************************************
         short-circuit detector threshold for
              channel 4
        */
        alias SCDT = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         Break signal assignment for
              short-circuit detector on channel 4
        */
        alias BKSCD = BitField!(15, 12, Mutability.rw);

        /*********************************************************************
         Analog watchdog filter oversampling
              ratio (decimation rate) on channel 4
        */
        alias AWFOSR = BitField!(20, 16, Mutability.rw);

        /*********************************************************************
         Analog watchdog Sinc filter order on
              channel 4
        */
        alias AWFORD = BitField!(23, 22, Mutability.rw);
    }

    /*************************************************************************
     DFSDM analog watchdog and short-circuit
          detector register
    */
    final abstract class DFSDM_AWSCD5R : Register!(0x54)
    {
        /*********************************************************************
         short-circuit detector threshold for
              channel 5
        */
        alias SCDT = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         Break signal assignment for
              short-circuit detector on channel 5
        */
        alias BKSCD = BitField!(15, 12, Mutability.rw);

        /*********************************************************************
         Analog watchdog filter oversampling
              ratio (decimation rate) on channel 5
        */
        alias AWFOSR = BitField!(20, 16, Mutability.rw);

        /*********************************************************************
         Analog watchdog Sinc filter order on
              channel 5
        */
        alias AWFORD = BitField!(23, 22, Mutability.rw);
    }

    /*************************************************************************
     DFSDM analog watchdog and short-circuit
          detector register
    */
    final abstract class DFSDM_AWSCD6R : Register!(0x58)
    {
        /*********************************************************************
         short-circuit detector threshold for
              channel 6
        */
        alias SCDT = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         Break signal assignment for
              short-circuit detector on channel 6
        */
        alias BKSCD = BitField!(15, 12, Mutability.rw);

        /*********************************************************************
         Analog watchdog filter oversampling
              ratio (decimation rate) on channel 6
        */
        alias AWFOSR = BitField!(20, 16, Mutability.rw);

        /*********************************************************************
         Analog watchdog Sinc filter order on
              channel 6
        */
        alias AWFORD = BitField!(23, 22, Mutability.rw);
    }

    /*************************************************************************
     DFSDM analog watchdog and short-circuit
          detector register
    */
    final abstract class DFSDM_AWSCD7R : Register!(0x5C)
    {
        /*********************************************************************
         short-circuit detector threshold for
              channel 7
        */
        alias SCDT = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         Break signal assignment for
              short-circuit detector on channel 7
        */
        alias BKSCD = BitField!(15, 12, Mutability.rw);

        /*********************************************************************
         Analog watchdog filter oversampling
              ratio (decimation rate) on channel 7
        */
        alias AWFOSR = BitField!(20, 16, Mutability.rw);

        /*********************************************************************
         Analog watchdog Sinc filter order on
              channel 7
        */
        alias AWFORD = BitField!(23, 22, Mutability.rw);
    }

    /*************************************************************************
     DFSDM channel watchdog filter data
          register
    */
    final abstract class DFSDM_CHWDAT0R : Register!(0x60)
    {
        /*********************************************************************
         Input channel y watchdog
              data
        */
        alias WDATA = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     DFSDM channel watchdog filter data
          register
    */
    final abstract class DFSDM_CHWDAT1R : Register!(0x64)
    {
        /*********************************************************************
         Input channel y watchdog
              data
        */
        alias WDATA = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     DFSDM channel watchdog filter data
          register
    */
    final abstract class DFSDM_CHWDAT2R : Register!(0x68)
    {
        /*********************************************************************
         Input channel y watchdog
              data
        */
        alias WDATA = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     DFSDM channel watchdog filter data
          register
    */
    final abstract class DFSDM_CHWDAT3R : Register!(0x6C)
    {
        /*********************************************************************
         Input channel y watchdog
              data
        */
        alias WDATA = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     DFSDM channel watchdog filter data
          register
    */
    final abstract class DFSDM_CHWDAT4R : Register!(0x70)
    {
        /*********************************************************************
         Input channel y watchdog
              data
        */
        alias WDATA = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     DFSDM channel watchdog filter data
          register
    */
    final abstract class DFSDM_CHWDAT5R : Register!(0x74)
    {
        /*********************************************************************
         Input channel y watchdog
              data
        */
        alias WDATA = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     DFSDM channel watchdog filter data
          register
    */
    final abstract class DFSDM_CHWDAT6R : Register!(0x78)
    {
        /*********************************************************************
         Input channel y watchdog
              data
        */
        alias WDATA = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     DFSDM channel watchdog filter data
          register
    */
    final abstract class DFSDM_CHWDAT7R : Register!(0x7C)
    {
        /*********************************************************************
         Input channel y watchdog
              data
        */
        alias WDATA = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     DFSDM channel data input
          register
    */
    final abstract class DFSDM_CHDATIN0R : Register!(0x80)
    {
        /*********************************************************************
         Input data for channel 0
        */
        alias INDAT0 = BitField!(15, 0, Mutability.rw);

        /*********************************************************************
         Input data for channel 1
        */
        alias INDAT1 = BitField!(31, 16, Mutability.rw);
    }

    /*************************************************************************
     DFSDM channel data input
          register
    */
    final abstract class DFSDM_CHDATIN1R : Register!(0x84)
    {
        /*********************************************************************
         Input data for channel 1
        */
        alias INDAT0 = BitField!(15, 0, Mutability.rw);

        /*********************************************************************
         Input data for channel 2
        */
        alias INDAT1 = BitField!(31, 16, Mutability.rw);
    }

    /*************************************************************************
     DFSDM channel data input
          register
    */
    final abstract class DFSDM_CHDATIN2R : Register!(0x88)
    {
        /*********************************************************************
         Input data for channel 2
        */
        alias INDAT0 = BitField!(15, 0, Mutability.rw);

        /*********************************************************************
         Input data for channel 3
        */
        alias INDAT1 = BitField!(31, 16, Mutability.rw);
    }

    /*************************************************************************
     DFSDM channel data input
          register
    */
    final abstract class DFSDM_CHDATIN3R : Register!(0x8C)
    {
        /*********************************************************************
         Input data for channel 3
        */
        alias INDAT0 = BitField!(15, 0, Mutability.rw);

        /*********************************************************************
         Input data for channel 4
        */
        alias INDAT1 = BitField!(31, 16, Mutability.rw);
    }

    /*************************************************************************
     DFSDM channel data input
          register
    */
    final abstract class DFSDM_CHDATIN4R : Register!(0x90)
    {
        /*********************************************************************
         Input data for channel 4
        */
        alias INDAT0 = BitField!(15, 0, Mutability.rw);

        /*********************************************************************
         Input data for channel 5
        */
        alias INDAT1 = BitField!(31, 16, Mutability.rw);
    }

    /*************************************************************************
     DFSDM channel data input
          register
    */
    final abstract class DFSDM_CHDATIN5R : Register!(0x94)
    {
        /*********************************************************************
         Input data for channel 5
        */
        alias INDAT0 = BitField!(15, 0, Mutability.rw);

        /*********************************************************************
         Input data for channel 6
        */
        alias INDAT1 = BitField!(31, 16, Mutability.rw);
    }

    /*************************************************************************
     DFSDM channel data input
          register
    */
    final abstract class DFSDM_CHDATIN6R : Register!(0x98)
    {
        /*********************************************************************
         Input data for channel 6
        */
        alias INDAT0 = BitField!(15, 0, Mutability.rw);

        /*********************************************************************
         Input data for channel 7
        */
        alias INDAT1 = BitField!(31, 16, Mutability.rw);
    }

    /*************************************************************************
     DFSDM channel data input
          register
    */
    final abstract class DFSDM_CHDATIN7R : Register!(0x9C)
    {
        /*********************************************************************
         Input data for channel 7
        */
        alias INDAT0 = BitField!(15, 0, Mutability.rw);

        /*********************************************************************
         Input data for channel 8
        */
        alias INDAT1 = BitField!(31, 16, Mutability.rw);
    }

    /*************************************************************************
     DFSDM control register 1
    */
    final abstract class DFSDM0_CR1 : Register!(0xA0)
    {
        /*********************************************************************
         DFSDM enable
        */
        alias DFEN = Bit!(0, Mutability.rw);

        /*********************************************************************
         Start a conversion of the injected group
              of channels
        */
        alias JSWSTART = Bit!(1, Mutability.rw);

        /*********************************************************************
         Launch an injected conversion
              synchronously with the DFSDM0 JSWSTART
              trigger
        */
        alias JSYNC = Bit!(3, Mutability.rw);

        /*********************************************************************
         Scanning conversion mode for injected
              conversions
        */
        alias JSCAN = Bit!(4, Mutability.rw);

        /*********************************************************************
         DMA channel enabled to read data for the
              injected channel group
        */
        alias JDMAEN = Bit!(5, Mutability.rw);

        /*********************************************************************
         Trigger signal selection for launching
              injected conversions
        */
        alias JEXTSEL = BitField!(12, 8, Mutability.rw);

        /*********************************************************************
         Trigger enable and trigger edge
              selection for injected conversions
        */
        alias JEXTEN = BitField!(14, 13, Mutability.rw);

        /*********************************************************************
         Software start of a conversion on the
              regular channel
        */
        alias RSWSTART = Bit!(17, Mutability.rw);

        /*********************************************************************
         Continuous mode selection for regular
              conversions
        */
        alias RCONT = Bit!(18, Mutability.rw);

        /*********************************************************************
         Launch regular conversion synchronously
              with DFSDM0
        */
        alias RSYNC = Bit!(19, Mutability.rw);

        /*********************************************************************
         DMA channel enabled to read data for the
              regular conversion
        */
        alias RDMAEN = Bit!(21, Mutability.rw);

        /*********************************************************************
         Regular channel selection
        */
        alias RCH = BitField!(26, 24, Mutability.rw);

        /*********************************************************************
         Fast conversion mode selection for
              regular conversions
        */
        alias FAST = Bit!(29, Mutability.rw);

        /*********************************************************************
         Analog watchdog fast mode
              select
        */
        alias AWFSEL = Bit!(30, Mutability.rw);
    }

    /*************************************************************************
     DFSDM control register 1
    */
    final abstract class DFSDM1_CR1 : Register!(0xA4)
    {
        /*********************************************************************
         DFSDM enable
        */
        alias DFEN = Bit!(0, Mutability.rw);

        /*********************************************************************
         Start a conversion of the injected group
              of channels
        */
        alias JSWSTART = Bit!(1, Mutability.rw);

        /*********************************************************************
         Launch an injected conversion
              synchronously with the DFSDM0 JSWSTART
              trigger
        */
        alias JSYNC = Bit!(3, Mutability.rw);

        /*********************************************************************
         Scanning conversion mode for injected
              conversions
        */
        alias JSCAN = Bit!(4, Mutability.rw);

        /*********************************************************************
         DMA channel enabled to read data for the
              injected channel group
        */
        alias JDMAEN = Bit!(5, Mutability.rw);

        /*********************************************************************
         Trigger signal selection for launching
              injected conversions
        */
        alias JEXTSEL = BitField!(12, 8, Mutability.rw);

        /*********************************************************************
         Trigger enable and trigger edge
              selection for injected conversions
        */
        alias JEXTEN = BitField!(14, 13, Mutability.rw);

        /*********************************************************************
         Software start of a conversion on the
              regular channel
        */
        alias RSWSTART = Bit!(17, Mutability.rw);

        /*********************************************************************
         Continuous mode selection for regular
              conversions
        */
        alias RCONT = Bit!(18, Mutability.rw);

        /*********************************************************************
         Launch regular conversion synchronously
              with DFSDM0
        */
        alias RSYNC = Bit!(19, Mutability.rw);

        /*********************************************************************
         DMA channel enabled to read data for the
              regular conversion
        */
        alias RDMAEN = Bit!(21, Mutability.rw);

        /*********************************************************************
         Regular channel selection
        */
        alias RCH = BitField!(26, 24, Mutability.rw);

        /*********************************************************************
         Fast conversion mode selection for
              regular conversions
        */
        alias FAST = Bit!(29, Mutability.rw);

        /*********************************************************************
         Analog watchdog fast mode
              select
        */
        alias AWFSEL = Bit!(30, Mutability.rw);
    }

    /*************************************************************************
     DFSDM control register 1
    */
    final abstract class DFSDM2_CR1 : Register!(0xA8)
    {
        /*********************************************************************
         DFSDM enable
        */
        alias DFEN = Bit!(0, Mutability.rw);

        /*********************************************************************
         Start a conversion of the injected group
              of channels
        */
        alias JSWSTART = Bit!(1, Mutability.rw);

        /*********************************************************************
         Launch an injected conversion
              synchronously with the DFSDM0 JSWSTART
              trigger
        */
        alias JSYNC = Bit!(3, Mutability.rw);

        /*********************************************************************
         Scanning conversion mode for injected
              conversions
        */
        alias JSCAN = Bit!(4, Mutability.rw);

        /*********************************************************************
         DMA channel enabled to read data for the
              injected channel group
        */
        alias JDMAEN = Bit!(5, Mutability.rw);

        /*********************************************************************
         Trigger signal selection for launching
              injected conversions
        */
        alias JEXTSEL = BitField!(12, 8, Mutability.rw);

        /*********************************************************************
         Trigger enable and trigger edge
              selection for injected conversions
        */
        alias JEXTEN = BitField!(14, 13, Mutability.rw);

        /*********************************************************************
         Software start of a conversion on the
              regular channel
        */
        alias RSWSTART = Bit!(17, Mutability.rw);

        /*********************************************************************
         Continuous mode selection for regular
              conversions
        */
        alias RCONT = Bit!(18, Mutability.rw);

        /*********************************************************************
         Launch regular conversion synchronously
              with DFSDM0
        */
        alias RSYNC = Bit!(19, Mutability.rw);

        /*********************************************************************
         DMA channel enabled to read data for the
              regular conversion
        */
        alias RDMAEN = Bit!(21, Mutability.rw);

        /*********************************************************************
         Regular channel selection
        */
        alias RCH = BitField!(26, 24, Mutability.rw);

        /*********************************************************************
         Fast conversion mode selection for
              regular conversions
        */
        alias FAST = Bit!(29, Mutability.rw);

        /*********************************************************************
         Analog watchdog fast mode
              select
        */
        alias AWFSEL = Bit!(30, Mutability.rw);
    }

    /*************************************************************************
     DFSDM control register 1
    */
    final abstract class DFSDM3_CR1 : Register!(0xAC)
    {
        /*********************************************************************
         DFSDM enable
        */
        alias DFEN = Bit!(0, Mutability.rw);

        /*********************************************************************
         Start a conversion of the injected group
              of channels
        */
        alias JSWSTART = Bit!(1, Mutability.rw);

        /*********************************************************************
         Launch an injected conversion
              synchronously with the DFSDM0 JSWSTART
              trigger
        */
        alias JSYNC = Bit!(3, Mutability.rw);

        /*********************************************************************
         Scanning conversion mode for injected
              conversions
        */
        alias JSCAN = Bit!(4, Mutability.rw);

        /*********************************************************************
         DMA channel enabled to read data for the
              injected channel group
        */
        alias JDMAEN = Bit!(5, Mutability.rw);

        /*********************************************************************
         Trigger signal selection for launching
              injected conversions
        */
        alias JEXTSEL = BitField!(12, 8, Mutability.rw);

        /*********************************************************************
         Trigger enable and trigger edge
              selection for injected conversions
        */
        alias JEXTEN = BitField!(14, 13, Mutability.rw);

        /*********************************************************************
         Software start of a conversion on the
              regular channel
        */
        alias RSWSTART = Bit!(17, Mutability.rw);

        /*********************************************************************
         Continuous mode selection for regular
              conversions
        */
        alias RCONT = Bit!(18, Mutability.rw);

        /*********************************************************************
         Launch regular conversion synchronously
              with DFSDM0
        */
        alias RSYNC = Bit!(19, Mutability.rw);

        /*********************************************************************
         DMA channel enabled to read data for the
              regular conversion
        */
        alias RDMAEN = Bit!(21, Mutability.rw);

        /*********************************************************************
         Regular channel selection
        */
        alias RCH = BitField!(26, 24, Mutability.rw);

        /*********************************************************************
         Fast conversion mode selection for
              regular conversions
        */
        alias FAST = Bit!(29, Mutability.rw);

        /*********************************************************************
         Analog watchdog fast mode
              select
        */
        alias AWFSEL = Bit!(30, Mutability.rw);
    }

    /*************************************************************************
     DFSDM control register 2
    */
    final abstract class DFSDM0_CR2 : Register!(0xB0)
    {
        /*********************************************************************
         Injected end of conversion interrupt
              enable
        */
        alias JEOCIE = Bit!(0, Mutability.rw);

        /*********************************************************************
         Regular end of conversion interrupt
              enable
        */
        alias REOCIE = Bit!(1, Mutability.rw);

        /*********************************************************************
         Injected data overrun interrupt
              enable
        */
        alias JOVRIE = Bit!(2, Mutability.rw);

        /*********************************************************************
         Regular data overrun interrupt
              enable
        */
        alias ROVRIE = Bit!(3, Mutability.rw);

        /*********************************************************************
         Analog watchdog interrupt
              enable
        */
        alias AWDIE = Bit!(4, Mutability.rw);

        /*********************************************************************
         Short-circuit detector interrupt
              enable
        */
        alias SCDIE = Bit!(5, Mutability.rw);

        /*********************************************************************
         Clock absence interrupt
              enable
        */
        alias CKABIE = Bit!(6, Mutability.rw);

        /*********************************************************************
         Extremes detector channel
              selection
        */
        alias EXCH = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         Analog watchdog channel
              selection
        */
        alias AWDCH = BitField!(23, 16, Mutability.rw);
    }

    /*************************************************************************
     DFSDM control register 2
    */
    final abstract class DFSDM1_CR2 : Register!(0xB4)
    {
        /*********************************************************************
         Injected end of conversion interrupt
              enable
        */
        alias JEOCIE = Bit!(0, Mutability.rw);

        /*********************************************************************
         Regular end of conversion interrupt
              enable
        */
        alias REOCIE = Bit!(1, Mutability.rw);

        /*********************************************************************
         Injected data overrun interrupt
              enable
        */
        alias JOVRIE = Bit!(2, Mutability.rw);

        /*********************************************************************
         Regular data overrun interrupt
              enable
        */
        alias ROVRIE = Bit!(3, Mutability.rw);

        /*********************************************************************
         Analog watchdog interrupt
              enable
        */
        alias AWDIE = Bit!(4, Mutability.rw);

        /*********************************************************************
         Short-circuit detector interrupt
              enable
        */
        alias SCDIE = Bit!(5, Mutability.rw);

        /*********************************************************************
         Clock absence interrupt
              enable
        */
        alias CKABIE = Bit!(6, Mutability.rw);

        /*********************************************************************
         Extremes detector channel
              selection
        */
        alias EXCH = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         Analog watchdog channel
              selection
        */
        alias AWDCH = BitField!(23, 16, Mutability.rw);
    }

    /*************************************************************************
     DFSDM control register 2
    */
    final abstract class DFSDM2_CR2 : Register!(0xB8)
    {
        /*********************************************************************
         Injected end of conversion interrupt
              enable
        */
        alias JEOCIE = Bit!(0, Mutability.rw);

        /*********************************************************************
         Regular end of conversion interrupt
              enable
        */
        alias REOCIE = Bit!(1, Mutability.rw);

        /*********************************************************************
         Injected data overrun interrupt
              enable
        */
        alias JOVRIE = Bit!(2, Mutability.rw);

        /*********************************************************************
         Regular data overrun interrupt
              enable
        */
        alias ROVRIE = Bit!(3, Mutability.rw);

        /*********************************************************************
         Analog watchdog interrupt
              enable
        */
        alias AWDIE = Bit!(4, Mutability.rw);

        /*********************************************************************
         Short-circuit detector interrupt
              enable
        */
        alias SCDIE = Bit!(5, Mutability.rw);

        /*********************************************************************
         Clock absence interrupt
              enable
        */
        alias CKABIE = Bit!(6, Mutability.rw);

        /*********************************************************************
         Extremes detector channel
              selection
        */
        alias EXCH = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         Analog watchdog channel
              selection
        */
        alias AWDCH = BitField!(23, 16, Mutability.rw);
    }

    /*************************************************************************
     DFSDM control register 2
    */
    final abstract class DFSDM3_CR2 : Register!(0xBC)
    {
        /*********************************************************************
         Injected end of conversion interrupt
              enable
        */
        alias JEOCIE = Bit!(0, Mutability.rw);

        /*********************************************************************
         Regular end of conversion interrupt
              enable
        */
        alias REOCIE = Bit!(1, Mutability.rw);

        /*********************************************************************
         Injected data overrun interrupt
              enable
        */
        alias JOVRIE = Bit!(2, Mutability.rw);

        /*********************************************************************
         Regular data overrun interrupt
              enable
        */
        alias ROVRIE = Bit!(3, Mutability.rw);

        /*********************************************************************
         Analog watchdog interrupt
              enable
        */
        alias AWDIE = Bit!(4, Mutability.rw);

        /*********************************************************************
         Short-circuit detector interrupt
              enable
        */
        alias SCDIE = Bit!(5, Mutability.rw);

        /*********************************************************************
         Clock absence interrupt
              enable
        */
        alias CKABIE = Bit!(6, Mutability.rw);

        /*********************************************************************
         Extremes detector channel
              selection
        */
        alias EXCH = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         Analog watchdog channel
              selection
        */
        alias AWDCH = BitField!(23, 16, Mutability.rw);
    }

    /*************************************************************************
     DFSDM interrupt and status
          register
    */
    final abstract class DFSDM0_ISR : Register!(0xC0)
    {
        /*********************************************************************
         End of injected conversion
              flag
        */
        alias JEOCF = Bit!(0, Mutability.rw);

        /*********************************************************************
         End of regular conversion
              flag
        */
        alias REOCF = Bit!(1, Mutability.rw);

        /*********************************************************************
         Injected conversion overrun
              flag
        */
        alias JOVRF = Bit!(2, Mutability.rw);

        /*********************************************************************
         Regular conversion overrun
              flag
        */
        alias ROVRF = Bit!(3, Mutability.rw);

        /*********************************************************************
         Analog watchdog
        */
        alias AWDF = Bit!(4, Mutability.rw);

        /*********************************************************************
         Injected conversion in progress
              status
        */
        alias JCIP = Bit!(13, Mutability.rw);

        /*********************************************************************
         Regular conversion in progress
              status
        */
        alias RCIP = Bit!(14, Mutability.rw);

        /*********************************************************************
         Clock absence flag
        */
        alias CKABF = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         short-circuit detector
              flag
        */
        alias SCDF = BitField!(31, 24, Mutability.rw);
    }

    /*************************************************************************
     DFSDM interrupt and status
          register
    */
    final abstract class DFSDM1_ISR : Register!(0xC4)
    {
        /*********************************************************************
         End of injected conversion
              flag
        */
        alias JEOCF = Bit!(0, Mutability.rw);

        /*********************************************************************
         End of regular conversion
              flag
        */
        alias REOCF = Bit!(1, Mutability.rw);

        /*********************************************************************
         Injected conversion overrun
              flag
        */
        alias JOVRF = Bit!(2, Mutability.rw);

        /*********************************************************************
         Regular conversion overrun
              flag
        */
        alias ROVRF = Bit!(3, Mutability.rw);

        /*********************************************************************
         Analog watchdog
        */
        alias AWDF = Bit!(4, Mutability.rw);

        /*********************************************************************
         Injected conversion in progress
              status
        */
        alias JCIP = Bit!(13, Mutability.rw);

        /*********************************************************************
         Regular conversion in progress
              status
        */
        alias RCIP = Bit!(14, Mutability.rw);

        /*********************************************************************
         Clock absence flag
        */
        alias CKABF = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         short-circuit detector
              flag
        */
        alias SCDF = BitField!(31, 24, Mutability.rw);
    }

    /*************************************************************************
     DFSDM interrupt and status
          register
    */
    final abstract class DFSDM2_ISR : Register!(0xC8)
    {
        /*********************************************************************
         End of injected conversion
              flag
        */
        alias JEOCF = Bit!(0, Mutability.rw);

        /*********************************************************************
         End of regular conversion
              flag
        */
        alias REOCF = Bit!(1, Mutability.rw);

        /*********************************************************************
         Injected conversion overrun
              flag
        */
        alias JOVRF = Bit!(2, Mutability.rw);

        /*********************************************************************
         Regular conversion overrun
              flag
        */
        alias ROVRF = Bit!(3, Mutability.rw);

        /*********************************************************************
         Analog watchdog
        */
        alias AWDF = Bit!(4, Mutability.rw);

        /*********************************************************************
         Injected conversion in progress
              status
        */
        alias JCIP = Bit!(13, Mutability.rw);

        /*********************************************************************
         Regular conversion in progress
              status
        */
        alias RCIP = Bit!(14, Mutability.rw);

        /*********************************************************************
         Clock absence flag
        */
        alias CKABF = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         short-circuit detector
              flag
        */
        alias SCDF = BitField!(31, 24, Mutability.rw);
    }

    /*************************************************************************
     DFSDM interrupt and status
          register
    */
    final abstract class DFSDM3_ISR : Register!(0xCC)
    {
        /*********************************************************************
         End of injected conversion
              flag
        */
        alias JEOCF = Bit!(0, Mutability.rw);

        /*********************************************************************
         End of regular conversion
              flag
        */
        alias REOCF = Bit!(1, Mutability.rw);

        /*********************************************************************
         Injected conversion overrun
              flag
        */
        alias JOVRF = Bit!(2, Mutability.rw);

        /*********************************************************************
         Regular conversion overrun
              flag
        */
        alias ROVRF = Bit!(3, Mutability.rw);

        /*********************************************************************
         Analog watchdog
        */
        alias AWDF = Bit!(4, Mutability.rw);

        /*********************************************************************
         Injected conversion in progress
              status
        */
        alias JCIP = Bit!(13, Mutability.rw);

        /*********************************************************************
         Regular conversion in progress
              status
        */
        alias RCIP = Bit!(14, Mutability.rw);

        /*********************************************************************
         Clock absence flag
        */
        alias CKABF = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         short-circuit detector
              flag
        */
        alias SCDF = BitField!(31, 24, Mutability.rw);
    }

    /*************************************************************************
     DFSDM interrupt flag clear
          register
    */
    final abstract class DFSDM0_ICR : Register!(0xD0)
    {
        /*********************************************************************
         Clear the injected conversion overrun
              flag
        */
        alias CLRJOVRF = Bit!(2, Mutability.rw);

        /*********************************************************************
         Clear the regular conversion overrun
              flag
        */
        alias CLRROVRF = Bit!(3, Mutability.rw);

        /*********************************************************************
         Clear the clock absence
              flag
        */
        alias CLRCKABF = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         Clear the short-circuit detector
              flag
        */
        alias CLRSCDF = BitField!(31, 24, Mutability.rw);
    }

    /*************************************************************************
     DFSDM interrupt flag clear
          register
    */
    final abstract class DFSDM1_ICR : Register!(0xD4)
    {
        /*********************************************************************
         Clear the injected conversion overrun
              flag
        */
        alias CLRJOVRF = Bit!(2, Mutability.rw);

        /*********************************************************************
         Clear the regular conversion overrun
              flag
        */
        alias CLRROVRF = Bit!(3, Mutability.rw);

        /*********************************************************************
         Clear the clock absence
              flag
        */
        alias CLRCKABF = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         Clear the short-circuit detector
              flag
        */
        alias CLRSCDF = BitField!(31, 24, Mutability.rw);
    }

    /*************************************************************************
     DFSDM interrupt flag clear
          register
    */
    final abstract class DFSDM2_ICR : Register!(0xD8)
    {
        /*********************************************************************
         Clear the injected conversion overrun
              flag
        */
        alias CLRJOVRF = Bit!(2, Mutability.rw);

        /*********************************************************************
         Clear the regular conversion overrun
              flag
        */
        alias CLRROVRF = Bit!(3, Mutability.rw);

        /*********************************************************************
         Clear the clock absence
              flag
        */
        alias CLRCKABF = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         Clear the short-circuit detector
              flag
        */
        alias CLRSCDF = BitField!(31, 24, Mutability.rw);
    }

    /*************************************************************************
     DFSDM interrupt flag clear
          register
    */
    final abstract class DFSDM3_ICR : Register!(0xDC)
    {
        /*********************************************************************
         Clear the injected conversion overrun
              flag
        */
        alias CLRJOVRF = Bit!(2, Mutability.rw);

        /*********************************************************************
         Clear the regular conversion overrun
              flag
        */
        alias CLRROVRF = Bit!(3, Mutability.rw);

        /*********************************************************************
         Clear the clock absence
              flag
        */
        alias CLRCKABF = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         Clear the short-circuit detector
              flag
        */
        alias CLRSCDF = BitField!(31, 24, Mutability.rw);
    }

    /*************************************************************************
     DFSDM injected channel group selection
          register
    */
    final abstract class DFSDM0_JCHGR : Register!(0xE0)
    {
        /*********************************************************************
         Injected channel group
              selection
        */
        alias JCHG = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     DFSDM injected channel group selection
          register
    */
    final abstract class DFSDM1_JCHGR : Register!(0xE4)
    {
        /*********************************************************************
         Injected channel group
              selection
        */
        alias JCHG = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     DFSDM injected channel group selection
          register
    */
    final abstract class DFSDM2_JCHGR : Register!(0xE8)
    {
        /*********************************************************************
         Injected channel group
              selection
        */
        alias JCHG = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     DFSDM injected channel group selection
          register
    */
    final abstract class DFSDM3_JCHGR : Register!(0xEC)
    {
        /*********************************************************************
         Injected channel group
              selection
        */
        alias JCHG = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     DFSDM filter control register
    */
    final abstract class DFSDM0_FCR : Register!(0xF0)
    {
        /*********************************************************************
         Integrator oversampling ratio (averaging
              length)
        */
        alias IOSR = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         Sinc filter oversampling ratio
              (decimation rate)
        */
        alias FOSR = BitField!(25, 16, Mutability.rw);

        /*********************************************************************
         Sinc filter order
        */
        alias FORD = BitField!(31, 29, Mutability.rw);
    }

    /*************************************************************************
     DFSDM filter control register
    */
    final abstract class DFSDM1_FCR : Register!(0xF4)
    {
        /*********************************************************************
         Integrator oversampling ratio (averaging
              length)
        */
        alias IOSR = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         Sinc filter oversampling ratio
              (decimation rate)
        */
        alias FOSR = BitField!(25, 16, Mutability.rw);

        /*********************************************************************
         Sinc filter order
        */
        alias FORD = BitField!(31, 29, Mutability.rw);
    }

    /*************************************************************************
     DFSDM filter control register
    */
    final abstract class DFSDM2_FCR : Register!(0xF8)
    {
        /*********************************************************************
         Integrator oversampling ratio (averaging
              length)
        */
        alias IOSR = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         Sinc filter oversampling ratio
              (decimation rate)
        */
        alias FOSR = BitField!(25, 16, Mutability.rw);

        /*********************************************************************
         Sinc filter order
        */
        alias FORD = BitField!(31, 29, Mutability.rw);
    }

    /*************************************************************************
     DFSDM filter control register
    */
    final abstract class DFSDM3_FCR : Register!(0xFC)
    {
        /*********************************************************************
         Integrator oversampling ratio (averaging
              length)
        */
        alias IOSR = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         Sinc filter oversampling ratio
              (decimation rate)
        */
        alias FOSR = BitField!(25, 16, Mutability.rw);

        /*********************************************************************
         Sinc filter order
        */
        alias FORD = BitField!(31, 29, Mutability.rw);
    }

    /*************************************************************************
     DFSDM data register for injected
          group
    */
    final abstract class DFSDM0_JDATAR : Register!(0x100)
    {
        /*********************************************************************
         Injected channel most recently
              converted
        */
        alias JDATACH = BitField!(2, 0, Mutability.rw);

        /*********************************************************************
         Injected group conversion
              data
        */
        alias JDATA = BitField!(31, 8, Mutability.rw);
    }

    /*************************************************************************
     DFSDM data register for injected
          group
    */
    final abstract class DFSDM1_JDATAR : Register!(0x104)
    {
        /*********************************************************************
         Injected channel most recently
              converted
        */
        alias JDATACH = BitField!(2, 0, Mutability.rw);

        /*********************************************************************
         Injected group conversion
              data
        */
        alias JDATA = BitField!(31, 8, Mutability.rw);
    }

    /*************************************************************************
     DFSDM data register for injected
          group
    */
    final abstract class DFSDM2_JDATAR : Register!(0x108)
    {
        /*********************************************************************
         Injected channel most recently
              converted
        */
        alias JDATACH = BitField!(2, 0, Mutability.rw);

        /*********************************************************************
         Injected group conversion
              data
        */
        alias JDATA = BitField!(31, 8, Mutability.rw);
    }

    /*************************************************************************
     DFSDM data register for injected
          group
    */
    final abstract class DFSDM3_JDATAR : Register!(0x10C)
    {
        /*********************************************************************
         Injected channel most recently
              converted
        */
        alias JDATACH = BitField!(2, 0, Mutability.rw);

        /*********************************************************************
         Injected group conversion
              data
        */
        alias JDATA = BitField!(31, 8, Mutability.rw);
    }

    /*************************************************************************
     DFSDM data register for the regular
          channel
    */
    final abstract class DFSDM0_RDATAR : Register!(0x110)
    {
        /*********************************************************************
         Regular channel most recently
              converted
        */
        alias RDATACH = BitField!(2, 0, Mutability.rw);

        /*********************************************************************
         Regular channel pending
              data
        */
        alias RPEND = Bit!(4, Mutability.rw);

        /*********************************************************************
         Regular channel conversion
              data
        */
        alias RDATA = BitField!(31, 8, Mutability.rw);
    }

    /*************************************************************************
     DFSDM data register for the regular
          channel
    */
    final abstract class DFSDM1_RDATAR : Register!(0x114)
    {
        /*********************************************************************
         Regular channel most recently
              converted
        */
        alias RDATACH = BitField!(2, 0, Mutability.rw);

        /*********************************************************************
         Regular channel pending
              data
        */
        alias RPEND = Bit!(4, Mutability.rw);

        /*********************************************************************
         Regular channel conversion
              data
        */
        alias RDATA = BitField!(31, 8, Mutability.rw);
    }

    /*************************************************************************
     DFSDM data register for the regular
          channel
    */
    final abstract class DFSDM2_RDATAR : Register!(0x118)
    {
        /*********************************************************************
         Regular channel most recently
              converted
        */
        alias RDATACH = BitField!(2, 0, Mutability.rw);

        /*********************************************************************
         Regular channel pending
              data
        */
        alias RPEND = Bit!(4, Mutability.rw);

        /*********************************************************************
         Regular channel conversion
              data
        */
        alias RDATA = BitField!(31, 8, Mutability.rw);
    }

    /*************************************************************************
     DFSDM data register for the regular
          channel
    */
    final abstract class DFSDM3_RDATAR : Register!(0x11C)
    {
        /*********************************************************************
         Regular channel most recently
              converted
        */
        alias RDATACH = BitField!(2, 0, Mutability.rw);

        /*********************************************************************
         Regular channel pending
              data
        */
        alias RPEND = Bit!(4, Mutability.rw);

        /*********************************************************************
         Regular channel conversion
              data
        */
        alias RDATA = BitField!(31, 8, Mutability.rw);
    }

    /*************************************************************************
     DFSDM analog watchdog high threshold
          register
    */
    final abstract class DFSDM0_AWHTR : Register!(0x120)
    {
        /*********************************************************************
         Break signal assignment to analog
              watchdog high threshold event
        */
        alias BKAWH = BitField!(3, 0, Mutability.rw);

        /*********************************************************************
         Analog watchdog high
              threshold
        */
        alias AWHT = BitField!(31, 8, Mutability.rw);
    }

    /*************************************************************************
     DFSDM analog watchdog high threshold
          register
    */
    final abstract class DFSDM1_AWHTR : Register!(0x124)
    {
        /*********************************************************************
         Break signal assignment to analog
              watchdog high threshold event
        */
        alias BKAWH = BitField!(3, 0, Mutability.rw);

        /*********************************************************************
         Analog watchdog high
              threshold
        */
        alias AWHT = BitField!(31, 8, Mutability.rw);
    }

    /*************************************************************************
     DFSDM analog watchdog high threshold
          register
    */
    final abstract class DFSDM2_AWHTR : Register!(0x128)
    {
        /*********************************************************************
         Break signal assignment to analog
              watchdog high threshold event
        */
        alias BKAWH = BitField!(3, 0, Mutability.rw);

        /*********************************************************************
         Analog watchdog high
              threshold
        */
        alias AWHT = BitField!(31, 8, Mutability.rw);
    }

    /*************************************************************************
     DFSDM analog watchdog high threshold
          register
    */
    final abstract class DFSDM3_AWHTR : Register!(0x12C)
    {
        /*********************************************************************
         Break signal assignment to analog
              watchdog high threshold event
        */
        alias BKAWH = BitField!(3, 0, Mutability.rw);

        /*********************************************************************
         Analog watchdog high
              threshold
        */
        alias AWHT = BitField!(31, 8, Mutability.rw);
    }

    /*************************************************************************
     DFSDM analog watchdog low threshold
          register
    */
    final abstract class DFSDM0_AWLTR : Register!(0x130)
    {
        /*********************************************************************
         Break signal assignment to analog
              watchdog low threshold event
        */
        alias BKAWL = BitField!(3, 0, Mutability.rw);

        /*********************************************************************
         Analog watchdog low
              threshold
        */
        alias AWLT = BitField!(31, 8, Mutability.rw);
    }

    /*************************************************************************
     DFSDM analog watchdog low threshold
          register
    */
    final abstract class DFSDM1_AWLTR : Register!(0x134)
    {
        /*********************************************************************
         Break signal assignment to analog
              watchdog low threshold event
        */
        alias BKAWL = BitField!(3, 0, Mutability.rw);

        /*********************************************************************
         Analog watchdog low
              threshold
        */
        alias AWLT = BitField!(31, 8, Mutability.rw);
    }

    /*************************************************************************
     DFSDM analog watchdog low threshold
          register
    */
    final abstract class DFSDM2_AWLTR : Register!(0x138)
    {
        /*********************************************************************
         Break signal assignment to analog
              watchdog low threshold event
        */
        alias BKAWL = BitField!(3, 0, Mutability.rw);

        /*********************************************************************
         Analog watchdog low
              threshold
        */
        alias AWLT = BitField!(31, 8, Mutability.rw);
    }

    /*************************************************************************
     DFSDM analog watchdog low threshold
          register
    */
    final abstract class DFSDM3_AWLTR : Register!(0x13C)
    {
        /*********************************************************************
         Break signal assignment to analog
              watchdog low threshold event
        */
        alias BKAWL = BitField!(3, 0, Mutability.rw);

        /*********************************************************************
         Analog watchdog low
              threshold
        */
        alias AWLT = BitField!(31, 8, Mutability.rw);
    }

    /*************************************************************************
     DFSDM analog watchdog status
          register
    */
    final abstract class DFSDM0_AWSR : Register!(0x140)
    {
        /*********************************************************************
         Analog watchdog low threshold
              flag
        */
        alias AWLTF = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         Analog watchdog high threshold
              flag
        */
        alias AWHTF = BitField!(15, 8, Mutability.rw);
    }

    /*************************************************************************
     DFSDM analog watchdog status
          register
    */
    final abstract class DFSDM1_AWSR : Register!(0x144)
    {
        /*********************************************************************
         Analog watchdog low threshold
              flag
        */
        alias AWLTF = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         Analog watchdog high threshold
              flag
        */
        alias AWHTF = BitField!(15, 8, Mutability.rw);
    }

    /*************************************************************************
     DFSDM analog watchdog status
          register
    */
    final abstract class DFSDM2_AWSR : Register!(0x148)
    {
        /*********************************************************************
         Analog watchdog low threshold
              flag
        */
        alias AWLTF = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         Analog watchdog high threshold
              flag
        */
        alias AWHTF = BitField!(15, 8, Mutability.rw);
    }

    /*************************************************************************
     DFSDM analog watchdog status
          register
    */
    final abstract class DFSDM3_AWSR : Register!(0x14C)
    {
        /*********************************************************************
         Analog watchdog low threshold
              flag
        */
        alias AWLTF = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         Analog watchdog high threshold
              flag
        */
        alias AWHTF = BitField!(15, 8, Mutability.rw);
    }

    /*************************************************************************
     DFSDM analog watchdog clear flag
          register
    */
    final abstract class DFSDM0_AWCFR : Register!(0x150)
    {
        /*********************************************************************
         Clear the analog watchdog low threshold
              flag
        */
        alias CLRAWLTF = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         Clear the analog watchdog high threshold
              flag
        */
        alias CLRAWHTF = BitField!(15, 8, Mutability.rw);
    }

    /*************************************************************************
     DFSDM analog watchdog clear flag
          register
    */
    final abstract class DFSDM1_AWCFR : Register!(0x154)
    {
        /*********************************************************************
         Clear the analog watchdog low threshold
              flag
        */
        alias CLRAWLTF = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         Clear the analog watchdog high threshold
              flag
        */
        alias CLRAWHTF = BitField!(15, 8, Mutability.rw);
    }

    /*************************************************************************
     DFSDM analog watchdog clear flag
          register
    */
    final abstract class DFSDM2_AWCFR : Register!(0x158)
    {
        /*********************************************************************
         Clear the analog watchdog low threshold
              flag
        */
        alias CLRAWLTF = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         Clear the analog watchdog high threshold
              flag
        */
        alias CLRAWHTF = BitField!(15, 8, Mutability.rw);
    }

    /*************************************************************************
     DFSDM analog watchdog clear flag
          register
    */
    final abstract class DFSDM3_AWCFR : Register!(0x15C)
    {
        /*********************************************************************
         Clear the analog watchdog low threshold
              flag
        */
        alias CLRAWLTF = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         Clear the analog watchdog high threshold
              flag
        */
        alias CLRAWHTF = BitField!(15, 8, Mutability.rw);
    }

    /*************************************************************************
     DFSDM Extremes detector maximum
          register
    */
    final abstract class DFSDM0_EXMAX : Register!(0x160)
    {
        /*********************************************************************
         Extremes detector maximum data
              channel
        */
        alias EXMAXCH = BitField!(2, 0, Mutability.rw);

        /*********************************************************************
         Extremes detector maximum
              value
        */
        alias EXMAX = BitField!(31, 8, Mutability.rw);
    }

    /*************************************************************************
     DFSDM Extremes detector maximum
          register
    */
    final abstract class DFSDM1_EXMAX : Register!(0x164)
    {
        /*********************************************************************
         Extremes detector maximum data
              channel
        */
        alias EXMAXCH = BitField!(2, 0, Mutability.rw);

        /*********************************************************************
         Extremes detector maximum
              value
        */
        alias EXMAX = BitField!(31, 8, Mutability.rw);
    }

    /*************************************************************************
     DFSDM Extremes detector maximum
          register
    */
    final abstract class DFSDM2_EXMAX : Register!(0x168)
    {
        /*********************************************************************
         Extremes detector maximum data
              channel
        */
        alias EXMAXCH = BitField!(2, 0, Mutability.rw);

        /*********************************************************************
         Extremes detector maximum
              value
        */
        alias EXMAX = BitField!(31, 8, Mutability.rw);
    }

    /*************************************************************************
     DFSDM Extremes detector maximum
          register
    */
    final abstract class DFSDM3_EXMAX : Register!(0x16C)
    {
        /*********************************************************************
         Extremes detector maximum data
              channel
        */
        alias EXMAXCH = BitField!(2, 0, Mutability.rw);

        /*********************************************************************
         Extremes detector maximum
              value
        */
        alias EXMAX = BitField!(31, 8, Mutability.rw);
    }

    /*************************************************************************
     DFSDM Extremes detector minimum
          register
    */
    final abstract class DFSDM0_EXMIN : Register!(0x170)
    {
        /*********************************************************************
         Extremes detector minimum data
              channel
        */
        alias EXMINCH = BitField!(2, 0, Mutability.rw);

        /*********************************************************************
         Extremes detector minimum
              value
        */
        alias EXMIN = BitField!(31, 8, Mutability.rw);
    }

    /*************************************************************************
     DFSDM Extremes detector minimum
          register
    */
    final abstract class DFSDM1_EXMIN : Register!(0x174)
    {
        /*********************************************************************
         Extremes detector minimum data
              channel
        */
        alias EXMINCH = BitField!(2, 0, Mutability.rw);

        /*********************************************************************
         Extremes detector minimum
              value
        */
        alias EXMIN = BitField!(31, 8, Mutability.rw);
    }

    /*************************************************************************
     DFSDM Extremes detector minimum
          register
    */
    final abstract class DFSDM2_EXMIN : Register!(0x178)
    {
        /*********************************************************************
         Extremes detector minimum data
              channel
        */
        alias EXMINCH = BitField!(2, 0, Mutability.rw);

        /*********************************************************************
         Extremes detector minimum
              value
        */
        alias EXMIN = BitField!(31, 8, Mutability.rw);
    }

    /*************************************************************************
     DFSDM Extremes detector minimum
          register
    */
    final abstract class DFSDM3_EXMIN : Register!(0x17C)
    {
        /*********************************************************************
         Extremes detector minimum data
              channel
        */
        alias EXMINCH = BitField!(2, 0, Mutability.rw);

        /*********************************************************************
         Extremes detector minimum
              value
        */
        alias EXMIN = BitField!(31, 8, Mutability.rw);
    }

    /*************************************************************************
     DFSDM conversion timer
          register
    */
    final abstract class DFSDM0_CNVTIMR : Register!(0x180)
    {
        /*********************************************************************
         28-bit timer counting conversion
              time
        */
        alias CNVCNT = BitField!(31, 4, Mutability.rw);
    }

    /*************************************************************************
     DFSDM conversion timer
          register
    */
    final abstract class DFSDM1_CNVTIMR : Register!(0x184)
    {
        /*********************************************************************
         28-bit timer counting conversion
              time
        */
        alias CNVCNT = BitField!(31, 4, Mutability.rw);
    }

    /*************************************************************************
     DFSDM conversion timer
          register
    */
    final abstract class DFSDM2_CNVTIMR : Register!(0x188)
    {
        /*********************************************************************
         28-bit timer counting conversion
              time
        */
        alias CNVCNT = BitField!(31, 4, Mutability.rw);
    }

    /*************************************************************************
     DFSDM conversion timer
          register
    */
    final abstract class DFSDM3_CNVTIMR : Register!(0x18C)
    {
        /*********************************************************************
         28-bit timer counting conversion
              time
        */
        alias CNVCNT = BitField!(31, 4, Mutability.rw);
    }
}
