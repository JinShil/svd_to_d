module stm32f7x9.rtc;

import stm32f7x9.mmio;

/*****************************************************************************
 Real-time clock
*/
final abstract class RTC : Peripheral!(0x40002800)
{
    /*************************************************************************
     time register
    */
    final abstract class TR : Register!(00)
    {
        /*********************************************************************
         AM/PM notation
        */
        alias PM = Bit!(22, Mutability.rw);

        /*********************************************************************
         Hour tens in BCD format
        */
        alias HT = BitField!(21, 20, Mutability.rw);

        /*********************************************************************
         Hour units in BCD format
        */
        alias HU = BitField!(19, 16, Mutability.rw);

        /*********************************************************************
         Minute tens in BCD format
        */
        alias MNT = BitField!(14, 12, Mutability.rw);

        /*********************************************************************
         Minute units in BCD format
        */
        alias MNU = BitField!(11, 8, Mutability.rw);

        /*********************************************************************
         Second tens in BCD format
        */
        alias ST = BitField!(6, 4, Mutability.rw);

        /*********************************************************************
         Second units in BCD format
        */
        alias SU = BitField!(3, 0, Mutability.rw);
    }

    /*************************************************************************
     date register
    */
    final abstract class DR : Register!(0x4)
    {
        /*********************************************************************
         Year tens in BCD format
        */
        alias YT = BitField!(23, 20, Mutability.rw);

        /*********************************************************************
         Year units in BCD format
        */
        alias YU = BitField!(19, 16, Mutability.rw);

        /*********************************************************************
         Week day units
        */
        alias WDU = BitField!(15, 13, Mutability.rw);

        /*********************************************************************
         Month tens in BCD format
        */
        alias MT = Bit!(12, Mutability.rw);

        /*********************************************************************
         Month units in BCD format
        */
        alias MU = BitField!(11, 8, Mutability.rw);

        /*********************************************************************
         Date tens in BCD format
        */
        alias DT = BitField!(5, 4, Mutability.rw);

        /*********************************************************************
         Date units in BCD format
        */
        alias DU = BitField!(3, 0, Mutability.rw);
    }

    /*************************************************************************
     control register
    */
    final abstract class CR : Register!(0x8)
    {
        /*********************************************************************
         Wakeup clock selection
        */
        alias WCKSEL = BitField!(2, 0, Mutability.rw);

        /*********************************************************************
         Time-stamp event active
              edge
        */
        alias TSEDGE = Bit!(3, Mutability.rw);

        /*********************************************************************
         Reference clock detection enable (50 or
              60 Hz)
        */
        alias REFCKON = Bit!(4, Mutability.rw);

        /*********************************************************************
         Bypass the shadow
              registers
        */
        alias BYPSHAD = Bit!(5, Mutability.rw);

        /*********************************************************************
         Hour format
        */
        alias FMT = Bit!(6, Mutability.rw);

        /*********************************************************************
         Alarm A enable
        */
        alias ALRAE = Bit!(8, Mutability.rw);

        /*********************************************************************
         Alarm B enable
        */
        alias ALRBE = Bit!(9, Mutability.rw);

        /*********************************************************************
         Wakeup timer enable
        */
        alias WUTE = Bit!(10, Mutability.rw);

        /*********************************************************************
         Time stamp enable
        */
        alias TSE = Bit!(11, Mutability.rw);

        /*********************************************************************
         Alarm A interrupt enable
        */
        alias ALRAIE = Bit!(12, Mutability.rw);

        /*********************************************************************
         Alarm B interrupt enable
        */
        alias ALRBIE = Bit!(13, Mutability.rw);

        /*********************************************************************
         Wakeup timer interrupt
              enable
        */
        alias WUTIE = Bit!(14, Mutability.rw);

        /*********************************************************************
         Time-stamp interrupt
              enable
        */
        alias TSIE = Bit!(15, Mutability.rw);

        /*********************************************************************
         Add 1 hour (summer time
              change)
        */
        alias ADD1H = Bit!(16, Mutability.rw);

        /*********************************************************************
         Subtract 1 hour (winter time
              change)
        */
        alias SUB1H = Bit!(17, Mutability.rw);

        /*********************************************************************
         Backup
        */
        alias BKP = Bit!(18, Mutability.rw);

        /*********************************************************************
         Calibration output
              selection
        */
        alias COSEL = Bit!(19, Mutability.rw);

        /*********************************************************************
         Output polarity
        */
        alias POL = Bit!(20, Mutability.rw);

        /*********************************************************************
         Output selection
        */
        alias OSEL = BitField!(22, 21, Mutability.rw);

        /*********************************************************************
         Calibration output enable
        */
        alias COE = Bit!(23, Mutability.rw);

        /*********************************************************************
         timestamp on internal event
              enable
        */
        alias ITSE = Bit!(24, Mutability.rw);
    }

    /*************************************************************************
     initialization and status
          register
    */
    final abstract class ISR : Register!(0xc)
    {
        /*********************************************************************
         Alarm A write flag
        */
        alias ALRAWF = Bit!(0, Mutability.r);

        /*********************************************************************
         Alarm B write flag
        */
        alias ALRBWF = Bit!(1, Mutability.r);

        /*********************************************************************
         Wakeup timer write flag
        */
        alias WUTWF = Bit!(2, Mutability.r);

        /*********************************************************************
         Shift operation pending
        */
        alias SHPF = Bit!(3, Mutability.rw);

        /*********************************************************************
         Initialization status flag
        */
        alias INITS = Bit!(4, Mutability.r);

        /*********************************************************************
         Registers synchronization
              flag
        */
        alias RSF = Bit!(5, Mutability.rw);

        /*********************************************************************
         Initialization flag
        */
        alias INITF = Bit!(6, Mutability.r);

        /*********************************************************************
         Initialization mode
        */
        alias INIT = Bit!(7, Mutability.rw);

        /*********************************************************************
         Alarm A flag
        */
        alias ALRAF = Bit!(8, Mutability.rw);

        /*********************************************************************
         Alarm B flag
        */
        alias ALRBF = Bit!(9, Mutability.rw);

        /*********************************************************************
         Wakeup timer flag
        */
        alias WUTF = Bit!(10, Mutability.rw);

        /*********************************************************************
         Time-stamp flag
        */
        alias TSF = Bit!(11, Mutability.rw);

        /*********************************************************************
         Time-stamp overflow flag
        */
        alias TSOVF = Bit!(12, Mutability.rw);

        /*********************************************************************
         Tamper detection flag
        */
        alias TAMP1F = Bit!(13, Mutability.rw);

        /*********************************************************************
         RTC_TAMP2 detection flag
        */
        alias TAMP2F = Bit!(14, Mutability.rw);

        /*********************************************************************
         RTC_TAMP3 detection flag
        */
        alias TAMP3F = Bit!(15, Mutability.rw);

        /*********************************************************************
         Recalibration pending Flag
        */
        alias RECALPF = Bit!(16, Mutability.r);
    }

    /*************************************************************************
     prescaler register
    */
    final abstract class PRER : Register!(0x10)
    {
        /*********************************************************************
         Asynchronous prescaler
              factor
        */
        alias PREDIV_A = BitField!(22, 16, Mutability.rw);

        /*********************************************************************
         Synchronous prescaler
              factor
        */
        alias PREDIV_S = BitField!(14, 0, Mutability.rw);
    }

    /*************************************************************************
     wakeup timer register
    */
    final abstract class WUTR : Register!(0x14)
    {
        /*********************************************************************
         Wakeup auto-reload value
              bits
        */
        alias WUT = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     alarm A register
    */
    final abstract class ALRMAR : Register!(0x1c)
    {
        /*********************************************************************
         Alarm A date mask
        */
        alias MSK4 = Bit!(31, Mutability.rw);

        /*********************************************************************
         Week day selection
        */
        alias WDSEL = Bit!(30, Mutability.rw);

        /*********************************************************************
         Date tens in BCD format
        */
        alias DT = BitField!(29, 28, Mutability.rw);

        /*********************************************************************
         Date units or day in BCD
              format
        */
        alias DU = BitField!(27, 24, Mutability.rw);

        /*********************************************************************
         Alarm A hours mask
        */
        alias MSK3 = Bit!(23, Mutability.rw);

        /*********************************************************************
         AM/PM notation
        */
        alias PM = Bit!(22, Mutability.rw);

        /*********************************************************************
         Hour tens in BCD format
        */
        alias HT = BitField!(21, 20, Mutability.rw);

        /*********************************************************************
         Hour units in BCD format
        */
        alias HU = BitField!(19, 16, Mutability.rw);

        /*********************************************************************
         Alarm A minutes mask
        */
        alias MSK2 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Minute tens in BCD format
        */
        alias MNT = BitField!(14, 12, Mutability.rw);

        /*********************************************************************
         Minute units in BCD format
        */
        alias MNU = BitField!(11, 8, Mutability.rw);

        /*********************************************************************
         Alarm A seconds mask
        */
        alias MSK1 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Second tens in BCD format
        */
        alias ST = BitField!(6, 4, Mutability.rw);

        /*********************************************************************
         Second units in BCD format
        */
        alias SU = BitField!(3, 0, Mutability.rw);
    }

    /*************************************************************************
     alarm B register
    */
    final abstract class ALRMBR : Register!(0x20)
    {
        /*********************************************************************
         Alarm B date mask
        */
        alias MSK4 = Bit!(31, Mutability.rw);

        /*********************************************************************
         Week day selection
        */
        alias WDSEL = Bit!(30, Mutability.rw);

        /*********************************************************************
         Date tens in BCD format
        */
        alias DT = BitField!(29, 28, Mutability.rw);

        /*********************************************************************
         Date units or day in BCD
              format
        */
        alias DU = BitField!(27, 24, Mutability.rw);

        /*********************************************************************
         Alarm B hours mask
        */
        alias MSK3 = Bit!(23, Mutability.rw);

        /*********************************************************************
         AM/PM notation
        */
        alias PM = Bit!(22, Mutability.rw);

        /*********************************************************************
         Hour tens in BCD format
        */
        alias HT = BitField!(21, 20, Mutability.rw);

        /*********************************************************************
         Hour units in BCD format
        */
        alias HU = BitField!(19, 16, Mutability.rw);

        /*********************************************************************
         Alarm B minutes mask
        */
        alias MSK2 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Minute tens in BCD format
        */
        alias MNT = BitField!(14, 12, Mutability.rw);

        /*********************************************************************
         Minute units in BCD format
        */
        alias MNU = BitField!(11, 8, Mutability.rw);

        /*********************************************************************
         Alarm B seconds mask
        */
        alias MSK1 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Second tens in BCD format
        */
        alias ST = BitField!(6, 4, Mutability.rw);

        /*********************************************************************
         Second units in BCD format
        */
        alias SU = BitField!(3, 0, Mutability.rw);
    }

    /*************************************************************************
     write protection register
    */
    final abstract class WPR : Register!(0x24)
    {
        /*********************************************************************
         Write protection key
        */
        alias KEY = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     sub second register
    */
    final abstract class SSR : Register!(0x28)
    {
        /*********************************************************************
         Sub second value
        */
        alias SS = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     shift control register
    */
    final abstract class SHIFTR : Register!(0x2c)
    {
        /*********************************************************************
         Add one second
        */
        alias ADD1S = Bit!(31, Mutability.rw);

        /*********************************************************************
         Subtract a fraction of a
              second
        */
        alias SUBFS = BitField!(14, 0, Mutability.rw);
    }

    /*************************************************************************
     time stamp time register
    */
    final abstract class TSTR : Register!(0x30)
    {
        /*********************************************************************
         Second units in BCD format
        */
        alias SU = BitField!(3, 0, Mutability.rw);

        /*********************************************************************
         Second tens in BCD format
        */
        alias ST = BitField!(6, 4, Mutability.rw);

        /*********************************************************************
         Minute units in BCD format
        */
        alias MNU = BitField!(11, 8, Mutability.rw);

        /*********************************************************************
         Minute tens in BCD format
        */
        alias MNT = BitField!(14, 12, Mutability.rw);

        /*********************************************************************
         Hour units in BCD format
        */
        alias HU = BitField!(19, 16, Mutability.rw);

        /*********************************************************************
         Hour tens in BCD format
        */
        alias HT = BitField!(21, 20, Mutability.rw);

        /*********************************************************************
         AM/PM notation
        */
        alias PM = Bit!(22, Mutability.rw);
    }

    /*************************************************************************
     time stamp date register
    */
    final abstract class TSDR : Register!(0x34)
    {
        /*********************************************************************
         Week day units
        */
        alias WDU = BitField!(15, 13, Mutability.rw);

        /*********************************************************************
         Month tens in BCD format
        */
        alias MT = Bit!(12, Mutability.rw);

        /*********************************************************************
         Month units in BCD format
        */
        alias MU = BitField!(11, 8, Mutability.rw);

        /*********************************************************************
         Date tens in BCD format
        */
        alias DT = BitField!(5, 4, Mutability.rw);

        /*********************************************************************
         Date units in BCD format
        */
        alias DU = BitField!(3, 0, Mutability.rw);
    }

    /*************************************************************************
     timestamp sub second register
    */
    final abstract class TSSSR : Register!(0x38)
    {
        /*********************************************************************
         Sub second value
        */
        alias SS = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     calibration register
    */
    final abstract class CALR : Register!(0x3c)
    {
        /*********************************************************************
         Increase frequency of RTC by 488.5
              ppm
        */
        alias CALP = Bit!(15, Mutability.rw);

        /*********************************************************************
         Use an 8-second calibration cycle
              period
        */
        alias CALW8 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Use a 16-second calibration cycle
              period
        */
        alias CALW16 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Calibration minus
        */
        alias CALM = BitField!(8, 0, Mutability.rw);
    }

    /*************************************************************************
     tamper configuration register
    */
    final abstract class TAMPCR : Register!(0x40)
    {
        /*********************************************************************
         Tamper 1 detection enable
        */
        alias TAMP1E = Bit!(0, Mutability.rw);

        /*********************************************************************
         Active level for tamper 1
        */
        alias TAMP1TRG = Bit!(1, Mutability.rw);

        /*********************************************************************
         Tamper interrupt enable
        */
        alias TAMPIE = Bit!(2, Mutability.rw);

        /*********************************************************************
         Tamper 2 detection enable
        */
        alias TAMP2E = Bit!(3, Mutability.rw);

        /*********************************************************************
         Active level for tamper 2
        */
        alias TAMP2TRG = Bit!(4, Mutability.rw);

        /*********************************************************************
         Tamper 3 detection enable
        */
        alias TAMP3E = Bit!(5, Mutability.rw);

        /*********************************************************************
         Active level for tamper 3
        */
        alias TAMP3TRG = Bit!(6, Mutability.rw);

        /*********************************************************************
         Activate timestamp on tamper detection
              event
        */
        alias TAMPTS = Bit!(7, Mutability.rw);

        /*********************************************************************
         Tamper sampling frequency
        */
        alias TAMPFREQ = BitField!(10, 8, Mutability.rw);

        /*********************************************************************
         Tamper filter count
        */
        alias TAMPFLT = BitField!(12, 11, Mutability.rw);

        /*********************************************************************
         Tamper precharge duration
        */
        alias TAMPPRCH = BitField!(14, 13, Mutability.rw);

        /*********************************************************************
         TAMPER pull-up disable
        */
        alias TAMPPUDIS = Bit!(15, Mutability.rw);

        /*********************************************************************
         Tamper 1 interrupt enable
        */
        alias TAMP1IE = Bit!(16, Mutability.rw);

        /*********************************************************************
         Tamper 1 no erase
        */
        alias TAMP1NOERASE = Bit!(17, Mutability.rw);

        /*********************************************************************
         Tamper 1 mask flag
        */
        alias TAMP1MF = Bit!(18, Mutability.rw);

        /*********************************************************************
         Tamper 2 interrupt enable
        */
        alias TAMP2IE = Bit!(19, Mutability.rw);

        /*********************************************************************
         Tamper 2 no erase
        */
        alias TAMP2NOERASE = Bit!(20, Mutability.rw);

        /*********************************************************************
         Tamper 2 mask flag
        */
        alias TAMP2MF = Bit!(21, Mutability.rw);

        /*********************************************************************
         Tamper 3 interrupt enable
        */
        alias TAMP3IE = Bit!(22, Mutability.rw);

        /*********************************************************************
         Tamper 3 no erase
        */
        alias TAMP3NOERASE = Bit!(23, Mutability.rw);

        /*********************************************************************
         Tamper 3 mask flag
        */
        alias TAMP3MF = Bit!(24, Mutability.rw);
    }

    /*************************************************************************
     alarm A sub second register
    */
    final abstract class ALRMASSR : Register!(0x44)
    {
        /*********************************************************************
         Mask the most-significant bits starting
              at this bit
        */
        alias MASKSS = BitField!(27, 24, Mutability.rw);

        /*********************************************************************
         Sub seconds value
        */
        alias SS = BitField!(14, 0, Mutability.rw);
    }

    /*************************************************************************
     alarm B sub second register
    */
    final abstract class ALRMBSSR : Register!(0x48)
    {
        /*********************************************************************
         Mask the most-significant bits starting
              at this bit
        */
        alias MASKSS = BitField!(27, 24, Mutability.rw);

        /*********************************************************************
         Sub seconds value
        */
        alias SS = BitField!(14, 0, Mutability.rw);
    }

    /*************************************************************************
     option register
    */
    final abstract class OR : Register!(0x4c)
    {
        /*********************************************************************
         RTC_ALARM on PC13 output
              type
        */
        alias RTC_ALARM_TYPE = Bit!(0, Mutability.rw);

        /*********************************************************************
         RTC_OUT remap
        */
        alias RTC_OUT_RMP = Bit!(1, Mutability.rw);
    }

    /*************************************************************************
     backup register
    */
    final abstract class BKP0R : Register!(0x50)
    {
        /*********************************************************************
         BKP
        */
        alias BKP = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     backup register
    */
    final abstract class BKP1R : Register!(0x54)
    {
        /*********************************************************************
         BKP
        */
        alias BKP = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     backup register
    */
    final abstract class BKP2R : Register!(0x58)
    {
        /*********************************************************************
         BKP
        */
        alias BKP = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     backup register
    */
    final abstract class BKP3R : Register!(0x5c)
    {
        /*********************************************************************
         BKP
        */
        alias BKP = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     backup register
    */
    final abstract class BKP4R : Register!(0x60)
    {
        /*********************************************************************
         BKP
        */
        alias BKP = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     backup register
    */
    final abstract class BKP5R : Register!(0x64)
    {
        /*********************************************************************
         BKP
        */
        alias BKP = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     backup register
    */
    final abstract class BKP6R : Register!(0x68)
    {
        /*********************************************************************
         BKP
        */
        alias BKP = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     backup register
    */
    final abstract class BKP7R : Register!(0x6c)
    {
        /*********************************************************************
         BKP
        */
        alias BKP = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     backup register
    */
    final abstract class BKP8R : Register!(0x70)
    {
        /*********************************************************************
         BKP
        */
        alias BKP = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     backup register
    */
    final abstract class BKP9R : Register!(0x74)
    {
        /*********************************************************************
         BKP
        */
        alias BKP = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     backup register
    */
    final abstract class BKP10R : Register!(0x78)
    {
        /*********************************************************************
         BKP
        */
        alias BKP = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     backup register
    */
    final abstract class BKP11R : Register!(0x7c)
    {
        /*********************************************************************
         BKP
        */
        alias BKP = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     backup register
    */
    final abstract class BKP12R : Register!(0x80)
    {
        /*********************************************************************
         BKP
        */
        alias BKP = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     backup register
    */
    final abstract class BKP13R : Register!(0x84)
    {
        /*********************************************************************
         BKP
        */
        alias BKP = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     backup register
    */
    final abstract class BKP14R : Register!(0x88)
    {
        /*********************************************************************
         BKP
        */
        alias BKP = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     backup register
    */
    final abstract class BKP15R : Register!(0x8c)
    {
        /*********************************************************************
         BKP
        */
        alias BKP = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     backup register
    */
    final abstract class BKP16R : Register!(0x90)
    {
        /*********************************************************************
         BKP
        */
        alias BKP = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     backup register
    */
    final abstract class BKP17R : Register!(0x94)
    {
        /*********************************************************************
         BKP
        */
        alias BKP = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     backup register
    */
    final abstract class BKP18R : Register!(0x98)
    {
        /*********************************************************************
         BKP
        */
        alias BKP = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     backup register
    */
    final abstract class BKP19R : Register!(0x9c)
    {
        /*********************************************************************
         BKP
        */
        alias BKP = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     backup register
    */
    final abstract class BKP20R : Register!(0xa0)
    {
        /*********************************************************************
         BKP
        */
        alias BKP = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     backup register
    */
    final abstract class BKP21R : Register!(0xa4)
    {
        /*********************************************************************
         BKP
        */
        alias BKP = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     backup register
    */
    final abstract class BKP22R : Register!(0xa8)
    {
        /*********************************************************************
         BKP
        */
        alias BKP = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     backup register
    */
    final abstract class BKP23R : Register!(0xac)
    {
        /*********************************************************************
         BKP
        */
        alias BKP = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     backup register
    */
    final abstract class BKP24R : Register!(0xb0)
    {
        /*********************************************************************
         BKP
        */
        alias BKP = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     backup register
    */
    final abstract class BKP25R : Register!(0xb4)
    {
        /*********************************************************************
         BKP
        */
        alias BKP = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     backup register
    */
    final abstract class BKP26R : Register!(0xb8)
    {
        /*********************************************************************
         BKP
        */
        alias BKP = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     backup register
    */
    final abstract class BKP27R : Register!(0xbc)
    {
        /*********************************************************************
         BKP
        */
        alias BKP = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     backup register
    */
    final abstract class BKP28R : Register!(0xc0)
    {
        /*********************************************************************
         BKP
        */
        alias BKP = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     backup register
    */
    final abstract class BKP29R : Register!(0xc4)
    {
        /*********************************************************************
         BKP
        */
        alias BKP = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     backup register
    */
    final abstract class BKP30R : Register!(0xc8)
    {
        /*********************************************************************
         BKP
        */
        alias BKP = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     backup register
    */
    final abstract class BKP31R : Register!(0xcc)
    {
        /*********************************************************************
         BKP
        */
        alias BKP = BitField!(31, 0, Mutability.rw);
    }
}
