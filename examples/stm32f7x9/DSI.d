module stm32f7x9.dsi;

import stm32f7x9.mmio;

/*****************************************************************************
 DSI Host
*/
final abstract class DSI : Peripheral!(0x40016C00)
{
    /*************************************************************************
     DSI Host Version Register
    */
    final abstract class DSI_VR : Register!(0x0)
    {
        /*********************************************************************
         Version of the DSI Host
        */
        alias VERSION = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Control Register
    */
    final abstract class DSI_CR : Register!(0x4)
    {
        /*********************************************************************
         Enable
        */
        alias EN = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     DSI HOST Clock Control
          Register
    */
    final abstract class DSI_CCR : Register!(0x8)
    {
        /*********************************************************************
         TX Escape Clock Division
        */
        alias TXECKDIV = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         Timeout Clock Division
        */
        alias TOCKDIV = BitField!(15, 8, Mutability.rw);
    }

    /*************************************************************************
     DSI Host LTDC VCID Register
    */
    final abstract class DSI_LVCIDR : Register!(0xC)
    {
        /*********************************************************************
         Virtual Channel ID
        */
        alias VCID = BitField!(1, 0, Mutability.rw);
    }

    /*************************************************************************
     DSI Host LTDC Color Coding
          Register
    */
    final abstract class DSI_LCOLCR : Register!(0x10)
    {
        /*********************************************************************
         Color Coding
        */
        alias COLC = BitField!(3, 0, Mutability.rw);

        /*********************************************************************
         Loosely Packet Enable
        */
        alias LPE = Bit!(8, Mutability.rw);
    }

    /*************************************************************************
     DSI Host LTDC Polarity Configuration
          Register
    */
    final abstract class DSI_LPCR : Register!(0x14)
    {
        /*********************************************************************
         Data Enable Polarity
        */
        alias DEP = Bit!(0, Mutability.rw);

        /*********************************************************************
         VSYNC Polarity
        */
        alias VSP = Bit!(1, Mutability.rw);

        /*********************************************************************
         HSYNC Polarity
        */
        alias HSP = Bit!(2, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Low-Power mode Configuration
          Register
    */
    final abstract class DSI_LPMCR : Register!(0x18)
    {
        /*********************************************************************
         VACT Largest Packet Size
        */
        alias VLPSIZE = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         Largest Packet Size
        */
        alias LPSIZE = BitField!(23, 16, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Protocol Configuration
          Register
    */
    final abstract class DSI_PCR : Register!(0x1C)
    {
        /*********************************************************************
         EoTp Transmission Enable
        */
        alias ETTXE = Bit!(0, Mutability.rw);

        /*********************************************************************
         EoTp Reception Enable
        */
        alias ETRXE = Bit!(1, Mutability.rw);

        /*********************************************************************
         Bus Turn Around Enable
        */
        alias BTAE = Bit!(2, Mutability.rw);

        /*********************************************************************
         ECC Reception Enable
        */
        alias ECCRXE = Bit!(3, Mutability.rw);

        /*********************************************************************
         CRC Reception Enable
        */
        alias CRCRXE = Bit!(4, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Generic VCID Register
    */
    final abstract class DSI_GVCIDR : Register!(0x20)
    {
        /*********************************************************************
         Virtual Channel ID
        */
        alias VCID = BitField!(1, 0, Mutability.rw);
    }

    /*************************************************************************
     DSI Host mode Configuration
          Register
    */
    final abstract class DSI_MCR : Register!(0x24)
    {
        /*********************************************************************
         Command mode
        */
        alias CMDM = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Video mode Configuration
          Register
    */
    final abstract class DSI_VMCR : Register!(0x28)
    {
        /*********************************************************************
         Video mode Type
        */
        alias VMT = BitField!(1, 0, Mutability.rw);

        /*********************************************************************
         Low-Power Vertical Sync Active
              Enable
        */
        alias LPVSAE = Bit!(8, Mutability.rw);

        /*********************************************************************
         Low-power Vertical Back-Porch
              Enable
        */
        alias LPVBPE = Bit!(9, Mutability.rw);

        /*********************************************************************
         Low-power Vertical Front-porch
              Enable
        */
        alias LPVFPE = Bit!(10, Mutability.rw);

        /*********************************************************************
         Low-Power Vertical Active
              Enable
        */
        alias LPVAE = Bit!(11, Mutability.rw);

        /*********************************************************************
         Low-Power Horizontal Back-Porch
              Enable
        */
        alias LPHBPE = Bit!(12, Mutability.rw);

        /*********************************************************************
         Low-Power Horizontal Front-Porch
              Enable
        */
        alias LPHFPE = Bit!(13, Mutability.rw);

        /*********************************************************************
         Frame Bus-Turn-Around Acknowledge
              Enable
        */
        alias FBTAAE = Bit!(14, Mutability.rw);

        /*********************************************************************
         Low-Power Command Enable
        */
        alias LPCE = Bit!(15, Mutability.rw);

        /*********************************************************************
         Pattern Generator Enable
        */
        alias PGE = Bit!(16, Mutability.rw);

        /*********************************************************************
         Pattern Generator mode
        */
        alias PGM = Bit!(20, Mutability.rw);

        /*********************************************************************
         Pattern Generator
              Orientation
        */
        alias PGO = Bit!(24, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Video Packet Configuration
          Register
    */
    final abstract class DSI_VPCR : Register!(0x2C)
    {
        /*********************************************************************
         Video Packet Size
        */
        alias VPSIZE = BitField!(13, 0, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Video Chunks Configuration
          Register
    */
    final abstract class DSI_VCCR : Register!(0x30)
    {
        /*********************************************************************
         Number of Chunks
        */
        alias NUMC = BitField!(12, 0, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Video Null Packet Configuration
          Register
    */
    final abstract class DSI_VNPCR : Register!(0x34)
    {
        /*********************************************************************
         Null Packet Size
        */
        alias NPSIZE = BitField!(12, 0, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Video HSA Configuration
          Register
    */
    final abstract class DSI_VHSACR : Register!(0x38)
    {
        /*********************************************************************
         Horizontal Synchronism Active
              duration
        */
        alias HSA = BitField!(11, 0, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Video HBP Configuration
          Register
    */
    final abstract class DSI_VHBPCR : Register!(0x3C)
    {
        /*********************************************************************
         Horizontal Back-Porch
              duration
        */
        alias HBP = BitField!(11, 0, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Video Line Configuration
          Register
    */
    final abstract class DSI_VLCR : Register!(0x40)
    {
        /*********************************************************************
         Horizontal Line duration
        */
        alias HLINE = BitField!(14, 0, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Video VSA Configuration
          Register
    */
    final abstract class DSI_VVSACR : Register!(0x44)
    {
        /*********************************************************************
         Vertical Synchronism Active
              duration
        */
        alias VSA = BitField!(9, 0, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Video VBP Configuration
          Register
    */
    final abstract class DSI_VVBPCR : Register!(0x48)
    {
        /*********************************************************************
         Vertical Back-Porch
              duration
        */
        alias VBP = BitField!(9, 0, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Video VFP Configuration
          Register
    */
    final abstract class DSI_VVFPCR : Register!(0x4C)
    {
        /*********************************************************************
         Vertical Front-Porch
              duration
        */
        alias VFP = BitField!(9, 0, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Video VA Configuration
          Register
    */
    final abstract class DSI_VVACR : Register!(0x50)
    {
        /*********************************************************************
         Vertical Active duration
        */
        alias VA = BitField!(13, 0, Mutability.rw);
    }

    /*************************************************************************
     DSI Host LTDC Command Configuration
          Register
    */
    final abstract class DSI_LCCR : Register!(0x54)
    {
        /*********************************************************************
         Command Size
        */
        alias CMDSIZE = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Command mode Configuration
          Register
    */
    final abstract class DSI_CMCR : Register!(0x58)
    {
        /*********************************************************************
         Tearing Effect Acknowledge Request
              Enable
        */
        alias TEARE = Bit!(0, Mutability.rw);

        /*********************************************************************
         Acknowledge Request Enable
        */
        alias ARE = Bit!(1, Mutability.rw);

        /*********************************************************************
         Generic Short Write Zero parameters
              Transmission
        */
        alias GSW0TX = Bit!(8, Mutability.rw);

        /*********************************************************************
         Generic Short Write One parameters
              Transmission
        */
        alias GSW1TX = Bit!(9, Mutability.rw);

        /*********************************************************************
         Generic Short Write Two parameters
              Transmission
        */
        alias GSW2TX = Bit!(10, Mutability.rw);

        /*********************************************************************
         Generic Short Read Zero parameters
              Transmission
        */
        alias GSR0TX = Bit!(11, Mutability.rw);

        /*********************************************************************
         Generic Short Read One parameters
              Transmission
        */
        alias GSR1TX = Bit!(12, Mutability.rw);

        /*********************************************************************
         Generic Short Read Two parameters
              Transmission
        */
        alias GSR2TX = Bit!(13, Mutability.rw);

        /*********************************************************************
         Generic Long Write
              Transmission
        */
        alias GLWTX = Bit!(14, Mutability.rw);

        /*********************************************************************
         DCS Short Write Zero parameter
              Transmission
        */
        alias DSW0TX = Bit!(16, Mutability.rw);

        /*********************************************************************
         DCS Short Read One parameter
              Transmission
        */
        alias DSW1TX = Bit!(17, Mutability.rw);

        /*********************************************************************
         DCS Short Read Zero parameter
              Transmission
        */
        alias DSR0TX = Bit!(18, Mutability.rw);

        /*********************************************************************
         DCS Long Write
              Transmission
        */
        alias DLWTX = Bit!(19, Mutability.rw);

        /*********************************************************************
         Maximum Read Packet Size
        */
        alias MRDPS = Bit!(24, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Generic Header Configuration
          Register
    */
    final abstract class DSI_GHCR : Register!(0x5C)
    {
        /*********************************************************************
         Type
        */
        alias DT = BitField!(5, 0, Mutability.rw);

        /*********************************************************************
         Channel
        */
        alias VCID = BitField!(7, 6, Mutability.rw);

        /*********************************************************************
         WordCount LSB
        */
        alias WCLSB = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         WordCount MSB
        */
        alias WCMSB = BitField!(23, 16, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Generic Payload Data
          Register
    */
    final abstract class DSI_GPDR : Register!(0x60)
    {
        /*********************************************************************
         Payload Byte 1
        */
        alias DATA1 = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         Payload Byte 2
        */
        alias DATA2 = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         Payload Byte 3
        */
        alias DATA3 = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         Payload Byte 4
        */
        alias DATA4 = BitField!(31, 24, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Generic Packet Status
          Register
    */
    final abstract class DSI_GPSR : Register!(0x64)
    {
        /*********************************************************************
         Command FIFO Empty
        */
        alias CMDFE = Bit!(0, Mutability.rw);

        /*********************************************************************
         Command FIFO Full
        */
        alias CMDFF = Bit!(1, Mutability.rw);

        /*********************************************************************
         Payload Write FIFO Empty
        */
        alias PWRFE = Bit!(2, Mutability.rw);

        /*********************************************************************
         Payload Write FIFO Full
        */
        alias PWRFF = Bit!(3, Mutability.rw);

        /*********************************************************************
         Payload Read FIFO Empty
        */
        alias PRDFE = Bit!(4, Mutability.rw);

        /*********************************************************************
         Payload Read FIFO Full
        */
        alias PRDFF = Bit!(5, Mutability.rw);

        /*********************************************************************
         Read Command Busy
        */
        alias RCB = Bit!(6, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Timeout Counter Configuration
          Register 0
    */
    final abstract class DSI_TCCR0 : Register!(0x68)
    {
        /*********************************************************************
         Low-power Reception Timeout
              Counter
        */
        alias LPRX_TOCNT = BitField!(15, 0, Mutability.rw);

        /*********************************************************************
         High-Speed Transmission Timeout
              Counter
        */
        alias HSTX_TOCNT = BitField!(31, 16, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Timeout Counter Configuration
          Register 1
    */
    final abstract class DSI_TCCR1 : Register!(0x6C)
    {
        /*********************************************************************
         High-Speed Read Timeout
              Counter
        */
        alias HSRD_TOCNT = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Timeout Counter Configuration
          Register 2
    */
    final abstract class DSI_TCCR2 : Register!(0x70)
    {
        /*********************************************************************
         Low-Power Read Timeout
              Counter
        */
        alias LPRD_TOCNT = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Timeout Counter Configuration
          Register 3
    */
    final abstract class DSI_TCCR3 : Register!(0x74)
    {
        /*********************************************************************
         High-Speed Write Timeout
              Counter
        */
        alias HSWR_TOCNT = BitField!(15, 0, Mutability.rw);

        /*********************************************************************
         Presp mode
        */
        alias PM = Bit!(24, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Timeout Counter Configuration
          Register 4
    */
    final abstract class DSI_TCCR4 : Register!(0x78)
    {
        /*********************************************************************
         Low-Power Write Timeout
              Counter
        */
        alias LSWR_TOCNT = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Timeout Counter Configuration
          Register 5
    */
    final abstract class DSI_TCCR5 : Register!(0x7C)
    {
        /*********************************************************************
         Bus-Turn-Around Timeout
              Counter
        */
        alias BTA_TOCNT = BitField!(15, 0, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Clock Lane Configuration
          Register
    */
    final abstract class DSI_CLCR : Register!(0x80)
    {
        /*********************************************************************
         D-PHY Clock Control
        */
        alias DPCC = Bit!(0, Mutability.rw);

        /*********************************************************************
         Automatic Clock lane
              Control
        */
        alias ACR = Bit!(1, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Clock Lane Timer Configuration
          Register
    */
    final abstract class DSI_CLTCR : Register!(0x84)
    {
        /*********************************************************************
         Low-Power to High-Speed
              Time
        */
        alias LP2HS_TIME = BitField!(9, 0, Mutability.rw);

        /*********************************************************************
         High-Speed to Low-Power
              Time
        */
        alias HS2LP_TIME = BitField!(25, 16, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Data Lane Timer Configuration
          Register
    */
    final abstract class DSI_DLTRC : Register!(0x88)
    {
        /*********************************************************************
         Maximum Read Time
        */
        alias MRD_TIME = BitField!(14, 0, Mutability.rw);

        /*********************************************************************
         Low-Power To High-Speed
              Time
        */
        alias LP2HS_TIME = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         High-Speed To Low-Power
              Time
        */
        alias HS2LP_TIME = BitField!(31, 24, Mutability.rw);
    }

    /*************************************************************************
     DSI Host PHY Control Register
    */
    final abstract class DSI_PCTLR : Register!(0x8C)
    {
        /*********************************************************************
         Digital Enable
        */
        alias DEN = Bit!(1, Mutability.rw);

        /*********************************************************************
         Clock Enable
        */
        alias CKE = Bit!(2, Mutability.rw);
    }

    /*************************************************************************
     DSI Host PHY Configuration
          Register
    */
    final abstract class DSI_PCONFR : Register!(0x90)
    {
        /*********************************************************************
         Number of Lanes
        */
        alias NL = BitField!(1, 0, Mutability.rw);

        /*********************************************************************
         Stop Wait Time
        */
        alias SW_TIME = BitField!(15, 8, Mutability.rw);
    }

    /*************************************************************************
     DSI Host PHY ULPS Control
          Register
    */
    final abstract class DSI_PUCR : Register!(0x94)
    {
        /*********************************************************************
         ULPS Request on Clock Lane
        */
        alias URCL = Bit!(0, Mutability.rw);

        /*********************************************************************
         ULPS Exit on Clock Lane
        */
        alias UECL = Bit!(1, Mutability.rw);

        /*********************************************************************
         ULPS Request on Data Lane
        */
        alias URDL = Bit!(2, Mutability.rw);

        /*********************************************************************
         ULPS Exit on Data Lane
        */
        alias UEDL = Bit!(3, Mutability.rw);
    }

    /*************************************************************************
     DSI Host PHY TX Triggers Configuration
          Register
    */
    final abstract class DSI_PTTCR : Register!(0x98)
    {
        /*********************************************************************
         Transmission Trigger
        */
        alias TX_TRIG = BitField!(3, 0, Mutability.rw);
    }

    /*************************************************************************
     DSI Host PHY Status Register
    */
    final abstract class DSI_PSR : Register!(0x9C)
    {
        /*********************************************************************
         PHY Direction
        */
        alias PD = Bit!(1, Mutability.rw);

        /*********************************************************************
         PHY Stop State Clock lane
        */
        alias PSSC = Bit!(2, Mutability.rw);

        /*********************************************************************
         ULPS Active Not Clock lane
        */
        alias UANC = Bit!(3, Mutability.rw);

        /*********************************************************************
         PHY Stop State lane 0
        */
        alias PSS0 = Bit!(4, Mutability.rw);

        /*********************************************************************
         ULPS Active Not lane 1
        */
        alias UAN0 = Bit!(5, Mutability.rw);

        /*********************************************************************
         RX ULPS Escape lane 0
        */
        alias RUE0 = Bit!(6, Mutability.rw);

        /*********************************************************************
         PHY Stop State lane 1
        */
        alias PSS1 = Bit!(7, Mutability.rw);

        /*********************************************************************
         ULPS Active Not lane 1
        */
        alias UAN1 = Bit!(8, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Interrupt & Status Register
          0
    */
    final abstract class DSI_ISR0 : Register!(0xA0)
    {
        /*********************************************************************
         Acknowledge Error 0
        */
        alias AE0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Acknowledge Error 1
        */
        alias AE1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Acknowledge Error 2
        */
        alias AE2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Acknowledge Error 3
        */
        alias AE3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Acknowledge Error 4
        */
        alias AE4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Acknowledge Error 5
        */
        alias AE5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Acknowledge Error 6
        */
        alias AE6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Acknowledge Error 7
        */
        alias AE7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Acknowledge Error 8
        */
        alias AE8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Acknowledge Error 9
        */
        alias AE9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Acknowledge Error 10
        */
        alias AE10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Acknowledge Error 11
        */
        alias AE11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Acknowledge Error 12
        */
        alias AE12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Acknowledge Error 13
        */
        alias AE13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Acknowledge Error 14
        */
        alias AE14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Acknowledge Error 15
        */
        alias AE15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         PHY Error 0
        */
        alias PE0 = Bit!(16, Mutability.rw);

        /*********************************************************************
         PHY Error 1
        */
        alias PE1 = Bit!(17, Mutability.rw);

        /*********************************************************************
         PHY Error 2
        */
        alias PE2 = Bit!(18, Mutability.rw);

        /*********************************************************************
         PHY Error 3
        */
        alias PE3 = Bit!(19, Mutability.rw);

        /*********************************************************************
         PHY Error 4
        */
        alias PE4 = Bit!(20, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Interrupt & Status Register
          1
    */
    final abstract class DSI_ISR1 : Register!(0xA4)
    {
        /*********************************************************************
         Timeout High-Speed
              Transmission
        */
        alias TOHSTX = Bit!(0, Mutability.rw);

        /*********************************************************************
         Timeout Low-Power
              Reception
        */
        alias TOLPRX = Bit!(1, Mutability.rw);

        /*********************************************************************
         ECC Single-bit Error
        */
        alias ECCSE = Bit!(2, Mutability.rw);

        /*********************************************************************
         ECC Multi-bit Error
        */
        alias ECCME = Bit!(3, Mutability.rw);

        /*********************************************************************
         CRC Error
        */
        alias CRCE = Bit!(4, Mutability.rw);

        /*********************************************************************
         Packet Size Error
        */
        alias PSE = Bit!(5, Mutability.rw);

        /*********************************************************************
         EoTp Error
        */
        alias EOTPE = Bit!(6, Mutability.rw);

        /*********************************************************************
         LTDC Payload Write Error
        */
        alias LPWRE = Bit!(7, Mutability.rw);

        /*********************************************************************
         Generic Command Write
              Error
        */
        alias GCWRE = Bit!(8, Mutability.rw);

        /*********************************************************************
         Generic Payload Write
              Error
        */
        alias GPWRE = Bit!(9, Mutability.rw);

        /*********************************************************************
         Generic Payload Transmit
              Error
        */
        alias GPTXE = Bit!(10, Mutability.rw);

        /*********************************************************************
         Generic Payload Read Error
        */
        alias GPRDE = Bit!(11, Mutability.rw);

        /*********************************************************************
         Generic Payload Receive
              Error
        */
        alias GPRXE = Bit!(12, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Interrupt Enable Register
          0
    */
    final abstract class DSI_IER0 : Register!(0xA8)
    {
        /*********************************************************************
         Acknowledge Error 0 Interrupt
              Enable
        */
        alias AE0IE = Bit!(0, Mutability.rw);

        /*********************************************************************
         Acknowledge Error 1 Interrupt
              Enable
        */
        alias AE1IE = Bit!(1, Mutability.rw);

        /*********************************************************************
         Acknowledge Error 2 Interrupt
              Enable
        */
        alias AE2IE = Bit!(2, Mutability.rw);

        /*********************************************************************
         Acknowledge Error 3 Interrupt
              Enable
        */
        alias AE3IE = Bit!(3, Mutability.rw);

        /*********************************************************************
         Acknowledge Error 4 Interrupt
              Enable
        */
        alias AE4IE = Bit!(4, Mutability.rw);

        /*********************************************************************
         Acknowledge Error 5 Interrupt
              Enable
        */
        alias AE5IE = Bit!(5, Mutability.rw);

        /*********************************************************************
         Acknowledge Error 6 Interrupt
              Enable
        */
        alias AE6IE = Bit!(6, Mutability.rw);

        /*********************************************************************
         Acknowledge Error 7 Interrupt
              Enable
        */
        alias AE7IE = Bit!(7, Mutability.rw);

        /*********************************************************************
         Acknowledge Error 8 Interrupt
              Enable
        */
        alias AE8IE = Bit!(8, Mutability.rw);

        /*********************************************************************
         Acknowledge Error 9 Interrupt
              Enable
        */
        alias AE9IE = Bit!(9, Mutability.rw);

        /*********************************************************************
         Acknowledge Error 10 Interrupt
              Enable
        */
        alias AE10IE = Bit!(10, Mutability.rw);

        /*********************************************************************
         Acknowledge Error 11 Interrupt
              Enable
        */
        alias AE11IE = Bit!(11, Mutability.rw);

        /*********************************************************************
         Acknowledge Error 12 Interrupt
              Enable
        */
        alias AE12IE = Bit!(12, Mutability.rw);

        /*********************************************************************
         Acknowledge Error 13 Interrupt
              Enable
        */
        alias AE13IE = Bit!(13, Mutability.rw);

        /*********************************************************************
         Acknowledge Error 14 Interrupt
              Enable
        */
        alias AE14IE = Bit!(14, Mutability.rw);

        /*********************************************************************
         Acknowledge Error 15 Interrupt
              Enable
        */
        alias AE15IE = Bit!(15, Mutability.rw);

        /*********************************************************************
         PHY Error 0 Interrupt
              Enable
        */
        alias PE0IE = Bit!(16, Mutability.rw);

        /*********************************************************************
         PHY Error 1 Interrupt
              Enable
        */
        alias PE1IE = Bit!(17, Mutability.rw);

        /*********************************************************************
         PHY Error 2 Interrupt
              Enable
        */
        alias PE2IE = Bit!(18, Mutability.rw);

        /*********************************************************************
         PHY Error 3 Interrupt
              Enable
        */
        alias PE3IE = Bit!(19, Mutability.rw);

        /*********************************************************************
         PHY Error 4 Interrupt
              Enable
        */
        alias PE4IE = Bit!(20, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Interrupt Enable Register
          1
    */
    final abstract class DSI_IER1 : Register!(0xAC)
    {
        /*********************************************************************
         Timeout High-Speed Transmission
              Interrupt Enable
        */
        alias TOHSTXIE = Bit!(0, Mutability.rw);

        /*********************************************************************
         Timeout Low-Power Reception Interrupt
              Enable
        */
        alias TOLPRXIE = Bit!(1, Mutability.rw);

        /*********************************************************************
         ECC Single-bit Error Interrupt
              Enable
        */
        alias ECCSEIE = Bit!(2, Mutability.rw);

        /*********************************************************************
         ECC Multi-bit Error Interrupt
              Enable
        */
        alias ECCMEIE = Bit!(3, Mutability.rw);

        /*********************************************************************
         CRC Error Interrupt Enable
        */
        alias CRCEIE = Bit!(4, Mutability.rw);

        /*********************************************************************
         Packet Size Error Interrupt
              Enable
        */
        alias PSEIE = Bit!(5, Mutability.rw);

        /*********************************************************************
         EoTp Error Interrupt
              Enable
        */
        alias EOTPEIE = Bit!(6, Mutability.rw);

        /*********************************************************************
         LTDC Payload Write Error Interrupt
              Enable
        */
        alias LPWREIE = Bit!(7, Mutability.rw);

        /*********************************************************************
         Generic Command Write Error Interrupt
              Enable
        */
        alias GCWREIE = Bit!(8, Mutability.rw);

        /*********************************************************************
         Generic Payload Write Error Interrupt
              Enable
        */
        alias GPWREIE = Bit!(9, Mutability.rw);

        /*********************************************************************
         Generic Payload Transmit Error Interrupt
              Enable
        */
        alias GPTXEIE = Bit!(10, Mutability.rw);

        /*********************************************************************
         Generic Payload Read Error Interrupt
              Enable
        */
        alias GPRDEIE = Bit!(11, Mutability.rw);

        /*********************************************************************
         Generic Payload Receive Error Interrupt
              Enable
        */
        alias GPRXEIE = Bit!(12, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Force Interrupt Register
          0
    */
    final abstract class DSI_FIR0 : Register!(0xB0)
    {
        /*********************************************************************
         Force Acknowledge Error 0
        */
        alias FAE0 = Bit!(0, Mutability.rw);

        /*********************************************************************
         Force Acknowledge Error 1
        */
        alias FAE1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Force Acknowledge Error 2
        */
        alias FAE2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Force Acknowledge Error 3
        */
        alias FAE3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Force Acknowledge Error 4
        */
        alias FAE4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Force Acknowledge Error 5
        */
        alias FAE5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Force Acknowledge Error 6
        */
        alias FAE6 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Force Acknowledge Error 7
        */
        alias FAE7 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Force Acknowledge Error 8
        */
        alias FAE8 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Force Acknowledge Error 9
        */
        alias FAE9 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Force Acknowledge Error 10
        */
        alias FAE10 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Force Acknowledge Error 11
        */
        alias FAE11 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Force Acknowledge Error 12
        */
        alias FAE12 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Force Acknowledge Error 13
        */
        alias FAE13 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Force Acknowledge Error 14
        */
        alias FAE14 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Force Acknowledge Error 15
        */
        alias FAE15 = Bit!(15, Mutability.rw);

        /*********************************************************************
         Force PHY Error 0
        */
        alias FPE0 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Force PHY Error 1
        */
        alias FPE1 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Force PHY Error 2
        */
        alias FPE2 = Bit!(18, Mutability.rw);

        /*********************************************************************
         Force PHY Error 3
        */
        alias FPE3 = Bit!(19, Mutability.rw);

        /*********************************************************************
         Force PHY Error 4
        */
        alias FPE4 = Bit!(20, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Force Interrupt Register
          1
    */
    final abstract class DSI_FIR1 : Register!(0xB4)
    {
        /*********************************************************************
         Force Timeout High-Speed
              Transmission
        */
        alias FTOHSTX = Bit!(0, Mutability.rw);

        /*********************************************************************
         Force Timeout Low-Power
              Reception
        */
        alias FTOLPRX = Bit!(1, Mutability.rw);

        /*********************************************************************
         Force ECC Single-bit Error
        */
        alias FECCSE = Bit!(2, Mutability.rw);

        /*********************************************************************
         Force ECC Multi-bit Error
        */
        alias FECCME = Bit!(3, Mutability.rw);

        /*********************************************************************
         Force CRC Error
        */
        alias FCRCE = Bit!(4, Mutability.rw);

        /*********************************************************************
         Force Packet Size Error
        */
        alias FPSE = Bit!(5, Mutability.rw);

        /*********************************************************************
         Force EoTp Error
        */
        alias FEOTPE = Bit!(6, Mutability.rw);

        /*********************************************************************
         Force LTDC Payload Write
              Error
        */
        alias FLPWRE = Bit!(7, Mutability.rw);

        /*********************************************************************
         Force Generic Command Write
              Error
        */
        alias FGCWRE = Bit!(8, Mutability.rw);

        /*********************************************************************
         Force Generic Payload Write
              Error
        */
        alias FGPWRE = Bit!(9, Mutability.rw);

        /*********************************************************************
         Force Generic Payload Transmit
              Error
        */
        alias FGPTXE = Bit!(10, Mutability.rw);

        /*********************************************************************
         Force Generic Payload Read
              Error
        */
        alias FGPRDE = Bit!(11, Mutability.rw);

        /*********************************************************************
         Force Generic Payload Receive
              Error
        */
        alias FGPRXE = Bit!(12, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Video Shadow Control
          Register
    */
    final abstract class DSI_VSCR : Register!(0xB8)
    {
        /*********************************************************************
         Enable
        */
        alias EN = Bit!(0, Mutability.rw);

        /*********************************************************************
         Update Register
        */
        alias UR = Bit!(8, Mutability.rw);
    }

    /*************************************************************************
     DSI Host LTDC Current VCID
          Register
    */
    final abstract class DSI_LCVCIDR : Register!(0xBC)
    {
        /*********************************************************************
         Virtual Channel ID
        */
        alias VCID = BitField!(1, 0, Mutability.rw);
    }

    /*************************************************************************
     DSI Host LTDC Current Color Coding
          Register
    */
    final abstract class DSI_LCCCR : Register!(0xC0)
    {
        /*********************************************************************
         Color Coding
        */
        alias COLC = BitField!(3, 0, Mutability.rw);

        /*********************************************************************
         Loosely Packed Enable
        */
        alias LPE = Bit!(8, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Low-Power mode Current
          Configuration Register
    */
    final abstract class DSI_LPMCCR : Register!(0xC4)
    {
        /*********************************************************************
         VACT Largest Packet Size
        */
        alias VLPSIZE = BitField!(7, 0, Mutability.rw);

        /*********************************************************************
         Largest Packet Size
        */
        alias LPSIZE = BitField!(23, 16, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Video mode Current Configuration
          Register
    */
    final abstract class DSI_VMCCR : Register!(0xC8)
    {
        /*********************************************************************
         Video mode Type
        */
        alias VMT = BitField!(1, 0, Mutability.rw);

        /*********************************************************************
         Low-Power Vertical Sync time
              Enable
        */
        alias LPVSAE = Bit!(2, Mutability.rw);

        /*********************************************************************
         Low-power Vertical Back-Porch
              Enable
        */
        alias LPVBPE = Bit!(3, Mutability.rw);

        /*********************************************************************
         Low-power Vertical Front-Porch
              Enable
        */
        alias LPVFPE = Bit!(4, Mutability.rw);

        /*********************************************************************
         Low-Power Vertical Active
              Enable
        */
        alias LPVAE = Bit!(5, Mutability.rw);

        /*********************************************************************
         Low-power Horizontal Back-Porch
              Enable
        */
        alias LPHBPE = Bit!(6, Mutability.rw);

        /*********************************************************************
         Low-Power Horizontal Front-Porch
              Enable
        */
        alias LPHFE = Bit!(7, Mutability.rw);

        /*********************************************************************
         Frame BTA Acknowledge
              Enable
        */
        alias FBTAAE = Bit!(8, Mutability.rw);

        /*********************************************************************
         Low-Power Command Enable
        */
        alias LPCE = Bit!(9, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Video Packet Current Configuration
          Register
    */
    final abstract class DSI_VPCCR : Register!(0xCC)
    {
        /*********************************************************************
         Video Packet Size
        */
        alias VPSIZE = BitField!(13, 0, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Video Chunks Current Configuration
          Register
    */
    final abstract class DSI_VCCCR : Register!(0xD0)
    {
        /*********************************************************************
         Number of Chunks
        */
        alias NUMC = BitField!(12, 0, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Video Null Packet Current
          Configuration Register
    */
    final abstract class DSI_VNPCCR : Register!(0xD4)
    {
        /*********************************************************************
         Null Packet Size
        */
        alias NPSIZE = BitField!(12, 0, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Video HSA Current Configuration
          Register
    */
    final abstract class DSI_VHSACCR : Register!(0xD8)
    {
        /*********************************************************************
         Horizontal Synchronism Active
              duration
        */
        alias HSA = BitField!(11, 0, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Video HBP Current Configuration
          Register
    */
    final abstract class DSI_VHBPCCR : Register!(0xDC)
    {
        /*********************************************************************
         Horizontal Back-Porch
              duration
        */
        alias HBP = BitField!(11, 0, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Video Line Current Configuration
          Register
    */
    final abstract class DSI_VLCCR : Register!(0xE0)
    {
        /*********************************************************************
         Horizontal Line duration
        */
        alias HLINE = BitField!(14, 0, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Video VSA Current Configuration
          Register
    */
    final abstract class DSI_VVSACCR : Register!(0xE4)
    {
        /*********************************************************************
         Vertical Synchronism Active
              duration
        */
        alias VSA = BitField!(9, 0, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Video VBP Current Configuration
          Register
    */
    final abstract class DSI_VVBPCCR : Register!(0xE8)
    {
        /*********************************************************************
         Vertical Back-Porch
              duration
        */
        alias VBP = BitField!(9, 0, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Video VFP Current Configuration
          Register
    */
    final abstract class DSI_VVFPCCR : Register!(0xEC)
    {
        /*********************************************************************
         Vertical Front-Porch
              duration
        */
        alias VFP = BitField!(9, 0, Mutability.rw);
    }

    /*************************************************************************
     DSI Host Video VA Current Configuration
          Register
    */
    final abstract class DSI_VVACCR : Register!(0xF0)
    {
        /*********************************************************************
         Vertical Active duration
        */
        alias VA = BitField!(13, 0, Mutability.rw);
    }

    /*************************************************************************
     DSI Wrapper Configuration
          Register
    */
    final abstract class DSI_WCFGR : Register!(0x400)
    {
        /*********************************************************************
         VSync Polarity
        */
        alias VSPOL = Bit!(7, Mutability.rw);

        /*********************************************************************
         Automatic Refresh
        */
        alias AR = Bit!(6, Mutability.rw);

        /*********************************************************************
         TE Polarity
        */
        alias TEPOL = Bit!(5, Mutability.rw);

        /*********************************************************************
         TE Source
        */
        alias TESRC = Bit!(4, Mutability.rw);

        /*********************************************************************
         Color Multiplexing
        */
        alias COLMUX = BitField!(3, 1, Mutability.rw);

        /*********************************************************************
         DSI Mode
        */
        alias DSIM = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     DSI Wrapper Control Register
    */
    final abstract class DSI_WCR : Register!(0x404)
    {
        /*********************************************************************
         DSI Enable
        */
        alias DSIEN = Bit!(3, Mutability.rw);

        /*********************************************************************
         LTDC Enable
        */
        alias LTDCEN = Bit!(2, Mutability.rw);

        /*********************************************************************
         Shutdown
        */
        alias SHTDN = Bit!(1, Mutability.rw);

        /*********************************************************************
         Color Mode
        */
        alias COLM = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     DSI Wrapper Interrupt Enable
          Register
    */
    final abstract class DSI_WIER : Register!(0x408)
    {
        /*********************************************************************
         Regulator Ready Interrupt
              Enable
        */
        alias RRIE = Bit!(13, Mutability.rw);

        /*********************************************************************
         PLL Unlock Interrupt
              Enable
        */
        alias PLLUIE = Bit!(10, Mutability.rw);

        /*********************************************************************
         PLL Lock Interrupt Enable
        */
        alias PLLLIE = Bit!(9, Mutability.rw);

        /*********************************************************************
         End of Refresh Interrupt
              Enable
        */
        alias ERIE = Bit!(1, Mutability.rw);

        /*********************************************************************
         Tearing Effect Interrupt
              Enable
        */
        alias TEIE = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     DSI Wrapper Interrupt & Status
          Register
    */
    final abstract class DSI_WISR : Register!(0x40C)
    {
        /*********************************************************************
         Regulator Ready Interrupt
              Flag
        */
        alias RRIF = Bit!(13, Mutability.rw);

        /*********************************************************************
         Regulator Ready Status
        */
        alias RRS = Bit!(12, Mutability.rw);

        /*********************************************************************
         PLL Unlock Interrupt Flag
        */
        alias PLLUIF = Bit!(10, Mutability.rw);

        /*********************************************************************
         PLL Lock Interrupt Flag
        */
        alias PLLLIF = Bit!(9, Mutability.rw);

        /*********************************************************************
         PLL Lock Status
        */
        alias PLLLS = Bit!(8, Mutability.rw);

        /*********************************************************************
         Busy Flag
        */
        alias BUSY = Bit!(2, Mutability.rw);

        /*********************************************************************
         End of Refresh Interrupt
              Flag
        */
        alias ERIF = Bit!(1, Mutability.rw);

        /*********************************************************************
         Tearing Effect Interrupt
              Flag
        */
        alias TEIF = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     DSI Wrapper Interrupt Flag Clear
          Register
    */
    final abstract class DSI_WIFCR : Register!(0x410)
    {
        /*********************************************************************
         Clear Regulator Ready Interrupt
              Flag
        */
        alias CRRIF = Bit!(13, Mutability.rw);

        /*********************************************************************
         Clear PLL Unlock Interrupt
              Flag
        */
        alias CPLLUIF = Bit!(10, Mutability.rw);

        /*********************************************************************
         Clear PLL Lock Interrupt
              Flag
        */
        alias CPLLLIF = Bit!(9, Mutability.rw);

        /*********************************************************************
         Clear End of Refresh Interrupt
              Flag
        */
        alias CERIF = Bit!(1, Mutability.rw);

        /*********************************************************************
         Clear Tearing Effect Interrupt
              Flag
        */
        alias CTEIF = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     DSI Wrapper PHY Configuration Register
          1
    */
    final abstract class DSI_WPCR1 : Register!(0x418)
    {
        /*********************************************************************
         custom time for tCLK-POST
              Enable
        */
        alias TCLKPOSTEN = Bit!(27, Mutability.rw);

        /*********************************************************************
         custom time for tLPX for Clock lane
              Enable
        */
        alias TLPXCEN = Bit!(26, Mutability.rw);

        /*********************************************************************
         custom time for tHS-EXIT
              Enable
        */
        alias THSEXITEN = Bit!(25, Mutability.rw);

        /*********************************************************************
         custom time for tLPX for Data lanes
              Enable
        */
        alias TLPXDEN = Bit!(24, Mutability.rw);

        /*********************************************************************
         custom time for tHS-ZERO
              Enable
        */
        alias THSZEROEN = Bit!(23, Mutability.rw);

        /*********************************************************************
         custom time for tHS-TRAIL
              Enable
        */
        alias THSTRAILEN = Bit!(22, Mutability.rw);

        /*********************************************************************
         custom time for tHS-PREPARE
              Enable
        */
        alias THSPREPEN = Bit!(21, Mutability.rw);

        /*********************************************************************
         custom time for tCLK-ZERO
              Enable
        */
        alias TCLKZEROEN = Bit!(20, Mutability.rw);

        /*********************************************************************
         custom time for tCLK-PREPARE
              Enable
        */
        alias TCLKPREPEN = Bit!(19, Mutability.rw);

        /*********************************************************************
         Pull-Down Enable
        */
        alias PDEN = Bit!(18, Mutability.rw);

        /*********************************************************************
         Turn Disable Data Lanes
        */
        alias TDDL = Bit!(16, Mutability.rw);

        /*********************************************************************
         Contention Detection OFF on Data
              Lanes
        */
        alias CDOFFDL = Bit!(14, Mutability.rw);

        /*********************************************************************
         Force in TX Stop Mode the Data
              Lanes
        */
        alias FTXSMDL = Bit!(13, Mutability.rw);

        /*********************************************************************
         Force in TX Stop Mode the Clock
              Lane
        */
        alias FTXSMCL = Bit!(12, Mutability.rw);

        /*********************************************************************
         Invert the High-Speed data signal on
              Data Lane 1
        */
        alias HSIDL1 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Invert the Hight-Speed data signal on
              Data Lane 0
        */
        alias HSIDL0 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Invert Hight-Speed data signal on Clock
              Lane
        */
        alias HSICL = Bit!(9, Mutability.rw);

        /*********************************************************************
         Swap Data Lane 1 pins
        */
        alias SWDL1 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Swap Data Lane 0 pins
        */
        alias SWDL0 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Swap Clock Lane pins
        */
        alias SWCL = Bit!(6, Mutability.rw);

        /*********************************************************************
         Unit Interval multiplied by
              4
        */
        alias UIX4 = BitField!(5, 0, Mutability.rw);
    }

    /*************************************************************************
     DSI Wrapper PHY Configuration Register
          2
    */
    final abstract class DSI_WPCR2 : Register!(0x41C)
    {
        /*********************************************************************
         Low-Power RX low-pass Filtering
              Tuning
        */
        alias LPRXFT = BitField!(26, 25, Mutability.rw);

        /*********************************************************************
         Forces LP Receiver in Low-Power
              Mode
        */
        alias FLPRXLPM = Bit!(22, Mutability.rw);

        /*********************************************************************
         High-Speed Transmission Slew Rate
              Control on Data Lanes
        */
        alias HSTXSRCDL = BitField!(19, 18, Mutability.rw);

        /*********************************************************************
         High-Speed Transmission Slew Rate
              Control on Clock Lane
        */
        alias HSTXSRCCL = BitField!(17, 16, Mutability.rw);

        /*********************************************************************
         SDD Control
        */
        alias SDCC = Bit!(12, Mutability.rw);

        /*********************************************************************
         Low-Power transmission Slew Rate
              Compensation on Data Lanes
        */
        alias LPSRDL = BitField!(9, 8, Mutability.rw);

        /*********************************************************************
         Low-Power transmission Slew Rate
              Compensation on Clock Lane
        */
        alias LPSRCL = BitField!(7, 6, Mutability.rw);

        /*********************************************************************
         High-Speed Transmission Delay on Data
              Lanes
        */
        alias HSTXDLL = BitField!(3, 2, Mutability.rw);

        /*********************************************************************
         High-Speed Transmission Delay on Clock
              Lane
        */
        alias HSTXDCL = BitField!(1, 0, Mutability.rw);
    }

    /*************************************************************************
     DSI Wrapper PHY Configuration Register
          3
    */
    final abstract class DSI_WPCR3 : Register!(0x420)
    {
        /*********************************************************************
         tHSTRAIL
        */
        alias THSTRAIL = BitField!(31, 24, Mutability.rw);

        /*********************************************************************
         tHS-PREPARE
        */
        alias THSPREP = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         tCLK-ZERO
        */
        alias TCLKZEO = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         tCLK-PREPARE
        */
        alias TCLKPREP = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     DSI_WPCR4
    */
    final abstract class DSI_WPCR4 : Register!(0x424)
    {
        /*********************************************************************
         tLPXC for Clock lane
        */
        alias TLPXC = BitField!(31, 24, Mutability.rw);

        /*********************************************************************
         tHSEXIT
        */
        alias THSEXIT = BitField!(23, 16, Mutability.rw);

        /*********************************************************************
         tLPX for Data lanes
        */
        alias TLPXD = BitField!(15, 8, Mutability.rw);

        /*********************************************************************
         tHS-ZERO
        */
        alias THSZERO = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     DSI Wrapper PHY Configuration Register
          5
    */
    final abstract class DSI_WPCR5 : Register!(0x428)
    {
        /*********************************************************************
         tCLK-POST
        */
        alias THSZERO = BitField!(7, 0, Mutability.rw);
    }

    /*************************************************************************
     DSI Wrapper Regulator and PLL Control
          Register
    */
    final abstract class DSI_WRPCR : Register!(0x430)
    {
        /*********************************************************************
         Regulator Enable
        */
        alias REGEN = Bit!(24, Mutability.rw);

        /*********************************************************************
         PLL Output Division Factor
        */
        alias ODF = BitField!(17, 16, Mutability.rw);

        /*********************************************************************
         PLL Input Division Factor
        */
        alias IDF = BitField!(14, 11, Mutability.rw);

        /*********************************************************************
         PLL Loop Division Factor
        */
        alias NDIV = BitField!(8, 2, Mutability.rw);

        /*********************************************************************
         PLL Enable
        */
        alias PLLEN = Bit!(0, Mutability.rw);
    }
}
