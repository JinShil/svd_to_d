module atsamd21g18a.usb;

import atsamd21g18a.mmio;

/*****************************************************************************
 Universal Serial Bus
*/
final abstract class USB : Peripheral!(0x41005000)
{
    /*****************************************************************************
     USB is Device
    */
    final abstract class DEVICE
    {
        /*************************************************************************
         Control A
        */
        final abstract class CTRLA : Register!(00)
        {
            /*********************************************************************
             Software Reset
            */
            alias SWRST = Bit!(0, Mutability.rw);

            /*********************************************************************
             Enable
            */
            alias ENABLE = Bit!(1, Mutability.rw);

            /*********************************************************************
             Run in Standby Mode
            */
            alias RUNSTDBY = Bit!(2, Mutability.rw);

            /*********************************************************************
             Operating Mode
            */
            final abstract class MODE
            {
                /*****************************************************************
                 MODE's possible values
                */
                enum Values
                {
                    /*************************************************************
                     Device Mode
                    */
                    DEVICE = 0x0,

                    /*************************************************************
                     Host Mode
                    */
                    HOST = 0x1,
                }
                mixin BitFieldImplementation!(7, 7, Mutability.rw, Values);
            }
        }

        /*************************************************************************
         Descriptor Address
        */
        final abstract class DESCADD : Register!(0x24)
        {
            /*********************************************************************
             Descriptor Address Value
            */
            alias DESCADD = BitField!(31, 0, Mutability.rw);
        }

        /*************************************************************************
         DEVICE Control B
        */
        final abstract class CTRLB : Register!(0x8)
        {
            /*********************************************************************
             Detach
            */
            alias DETACH = Bit!(0, Mutability.rw);

            /*********************************************************************
             Upstream Resume
            */
            alias UPRSM = Bit!(1, Mutability.rw);

            /*********************************************************************
             Speed Configuration
            */
            final abstract class SPDCONF
            {
                /*****************************************************************
                 SPDCONF's possible values
                */
                enum Values
                {
                    /*************************************************************
                     FS : Full Speed
                    */
                    _0x0 = 0x0,

                    /*************************************************************
                     LS : Low Speed
                    */
                    _0x1 = 0x1,

                    /*************************************************************
                     HS : High Speed capable
                    */
                    _0x2 = 0x2,

                    /*************************************************************
                     HSTM: High Speed Test Mode (force high-speed mode for test mode)
                    */
                    _0x3 = 0x3,
                }
                mixin BitFieldImplementation!(3, 2, Mutability.rw, Values);
            }

            /*********************************************************************
             No Reply
            */
            alias NREPLY = Bit!(4, Mutability.rw);

            /*********************************************************************
             Test mode J
            */
            alias TSTJ = Bit!(5, Mutability.rw);

            /*********************************************************************
             Test mode K
            */
            alias TSTK = Bit!(6, Mutability.rw);

            /*********************************************************************
             Test packet mode
            */
            alias TSTPCKT = Bit!(7, Mutability.rw);

            /*********************************************************************
             Specific Operational Mode
            */
            alias OPMODE2 = Bit!(8, Mutability.rw);

            /*********************************************************************
             Global NAK
            */
            alias GNAK = Bit!(9, Mutability.rw);

            /*********************************************************************
             Link Power Management Handshake
            */
            final abstract class LPMHDSK
            {
                /*****************************************************************
                 LPMHDSK's possible values
                */
                enum Values
                {
                    /*************************************************************
                     No handshake. LPM is not supported
                    */
                    NO = 0x0,

                    /*************************************************************
                     ACK
                    */
                    ACK = 0x1,

                    /*************************************************************
                     NYET
                    */
                    NYET = 0x2,

                    /*************************************************************
                     STALL
                    */
                    STALL = 0x3,
                }
                mixin BitFieldImplementation!(11, 10, Mutability.rw, Values);
            }
        }

        /*************************************************************************
         DEVICE Device Address
        */
        final abstract class DADD : Register!(0xa)
        {
            /*********************************************************************
             Device Address
            */
            alias DADD = BitField!(6, 0, Mutability.rw);

            /*********************************************************************
             Device Address Enable
            */
            alias ADDEN = Bit!(7, Mutability.rw);
        }

        /*************************************************************************
         DEVICE End Point Interrupt Summary
        */
        final abstract class EPINTSMRY : Register!(0x20)
        {
            /*********************************************************************
             End Point 0 Interrupt
            */
            alias EPINT0 = Bit!(0, Mutability.r);

            /*********************************************************************
             End Point 1 Interrupt
            */
            alias EPINT1 = Bit!(1, Mutability.r);

            /*********************************************************************
             End Point 2 Interrupt
            */
            alias EPINT2 = Bit!(2, Mutability.r);

            /*********************************************************************
             End Point 3 Interrupt
            */
            alias EPINT3 = Bit!(3, Mutability.r);

            /*********************************************************************
             End Point 4 Interrupt
            */
            alias EPINT4 = Bit!(4, Mutability.r);

            /*********************************************************************
             End Point 5 Interrupt
            */
            alias EPINT5 = Bit!(5, Mutability.r);

            /*********************************************************************
             End Point 6 Interrupt
            */
            alias EPINT6 = Bit!(6, Mutability.r);

            /*********************************************************************
             End Point 7 Interrupt
            */
            alias EPINT7 = Bit!(7, Mutability.r);
        }

        /*************************************************************************
         DEVICE Device Frame Number
        */
        final abstract class FNUM : Register!(0x10)
        {
            /*********************************************************************
             Micro Frame Number
            */
            alias MFNUM = BitField!(2, 0, Mutability.r);

            /*********************************************************************
             Frame Number
            */
            alias FNUM = BitField!(13, 3, Mutability.r);

            /*********************************************************************
             Frame Number CRC Error
            */
            alias FNCERR = Bit!(15, Mutability.r);
        }

        /*************************************************************************
         DEVICE Device Interrupt Enable Clear
        */
        final abstract class INTENCLR : Register!(0x14)
        {
            /*********************************************************************
             Suspend Interrupt Enable
            */
            alias SUSPEND = Bit!(0, Mutability.rw);

            /*********************************************************************
             Micro Start of Frame Interrupt Enable in High Speed Mode
            */
            alias MSOF = Bit!(1, Mutability.rw);

            /*********************************************************************
             Start Of Frame Interrupt Enable
            */
            alias SOF = Bit!(2, Mutability.rw);

            /*********************************************************************
             End of Reset Interrupt Enable
            */
            alias EORST = Bit!(3, Mutability.rw);

            /*********************************************************************
             Wake Up Interrupt Enable
            */
            alias WAKEUP = Bit!(4, Mutability.rw);

            /*********************************************************************
             End Of Resume Interrupt Enable
            */
            alias EORSM = Bit!(5, Mutability.rw);

            /*********************************************************************
             Upstream Resume Interrupt Enable
            */
            alias UPRSM = Bit!(6, Mutability.rw);

            /*********************************************************************
             Ram Access Interrupt Enable
            */
            alias RAMACER = Bit!(7, Mutability.rw);

            /*********************************************************************
             Link Power Management Not Yet Interrupt Enable
            */
            alias LPMNYET = Bit!(8, Mutability.rw);

            /*********************************************************************
             Link Power Management Suspend Interrupt Enable
            */
            alias LPMSUSP = Bit!(9, Mutability.rw);
        }

        /*************************************************************************
         DEVICE Device Interrupt Enable Set
        */
        final abstract class INTENSET : Register!(0x18)
        {
            /*********************************************************************
             Suspend Interrupt Enable
            */
            alias SUSPEND = Bit!(0, Mutability.rw);

            /*********************************************************************
             Micro Start of Frame Interrupt Enable in High Speed Mode
            */
            alias MSOF = Bit!(1, Mutability.rw);

            /*********************************************************************
             Start Of Frame Interrupt Enable
            */
            alias SOF = Bit!(2, Mutability.rw);

            /*********************************************************************
             End of Reset Interrupt Enable
            */
            alias EORST = Bit!(3, Mutability.rw);

            /*********************************************************************
             Wake Up Interrupt Enable
            */
            alias WAKEUP = Bit!(4, Mutability.rw);

            /*********************************************************************
             End Of Resume Interrupt Enable
            */
            alias EORSM = Bit!(5, Mutability.rw);

            /*********************************************************************
             Upstream Resume Interrupt Enable
            */
            alias UPRSM = Bit!(6, Mutability.rw);

            /*********************************************************************
             Ram Access Interrupt Enable
            */
            alias RAMACER = Bit!(7, Mutability.rw);

            /*********************************************************************
             Link Power Management Not Yet Interrupt Enable
            */
            alias LPMNYET = Bit!(8, Mutability.rw);

            /*********************************************************************
             Link Power Management Suspend Interrupt Enable
            */
            alias LPMSUSP = Bit!(9, Mutability.rw);
        }

        /*************************************************************************
         DEVICE Device Interrupt Flag
        */
        final abstract class INTFLAG : Register!(0x1c)
        {
            /*********************************************************************
             Suspend
            */
            alias SUSPEND = Bit!(0, Mutability.rw);

            /*********************************************************************
             Micro Start of Frame in High Speed Mode
            */
            alias MSOF = Bit!(1, Mutability.rw);

            /*********************************************************************
             Start Of Frame
            */
            alias SOF = Bit!(2, Mutability.rw);

            /*********************************************************************
             End of Reset
            */
            alias EORST = Bit!(3, Mutability.rw);

            /*********************************************************************
             Wake Up
            */
            alias WAKEUP = Bit!(4, Mutability.rw);

            /*********************************************************************
             End Of Resume
            */
            alias EORSM = Bit!(5, Mutability.rw);

            /*********************************************************************
             Upstream Resume
            */
            alias UPRSM = Bit!(6, Mutability.rw);

            /*********************************************************************
             Ram Access
            */
            alias RAMACER = Bit!(7, Mutability.rw);

            /*********************************************************************
             Link Power Management Not Yet
            */
            alias LPMNYET = Bit!(8, Mutability.rw);

            /*********************************************************************
             Link Power Management Suspend
            */
            alias LPMSUSP = Bit!(9, Mutability.rw);
        }

        /*************************************************************************
         DEVICE Status
        */
        final abstract class STATUS : Register!(0xc)
        {
            /*********************************************************************
             Speed Status
            */
            final abstract class SPEED
            {
                /*****************************************************************
                 SPEED's possible values
                */
                enum Values
                {
                    /*************************************************************
                     Full-speed mode
                    */
                    _0x0 = 0x0,

                    /*************************************************************
                     High-speed mode
                    */
                    _0x1 = 0x1,

                    /*************************************************************
                     Low-speed mode
                    */
                    _0x2 = 0x2,
                }
                mixin BitFieldImplementation!(3, 2, Mutability.r, Values);
            }

            /*********************************************************************
             USB Line State Status
            */
            final abstract class LINESTATE
            {
                /*****************************************************************
                 LINESTATE's possible values
                */
                enum Values
                {
                    /*************************************************************
                     SE0/RESET
                    */
                    _0x0 = 0x0,

                    /*************************************************************
                     FS-J or LS-K State
                    */
                    _0x1 = 0x1,

                    /*************************************************************
                     FS-K or LS-J State
                    */
                    _0x2 = 0x2,
                }
                mixin BitFieldImplementation!(7, 6, Mutability.r, Values);
            }
        }

        /*************************************************************************
         DEVICE End Point Configuration
        */
        final abstract class EPCFG1 : Register!(0x100)
        {
            /*********************************************************************
             End Point Type0
            */
            alias EPTYPE0 = BitField!(2, 0, Mutability.rw);

            /*********************************************************************
             End Point Type1
            */
            alias EPTYPE1 = BitField!(6, 4, Mutability.rw);

            /*********************************************************************
             NYET Token Disable
            */
            alias NYETDIS = Bit!(7, Mutability.rw);
        }
        /*************************************************************************
         DEVICE End Point Configuration
        */
        final abstract class EPCFG2 : Register!(0x120)
        {
            /*********************************************************************
             End Point Type0
            */
            alias EPTYPE0 = BitField!(2, 0, Mutability.rw);

            /*********************************************************************
             End Point Type1
            */
            alias EPTYPE1 = BitField!(6, 4, Mutability.rw);

            /*********************************************************************
             NYET Token Disable
            */
            alias NYETDIS = Bit!(7, Mutability.rw);
        }
        /*************************************************************************
         DEVICE End Point Configuration
        */
        final abstract class EPCFG3 : Register!(0x140)
        {
            /*********************************************************************
             End Point Type0
            */
            alias EPTYPE0 = BitField!(2, 0, Mutability.rw);

            /*********************************************************************
             End Point Type1
            */
            alias EPTYPE1 = BitField!(6, 4, Mutability.rw);

            /*********************************************************************
             NYET Token Disable
            */
            alias NYETDIS = Bit!(7, Mutability.rw);
        }
        /*************************************************************************
         DEVICE End Point Configuration
        */
        final abstract class EPCFG4 : Register!(0x160)
        {
            /*********************************************************************
             End Point Type0
            */
            alias EPTYPE0 = BitField!(2, 0, Mutability.rw);

            /*********************************************************************
             End Point Type1
            */
            alias EPTYPE1 = BitField!(6, 4, Mutability.rw);

            /*********************************************************************
             NYET Token Disable
            */
            alias NYETDIS = Bit!(7, Mutability.rw);
        }
        /*************************************************************************
         DEVICE End Point Configuration
        */
        final abstract class EPCFG5 : Register!(0x180)
        {
            /*********************************************************************
             End Point Type0
            */
            alias EPTYPE0 = BitField!(2, 0, Mutability.rw);

            /*********************************************************************
             End Point Type1
            */
            alias EPTYPE1 = BitField!(6, 4, Mutability.rw);

            /*********************************************************************
             NYET Token Disable
            */
            alias NYETDIS = Bit!(7, Mutability.rw);
        }
        /*************************************************************************
         DEVICE End Point Configuration
        */
        final abstract class EPCFG6 : Register!(0x1a0)
        {
            /*********************************************************************
             End Point Type0
            */
            alias EPTYPE0 = BitField!(2, 0, Mutability.rw);

            /*********************************************************************
             End Point Type1
            */
            alias EPTYPE1 = BitField!(6, 4, Mutability.rw);

            /*********************************************************************
             NYET Token Disable
            */
            alias NYETDIS = Bit!(7, Mutability.rw);
        }
        /*************************************************************************
         DEVICE End Point Configuration
        */
        final abstract class EPCFG7 : Register!(0x1c0)
        {
            /*********************************************************************
             End Point Type0
            */
            alias EPTYPE0 = BitField!(2, 0, Mutability.rw);

            /*********************************************************************
             End Point Type1
            */
            alias EPTYPE1 = BitField!(6, 4, Mutability.rw);

            /*********************************************************************
             NYET Token Disable
            */
            alias NYETDIS = Bit!(7, Mutability.rw);
        }
        /*************************************************************************
         DEVICE End Point Configuration
        */
        final abstract class EPCFG8 : Register!(0x1e0)
        {
            /*********************************************************************
             End Point Type0
            */
            alias EPTYPE0 = BitField!(2, 0, Mutability.rw);

            /*********************************************************************
             End Point Type1
            */
            alias EPTYPE1 = BitField!(6, 4, Mutability.rw);

            /*********************************************************************
             NYET Token Disable
            */
            alias NYETDIS = Bit!(7, Mutability.rw);
        }

        /*************************************************************************
         DEVICE End Point Interrupt Clear Flag
        */
        final abstract class EPINTENCLR1 : Register!(0x108)
        {
            /*********************************************************************
             Transfer Complete 0 Interrupt Disable
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1 Interrupt Disable
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow 0 Interrupt Disable
            */
            alias TRFAIL0 = Bit!(2, Mutability.rw);

            /*********************************************************************
             Error Flow 1 Interrupt Disable
            */
            alias TRFAIL1 = Bit!(3, Mutability.rw);

            /*********************************************************************
             Received Setup Interrupt Disable
            */
            alias RXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall 0 In/Out Interrupt Disable
            */
            alias STALL0 = Bit!(5, Mutability.rw);

            /*********************************************************************
             Stall 1 In/Out Interrupt Disable
            */
            alias STALL1 = Bit!(6, Mutability.rw);
        }
        /*************************************************************************
         DEVICE End Point Interrupt Clear Flag
        */
        final abstract class EPINTENCLR2 : Register!(0x128)
        {
            /*********************************************************************
             Transfer Complete 0 Interrupt Disable
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1 Interrupt Disable
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow 0 Interrupt Disable
            */
            alias TRFAIL0 = Bit!(2, Mutability.rw);

            /*********************************************************************
             Error Flow 1 Interrupt Disable
            */
            alias TRFAIL1 = Bit!(3, Mutability.rw);

            /*********************************************************************
             Received Setup Interrupt Disable
            */
            alias RXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall 0 In/Out Interrupt Disable
            */
            alias STALL0 = Bit!(5, Mutability.rw);

            /*********************************************************************
             Stall 1 In/Out Interrupt Disable
            */
            alias STALL1 = Bit!(6, Mutability.rw);
        }
        /*************************************************************************
         DEVICE End Point Interrupt Clear Flag
        */
        final abstract class EPINTENCLR3 : Register!(0x148)
        {
            /*********************************************************************
             Transfer Complete 0 Interrupt Disable
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1 Interrupt Disable
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow 0 Interrupt Disable
            */
            alias TRFAIL0 = Bit!(2, Mutability.rw);

            /*********************************************************************
             Error Flow 1 Interrupt Disable
            */
            alias TRFAIL1 = Bit!(3, Mutability.rw);

            /*********************************************************************
             Received Setup Interrupt Disable
            */
            alias RXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall 0 In/Out Interrupt Disable
            */
            alias STALL0 = Bit!(5, Mutability.rw);

            /*********************************************************************
             Stall 1 In/Out Interrupt Disable
            */
            alias STALL1 = Bit!(6, Mutability.rw);
        }
        /*************************************************************************
         DEVICE End Point Interrupt Clear Flag
        */
        final abstract class EPINTENCLR4 : Register!(0x168)
        {
            /*********************************************************************
             Transfer Complete 0 Interrupt Disable
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1 Interrupt Disable
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow 0 Interrupt Disable
            */
            alias TRFAIL0 = Bit!(2, Mutability.rw);

            /*********************************************************************
             Error Flow 1 Interrupt Disable
            */
            alias TRFAIL1 = Bit!(3, Mutability.rw);

            /*********************************************************************
             Received Setup Interrupt Disable
            */
            alias RXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall 0 In/Out Interrupt Disable
            */
            alias STALL0 = Bit!(5, Mutability.rw);

            /*********************************************************************
             Stall 1 In/Out Interrupt Disable
            */
            alias STALL1 = Bit!(6, Mutability.rw);
        }
        /*************************************************************************
         DEVICE End Point Interrupt Clear Flag
        */
        final abstract class EPINTENCLR5 : Register!(0x188)
        {
            /*********************************************************************
             Transfer Complete 0 Interrupt Disable
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1 Interrupt Disable
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow 0 Interrupt Disable
            */
            alias TRFAIL0 = Bit!(2, Mutability.rw);

            /*********************************************************************
             Error Flow 1 Interrupt Disable
            */
            alias TRFAIL1 = Bit!(3, Mutability.rw);

            /*********************************************************************
             Received Setup Interrupt Disable
            */
            alias RXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall 0 In/Out Interrupt Disable
            */
            alias STALL0 = Bit!(5, Mutability.rw);

            /*********************************************************************
             Stall 1 In/Out Interrupt Disable
            */
            alias STALL1 = Bit!(6, Mutability.rw);
        }
        /*************************************************************************
         DEVICE End Point Interrupt Clear Flag
        */
        final abstract class EPINTENCLR6 : Register!(0x1a8)
        {
            /*********************************************************************
             Transfer Complete 0 Interrupt Disable
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1 Interrupt Disable
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow 0 Interrupt Disable
            */
            alias TRFAIL0 = Bit!(2, Mutability.rw);

            /*********************************************************************
             Error Flow 1 Interrupt Disable
            */
            alias TRFAIL1 = Bit!(3, Mutability.rw);

            /*********************************************************************
             Received Setup Interrupt Disable
            */
            alias RXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall 0 In/Out Interrupt Disable
            */
            alias STALL0 = Bit!(5, Mutability.rw);

            /*********************************************************************
             Stall 1 In/Out Interrupt Disable
            */
            alias STALL1 = Bit!(6, Mutability.rw);
        }
        /*************************************************************************
         DEVICE End Point Interrupt Clear Flag
        */
        final abstract class EPINTENCLR7 : Register!(0x1c8)
        {
            /*********************************************************************
             Transfer Complete 0 Interrupt Disable
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1 Interrupt Disable
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow 0 Interrupt Disable
            */
            alias TRFAIL0 = Bit!(2, Mutability.rw);

            /*********************************************************************
             Error Flow 1 Interrupt Disable
            */
            alias TRFAIL1 = Bit!(3, Mutability.rw);

            /*********************************************************************
             Received Setup Interrupt Disable
            */
            alias RXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall 0 In/Out Interrupt Disable
            */
            alias STALL0 = Bit!(5, Mutability.rw);

            /*********************************************************************
             Stall 1 In/Out Interrupt Disable
            */
            alias STALL1 = Bit!(6, Mutability.rw);
        }
        /*************************************************************************
         DEVICE End Point Interrupt Clear Flag
        */
        final abstract class EPINTENCLR8 : Register!(0x1e8)
        {
            /*********************************************************************
             Transfer Complete 0 Interrupt Disable
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1 Interrupt Disable
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow 0 Interrupt Disable
            */
            alias TRFAIL0 = Bit!(2, Mutability.rw);

            /*********************************************************************
             Error Flow 1 Interrupt Disable
            */
            alias TRFAIL1 = Bit!(3, Mutability.rw);

            /*********************************************************************
             Received Setup Interrupt Disable
            */
            alias RXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall 0 In/Out Interrupt Disable
            */
            alias STALL0 = Bit!(5, Mutability.rw);

            /*********************************************************************
             Stall 1 In/Out Interrupt Disable
            */
            alias STALL1 = Bit!(6, Mutability.rw);
        }

        /*************************************************************************
         DEVICE End Point Interrupt Set Flag
        */
        final abstract class EPINTENSET1 : Register!(0x109)
        {
            /*********************************************************************
             Transfer Complete 0 Interrupt Enable
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1 Interrupt Enable
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow 0 Interrupt Enable
            */
            alias TRFAIL0 = Bit!(2, Mutability.rw);

            /*********************************************************************
             Error Flow 1 Interrupt Enable
            */
            alias TRFAIL1 = Bit!(3, Mutability.rw);

            /*********************************************************************
             Received Setup Interrupt Enable
            */
            alias RXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall 0 In/out Interrupt enable
            */
            alias STALL0 = Bit!(5, Mutability.rw);

            /*********************************************************************
             Stall 1 In/out Interrupt enable
            */
            alias STALL1 = Bit!(6, Mutability.rw);
        }
        /*************************************************************************
         DEVICE End Point Interrupt Set Flag
        */
        final abstract class EPINTENSET2 : Register!(0x129)
        {
            /*********************************************************************
             Transfer Complete 0 Interrupt Enable
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1 Interrupt Enable
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow 0 Interrupt Enable
            */
            alias TRFAIL0 = Bit!(2, Mutability.rw);

            /*********************************************************************
             Error Flow 1 Interrupt Enable
            */
            alias TRFAIL1 = Bit!(3, Mutability.rw);

            /*********************************************************************
             Received Setup Interrupt Enable
            */
            alias RXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall 0 In/out Interrupt enable
            */
            alias STALL0 = Bit!(5, Mutability.rw);

            /*********************************************************************
             Stall 1 In/out Interrupt enable
            */
            alias STALL1 = Bit!(6, Mutability.rw);
        }
        /*************************************************************************
         DEVICE End Point Interrupt Set Flag
        */
        final abstract class EPINTENSET3 : Register!(0x149)
        {
            /*********************************************************************
             Transfer Complete 0 Interrupt Enable
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1 Interrupt Enable
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow 0 Interrupt Enable
            */
            alias TRFAIL0 = Bit!(2, Mutability.rw);

            /*********************************************************************
             Error Flow 1 Interrupt Enable
            */
            alias TRFAIL1 = Bit!(3, Mutability.rw);

            /*********************************************************************
             Received Setup Interrupt Enable
            */
            alias RXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall 0 In/out Interrupt enable
            */
            alias STALL0 = Bit!(5, Mutability.rw);

            /*********************************************************************
             Stall 1 In/out Interrupt enable
            */
            alias STALL1 = Bit!(6, Mutability.rw);
        }
        /*************************************************************************
         DEVICE End Point Interrupt Set Flag
        */
        final abstract class EPINTENSET4 : Register!(0x169)
        {
            /*********************************************************************
             Transfer Complete 0 Interrupt Enable
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1 Interrupt Enable
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow 0 Interrupt Enable
            */
            alias TRFAIL0 = Bit!(2, Mutability.rw);

            /*********************************************************************
             Error Flow 1 Interrupt Enable
            */
            alias TRFAIL1 = Bit!(3, Mutability.rw);

            /*********************************************************************
             Received Setup Interrupt Enable
            */
            alias RXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall 0 In/out Interrupt enable
            */
            alias STALL0 = Bit!(5, Mutability.rw);

            /*********************************************************************
             Stall 1 In/out Interrupt enable
            */
            alias STALL1 = Bit!(6, Mutability.rw);
        }
        /*************************************************************************
         DEVICE End Point Interrupt Set Flag
        */
        final abstract class EPINTENSET5 : Register!(0x189)
        {
            /*********************************************************************
             Transfer Complete 0 Interrupt Enable
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1 Interrupt Enable
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow 0 Interrupt Enable
            */
            alias TRFAIL0 = Bit!(2, Mutability.rw);

            /*********************************************************************
             Error Flow 1 Interrupt Enable
            */
            alias TRFAIL1 = Bit!(3, Mutability.rw);

            /*********************************************************************
             Received Setup Interrupt Enable
            */
            alias RXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall 0 In/out Interrupt enable
            */
            alias STALL0 = Bit!(5, Mutability.rw);

            /*********************************************************************
             Stall 1 In/out Interrupt enable
            */
            alias STALL1 = Bit!(6, Mutability.rw);
        }
        /*************************************************************************
         DEVICE End Point Interrupt Set Flag
        */
        final abstract class EPINTENSET6 : Register!(0x1a9)
        {
            /*********************************************************************
             Transfer Complete 0 Interrupt Enable
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1 Interrupt Enable
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow 0 Interrupt Enable
            */
            alias TRFAIL0 = Bit!(2, Mutability.rw);

            /*********************************************************************
             Error Flow 1 Interrupt Enable
            */
            alias TRFAIL1 = Bit!(3, Mutability.rw);

            /*********************************************************************
             Received Setup Interrupt Enable
            */
            alias RXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall 0 In/out Interrupt enable
            */
            alias STALL0 = Bit!(5, Mutability.rw);

            /*********************************************************************
             Stall 1 In/out Interrupt enable
            */
            alias STALL1 = Bit!(6, Mutability.rw);
        }
        /*************************************************************************
         DEVICE End Point Interrupt Set Flag
        */
        final abstract class EPINTENSET7 : Register!(0x1c9)
        {
            /*********************************************************************
             Transfer Complete 0 Interrupt Enable
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1 Interrupt Enable
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow 0 Interrupt Enable
            */
            alias TRFAIL0 = Bit!(2, Mutability.rw);

            /*********************************************************************
             Error Flow 1 Interrupt Enable
            */
            alias TRFAIL1 = Bit!(3, Mutability.rw);

            /*********************************************************************
             Received Setup Interrupt Enable
            */
            alias RXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall 0 In/out Interrupt enable
            */
            alias STALL0 = Bit!(5, Mutability.rw);

            /*********************************************************************
             Stall 1 In/out Interrupt enable
            */
            alias STALL1 = Bit!(6, Mutability.rw);
        }
        /*************************************************************************
         DEVICE End Point Interrupt Set Flag
        */
        final abstract class EPINTENSET8 : Register!(0x1e9)
        {
            /*********************************************************************
             Transfer Complete 0 Interrupt Enable
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1 Interrupt Enable
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow 0 Interrupt Enable
            */
            alias TRFAIL0 = Bit!(2, Mutability.rw);

            /*********************************************************************
             Error Flow 1 Interrupt Enable
            */
            alias TRFAIL1 = Bit!(3, Mutability.rw);

            /*********************************************************************
             Received Setup Interrupt Enable
            */
            alias RXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall 0 In/out Interrupt enable
            */
            alias STALL0 = Bit!(5, Mutability.rw);

            /*********************************************************************
             Stall 1 In/out Interrupt enable
            */
            alias STALL1 = Bit!(6, Mutability.rw);
        }

        /*************************************************************************
         DEVICE End Point Interrupt Flag
        */
        final abstract class EPINTFLAG1 : Register!(0x107)
        {
            /*********************************************************************
             Transfer Complete 0
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow 0
            */
            alias TRFAIL0 = Bit!(2, Mutability.rw);

            /*********************************************************************
             Error Flow 1
            */
            alias TRFAIL1 = Bit!(3, Mutability.rw);

            /*********************************************************************
             Received Setup
            */
            alias RXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall 0 In/out
            */
            alias STALL0 = Bit!(5, Mutability.rw);

            /*********************************************************************
             Stall 1 In/out
            */
            alias STALL1 = Bit!(6, Mutability.rw);
        }
        /*************************************************************************
         DEVICE End Point Interrupt Flag
        */
        final abstract class EPINTFLAG2 : Register!(0x127)
        {
            /*********************************************************************
             Transfer Complete 0
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow 0
            */
            alias TRFAIL0 = Bit!(2, Mutability.rw);

            /*********************************************************************
             Error Flow 1
            */
            alias TRFAIL1 = Bit!(3, Mutability.rw);

            /*********************************************************************
             Received Setup
            */
            alias RXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall 0 In/out
            */
            alias STALL0 = Bit!(5, Mutability.rw);

            /*********************************************************************
             Stall 1 In/out
            */
            alias STALL1 = Bit!(6, Mutability.rw);
        }
        /*************************************************************************
         DEVICE End Point Interrupt Flag
        */
        final abstract class EPINTFLAG3 : Register!(0x147)
        {
            /*********************************************************************
             Transfer Complete 0
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow 0
            */
            alias TRFAIL0 = Bit!(2, Mutability.rw);

            /*********************************************************************
             Error Flow 1
            */
            alias TRFAIL1 = Bit!(3, Mutability.rw);

            /*********************************************************************
             Received Setup
            */
            alias RXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall 0 In/out
            */
            alias STALL0 = Bit!(5, Mutability.rw);

            /*********************************************************************
             Stall 1 In/out
            */
            alias STALL1 = Bit!(6, Mutability.rw);
        }
        /*************************************************************************
         DEVICE End Point Interrupt Flag
        */
        final abstract class EPINTFLAG4 : Register!(0x167)
        {
            /*********************************************************************
             Transfer Complete 0
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow 0
            */
            alias TRFAIL0 = Bit!(2, Mutability.rw);

            /*********************************************************************
             Error Flow 1
            */
            alias TRFAIL1 = Bit!(3, Mutability.rw);

            /*********************************************************************
             Received Setup
            */
            alias RXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall 0 In/out
            */
            alias STALL0 = Bit!(5, Mutability.rw);

            /*********************************************************************
             Stall 1 In/out
            */
            alias STALL1 = Bit!(6, Mutability.rw);
        }
        /*************************************************************************
         DEVICE End Point Interrupt Flag
        */
        final abstract class EPINTFLAG5 : Register!(0x187)
        {
            /*********************************************************************
             Transfer Complete 0
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow 0
            */
            alias TRFAIL0 = Bit!(2, Mutability.rw);

            /*********************************************************************
             Error Flow 1
            */
            alias TRFAIL1 = Bit!(3, Mutability.rw);

            /*********************************************************************
             Received Setup
            */
            alias RXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall 0 In/out
            */
            alias STALL0 = Bit!(5, Mutability.rw);

            /*********************************************************************
             Stall 1 In/out
            */
            alias STALL1 = Bit!(6, Mutability.rw);
        }
        /*************************************************************************
         DEVICE End Point Interrupt Flag
        */
        final abstract class EPINTFLAG6 : Register!(0x1a7)
        {
            /*********************************************************************
             Transfer Complete 0
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow 0
            */
            alias TRFAIL0 = Bit!(2, Mutability.rw);

            /*********************************************************************
             Error Flow 1
            */
            alias TRFAIL1 = Bit!(3, Mutability.rw);

            /*********************************************************************
             Received Setup
            */
            alias RXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall 0 In/out
            */
            alias STALL0 = Bit!(5, Mutability.rw);

            /*********************************************************************
             Stall 1 In/out
            */
            alias STALL1 = Bit!(6, Mutability.rw);
        }
        /*************************************************************************
         DEVICE End Point Interrupt Flag
        */
        final abstract class EPINTFLAG7 : Register!(0x1c7)
        {
            /*********************************************************************
             Transfer Complete 0
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow 0
            */
            alias TRFAIL0 = Bit!(2, Mutability.rw);

            /*********************************************************************
             Error Flow 1
            */
            alias TRFAIL1 = Bit!(3, Mutability.rw);

            /*********************************************************************
             Received Setup
            */
            alias RXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall 0 In/out
            */
            alias STALL0 = Bit!(5, Mutability.rw);

            /*********************************************************************
             Stall 1 In/out
            */
            alias STALL1 = Bit!(6, Mutability.rw);
        }
        /*************************************************************************
         DEVICE End Point Interrupt Flag
        */
        final abstract class EPINTFLAG8 : Register!(0x1e7)
        {
            /*********************************************************************
             Transfer Complete 0
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow 0
            */
            alias TRFAIL0 = Bit!(2, Mutability.rw);

            /*********************************************************************
             Error Flow 1
            */
            alias TRFAIL1 = Bit!(3, Mutability.rw);

            /*********************************************************************
             Received Setup
            */
            alias RXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall 0 In/out
            */
            alias STALL0 = Bit!(5, Mutability.rw);

            /*********************************************************************
             Stall 1 In/out
            */
            alias STALL1 = Bit!(6, Mutability.rw);
        }

        /*************************************************************************
         DEVICE End Point Pipe Status
        */
        final abstract class EPSTATUS1 : Register!(0x106)
        {
            /*********************************************************************
             Data Toggle Out
            */
            alias DTGLOUT = Bit!(0, Mutability.r);

            /*********************************************************************
             Data Toggle In
            */
            alias DTGLIN = Bit!(1, Mutability.r);

            /*********************************************************************
             Current Bank
            */
            alias CURBK = Bit!(2, Mutability.r);

            /*********************************************************************
             Stall 0 Request
            */
            alias STALLRQ0 = Bit!(4, Mutability.r);

            /*********************************************************************
             Stall 1 Request
            */
            alias STALLRQ1 = Bit!(5, Mutability.r);

            /*********************************************************************
             Bank 0 ready
            */
            alias BK0RDY = Bit!(6, Mutability.r);

            /*********************************************************************
             Bank 1 ready
            */
            alias BK1RDY = Bit!(7, Mutability.r);
        }
        /*************************************************************************
         DEVICE End Point Pipe Status
        */
        final abstract class EPSTATUS2 : Register!(0x126)
        {
            /*********************************************************************
             Data Toggle Out
            */
            alias DTGLOUT = Bit!(0, Mutability.r);

            /*********************************************************************
             Data Toggle In
            */
            alias DTGLIN = Bit!(1, Mutability.r);

            /*********************************************************************
             Current Bank
            */
            alias CURBK = Bit!(2, Mutability.r);

            /*********************************************************************
             Stall 0 Request
            */
            alias STALLRQ0 = Bit!(4, Mutability.r);

            /*********************************************************************
             Stall 1 Request
            */
            alias STALLRQ1 = Bit!(5, Mutability.r);

            /*********************************************************************
             Bank 0 ready
            */
            alias BK0RDY = Bit!(6, Mutability.r);

            /*********************************************************************
             Bank 1 ready
            */
            alias BK1RDY = Bit!(7, Mutability.r);
        }
        /*************************************************************************
         DEVICE End Point Pipe Status
        */
        final abstract class EPSTATUS3 : Register!(0x146)
        {
            /*********************************************************************
             Data Toggle Out
            */
            alias DTGLOUT = Bit!(0, Mutability.r);

            /*********************************************************************
             Data Toggle In
            */
            alias DTGLIN = Bit!(1, Mutability.r);

            /*********************************************************************
             Current Bank
            */
            alias CURBK = Bit!(2, Mutability.r);

            /*********************************************************************
             Stall 0 Request
            */
            alias STALLRQ0 = Bit!(4, Mutability.r);

            /*********************************************************************
             Stall 1 Request
            */
            alias STALLRQ1 = Bit!(5, Mutability.r);

            /*********************************************************************
             Bank 0 ready
            */
            alias BK0RDY = Bit!(6, Mutability.r);

            /*********************************************************************
             Bank 1 ready
            */
            alias BK1RDY = Bit!(7, Mutability.r);
        }
        /*************************************************************************
         DEVICE End Point Pipe Status
        */
        final abstract class EPSTATUS4 : Register!(0x166)
        {
            /*********************************************************************
             Data Toggle Out
            */
            alias DTGLOUT = Bit!(0, Mutability.r);

            /*********************************************************************
             Data Toggle In
            */
            alias DTGLIN = Bit!(1, Mutability.r);

            /*********************************************************************
             Current Bank
            */
            alias CURBK = Bit!(2, Mutability.r);

            /*********************************************************************
             Stall 0 Request
            */
            alias STALLRQ0 = Bit!(4, Mutability.r);

            /*********************************************************************
             Stall 1 Request
            */
            alias STALLRQ1 = Bit!(5, Mutability.r);

            /*********************************************************************
             Bank 0 ready
            */
            alias BK0RDY = Bit!(6, Mutability.r);

            /*********************************************************************
             Bank 1 ready
            */
            alias BK1RDY = Bit!(7, Mutability.r);
        }
        /*************************************************************************
         DEVICE End Point Pipe Status
        */
        final abstract class EPSTATUS5 : Register!(0x186)
        {
            /*********************************************************************
             Data Toggle Out
            */
            alias DTGLOUT = Bit!(0, Mutability.r);

            /*********************************************************************
             Data Toggle In
            */
            alias DTGLIN = Bit!(1, Mutability.r);

            /*********************************************************************
             Current Bank
            */
            alias CURBK = Bit!(2, Mutability.r);

            /*********************************************************************
             Stall 0 Request
            */
            alias STALLRQ0 = Bit!(4, Mutability.r);

            /*********************************************************************
             Stall 1 Request
            */
            alias STALLRQ1 = Bit!(5, Mutability.r);

            /*********************************************************************
             Bank 0 ready
            */
            alias BK0RDY = Bit!(6, Mutability.r);

            /*********************************************************************
             Bank 1 ready
            */
            alias BK1RDY = Bit!(7, Mutability.r);
        }
        /*************************************************************************
         DEVICE End Point Pipe Status
        */
        final abstract class EPSTATUS6 : Register!(0x1a6)
        {
            /*********************************************************************
             Data Toggle Out
            */
            alias DTGLOUT = Bit!(0, Mutability.r);

            /*********************************************************************
             Data Toggle In
            */
            alias DTGLIN = Bit!(1, Mutability.r);

            /*********************************************************************
             Current Bank
            */
            alias CURBK = Bit!(2, Mutability.r);

            /*********************************************************************
             Stall 0 Request
            */
            alias STALLRQ0 = Bit!(4, Mutability.r);

            /*********************************************************************
             Stall 1 Request
            */
            alias STALLRQ1 = Bit!(5, Mutability.r);

            /*********************************************************************
             Bank 0 ready
            */
            alias BK0RDY = Bit!(6, Mutability.r);

            /*********************************************************************
             Bank 1 ready
            */
            alias BK1RDY = Bit!(7, Mutability.r);
        }
        /*************************************************************************
         DEVICE End Point Pipe Status
        */
        final abstract class EPSTATUS7 : Register!(0x1c6)
        {
            /*********************************************************************
             Data Toggle Out
            */
            alias DTGLOUT = Bit!(0, Mutability.r);

            /*********************************************************************
             Data Toggle In
            */
            alias DTGLIN = Bit!(1, Mutability.r);

            /*********************************************************************
             Current Bank
            */
            alias CURBK = Bit!(2, Mutability.r);

            /*********************************************************************
             Stall 0 Request
            */
            alias STALLRQ0 = Bit!(4, Mutability.r);

            /*********************************************************************
             Stall 1 Request
            */
            alias STALLRQ1 = Bit!(5, Mutability.r);

            /*********************************************************************
             Bank 0 ready
            */
            alias BK0RDY = Bit!(6, Mutability.r);

            /*********************************************************************
             Bank 1 ready
            */
            alias BK1RDY = Bit!(7, Mutability.r);
        }
        /*************************************************************************
         DEVICE End Point Pipe Status
        */
        final abstract class EPSTATUS8 : Register!(0x1e6)
        {
            /*********************************************************************
             Data Toggle Out
            */
            alias DTGLOUT = Bit!(0, Mutability.r);

            /*********************************************************************
             Data Toggle In
            */
            alias DTGLIN = Bit!(1, Mutability.r);

            /*********************************************************************
             Current Bank
            */
            alias CURBK = Bit!(2, Mutability.r);

            /*********************************************************************
             Stall 0 Request
            */
            alias STALLRQ0 = Bit!(4, Mutability.r);

            /*********************************************************************
             Stall 1 Request
            */
            alias STALLRQ1 = Bit!(5, Mutability.r);

            /*********************************************************************
             Bank 0 ready
            */
            alias BK0RDY = Bit!(6, Mutability.r);

            /*********************************************************************
             Bank 1 ready
            */
            alias BK1RDY = Bit!(7, Mutability.r);
        }

        /*************************************************************************
         DEVICE End Point Pipe Status Clear
        */
        final abstract class EPSTATUSCLR1 : Register!(0x104)
        {
            /*********************************************************************
             Data Toggle OUT Clear
            */
            alias DTGLOUT = Bit!(0, Mutability.w);

            /*********************************************************************
             Data Toggle IN Clear
            */
            alias DTGLIN = Bit!(1, Mutability.w);

            /*********************************************************************
             Curren Bank Clear
            */
            alias CURBK = Bit!(2, Mutability.w);

            /*********************************************************************
             Stall 0 Request Clear
            */
            alias STALLRQ0 = Bit!(4, Mutability.w);

            /*********************************************************************
             Stall 1 Request Clear
            */
            alias STALLRQ1 = Bit!(5, Mutability.w);

            /*********************************************************************
             Bank 0 Ready Clear
            */
            alias BK0RDY = Bit!(6, Mutability.w);

            /*********************************************************************
             Bank 1 Ready Clear
            */
            alias BK1RDY = Bit!(7, Mutability.w);
        }
        /*************************************************************************
         DEVICE End Point Pipe Status Clear
        */
        final abstract class EPSTATUSCLR2 : Register!(0x124)
        {
            /*********************************************************************
             Data Toggle OUT Clear
            */
            alias DTGLOUT = Bit!(0, Mutability.w);

            /*********************************************************************
             Data Toggle IN Clear
            */
            alias DTGLIN = Bit!(1, Mutability.w);

            /*********************************************************************
             Curren Bank Clear
            */
            alias CURBK = Bit!(2, Mutability.w);

            /*********************************************************************
             Stall 0 Request Clear
            */
            alias STALLRQ0 = Bit!(4, Mutability.w);

            /*********************************************************************
             Stall 1 Request Clear
            */
            alias STALLRQ1 = Bit!(5, Mutability.w);

            /*********************************************************************
             Bank 0 Ready Clear
            */
            alias BK0RDY = Bit!(6, Mutability.w);

            /*********************************************************************
             Bank 1 Ready Clear
            */
            alias BK1RDY = Bit!(7, Mutability.w);
        }
        /*************************************************************************
         DEVICE End Point Pipe Status Clear
        */
        final abstract class EPSTATUSCLR3 : Register!(0x144)
        {
            /*********************************************************************
             Data Toggle OUT Clear
            */
            alias DTGLOUT = Bit!(0, Mutability.w);

            /*********************************************************************
             Data Toggle IN Clear
            */
            alias DTGLIN = Bit!(1, Mutability.w);

            /*********************************************************************
             Curren Bank Clear
            */
            alias CURBK = Bit!(2, Mutability.w);

            /*********************************************************************
             Stall 0 Request Clear
            */
            alias STALLRQ0 = Bit!(4, Mutability.w);

            /*********************************************************************
             Stall 1 Request Clear
            */
            alias STALLRQ1 = Bit!(5, Mutability.w);

            /*********************************************************************
             Bank 0 Ready Clear
            */
            alias BK0RDY = Bit!(6, Mutability.w);

            /*********************************************************************
             Bank 1 Ready Clear
            */
            alias BK1RDY = Bit!(7, Mutability.w);
        }
        /*************************************************************************
         DEVICE End Point Pipe Status Clear
        */
        final abstract class EPSTATUSCLR4 : Register!(0x164)
        {
            /*********************************************************************
             Data Toggle OUT Clear
            */
            alias DTGLOUT = Bit!(0, Mutability.w);

            /*********************************************************************
             Data Toggle IN Clear
            */
            alias DTGLIN = Bit!(1, Mutability.w);

            /*********************************************************************
             Curren Bank Clear
            */
            alias CURBK = Bit!(2, Mutability.w);

            /*********************************************************************
             Stall 0 Request Clear
            */
            alias STALLRQ0 = Bit!(4, Mutability.w);

            /*********************************************************************
             Stall 1 Request Clear
            */
            alias STALLRQ1 = Bit!(5, Mutability.w);

            /*********************************************************************
             Bank 0 Ready Clear
            */
            alias BK0RDY = Bit!(6, Mutability.w);

            /*********************************************************************
             Bank 1 Ready Clear
            */
            alias BK1RDY = Bit!(7, Mutability.w);
        }
        /*************************************************************************
         DEVICE End Point Pipe Status Clear
        */
        final abstract class EPSTATUSCLR5 : Register!(0x184)
        {
            /*********************************************************************
             Data Toggle OUT Clear
            */
            alias DTGLOUT = Bit!(0, Mutability.w);

            /*********************************************************************
             Data Toggle IN Clear
            */
            alias DTGLIN = Bit!(1, Mutability.w);

            /*********************************************************************
             Curren Bank Clear
            */
            alias CURBK = Bit!(2, Mutability.w);

            /*********************************************************************
             Stall 0 Request Clear
            */
            alias STALLRQ0 = Bit!(4, Mutability.w);

            /*********************************************************************
             Stall 1 Request Clear
            */
            alias STALLRQ1 = Bit!(5, Mutability.w);

            /*********************************************************************
             Bank 0 Ready Clear
            */
            alias BK0RDY = Bit!(6, Mutability.w);

            /*********************************************************************
             Bank 1 Ready Clear
            */
            alias BK1RDY = Bit!(7, Mutability.w);
        }
        /*************************************************************************
         DEVICE End Point Pipe Status Clear
        */
        final abstract class EPSTATUSCLR6 : Register!(0x1a4)
        {
            /*********************************************************************
             Data Toggle OUT Clear
            */
            alias DTGLOUT = Bit!(0, Mutability.w);

            /*********************************************************************
             Data Toggle IN Clear
            */
            alias DTGLIN = Bit!(1, Mutability.w);

            /*********************************************************************
             Curren Bank Clear
            */
            alias CURBK = Bit!(2, Mutability.w);

            /*********************************************************************
             Stall 0 Request Clear
            */
            alias STALLRQ0 = Bit!(4, Mutability.w);

            /*********************************************************************
             Stall 1 Request Clear
            */
            alias STALLRQ1 = Bit!(5, Mutability.w);

            /*********************************************************************
             Bank 0 Ready Clear
            */
            alias BK0RDY = Bit!(6, Mutability.w);

            /*********************************************************************
             Bank 1 Ready Clear
            */
            alias BK1RDY = Bit!(7, Mutability.w);
        }
        /*************************************************************************
         DEVICE End Point Pipe Status Clear
        */
        final abstract class EPSTATUSCLR7 : Register!(0x1c4)
        {
            /*********************************************************************
             Data Toggle OUT Clear
            */
            alias DTGLOUT = Bit!(0, Mutability.w);

            /*********************************************************************
             Data Toggle IN Clear
            */
            alias DTGLIN = Bit!(1, Mutability.w);

            /*********************************************************************
             Curren Bank Clear
            */
            alias CURBK = Bit!(2, Mutability.w);

            /*********************************************************************
             Stall 0 Request Clear
            */
            alias STALLRQ0 = Bit!(4, Mutability.w);

            /*********************************************************************
             Stall 1 Request Clear
            */
            alias STALLRQ1 = Bit!(5, Mutability.w);

            /*********************************************************************
             Bank 0 Ready Clear
            */
            alias BK0RDY = Bit!(6, Mutability.w);

            /*********************************************************************
             Bank 1 Ready Clear
            */
            alias BK1RDY = Bit!(7, Mutability.w);
        }
        /*************************************************************************
         DEVICE End Point Pipe Status Clear
        */
        final abstract class EPSTATUSCLR8 : Register!(0x1e4)
        {
            /*********************************************************************
             Data Toggle OUT Clear
            */
            alias DTGLOUT = Bit!(0, Mutability.w);

            /*********************************************************************
             Data Toggle IN Clear
            */
            alias DTGLIN = Bit!(1, Mutability.w);

            /*********************************************************************
             Curren Bank Clear
            */
            alias CURBK = Bit!(2, Mutability.w);

            /*********************************************************************
             Stall 0 Request Clear
            */
            alias STALLRQ0 = Bit!(4, Mutability.w);

            /*********************************************************************
             Stall 1 Request Clear
            */
            alias STALLRQ1 = Bit!(5, Mutability.w);

            /*********************************************************************
             Bank 0 Ready Clear
            */
            alias BK0RDY = Bit!(6, Mutability.w);

            /*********************************************************************
             Bank 1 Ready Clear
            */
            alias BK1RDY = Bit!(7, Mutability.w);
        }

        /*************************************************************************
         DEVICE End Point Pipe Status Set
        */
        final abstract class EPSTATUSSET1 : Register!(0x105)
        {
            /*********************************************************************
             Data Toggle OUT Set
            */
            alias DTGLOUT = Bit!(0, Mutability.w);

            /*********************************************************************
             Data Toggle IN Set
            */
            alias DTGLIN = Bit!(1, Mutability.w);

            /*********************************************************************
             Current Bank Set
            */
            alias CURBK = Bit!(2, Mutability.w);

            /*********************************************************************
             Stall 0 Request Set
            */
            alias STALLRQ0 = Bit!(4, Mutability.w);

            /*********************************************************************
             Stall 1 Request Set
            */
            alias STALLRQ1 = Bit!(5, Mutability.w);

            /*********************************************************************
             Bank 0 Ready Set
            */
            alias BK0RDY = Bit!(6, Mutability.w);

            /*********************************************************************
             Bank 1 Ready Set
            */
            alias BK1RDY = Bit!(7, Mutability.w);
        }
        /*************************************************************************
         DEVICE End Point Pipe Status Set
        */
        final abstract class EPSTATUSSET2 : Register!(0x125)
        {
            /*********************************************************************
             Data Toggle OUT Set
            */
            alias DTGLOUT = Bit!(0, Mutability.w);

            /*********************************************************************
             Data Toggle IN Set
            */
            alias DTGLIN = Bit!(1, Mutability.w);

            /*********************************************************************
             Current Bank Set
            */
            alias CURBK = Bit!(2, Mutability.w);

            /*********************************************************************
             Stall 0 Request Set
            */
            alias STALLRQ0 = Bit!(4, Mutability.w);

            /*********************************************************************
             Stall 1 Request Set
            */
            alias STALLRQ1 = Bit!(5, Mutability.w);

            /*********************************************************************
             Bank 0 Ready Set
            */
            alias BK0RDY = Bit!(6, Mutability.w);

            /*********************************************************************
             Bank 1 Ready Set
            */
            alias BK1RDY = Bit!(7, Mutability.w);
        }
        /*************************************************************************
         DEVICE End Point Pipe Status Set
        */
        final abstract class EPSTATUSSET3 : Register!(0x145)
        {
            /*********************************************************************
             Data Toggle OUT Set
            */
            alias DTGLOUT = Bit!(0, Mutability.w);

            /*********************************************************************
             Data Toggle IN Set
            */
            alias DTGLIN = Bit!(1, Mutability.w);

            /*********************************************************************
             Current Bank Set
            */
            alias CURBK = Bit!(2, Mutability.w);

            /*********************************************************************
             Stall 0 Request Set
            */
            alias STALLRQ0 = Bit!(4, Mutability.w);

            /*********************************************************************
             Stall 1 Request Set
            */
            alias STALLRQ1 = Bit!(5, Mutability.w);

            /*********************************************************************
             Bank 0 Ready Set
            */
            alias BK0RDY = Bit!(6, Mutability.w);

            /*********************************************************************
             Bank 1 Ready Set
            */
            alias BK1RDY = Bit!(7, Mutability.w);
        }
        /*************************************************************************
         DEVICE End Point Pipe Status Set
        */
        final abstract class EPSTATUSSET4 : Register!(0x165)
        {
            /*********************************************************************
             Data Toggle OUT Set
            */
            alias DTGLOUT = Bit!(0, Mutability.w);

            /*********************************************************************
             Data Toggle IN Set
            */
            alias DTGLIN = Bit!(1, Mutability.w);

            /*********************************************************************
             Current Bank Set
            */
            alias CURBK = Bit!(2, Mutability.w);

            /*********************************************************************
             Stall 0 Request Set
            */
            alias STALLRQ0 = Bit!(4, Mutability.w);

            /*********************************************************************
             Stall 1 Request Set
            */
            alias STALLRQ1 = Bit!(5, Mutability.w);

            /*********************************************************************
             Bank 0 Ready Set
            */
            alias BK0RDY = Bit!(6, Mutability.w);

            /*********************************************************************
             Bank 1 Ready Set
            */
            alias BK1RDY = Bit!(7, Mutability.w);
        }
        /*************************************************************************
         DEVICE End Point Pipe Status Set
        */
        final abstract class EPSTATUSSET5 : Register!(0x185)
        {
            /*********************************************************************
             Data Toggle OUT Set
            */
            alias DTGLOUT = Bit!(0, Mutability.w);

            /*********************************************************************
             Data Toggle IN Set
            */
            alias DTGLIN = Bit!(1, Mutability.w);

            /*********************************************************************
             Current Bank Set
            */
            alias CURBK = Bit!(2, Mutability.w);

            /*********************************************************************
             Stall 0 Request Set
            */
            alias STALLRQ0 = Bit!(4, Mutability.w);

            /*********************************************************************
             Stall 1 Request Set
            */
            alias STALLRQ1 = Bit!(5, Mutability.w);

            /*********************************************************************
             Bank 0 Ready Set
            */
            alias BK0RDY = Bit!(6, Mutability.w);

            /*********************************************************************
             Bank 1 Ready Set
            */
            alias BK1RDY = Bit!(7, Mutability.w);
        }
        /*************************************************************************
         DEVICE End Point Pipe Status Set
        */
        final abstract class EPSTATUSSET6 : Register!(0x1a5)
        {
            /*********************************************************************
             Data Toggle OUT Set
            */
            alias DTGLOUT = Bit!(0, Mutability.w);

            /*********************************************************************
             Data Toggle IN Set
            */
            alias DTGLIN = Bit!(1, Mutability.w);

            /*********************************************************************
             Current Bank Set
            */
            alias CURBK = Bit!(2, Mutability.w);

            /*********************************************************************
             Stall 0 Request Set
            */
            alias STALLRQ0 = Bit!(4, Mutability.w);

            /*********************************************************************
             Stall 1 Request Set
            */
            alias STALLRQ1 = Bit!(5, Mutability.w);

            /*********************************************************************
             Bank 0 Ready Set
            */
            alias BK0RDY = Bit!(6, Mutability.w);

            /*********************************************************************
             Bank 1 Ready Set
            */
            alias BK1RDY = Bit!(7, Mutability.w);
        }
        /*************************************************************************
         DEVICE End Point Pipe Status Set
        */
        final abstract class EPSTATUSSET7 : Register!(0x1c5)
        {
            /*********************************************************************
             Data Toggle OUT Set
            */
            alias DTGLOUT = Bit!(0, Mutability.w);

            /*********************************************************************
             Data Toggle IN Set
            */
            alias DTGLIN = Bit!(1, Mutability.w);

            /*********************************************************************
             Current Bank Set
            */
            alias CURBK = Bit!(2, Mutability.w);

            /*********************************************************************
             Stall 0 Request Set
            */
            alias STALLRQ0 = Bit!(4, Mutability.w);

            /*********************************************************************
             Stall 1 Request Set
            */
            alias STALLRQ1 = Bit!(5, Mutability.w);

            /*********************************************************************
             Bank 0 Ready Set
            */
            alias BK0RDY = Bit!(6, Mutability.w);

            /*********************************************************************
             Bank 1 Ready Set
            */
            alias BK1RDY = Bit!(7, Mutability.w);
        }
        /*************************************************************************
         DEVICE End Point Pipe Status Set
        */
        final abstract class EPSTATUSSET8 : Register!(0x1e5)
        {
            /*********************************************************************
             Data Toggle OUT Set
            */
            alias DTGLOUT = Bit!(0, Mutability.w);

            /*********************************************************************
             Data Toggle IN Set
            */
            alias DTGLIN = Bit!(1, Mutability.w);

            /*********************************************************************
             Current Bank Set
            */
            alias CURBK = Bit!(2, Mutability.w);

            /*********************************************************************
             Stall 0 Request Set
            */
            alias STALLRQ0 = Bit!(4, Mutability.w);

            /*********************************************************************
             Stall 1 Request Set
            */
            alias STALLRQ1 = Bit!(5, Mutability.w);

            /*********************************************************************
             Bank 0 Ready Set
            */
            alias BK0RDY = Bit!(6, Mutability.w);

            /*********************************************************************
             Bank 1 Ready Set
            */
            alias BK1RDY = Bit!(7, Mutability.w);
        }

        /*************************************************************************
         Finite State Machine Status
        */
        final abstract class FSMSTATUS : Register!(0xd)
        {
            /*********************************************************************
             Fine State Machine Status
            */
            final abstract class FSMSTATE
            {
                /*****************************************************************
                 FSMSTATE's possible values
                */
                enum Values
                {
                    /*************************************************************
                     OFF (L3). It corresponds to the powered-off, disconnected, and disabled state
                    */
                    _0x1 = 0x1,

                    /*************************************************************
                     ON (L0). It corresponds to the Idle and Active states
                    */
                    _0x2 = 0x2,

                    /*************************************************************
                     SUSPEND (L2)
                    */
                    _0x4 = 0x4,

                    /*************************************************************
                     SLEEP (L1)
                    */
                    _0x8 = 0x8,

                    /*************************************************************
                     DNRESUME. Down Stream Resume.
                    */
                    _0x10 = 0x10,

                    /*************************************************************
                     UPRESUME. Up Stream Resume.
                    */
                    _0x20 = 0x20,

                    /*************************************************************
                     RESET. USB lines Reset.
                    */
                    _0x40 = 0x40,
                }
                mixin BitFieldImplementation!(5, 0, Mutability.r, Values);
            }
        }

        /*************************************************************************
         USB PAD Calibration
        */
        final abstract class PADCAL : Register!(0x28)
        {
            /*********************************************************************
             USB Pad Transp calibration
            */
            alias TRANSP = BitField!(4, 0, Mutability.rw);

            /*********************************************************************
             USB Pad Transn calibration
            */
            alias TRANSN = BitField!(10, 6, Mutability.rw);

            /*********************************************************************
             USB Pad Trim calibration
            */
            alias TRIM = BitField!(14, 12, Mutability.rw);
        }

        /*************************************************************************
         Synchronization Busy
        */
        final abstract class SYNCBUSY : Register!(0x2)
        {
            /*********************************************************************
             Software Reset Synchronization Busy
            */
            alias SWRST = Bit!(0, Mutability.r);

            /*********************************************************************
             Enable Synchronization Busy
            */
            alias ENABLE = Bit!(1, Mutability.r);
        }
    }
    /*****************************************************************************
     USB is Host
    */
    final abstract class HOST
    {
        /*************************************************************************
         Control A
        */
        final abstract class CTRLA : Register!(00)
        {
            /*********************************************************************
             Software Reset
            */
            alias SWRST = Bit!(0, Mutability.rw);

            /*********************************************************************
             Enable
            */
            alias ENABLE = Bit!(1, Mutability.rw);

            /*********************************************************************
             Run in Standby Mode
            */
            alias RUNSTDBY = Bit!(2, Mutability.rw);

            /*********************************************************************
             Operating Mode
            */
            final abstract class MODE
            {
                /*****************************************************************
                 MODE's possible values
                */
                enum Values
                {
                    /*************************************************************
                     Device Mode
                    */
                    DEVICE = 0x0,

                    /*************************************************************
                     Host Mode
                    */
                    HOST = 0x1,
                }
                mixin BitFieldImplementation!(7, 7, Mutability.rw, Values);
            }
        }

        /*************************************************************************
         Descriptor Address
        */
        final abstract class DESCADD : Register!(0x24)
        {
            /*********************************************************************
             Descriptor Address Value
            */
            alias DESCADD = BitField!(31, 0, Mutability.rw);
        }

        /*************************************************************************
         Finite State Machine Status
        */
        final abstract class FSMSTATUS : Register!(0xd)
        {
            /*********************************************************************
             Fine State Machine Status
            */
            final abstract class FSMSTATE
            {
                /*****************************************************************
                 FSMSTATE's possible values
                */
                enum Values
                {
                    /*************************************************************
                     OFF (L3). It corresponds to the powered-off, disconnected, and disabled state
                    */
                    _0x1 = 0x1,

                    /*************************************************************
                     ON (L0). It corresponds to the Idle and Active states
                    */
                    _0x2 = 0x2,

                    /*************************************************************
                     SUSPEND (L2)
                    */
                    _0x4 = 0x4,

                    /*************************************************************
                     SLEEP (L1)
                    */
                    _0x8 = 0x8,

                    /*************************************************************
                     DNRESUME. Down Stream Resume.
                    */
                    _0x10 = 0x10,

                    /*************************************************************
                     UPRESUME. Up Stream Resume.
                    */
                    _0x20 = 0x20,

                    /*************************************************************
                     RESET. USB lines Reset.
                    */
                    _0x40 = 0x40,
                }
                mixin BitFieldImplementation!(5, 0, Mutability.r, Values);
            }
        }

        /*************************************************************************
         HOST Control B
        */
        final abstract class CTRLB : Register!(0x8)
        {
            /*********************************************************************
             Send USB Resume
            */
            alias RESUME = Bit!(1, Mutability.rw);

            /*********************************************************************
             Speed Configuration for Host
            */
            final abstract class SPDCONF
            {
                /*****************************************************************
                 SPDCONF's possible values
                */
                enum Values
                {
                    /*************************************************************
                     Normal mode:the host starts in full-speed mode and performs a high-speed reset to switch to the high speed mode if the downstream peripheralis high-speed capable.
                    */
                    _0x0 = 0x0,

                    /*************************************************************
                     reserved
                    */
                    _0x1 = 0x1,

                    /*************************************************************
                     reserved
                    */
                    _0x2 = 0x2,

                    /*************************************************************
                     Full-speed:the host remains in full-speed mode whatever is the peripheral speed capability. Releveant in UTMI mode only.
                    */
                    _0x3 = 0x3,
                }
                mixin BitFieldImplementation!(3, 2, Mutability.rw, Values);
            }

            /*********************************************************************
             Test mode J
            */
            alias TSTJ = Bit!(5, Mutability.rw);

            /*********************************************************************
             Test mode K
            */
            alias TSTK = Bit!(6, Mutability.rw);

            /*********************************************************************
             Start of Frame Generation Enable
            */
            alias SOFE = Bit!(8, Mutability.rw);

            /*********************************************************************
             Send USB Reset
            */
            alias BUSRESET = Bit!(9, Mutability.rw);

            /*********************************************************************
             VBUS is OK
            */
            alias VBUSOK = Bit!(10, Mutability.rw);

            /*********************************************************************
             Send L1 Resume
            */
            alias L1RESUME = Bit!(11, Mutability.rw);
        }

        /*************************************************************************
         HOST Host Frame Length
        */
        final abstract class FLENHIGH : Register!(0x12)
        {
            /*********************************************************************
             Frame Length
            */
            alias FLENHIGH = BitField!(7, 0, Mutability.r);
        }

        /*************************************************************************
         HOST Host Frame Number
        */
        final abstract class FNUM : Register!(0x10)
        {
            /*********************************************************************
             Micro Frame Number
            */
            alias MFNUM = BitField!(2, 0, Mutability.rw);

            /*********************************************************************
             Frame Number
            */
            alias FNUM = BitField!(13, 3, Mutability.rw);
        }

        /*************************************************************************
         HOST Host Start Of Frame Control
        */
        final abstract class HSOFC : Register!(0xa)
        {
            /*********************************************************************
             Frame Length Control
            */
            alias FLENC = BitField!(3, 0, Mutability.rw);

            /*********************************************************************
             Frame Length Control Enable
            */
            alias FLENCE = Bit!(7, Mutability.rw);
        }

        /*************************************************************************
         HOST Host Interrupt Enable Clear
        */
        final abstract class INTENCLR : Register!(0x14)
        {
            /*********************************************************************
             Host Start Of Frame Interrupt Disable
            */
            alias HSOF = Bit!(2, Mutability.rw);

            /*********************************************************************
             BUS Reset Interrupt Disable
            */
            alias RST = Bit!(3, Mutability.rw);

            /*********************************************************************
             Wake Up Interrupt Disable
            */
            alias WAKEUP = Bit!(4, Mutability.rw);

            /*********************************************************************
             DownStream to Device Interrupt Disable
            */
            alias DNRSM = Bit!(5, Mutability.rw);

            /*********************************************************************
             Upstream Resume from Device Interrupt Disable
            */
            alias UPRSM = Bit!(6, Mutability.rw);

            /*********************************************************************
             Ram Access Interrupt Disable
            */
            alias RAMACER = Bit!(7, Mutability.rw);

            /*********************************************************************
             Device Connection Interrupt Disable
            */
            alias DCONN = Bit!(8, Mutability.rw);

            /*********************************************************************
             Device Disconnection Interrupt Disable
            */
            alias DDISC = Bit!(9, Mutability.rw);
        }

        /*************************************************************************
         HOST Host Interrupt Enable Set
        */
        final abstract class INTENSET : Register!(0x18)
        {
            /*********************************************************************
             Host Start Of Frame Interrupt Enable
            */
            alias HSOF = Bit!(2, Mutability.rw);

            /*********************************************************************
             Bus Reset Interrupt Enable
            */
            alias RST = Bit!(3, Mutability.rw);

            /*********************************************************************
             Wake Up Interrupt Enable
            */
            alias WAKEUP = Bit!(4, Mutability.rw);

            /*********************************************************************
             DownStream to the Device Interrupt Enable
            */
            alias DNRSM = Bit!(5, Mutability.rw);

            /*********************************************************************
             Upstream Resume fromthe device Interrupt Enable
            */
            alias UPRSM = Bit!(6, Mutability.rw);

            /*********************************************************************
             Ram Access Interrupt Enable
            */
            alias RAMACER = Bit!(7, Mutability.rw);

            /*********************************************************************
             Link Power Management Interrupt Enable
            */
            alias DCONN = Bit!(8, Mutability.rw);

            /*********************************************************************
             Device Disconnection Interrupt Enable
            */
            alias DDISC = Bit!(9, Mutability.rw);
        }

        /*************************************************************************
         HOST Host Interrupt Flag
        */
        final abstract class INTFLAG : Register!(0x1c)
        {
            /*********************************************************************
             Host Start Of Frame
            */
            alias HSOF = Bit!(2, Mutability.rw);

            /*********************************************************************
             Bus Reset
            */
            alias RST = Bit!(3, Mutability.rw);

            /*********************************************************************
             Wake Up
            */
            alias WAKEUP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Downstream
            */
            alias DNRSM = Bit!(5, Mutability.rw);

            /*********************************************************************
             Upstream Resume from the Device
            */
            alias UPRSM = Bit!(6, Mutability.rw);

            /*********************************************************************
             Ram Access
            */
            alias RAMACER = Bit!(7, Mutability.rw);

            /*********************************************************************
             Device Connection
            */
            alias DCONN = Bit!(8, Mutability.rw);

            /*********************************************************************
             Device Disconnection
            */
            alias DDISC = Bit!(9, Mutability.rw);
        }

        /*************************************************************************
         HOST Pipe Interrupt Summary
        */
        final abstract class PINTSMRY : Register!(0x20)
        {
            /*********************************************************************
             Pipe 0 Interrupt
            */
            alias EPINT0 = Bit!(0, Mutability.r);

            /*********************************************************************
             Pipe 1 Interrupt
            */
            alias EPINT1 = Bit!(1, Mutability.r);

            /*********************************************************************
             Pipe 2 Interrupt
            */
            alias EPINT2 = Bit!(2, Mutability.r);

            /*********************************************************************
             Pipe 3 Interrupt
            */
            alias EPINT3 = Bit!(3, Mutability.r);

            /*********************************************************************
             Pipe 4 Interrupt
            */
            alias EPINT4 = Bit!(4, Mutability.r);

            /*********************************************************************
             Pipe 5 Interrupt
            */
            alias EPINT5 = Bit!(5, Mutability.r);

            /*********************************************************************
             Pipe 6 Interrupt
            */
            alias EPINT6 = Bit!(6, Mutability.r);

            /*********************************************************************
             Pipe 7 Interrupt
            */
            alias EPINT7 = Bit!(7, Mutability.r);
        }

        /*************************************************************************
         HOST Status
        */
        final abstract class STATUS : Register!(0xc)
        {
            /*********************************************************************
             Speed Status
            */
            alias SPEED = BitField!(3, 2, Mutability.rw);

            /*********************************************************************
             USB Line State Status
            */
            alias LINESTATE = BitField!(7, 6, Mutability.r);
        }

        /*************************************************************************
         HOST Bus Access Period of Pipe
        */
        final abstract class BINTERVAL1 : Register!(0x103)
        {
            /*********************************************************************
             Bit Interval
            */
            alias BITINTERVAL = BitField!(7, 0, Mutability.rw);
        }
        /*************************************************************************
         HOST Bus Access Period of Pipe
        */
        final abstract class BINTERVAL2 : Register!(0x123)
        {
            /*********************************************************************
             Bit Interval
            */
            alias BITINTERVAL = BitField!(7, 0, Mutability.rw);
        }
        /*************************************************************************
         HOST Bus Access Period of Pipe
        */
        final abstract class BINTERVAL3 : Register!(0x143)
        {
            /*********************************************************************
             Bit Interval
            */
            alias BITINTERVAL = BitField!(7, 0, Mutability.rw);
        }
        /*************************************************************************
         HOST Bus Access Period of Pipe
        */
        final abstract class BINTERVAL4 : Register!(0x163)
        {
            /*********************************************************************
             Bit Interval
            */
            alias BITINTERVAL = BitField!(7, 0, Mutability.rw);
        }
        /*************************************************************************
         HOST Bus Access Period of Pipe
        */
        final abstract class BINTERVAL5 : Register!(0x183)
        {
            /*********************************************************************
             Bit Interval
            */
            alias BITINTERVAL = BitField!(7, 0, Mutability.rw);
        }
        /*************************************************************************
         HOST Bus Access Period of Pipe
        */
        final abstract class BINTERVAL6 : Register!(0x1a3)
        {
            /*********************************************************************
             Bit Interval
            */
            alias BITINTERVAL = BitField!(7, 0, Mutability.rw);
        }
        /*************************************************************************
         HOST Bus Access Period of Pipe
        */
        final abstract class BINTERVAL7 : Register!(0x1c3)
        {
            /*********************************************************************
             Bit Interval
            */
            alias BITINTERVAL = BitField!(7, 0, Mutability.rw);
        }
        /*************************************************************************
         HOST Bus Access Period of Pipe
        */
        final abstract class BINTERVAL8 : Register!(0x1e3)
        {
            /*********************************************************************
             Bit Interval
            */
            alias BITINTERVAL = BitField!(7, 0, Mutability.rw);
        }

        /*************************************************************************
         HOST End Point Configuration
        */
        final abstract class PCFG1 : Register!(0x100)
        {
            /*********************************************************************
             Pipe Token
            */
            alias PTOKEN = BitField!(1, 0, Mutability.rw);

            /*********************************************************************
             Pipe Bank
            */
            alias BK = Bit!(2, Mutability.rw);

            /*********************************************************************
             Pipe Type
            */
            alias PTYPE = BitField!(5, 3, Mutability.rw);
        }
        /*************************************************************************
         HOST End Point Configuration
        */
        final abstract class PCFG2 : Register!(0x120)
        {
            /*********************************************************************
             Pipe Token
            */
            alias PTOKEN = BitField!(1, 0, Mutability.rw);

            /*********************************************************************
             Pipe Bank
            */
            alias BK = Bit!(2, Mutability.rw);

            /*********************************************************************
             Pipe Type
            */
            alias PTYPE = BitField!(5, 3, Mutability.rw);
        }
        /*************************************************************************
         HOST End Point Configuration
        */
        final abstract class PCFG3 : Register!(0x140)
        {
            /*********************************************************************
             Pipe Token
            */
            alias PTOKEN = BitField!(1, 0, Mutability.rw);

            /*********************************************************************
             Pipe Bank
            */
            alias BK = Bit!(2, Mutability.rw);

            /*********************************************************************
             Pipe Type
            */
            alias PTYPE = BitField!(5, 3, Mutability.rw);
        }
        /*************************************************************************
         HOST End Point Configuration
        */
        final abstract class PCFG4 : Register!(0x160)
        {
            /*********************************************************************
             Pipe Token
            */
            alias PTOKEN = BitField!(1, 0, Mutability.rw);

            /*********************************************************************
             Pipe Bank
            */
            alias BK = Bit!(2, Mutability.rw);

            /*********************************************************************
             Pipe Type
            */
            alias PTYPE = BitField!(5, 3, Mutability.rw);
        }
        /*************************************************************************
         HOST End Point Configuration
        */
        final abstract class PCFG5 : Register!(0x180)
        {
            /*********************************************************************
             Pipe Token
            */
            alias PTOKEN = BitField!(1, 0, Mutability.rw);

            /*********************************************************************
             Pipe Bank
            */
            alias BK = Bit!(2, Mutability.rw);

            /*********************************************************************
             Pipe Type
            */
            alias PTYPE = BitField!(5, 3, Mutability.rw);
        }
        /*************************************************************************
         HOST End Point Configuration
        */
        final abstract class PCFG6 : Register!(0x1a0)
        {
            /*********************************************************************
             Pipe Token
            */
            alias PTOKEN = BitField!(1, 0, Mutability.rw);

            /*********************************************************************
             Pipe Bank
            */
            alias BK = Bit!(2, Mutability.rw);

            /*********************************************************************
             Pipe Type
            */
            alias PTYPE = BitField!(5, 3, Mutability.rw);
        }
        /*************************************************************************
         HOST End Point Configuration
        */
        final abstract class PCFG7 : Register!(0x1c0)
        {
            /*********************************************************************
             Pipe Token
            */
            alias PTOKEN = BitField!(1, 0, Mutability.rw);

            /*********************************************************************
             Pipe Bank
            */
            alias BK = Bit!(2, Mutability.rw);

            /*********************************************************************
             Pipe Type
            */
            alias PTYPE = BitField!(5, 3, Mutability.rw);
        }
        /*************************************************************************
         HOST End Point Configuration
        */
        final abstract class PCFG8 : Register!(0x1e0)
        {
            /*********************************************************************
             Pipe Token
            */
            alias PTOKEN = BitField!(1, 0, Mutability.rw);

            /*********************************************************************
             Pipe Bank
            */
            alias BK = Bit!(2, Mutability.rw);

            /*********************************************************************
             Pipe Type
            */
            alias PTYPE = BitField!(5, 3, Mutability.rw);
        }

        /*************************************************************************
         HOST Pipe Interrupt Flag Clear
        */
        final abstract class PINTENCLR1 : Register!(0x108)
        {
            /*********************************************************************
             Transfer Complete 0 Disable
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1 Disable
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow Interrupt Disable
            */
            alias TRFAIL = Bit!(2, Mutability.rw);

            /*********************************************************************
             Pipe Error Interrupt Disable
            */
            alias PERR = Bit!(3, Mutability.rw);

            /*********************************************************************
             Transmit  Setup Interrupt Disable
            */
            alias TXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall Inetrrupt Disable
            */
            alias STALL = Bit!(5, Mutability.rw);
        }
        /*************************************************************************
         HOST Pipe Interrupt Flag Clear
        */
        final abstract class PINTENCLR2 : Register!(0x128)
        {
            /*********************************************************************
             Transfer Complete 0 Disable
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1 Disable
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow Interrupt Disable
            */
            alias TRFAIL = Bit!(2, Mutability.rw);

            /*********************************************************************
             Pipe Error Interrupt Disable
            */
            alias PERR = Bit!(3, Mutability.rw);

            /*********************************************************************
             Transmit  Setup Interrupt Disable
            */
            alias TXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall Inetrrupt Disable
            */
            alias STALL = Bit!(5, Mutability.rw);
        }
        /*************************************************************************
         HOST Pipe Interrupt Flag Clear
        */
        final abstract class PINTENCLR3 : Register!(0x148)
        {
            /*********************************************************************
             Transfer Complete 0 Disable
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1 Disable
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow Interrupt Disable
            */
            alias TRFAIL = Bit!(2, Mutability.rw);

            /*********************************************************************
             Pipe Error Interrupt Disable
            */
            alias PERR = Bit!(3, Mutability.rw);

            /*********************************************************************
             Transmit  Setup Interrupt Disable
            */
            alias TXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall Inetrrupt Disable
            */
            alias STALL = Bit!(5, Mutability.rw);
        }
        /*************************************************************************
         HOST Pipe Interrupt Flag Clear
        */
        final abstract class PINTENCLR4 : Register!(0x168)
        {
            /*********************************************************************
             Transfer Complete 0 Disable
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1 Disable
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow Interrupt Disable
            */
            alias TRFAIL = Bit!(2, Mutability.rw);

            /*********************************************************************
             Pipe Error Interrupt Disable
            */
            alias PERR = Bit!(3, Mutability.rw);

            /*********************************************************************
             Transmit  Setup Interrupt Disable
            */
            alias TXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall Inetrrupt Disable
            */
            alias STALL = Bit!(5, Mutability.rw);
        }
        /*************************************************************************
         HOST Pipe Interrupt Flag Clear
        */
        final abstract class PINTENCLR5 : Register!(0x188)
        {
            /*********************************************************************
             Transfer Complete 0 Disable
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1 Disable
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow Interrupt Disable
            */
            alias TRFAIL = Bit!(2, Mutability.rw);

            /*********************************************************************
             Pipe Error Interrupt Disable
            */
            alias PERR = Bit!(3, Mutability.rw);

            /*********************************************************************
             Transmit  Setup Interrupt Disable
            */
            alias TXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall Inetrrupt Disable
            */
            alias STALL = Bit!(5, Mutability.rw);
        }
        /*************************************************************************
         HOST Pipe Interrupt Flag Clear
        */
        final abstract class PINTENCLR6 : Register!(0x1a8)
        {
            /*********************************************************************
             Transfer Complete 0 Disable
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1 Disable
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow Interrupt Disable
            */
            alias TRFAIL = Bit!(2, Mutability.rw);

            /*********************************************************************
             Pipe Error Interrupt Disable
            */
            alias PERR = Bit!(3, Mutability.rw);

            /*********************************************************************
             Transmit  Setup Interrupt Disable
            */
            alias TXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall Inetrrupt Disable
            */
            alias STALL = Bit!(5, Mutability.rw);
        }
        /*************************************************************************
         HOST Pipe Interrupt Flag Clear
        */
        final abstract class PINTENCLR7 : Register!(0x1c8)
        {
            /*********************************************************************
             Transfer Complete 0 Disable
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1 Disable
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow Interrupt Disable
            */
            alias TRFAIL = Bit!(2, Mutability.rw);

            /*********************************************************************
             Pipe Error Interrupt Disable
            */
            alias PERR = Bit!(3, Mutability.rw);

            /*********************************************************************
             Transmit  Setup Interrupt Disable
            */
            alias TXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall Inetrrupt Disable
            */
            alias STALL = Bit!(5, Mutability.rw);
        }
        /*************************************************************************
         HOST Pipe Interrupt Flag Clear
        */
        final abstract class PINTENCLR8 : Register!(0x1e8)
        {
            /*********************************************************************
             Transfer Complete 0 Disable
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1 Disable
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow Interrupt Disable
            */
            alias TRFAIL = Bit!(2, Mutability.rw);

            /*********************************************************************
             Pipe Error Interrupt Disable
            */
            alias PERR = Bit!(3, Mutability.rw);

            /*********************************************************************
             Transmit  Setup Interrupt Disable
            */
            alias TXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall Inetrrupt Disable
            */
            alias STALL = Bit!(5, Mutability.rw);
        }

        /*************************************************************************
         HOST Pipe Interrupt Flag Set
        */
        final abstract class PINTENSET1 : Register!(0x109)
        {
            /*********************************************************************
             Transfer Complete 0 Interrupt Enable
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1 Interrupt Enable
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow Interrupt Enable
            */
            alias TRFAIL = Bit!(2, Mutability.rw);

            /*********************************************************************
             Pipe Error Interrupt Enable
            */
            alias PERR = Bit!(3, Mutability.rw);

            /*********************************************************************
             Transmit  Setup Interrupt Enable
            */
            alias TXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall Interrupt Enable
            */
            alias STALL = Bit!(5, Mutability.rw);
        }
        /*************************************************************************
         HOST Pipe Interrupt Flag Set
        */
        final abstract class PINTENSET2 : Register!(0x129)
        {
            /*********************************************************************
             Transfer Complete 0 Interrupt Enable
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1 Interrupt Enable
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow Interrupt Enable
            */
            alias TRFAIL = Bit!(2, Mutability.rw);

            /*********************************************************************
             Pipe Error Interrupt Enable
            */
            alias PERR = Bit!(3, Mutability.rw);

            /*********************************************************************
             Transmit  Setup Interrupt Enable
            */
            alias TXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall Interrupt Enable
            */
            alias STALL = Bit!(5, Mutability.rw);
        }
        /*************************************************************************
         HOST Pipe Interrupt Flag Set
        */
        final abstract class PINTENSET3 : Register!(0x149)
        {
            /*********************************************************************
             Transfer Complete 0 Interrupt Enable
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1 Interrupt Enable
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow Interrupt Enable
            */
            alias TRFAIL = Bit!(2, Mutability.rw);

            /*********************************************************************
             Pipe Error Interrupt Enable
            */
            alias PERR = Bit!(3, Mutability.rw);

            /*********************************************************************
             Transmit  Setup Interrupt Enable
            */
            alias TXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall Interrupt Enable
            */
            alias STALL = Bit!(5, Mutability.rw);
        }
        /*************************************************************************
         HOST Pipe Interrupt Flag Set
        */
        final abstract class PINTENSET4 : Register!(0x169)
        {
            /*********************************************************************
             Transfer Complete 0 Interrupt Enable
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1 Interrupt Enable
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow Interrupt Enable
            */
            alias TRFAIL = Bit!(2, Mutability.rw);

            /*********************************************************************
             Pipe Error Interrupt Enable
            */
            alias PERR = Bit!(3, Mutability.rw);

            /*********************************************************************
             Transmit  Setup Interrupt Enable
            */
            alias TXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall Interrupt Enable
            */
            alias STALL = Bit!(5, Mutability.rw);
        }
        /*************************************************************************
         HOST Pipe Interrupt Flag Set
        */
        final abstract class PINTENSET5 : Register!(0x189)
        {
            /*********************************************************************
             Transfer Complete 0 Interrupt Enable
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1 Interrupt Enable
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow Interrupt Enable
            */
            alias TRFAIL = Bit!(2, Mutability.rw);

            /*********************************************************************
             Pipe Error Interrupt Enable
            */
            alias PERR = Bit!(3, Mutability.rw);

            /*********************************************************************
             Transmit  Setup Interrupt Enable
            */
            alias TXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall Interrupt Enable
            */
            alias STALL = Bit!(5, Mutability.rw);
        }
        /*************************************************************************
         HOST Pipe Interrupt Flag Set
        */
        final abstract class PINTENSET6 : Register!(0x1a9)
        {
            /*********************************************************************
             Transfer Complete 0 Interrupt Enable
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1 Interrupt Enable
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow Interrupt Enable
            */
            alias TRFAIL = Bit!(2, Mutability.rw);

            /*********************************************************************
             Pipe Error Interrupt Enable
            */
            alias PERR = Bit!(3, Mutability.rw);

            /*********************************************************************
             Transmit  Setup Interrupt Enable
            */
            alias TXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall Interrupt Enable
            */
            alias STALL = Bit!(5, Mutability.rw);
        }
        /*************************************************************************
         HOST Pipe Interrupt Flag Set
        */
        final abstract class PINTENSET7 : Register!(0x1c9)
        {
            /*********************************************************************
             Transfer Complete 0 Interrupt Enable
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1 Interrupt Enable
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow Interrupt Enable
            */
            alias TRFAIL = Bit!(2, Mutability.rw);

            /*********************************************************************
             Pipe Error Interrupt Enable
            */
            alias PERR = Bit!(3, Mutability.rw);

            /*********************************************************************
             Transmit  Setup Interrupt Enable
            */
            alias TXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall Interrupt Enable
            */
            alias STALL = Bit!(5, Mutability.rw);
        }
        /*************************************************************************
         HOST Pipe Interrupt Flag Set
        */
        final abstract class PINTENSET8 : Register!(0x1e9)
        {
            /*********************************************************************
             Transfer Complete 0 Interrupt Enable
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1 Interrupt Enable
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow Interrupt Enable
            */
            alias TRFAIL = Bit!(2, Mutability.rw);

            /*********************************************************************
             Pipe Error Interrupt Enable
            */
            alias PERR = Bit!(3, Mutability.rw);

            /*********************************************************************
             Transmit  Setup Interrupt Enable
            */
            alias TXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall Interrupt Enable
            */
            alias STALL = Bit!(5, Mutability.rw);
        }

        /*************************************************************************
         HOST Pipe Interrupt Flag
        */
        final abstract class PINTFLAG1 : Register!(0x107)
        {
            /*********************************************************************
             Transfer Complete 0 Interrupt Flag
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1 Interrupt Flag
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow Interrupt Flag
            */
            alias TRFAIL = Bit!(2, Mutability.rw);

            /*********************************************************************
             Pipe Error Interrupt Flag
            */
            alias PERR = Bit!(3, Mutability.rw);

            /*********************************************************************
             Transmit  Setup Interrupt Flag
            */
            alias TXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall Interrupt Flag
            */
            alias STALL = Bit!(5, Mutability.rw);
        }
        /*************************************************************************
         HOST Pipe Interrupt Flag
        */
        final abstract class PINTFLAG2 : Register!(0x127)
        {
            /*********************************************************************
             Transfer Complete 0 Interrupt Flag
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1 Interrupt Flag
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow Interrupt Flag
            */
            alias TRFAIL = Bit!(2, Mutability.rw);

            /*********************************************************************
             Pipe Error Interrupt Flag
            */
            alias PERR = Bit!(3, Mutability.rw);

            /*********************************************************************
             Transmit  Setup Interrupt Flag
            */
            alias TXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall Interrupt Flag
            */
            alias STALL = Bit!(5, Mutability.rw);
        }
        /*************************************************************************
         HOST Pipe Interrupt Flag
        */
        final abstract class PINTFLAG3 : Register!(0x147)
        {
            /*********************************************************************
             Transfer Complete 0 Interrupt Flag
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1 Interrupt Flag
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow Interrupt Flag
            */
            alias TRFAIL = Bit!(2, Mutability.rw);

            /*********************************************************************
             Pipe Error Interrupt Flag
            */
            alias PERR = Bit!(3, Mutability.rw);

            /*********************************************************************
             Transmit  Setup Interrupt Flag
            */
            alias TXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall Interrupt Flag
            */
            alias STALL = Bit!(5, Mutability.rw);
        }
        /*************************************************************************
         HOST Pipe Interrupt Flag
        */
        final abstract class PINTFLAG4 : Register!(0x167)
        {
            /*********************************************************************
             Transfer Complete 0 Interrupt Flag
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1 Interrupt Flag
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow Interrupt Flag
            */
            alias TRFAIL = Bit!(2, Mutability.rw);

            /*********************************************************************
             Pipe Error Interrupt Flag
            */
            alias PERR = Bit!(3, Mutability.rw);

            /*********************************************************************
             Transmit  Setup Interrupt Flag
            */
            alias TXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall Interrupt Flag
            */
            alias STALL = Bit!(5, Mutability.rw);
        }
        /*************************************************************************
         HOST Pipe Interrupt Flag
        */
        final abstract class PINTFLAG5 : Register!(0x187)
        {
            /*********************************************************************
             Transfer Complete 0 Interrupt Flag
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1 Interrupt Flag
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow Interrupt Flag
            */
            alias TRFAIL = Bit!(2, Mutability.rw);

            /*********************************************************************
             Pipe Error Interrupt Flag
            */
            alias PERR = Bit!(3, Mutability.rw);

            /*********************************************************************
             Transmit  Setup Interrupt Flag
            */
            alias TXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall Interrupt Flag
            */
            alias STALL = Bit!(5, Mutability.rw);
        }
        /*************************************************************************
         HOST Pipe Interrupt Flag
        */
        final abstract class PINTFLAG6 : Register!(0x1a7)
        {
            /*********************************************************************
             Transfer Complete 0 Interrupt Flag
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1 Interrupt Flag
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow Interrupt Flag
            */
            alias TRFAIL = Bit!(2, Mutability.rw);

            /*********************************************************************
             Pipe Error Interrupt Flag
            */
            alias PERR = Bit!(3, Mutability.rw);

            /*********************************************************************
             Transmit  Setup Interrupt Flag
            */
            alias TXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall Interrupt Flag
            */
            alias STALL = Bit!(5, Mutability.rw);
        }
        /*************************************************************************
         HOST Pipe Interrupt Flag
        */
        final abstract class PINTFLAG7 : Register!(0x1c7)
        {
            /*********************************************************************
             Transfer Complete 0 Interrupt Flag
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1 Interrupt Flag
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow Interrupt Flag
            */
            alias TRFAIL = Bit!(2, Mutability.rw);

            /*********************************************************************
             Pipe Error Interrupt Flag
            */
            alias PERR = Bit!(3, Mutability.rw);

            /*********************************************************************
             Transmit  Setup Interrupt Flag
            */
            alias TXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall Interrupt Flag
            */
            alias STALL = Bit!(5, Mutability.rw);
        }
        /*************************************************************************
         HOST Pipe Interrupt Flag
        */
        final abstract class PINTFLAG8 : Register!(0x1e7)
        {
            /*********************************************************************
             Transfer Complete 0 Interrupt Flag
            */
            alias TRCPT0 = Bit!(0, Mutability.rw);

            /*********************************************************************
             Transfer Complete 1 Interrupt Flag
            */
            alias TRCPT1 = Bit!(1, Mutability.rw);

            /*********************************************************************
             Error Flow Interrupt Flag
            */
            alias TRFAIL = Bit!(2, Mutability.rw);

            /*********************************************************************
             Pipe Error Interrupt Flag
            */
            alias PERR = Bit!(3, Mutability.rw);

            /*********************************************************************
             Transmit  Setup Interrupt Flag
            */
            alias TXSTP = Bit!(4, Mutability.rw);

            /*********************************************************************
             Stall Interrupt Flag
            */
            alias STALL = Bit!(5, Mutability.rw);
        }

        /*************************************************************************
         HOST End Point Pipe Status
        */
        final abstract class PSTATUS1 : Register!(0x106)
        {
            /*********************************************************************
             Data Toggle
            */
            alias DTGL = Bit!(0, Mutability.r);

            /*********************************************************************
             Current Bank
            */
            alias CURBK = Bit!(2, Mutability.r);

            /*********************************************************************
             Pipe Freeze
            */
            alias PFREEZE = Bit!(4, Mutability.r);

            /*********************************************************************
             Bank 0 ready
            */
            alias BK0RDY = Bit!(6, Mutability.r);

            /*********************************************************************
             Bank 1 ready
            */
            alias BK1RDY = Bit!(7, Mutability.r);
        }
        /*************************************************************************
         HOST End Point Pipe Status
        */
        final abstract class PSTATUS2 : Register!(0x126)
        {
            /*********************************************************************
             Data Toggle
            */
            alias DTGL = Bit!(0, Mutability.r);

            /*********************************************************************
             Current Bank
            */
            alias CURBK = Bit!(2, Mutability.r);

            /*********************************************************************
             Pipe Freeze
            */
            alias PFREEZE = Bit!(4, Mutability.r);

            /*********************************************************************
             Bank 0 ready
            */
            alias BK0RDY = Bit!(6, Mutability.r);

            /*********************************************************************
             Bank 1 ready
            */
            alias BK1RDY = Bit!(7, Mutability.r);
        }
        /*************************************************************************
         HOST End Point Pipe Status
        */
        final abstract class PSTATUS3 : Register!(0x146)
        {
            /*********************************************************************
             Data Toggle
            */
            alias DTGL = Bit!(0, Mutability.r);

            /*********************************************************************
             Current Bank
            */
            alias CURBK = Bit!(2, Mutability.r);

            /*********************************************************************
             Pipe Freeze
            */
            alias PFREEZE = Bit!(4, Mutability.r);

            /*********************************************************************
             Bank 0 ready
            */
            alias BK0RDY = Bit!(6, Mutability.r);

            /*********************************************************************
             Bank 1 ready
            */
            alias BK1RDY = Bit!(7, Mutability.r);
        }
        /*************************************************************************
         HOST End Point Pipe Status
        */
        final abstract class PSTATUS4 : Register!(0x166)
        {
            /*********************************************************************
             Data Toggle
            */
            alias DTGL = Bit!(0, Mutability.r);

            /*********************************************************************
             Current Bank
            */
            alias CURBK = Bit!(2, Mutability.r);

            /*********************************************************************
             Pipe Freeze
            */
            alias PFREEZE = Bit!(4, Mutability.r);

            /*********************************************************************
             Bank 0 ready
            */
            alias BK0RDY = Bit!(6, Mutability.r);

            /*********************************************************************
             Bank 1 ready
            */
            alias BK1RDY = Bit!(7, Mutability.r);
        }
        /*************************************************************************
         HOST End Point Pipe Status
        */
        final abstract class PSTATUS5 : Register!(0x186)
        {
            /*********************************************************************
             Data Toggle
            */
            alias DTGL = Bit!(0, Mutability.r);

            /*********************************************************************
             Current Bank
            */
            alias CURBK = Bit!(2, Mutability.r);

            /*********************************************************************
             Pipe Freeze
            */
            alias PFREEZE = Bit!(4, Mutability.r);

            /*********************************************************************
             Bank 0 ready
            */
            alias BK0RDY = Bit!(6, Mutability.r);

            /*********************************************************************
             Bank 1 ready
            */
            alias BK1RDY = Bit!(7, Mutability.r);
        }
        /*************************************************************************
         HOST End Point Pipe Status
        */
        final abstract class PSTATUS6 : Register!(0x1a6)
        {
            /*********************************************************************
             Data Toggle
            */
            alias DTGL = Bit!(0, Mutability.r);

            /*********************************************************************
             Current Bank
            */
            alias CURBK = Bit!(2, Mutability.r);

            /*********************************************************************
             Pipe Freeze
            */
            alias PFREEZE = Bit!(4, Mutability.r);

            /*********************************************************************
             Bank 0 ready
            */
            alias BK0RDY = Bit!(6, Mutability.r);

            /*********************************************************************
             Bank 1 ready
            */
            alias BK1RDY = Bit!(7, Mutability.r);
        }
        /*************************************************************************
         HOST End Point Pipe Status
        */
        final abstract class PSTATUS7 : Register!(0x1c6)
        {
            /*********************************************************************
             Data Toggle
            */
            alias DTGL = Bit!(0, Mutability.r);

            /*********************************************************************
             Current Bank
            */
            alias CURBK = Bit!(2, Mutability.r);

            /*********************************************************************
             Pipe Freeze
            */
            alias PFREEZE = Bit!(4, Mutability.r);

            /*********************************************************************
             Bank 0 ready
            */
            alias BK0RDY = Bit!(6, Mutability.r);

            /*********************************************************************
             Bank 1 ready
            */
            alias BK1RDY = Bit!(7, Mutability.r);
        }
        /*************************************************************************
         HOST End Point Pipe Status
        */
        final abstract class PSTATUS8 : Register!(0x1e6)
        {
            /*********************************************************************
             Data Toggle
            */
            alias DTGL = Bit!(0, Mutability.r);

            /*********************************************************************
             Current Bank
            */
            alias CURBK = Bit!(2, Mutability.r);

            /*********************************************************************
             Pipe Freeze
            */
            alias PFREEZE = Bit!(4, Mutability.r);

            /*********************************************************************
             Bank 0 ready
            */
            alias BK0RDY = Bit!(6, Mutability.r);

            /*********************************************************************
             Bank 1 ready
            */
            alias BK1RDY = Bit!(7, Mutability.r);
        }

        /*************************************************************************
         HOST End Point Pipe Status Clear
        */
        final abstract class PSTATUSCLR1 : Register!(0x104)
        {
            /*********************************************************************
             Data Toggle clear
            */
            alias DTGL = Bit!(0, Mutability.r);

            /*********************************************************************
             Curren Bank clear
            */
            alias CURBK = Bit!(2, Mutability.w);

            /*********************************************************************
             Pipe Freeze Clear
            */
            alias PFREEZE = Bit!(4, Mutability.w);

            /*********************************************************************
             Bank 0 Ready Clear
            */
            alias BK0RDY = Bit!(6, Mutability.w);

            /*********************************************************************
             Bank 1 Ready Clear
            */
            alias BK1RDY = Bit!(7, Mutability.w);
        }
        /*************************************************************************
         HOST End Point Pipe Status Clear
        */
        final abstract class PSTATUSCLR2 : Register!(0x124)
        {
            /*********************************************************************
             Data Toggle clear
            */
            alias DTGL = Bit!(0, Mutability.r);

            /*********************************************************************
             Curren Bank clear
            */
            alias CURBK = Bit!(2, Mutability.w);

            /*********************************************************************
             Pipe Freeze Clear
            */
            alias PFREEZE = Bit!(4, Mutability.w);

            /*********************************************************************
             Bank 0 Ready Clear
            */
            alias BK0RDY = Bit!(6, Mutability.w);

            /*********************************************************************
             Bank 1 Ready Clear
            */
            alias BK1RDY = Bit!(7, Mutability.w);
        }
        /*************************************************************************
         HOST End Point Pipe Status Clear
        */
        final abstract class PSTATUSCLR3 : Register!(0x144)
        {
            /*********************************************************************
             Data Toggle clear
            */
            alias DTGL = Bit!(0, Mutability.r);

            /*********************************************************************
             Curren Bank clear
            */
            alias CURBK = Bit!(2, Mutability.w);

            /*********************************************************************
             Pipe Freeze Clear
            */
            alias PFREEZE = Bit!(4, Mutability.w);

            /*********************************************************************
             Bank 0 Ready Clear
            */
            alias BK0RDY = Bit!(6, Mutability.w);

            /*********************************************************************
             Bank 1 Ready Clear
            */
            alias BK1RDY = Bit!(7, Mutability.w);
        }
        /*************************************************************************
         HOST End Point Pipe Status Clear
        */
        final abstract class PSTATUSCLR4 : Register!(0x164)
        {
            /*********************************************************************
             Data Toggle clear
            */
            alias DTGL = Bit!(0, Mutability.r);

            /*********************************************************************
             Curren Bank clear
            */
            alias CURBK = Bit!(2, Mutability.w);

            /*********************************************************************
             Pipe Freeze Clear
            */
            alias PFREEZE = Bit!(4, Mutability.w);

            /*********************************************************************
             Bank 0 Ready Clear
            */
            alias BK0RDY = Bit!(6, Mutability.w);

            /*********************************************************************
             Bank 1 Ready Clear
            */
            alias BK1RDY = Bit!(7, Mutability.w);
        }
        /*************************************************************************
         HOST End Point Pipe Status Clear
        */
        final abstract class PSTATUSCLR5 : Register!(0x184)
        {
            /*********************************************************************
             Data Toggle clear
            */
            alias DTGL = Bit!(0, Mutability.r);

            /*********************************************************************
             Curren Bank clear
            */
            alias CURBK = Bit!(2, Mutability.w);

            /*********************************************************************
             Pipe Freeze Clear
            */
            alias PFREEZE = Bit!(4, Mutability.w);

            /*********************************************************************
             Bank 0 Ready Clear
            */
            alias BK0RDY = Bit!(6, Mutability.w);

            /*********************************************************************
             Bank 1 Ready Clear
            */
            alias BK1RDY = Bit!(7, Mutability.w);
        }
        /*************************************************************************
         HOST End Point Pipe Status Clear
        */
        final abstract class PSTATUSCLR6 : Register!(0x1a4)
        {
            /*********************************************************************
             Data Toggle clear
            */
            alias DTGL = Bit!(0, Mutability.r);

            /*********************************************************************
             Curren Bank clear
            */
            alias CURBK = Bit!(2, Mutability.w);

            /*********************************************************************
             Pipe Freeze Clear
            */
            alias PFREEZE = Bit!(4, Mutability.w);

            /*********************************************************************
             Bank 0 Ready Clear
            */
            alias BK0RDY = Bit!(6, Mutability.w);

            /*********************************************************************
             Bank 1 Ready Clear
            */
            alias BK1RDY = Bit!(7, Mutability.w);
        }
        /*************************************************************************
         HOST End Point Pipe Status Clear
        */
        final abstract class PSTATUSCLR7 : Register!(0x1c4)
        {
            /*********************************************************************
             Data Toggle clear
            */
            alias DTGL = Bit!(0, Mutability.r);

            /*********************************************************************
             Curren Bank clear
            */
            alias CURBK = Bit!(2, Mutability.w);

            /*********************************************************************
             Pipe Freeze Clear
            */
            alias PFREEZE = Bit!(4, Mutability.w);

            /*********************************************************************
             Bank 0 Ready Clear
            */
            alias BK0RDY = Bit!(6, Mutability.w);

            /*********************************************************************
             Bank 1 Ready Clear
            */
            alias BK1RDY = Bit!(7, Mutability.w);
        }
        /*************************************************************************
         HOST End Point Pipe Status Clear
        */
        final abstract class PSTATUSCLR8 : Register!(0x1e4)
        {
            /*********************************************************************
             Data Toggle clear
            */
            alias DTGL = Bit!(0, Mutability.r);

            /*********************************************************************
             Curren Bank clear
            */
            alias CURBK = Bit!(2, Mutability.w);

            /*********************************************************************
             Pipe Freeze Clear
            */
            alias PFREEZE = Bit!(4, Mutability.w);

            /*********************************************************************
             Bank 0 Ready Clear
            */
            alias BK0RDY = Bit!(6, Mutability.w);

            /*********************************************************************
             Bank 1 Ready Clear
            */
            alias BK1RDY = Bit!(7, Mutability.w);
        }

        /*************************************************************************
         HOST End Point Pipe Status Set
        */
        final abstract class PSTATUSSET1 : Register!(0x105)
        {
            /*********************************************************************
             Data Toggle Set
            */
            alias DTGL = Bit!(0, Mutability.w);

            /*********************************************************************
             Current Bank Set
            */
            alias CURBK = Bit!(2, Mutability.w);

            /*********************************************************************
             Pipe Freeze Set
            */
            alias PFREEZE = Bit!(4, Mutability.w);

            /*********************************************************************
             Bank 0 Ready Set
            */
            alias BK0RDY = Bit!(6, Mutability.w);

            /*********************************************************************
             Bank 1 Ready Set
            */
            alias BK1RDY = Bit!(7, Mutability.w);
        }
        /*************************************************************************
         HOST End Point Pipe Status Set
        */
        final abstract class PSTATUSSET2 : Register!(0x125)
        {
            /*********************************************************************
             Data Toggle Set
            */
            alias DTGL = Bit!(0, Mutability.w);

            /*********************************************************************
             Current Bank Set
            */
            alias CURBK = Bit!(2, Mutability.w);

            /*********************************************************************
             Pipe Freeze Set
            */
            alias PFREEZE = Bit!(4, Mutability.w);

            /*********************************************************************
             Bank 0 Ready Set
            */
            alias BK0RDY = Bit!(6, Mutability.w);

            /*********************************************************************
             Bank 1 Ready Set
            */
            alias BK1RDY = Bit!(7, Mutability.w);
        }
        /*************************************************************************
         HOST End Point Pipe Status Set
        */
        final abstract class PSTATUSSET3 : Register!(0x145)
        {
            /*********************************************************************
             Data Toggle Set
            */
            alias DTGL = Bit!(0, Mutability.w);

            /*********************************************************************
             Current Bank Set
            */
            alias CURBK = Bit!(2, Mutability.w);

            /*********************************************************************
             Pipe Freeze Set
            */
            alias PFREEZE = Bit!(4, Mutability.w);

            /*********************************************************************
             Bank 0 Ready Set
            */
            alias BK0RDY = Bit!(6, Mutability.w);

            /*********************************************************************
             Bank 1 Ready Set
            */
            alias BK1RDY = Bit!(7, Mutability.w);
        }
        /*************************************************************************
         HOST End Point Pipe Status Set
        */
        final abstract class PSTATUSSET4 : Register!(0x165)
        {
            /*********************************************************************
             Data Toggle Set
            */
            alias DTGL = Bit!(0, Mutability.w);

            /*********************************************************************
             Current Bank Set
            */
            alias CURBK = Bit!(2, Mutability.w);

            /*********************************************************************
             Pipe Freeze Set
            */
            alias PFREEZE = Bit!(4, Mutability.w);

            /*********************************************************************
             Bank 0 Ready Set
            */
            alias BK0RDY = Bit!(6, Mutability.w);

            /*********************************************************************
             Bank 1 Ready Set
            */
            alias BK1RDY = Bit!(7, Mutability.w);
        }
        /*************************************************************************
         HOST End Point Pipe Status Set
        */
        final abstract class PSTATUSSET5 : Register!(0x185)
        {
            /*********************************************************************
             Data Toggle Set
            */
            alias DTGL = Bit!(0, Mutability.w);

            /*********************************************************************
             Current Bank Set
            */
            alias CURBK = Bit!(2, Mutability.w);

            /*********************************************************************
             Pipe Freeze Set
            */
            alias PFREEZE = Bit!(4, Mutability.w);

            /*********************************************************************
             Bank 0 Ready Set
            */
            alias BK0RDY = Bit!(6, Mutability.w);

            /*********************************************************************
             Bank 1 Ready Set
            */
            alias BK1RDY = Bit!(7, Mutability.w);
        }
        /*************************************************************************
         HOST End Point Pipe Status Set
        */
        final abstract class PSTATUSSET6 : Register!(0x1a5)
        {
            /*********************************************************************
             Data Toggle Set
            */
            alias DTGL = Bit!(0, Mutability.w);

            /*********************************************************************
             Current Bank Set
            */
            alias CURBK = Bit!(2, Mutability.w);

            /*********************************************************************
             Pipe Freeze Set
            */
            alias PFREEZE = Bit!(4, Mutability.w);

            /*********************************************************************
             Bank 0 Ready Set
            */
            alias BK0RDY = Bit!(6, Mutability.w);

            /*********************************************************************
             Bank 1 Ready Set
            */
            alias BK1RDY = Bit!(7, Mutability.w);
        }
        /*************************************************************************
         HOST End Point Pipe Status Set
        */
        final abstract class PSTATUSSET7 : Register!(0x1c5)
        {
            /*********************************************************************
             Data Toggle Set
            */
            alias DTGL = Bit!(0, Mutability.w);

            /*********************************************************************
             Current Bank Set
            */
            alias CURBK = Bit!(2, Mutability.w);

            /*********************************************************************
             Pipe Freeze Set
            */
            alias PFREEZE = Bit!(4, Mutability.w);

            /*********************************************************************
             Bank 0 Ready Set
            */
            alias BK0RDY = Bit!(6, Mutability.w);

            /*********************************************************************
             Bank 1 Ready Set
            */
            alias BK1RDY = Bit!(7, Mutability.w);
        }
        /*************************************************************************
         HOST End Point Pipe Status Set
        */
        final abstract class PSTATUSSET8 : Register!(0x1e5)
        {
            /*********************************************************************
             Data Toggle Set
            */
            alias DTGL = Bit!(0, Mutability.w);

            /*********************************************************************
             Current Bank Set
            */
            alias CURBK = Bit!(2, Mutability.w);

            /*********************************************************************
             Pipe Freeze Set
            */
            alias PFREEZE = Bit!(4, Mutability.w);

            /*********************************************************************
             Bank 0 Ready Set
            */
            alias BK0RDY = Bit!(6, Mutability.w);

            /*********************************************************************
             Bank 1 Ready Set
            */
            alias BK1RDY = Bit!(7, Mutability.w);
        }

        /*************************************************************************
         USB PAD Calibration
        */
        final abstract class PADCAL : Register!(0x28)
        {
            /*********************************************************************
             USB Pad Transp calibration
            */
            alias TRANSP = BitField!(4, 0, Mutability.rw);

            /*********************************************************************
             USB Pad Transn calibration
            */
            alias TRANSN = BitField!(10, 6, Mutability.rw);

            /*********************************************************************
             USB Pad Trim calibration
            */
            alias TRIM = BitField!(14, 12, Mutability.rw);
        }

        /*************************************************************************
         Synchronization Busy
        */
        final abstract class SYNCBUSY : Register!(0x2)
        {
            /*********************************************************************
             Software Reset Synchronization Busy
            */
            alias SWRST = Bit!(0, Mutability.r);

            /*********************************************************************
             Enable Synchronization Busy
            */
            alias ENABLE = Bit!(1, Mutability.r);
        }
    }
}
