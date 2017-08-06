module stm32f7x9.rcc;

import stm32f7x9.mmio;

/*****************************************************************************
 Reset and clock control
*/
final abstract class RCC : Peripheral!(0x40023800)
{
    /*************************************************************************
     clock control register
    */
    final abstract class CR : Register!(00)
    {
        /*********************************************************************
         PLLI2S clock ready flag
        */
        alias PLLI2SRDY = Bit!(27, Mutability.r);

        /*********************************************************************
         PLLI2S enable
        */
        alias PLLI2SON = Bit!(26, Mutability.rw);

        /*********************************************************************
         Main PLL (PLL) clock ready
              flag
        */
        alias PLLRDY = Bit!(25, Mutability.r);

        /*********************************************************************
         Main PLL (PLL) enable
        */
        alias PLLON = Bit!(24, Mutability.rw);

        /*********************************************************************
         Clock security system
              enable
        */
        alias CSSON = Bit!(19, Mutability.rw);

        /*********************************************************************
         HSE clock bypass
        */
        alias HSEBYP = Bit!(18, Mutability.rw);

        /*********************************************************************
         HSE clock ready flag
        */
        alias HSERDY = Bit!(17, Mutability.r);

        /*********************************************************************
         HSE clock enable
        */
        alias HSEON = Bit!(16, Mutability.rw);

        /*********************************************************************
         Internal high-speed clock
              calibration
        */
        alias HSICAL = BitField!(15, 8, Mutability.r);

        /*********************************************************************
         Internal high-speed clock
              trimming
        */
        alias HSITRIM = BitField!(7, 3, Mutability.rw);

        /*********************************************************************
         Internal high-speed clock ready
              flag
        */
        alias HSIRDY = Bit!(1, Mutability.r);

        /*********************************************************************
         Internal high-speed clock
              enable
        */
        alias HSION = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     PLL configuration register
    */
    final abstract class PLLCFGR : Register!(0x4)
    {
        /*********************************************************************
         Main PLL (PLL) division factor for USB
              OTG FS, SDIO and random number generator
              clocks
        */
        alias PLLQ3 = Bit!(27, Mutability.rw);

        /*********************************************************************
         Main PLL (PLL) division factor for USB
              OTG FS, SDIO and random number generator
              clocks
        */
        alias PLLQ2 = Bit!(26, Mutability.rw);

        /*********************************************************************
         Main PLL (PLL) division factor for USB
              OTG FS, SDIO and random number generator
              clocks
        */
        alias PLLQ1 = Bit!(25, Mutability.rw);

        /*********************************************************************
         Main PLL (PLL) division factor for USB
              OTG FS, SDIO and random number generator
              clocks
        */
        alias PLLQ0 = Bit!(24, Mutability.rw);

        /*********************************************************************
         Main PLL(PLL) and audio PLL (PLLI2S)
              entry clock source
        */
        alias PLLSRC = Bit!(22, Mutability.rw);

        /*********************************************************************
         Main PLL (PLL) division factor for main
              system clock
        */
        alias PLLP1 = Bit!(17, Mutability.rw);

        /*********************************************************************
         Main PLL (PLL) division factor for main
              system clock
        */
        alias PLLP0 = Bit!(16, Mutability.rw);

        /*********************************************************************
         Main PLL (PLL) multiplication factor for
              VCO
        */
        alias PLLN8 = Bit!(14, Mutability.rw);

        /*********************************************************************
         Main PLL (PLL) multiplication factor for
              VCO
        */
        alias PLLN7 = Bit!(13, Mutability.rw);

        /*********************************************************************
         Main PLL (PLL) multiplication factor for
              VCO
        */
        alias PLLN6 = Bit!(12, Mutability.rw);

        /*********************************************************************
         Main PLL (PLL) multiplication factor for
              VCO
        */
        alias PLLN5 = Bit!(11, Mutability.rw);

        /*********************************************************************
         Main PLL (PLL) multiplication factor for
              VCO
        */
        alias PLLN4 = Bit!(10, Mutability.rw);

        /*********************************************************************
         Main PLL (PLL) multiplication factor for
              VCO
        */
        alias PLLN3 = Bit!(9, Mutability.rw);

        /*********************************************************************
         Main PLL (PLL) multiplication factor for
              VCO
        */
        alias PLLN2 = Bit!(8, Mutability.rw);

        /*********************************************************************
         Main PLL (PLL) multiplication factor for
              VCO
        */
        alias PLLN1 = Bit!(7, Mutability.rw);

        /*********************************************************************
         Main PLL (PLL) multiplication factor for
              VCO
        */
        alias PLLN0 = Bit!(6, Mutability.rw);

        /*********************************************************************
         Division factor for the main PLL (PLL)
              and audio PLL (PLLI2S) input clock
        */
        alias PLLM5 = Bit!(5, Mutability.rw);

        /*********************************************************************
         Division factor for the main PLL (PLL)
              and audio PLL (PLLI2S) input clock
        */
        alias PLLM4 = Bit!(4, Mutability.rw);

        /*********************************************************************
         Division factor for the main PLL (PLL)
              and audio PLL (PLLI2S) input clock
        */
        alias PLLM3 = Bit!(3, Mutability.rw);

        /*********************************************************************
         Division factor for the main PLL (PLL)
              and audio PLL (PLLI2S) input clock
        */
        alias PLLM2 = Bit!(2, Mutability.rw);

        /*********************************************************************
         Division factor for the main PLL (PLL)
              and audio PLL (PLLI2S) input clock
        */
        alias PLLM1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         Division factor for the main PLL (PLL)
              and audio PLL (PLLI2S) input clock
        */
        alias PLLM0 = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     clock configuration register
    */
    final abstract class CFGR : Register!(0x8)
    {
        /*********************************************************************
         Microcontroller clock output
              2
        */
        alias MCO2 = BitField!(31, 30, Mutability.rw);

        /*********************************************************************
         MCO2 prescaler
        */
        alias MCO2PRE = BitField!(29, 27, Mutability.rw);

        /*********************************************************************
         MCO1 prescaler
        */
        alias MCO1PRE = BitField!(26, 24, Mutability.rw);

        /*********************************************************************
         I2S clock selection
        */
        alias I2SSRC = Bit!(23, Mutability.rw);

        /*********************************************************************
         Microcontroller clock output
              1
        */
        alias MCO1 = BitField!(22, 21, Mutability.rw);

        /*********************************************************************
         HSE division factor for RTC
              clock
        */
        alias RTCPRE = BitField!(20, 16, Mutability.rw);

        /*********************************************************************
         APB high-speed prescaler
              (APB2)
        */
        alias PPRE2 = BitField!(15, 13, Mutability.rw);

        /*********************************************************************
         APB Low speed prescaler
              (APB1)
        */
        alias PPRE1 = BitField!(12, 10, Mutability.rw);

        /*********************************************************************
         AHB prescaler
        */
        alias HPRE = BitField!(7, 4, Mutability.rw);

        /*********************************************************************
         System clock switch status
        */
        alias SWS1 = Bit!(3, Mutability.r);

        /*********************************************************************
         System clock switch status
        */
        alias SWS0 = Bit!(2, Mutability.r);

        /*********************************************************************
         System clock switch
        */
        alias SW1 = Bit!(1, Mutability.rw);

        /*********************************************************************
         System clock switch
        */
        alias SW0 = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     clock interrupt register
    */
    final abstract class CIR : Register!(0xc)
    {
        /*********************************************************************
         Clock security system interrupt
              clear
        */
        alias CSSC = Bit!(23, Mutability.w);

        /*********************************************************************
         PLLSAI Ready Interrupt
              Clear
        */
        alias PLLSAIRDYC = Bit!(22, Mutability.w);

        /*********************************************************************
         PLLI2S ready interrupt
              clear
        */
        alias PLLI2SRDYC = Bit!(21, Mutability.w);

        /*********************************************************************
         Main PLL(PLL) ready interrupt
              clear
        */
        alias PLLRDYC = Bit!(20, Mutability.w);

        /*********************************************************************
         HSE ready interrupt clear
        */
        alias HSERDYC = Bit!(19, Mutability.w);

        /*********************************************************************
         HSI ready interrupt clear
        */
        alias HSIRDYC = Bit!(18, Mutability.w);

        /*********************************************************************
         LSE ready interrupt clear
        */
        alias LSERDYC = Bit!(17, Mutability.w);

        /*********************************************************************
         LSI ready interrupt clear
        */
        alias LSIRDYC = Bit!(16, Mutability.w);

        /*********************************************************************
         PLLSAI Ready Interrupt
              Enable
        */
        alias PLLSAIRDYIE = Bit!(14, Mutability.rw);

        /*********************************************************************
         PLLI2S ready interrupt
              enable
        */
        alias PLLI2SRDYIE = Bit!(13, Mutability.rw);

        /*********************************************************************
         Main PLL (PLL) ready interrupt
              enable
        */
        alias PLLRDYIE = Bit!(12, Mutability.rw);

        /*********************************************************************
         HSE ready interrupt enable
        */
        alias HSERDYIE = Bit!(11, Mutability.rw);

        /*********************************************************************
         HSI ready interrupt enable
        */
        alias HSIRDYIE = Bit!(10, Mutability.rw);

        /*********************************************************************
         LSE ready interrupt enable
        */
        alias LSERDYIE = Bit!(9, Mutability.rw);

        /*********************************************************************
         LSI ready interrupt enable
        */
        alias LSIRDYIE = Bit!(8, Mutability.rw);

        /*********************************************************************
         Clock security system interrupt
              flag
        */
        alias CSSF = Bit!(7, Mutability.r);

        /*********************************************************************
         PLLSAI ready interrupt
              flag
        */
        alias PLLSAIRDYF = Bit!(6, Mutability.r);

        /*********************************************************************
         PLLI2S ready interrupt
              flag
        */
        alias PLLI2SRDYF = Bit!(5, Mutability.r);

        /*********************************************************************
         Main PLL (PLL) ready interrupt
              flag
        */
        alias PLLRDYF = Bit!(4, Mutability.r);

        /*********************************************************************
         HSE ready interrupt flag
        */
        alias HSERDYF = Bit!(3, Mutability.r);

        /*********************************************************************
         HSI ready interrupt flag
        */
        alias HSIRDYF = Bit!(2, Mutability.r);

        /*********************************************************************
         LSE ready interrupt flag
        */
        alias LSERDYF = Bit!(1, Mutability.r);

        /*********************************************************************
         LSI ready interrupt flag
        */
        alias LSIRDYF = Bit!(0, Mutability.r);
    }

    /*************************************************************************
     AHB1 peripheral reset register
    */
    final abstract class AHB1RSTR : Register!(0x10)
    {
        /*********************************************************************
         USB OTG HS module reset
        */
        alias OTGHSRST = Bit!(29, Mutability.rw);

        /*********************************************************************
         Ethernet MAC reset
        */
        alias ETHMACRST = Bit!(25, Mutability.rw);

        /*********************************************************************
         DMA2D reset
        */
        alias DMA2DRST = Bit!(23, Mutability.rw);

        /*********************************************************************
         DMA2 reset
        */
        alias DMA2RST = Bit!(22, Mutability.rw);

        /*********************************************************************
         DMA2 reset
        */
        alias DMA1RST = Bit!(21, Mutability.rw);

        /*********************************************************************
         CRC reset
        */
        alias CRCRST = Bit!(12, Mutability.rw);

        /*********************************************************************
         IO port K reset
        */
        alias GPIOKRST = Bit!(10, Mutability.rw);

        /*********************************************************************
         IO port J reset
        */
        alias GPIOJRST = Bit!(9, Mutability.rw);

        /*********************************************************************
         IO port I reset
        */
        alias GPIOIRST = Bit!(8, Mutability.rw);

        /*********************************************************************
         IO port H reset
        */
        alias GPIOHRST = Bit!(7, Mutability.rw);

        /*********************************************************************
         IO port G reset
        */
        alias GPIOGRST = Bit!(6, Mutability.rw);

        /*********************************************************************
         IO port F reset
        */
        alias GPIOFRST = Bit!(5, Mutability.rw);

        /*********************************************************************
         IO port E reset
        */
        alias GPIOERST = Bit!(4, Mutability.rw);

        /*********************************************************************
         IO port D reset
        */
        alias GPIODRST = Bit!(3, Mutability.rw);

        /*********************************************************************
         IO port C reset
        */
        alias GPIOCRST = Bit!(2, Mutability.rw);

        /*********************************************************************
         IO port B reset
        */
        alias GPIOBRST = Bit!(1, Mutability.rw);

        /*********************************************************************
         IO port A reset
        */
        alias GPIOARST = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     AHB2 peripheral reset register
    */
    final abstract class AHB2RSTR : Register!(0x14)
    {
        /*********************************************************************
         USB OTG FS module reset
        */
        alias OTGFSRST = Bit!(7, Mutability.rw);

        /*********************************************************************
         Random number generator module
              reset
        */
        alias RNGRST = Bit!(6, Mutability.rw);

        /*********************************************************************
         Hash module reset
        */
        alias HSAHRST = Bit!(5, Mutability.rw);

        /*********************************************************************
         Cryptographic module reset
        */
        alias CRYPRST = Bit!(4, Mutability.rw);

        /*********************************************************************
         Camera interface reset
        */
        alias DCMIRST = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     AHB3 peripheral reset register
    */
    final abstract class AHB3RSTR : Register!(0x18)
    {
        /*********************************************************************
         Flexible memory controller module
              reset
        */
        alias FMCRST = Bit!(0, Mutability.rw);

        /*********************************************************************
         Quad SPI memory controller
              reset
        */
        alias QSPIRST = Bit!(1, Mutability.rw);
    }

    /*************************************************************************
     APB1 peripheral reset register
    */
    final abstract class APB1RSTR : Register!(0x20)
    {
        /*********************************************************************
         TIM2 reset
        */
        alias TIM2RST = Bit!(0, Mutability.rw);

        /*********************************************************************
         TIM3 reset
        */
        alias TIM3RST = Bit!(1, Mutability.rw);

        /*********************************************************************
         TIM4 reset
        */
        alias TIM4RST = Bit!(2, Mutability.rw);

        /*********************************************************************
         TIM5 reset
        */
        alias TIM5RST = Bit!(3, Mutability.rw);

        /*********************************************************************
         TIM6 reset
        */
        alias TIM6RST = Bit!(4, Mutability.rw);

        /*********************************************************************
         TIM7 reset
        */
        alias TIM7RST = Bit!(5, Mutability.rw);

        /*********************************************************************
         TIM12 reset
        */
        alias TIM12RST = Bit!(6, Mutability.rw);

        /*********************************************************************
         TIM13 reset
        */
        alias TIM13RST = Bit!(7, Mutability.rw);

        /*********************************************************************
         TIM14 reset
        */
        alias TIM14RST = Bit!(8, Mutability.rw);

        /*********************************************************************
         Window watchdog reset
        */
        alias WWDGRST = Bit!(11, Mutability.rw);

        /*********************************************************************
         SPI 2 reset
        */
        alias SPI2RST = Bit!(14, Mutability.rw);

        /*********************************************************************
         SPI 3 reset
        */
        alias SPI3RST = Bit!(15, Mutability.rw);

        /*********************************************************************
         USART 2 reset
        */
        alias UART2RST = Bit!(17, Mutability.rw);

        /*********************************************************************
         USART 3 reset
        */
        alias UART3RST = Bit!(18, Mutability.rw);

        /*********************************************************************
         USART 4 reset
        */
        alias UART4RST = Bit!(19, Mutability.rw);

        /*********************************************************************
         USART 5 reset
        */
        alias UART5RST = Bit!(20, Mutability.rw);

        /*********************************************************************
         I2C 1 reset
        */
        alias I2C1RST = Bit!(21, Mutability.rw);

        /*********************************************************************
         I2C 2 reset
        */
        alias I2C2RST = Bit!(22, Mutability.rw);

        /*********************************************************************
         I2C3 reset
        */
        alias I2C3RST = Bit!(23, Mutability.rw);

        /*********************************************************************
         CAN1 reset
        */
        alias CAN1RST = Bit!(25, Mutability.rw);

        /*********************************************************************
         CAN2 reset
        */
        alias CAN2RST = Bit!(26, Mutability.rw);

        /*********************************************************************
         Power interface reset
        */
        alias PWRRST = Bit!(28, Mutability.rw);

        /*********************************************************************
         DAC reset
        */
        alias DACRST = Bit!(29, Mutability.rw);

        /*********************************************************************
         UART7 reset
        */
        alias UART7RST = Bit!(30, Mutability.rw);

        /*********************************************************************
         UART8 reset
        */
        alias UART8RST = Bit!(31, Mutability.rw);

        /*********************************************************************
         SPDIF-RX reset
        */
        alias SPDIFRXRST = Bit!(16, Mutability.rw);

        /*********************************************************************
         HDMI-CEC reset
        */
        alias CECRST = Bit!(27, Mutability.rw);

        /*********************************************************************
         Low power timer 1 reset
        */
        alias LPTIM1RST = Bit!(9, Mutability.rw);

        /*********************************************************************
         I2C 4 reset
        */
        alias I2C4RST = Bit!(24, Mutability.rw);
    }

    /*************************************************************************
     APB2 peripheral reset register
    */
    final abstract class APB2RSTR : Register!(0x24)
    {
        /*********************************************************************
         TIM1 reset
        */
        alias TIM1RST = Bit!(0, Mutability.rw);

        /*********************************************************************
         TIM8 reset
        */
        alias TIM8RST = Bit!(1, Mutability.rw);

        /*********************************************************************
         USART1 reset
        */
        alias USART1RST = Bit!(4, Mutability.rw);

        /*********************************************************************
         USART6 reset
        */
        alias USART6RST = Bit!(5, Mutability.rw);

        /*********************************************************************
         ADC interface reset (common to all
              ADCs)
        */
        alias ADCRST = Bit!(8, Mutability.rw);

        /*********************************************************************
         SPI 1 reset
        */
        alias SPI1RST = Bit!(12, Mutability.rw);

        /*********************************************************************
         SPI4 reset
        */
        alias SPI4RST = Bit!(13, Mutability.rw);

        /*********************************************************************
         System configuration controller
              reset
        */
        alias SYSCFGRST = Bit!(14, Mutability.rw);

        /*********************************************************************
         TIM9 reset
        */
        alias TIM9RST = Bit!(16, Mutability.rw);

        /*********************************************************************
         TIM10 reset
        */
        alias TIM10RST = Bit!(17, Mutability.rw);

        /*********************************************************************
         TIM11 reset
        */
        alias TIM11RST = Bit!(18, Mutability.rw);

        /*********************************************************************
         SPI5 reset
        */
        alias SPI5RST = Bit!(20, Mutability.rw);

        /*********************************************************************
         SPI6 reset
        */
        alias SPI6RST = Bit!(21, Mutability.rw);

        /*********************************************************************
         SAI1 reset
        */
        alias SAI1RST = Bit!(22, Mutability.rw);

        /*********************************************************************
         LTDC reset
        */
        alias LTDCRST = Bit!(26, Mutability.rw);

        /*********************************************************************
         SAI2 reset
        */
        alias SAI2RST = Bit!(23, Mutability.rw);

        /*********************************************************************
         SDMMC1 reset
        */
        alias SDMMC1RST = Bit!(11, Mutability.rw);
    }

    /*************************************************************************
     AHB1 peripheral clock register
    */
    final abstract class AHB1ENR : Register!(0x30)
    {
        /*********************************************************************
         USB OTG HSULPI clock
              enable
        */
        alias OTGHSULPIEN = Bit!(30, Mutability.rw);

        /*********************************************************************
         USB OTG HS clock enable
        */
        alias OTGHSEN = Bit!(29, Mutability.rw);

        /*********************************************************************
         Ethernet PTP clock enable
        */
        alias ETHMACPTPEN = Bit!(28, Mutability.rw);

        /*********************************************************************
         Ethernet Reception clock
              enable
        */
        alias ETHMACRXEN = Bit!(27, Mutability.rw);

        /*********************************************************************
         Ethernet Transmission clock
              enable
        */
        alias ETHMACTXEN = Bit!(26, Mutability.rw);

        /*********************************************************************
         Ethernet MAC clock enable
        */
        alias ETHMACEN = Bit!(25, Mutability.rw);

        /*********************************************************************
         DMA2D clock enable
        */
        alias DMA2DEN = Bit!(23, Mutability.rw);

        /*********************************************************************
         DMA2 clock enable
        */
        alias DMA2EN = Bit!(22, Mutability.rw);

        /*********************************************************************
         DMA1 clock enable
        */
        alias DMA1EN = Bit!(21, Mutability.rw);

        /*********************************************************************
         CCM data RAM clock enable
        */
        alias CCMDATARAMEN = Bit!(20, Mutability.rw);

        /*********************************************************************
         Backup SRAM interface clock
              enable
        */
        alias BKPSRAMEN = Bit!(18, Mutability.rw);

        /*********************************************************************
         CRC clock enable
        */
        alias CRCEN = Bit!(12, Mutability.rw);

        /*********************************************************************
         IO port K clock enable
        */
        alias GPIOKEN = Bit!(10, Mutability.rw);

        /*********************************************************************
         IO port J clock enable
        */
        alias GPIOJEN = Bit!(9, Mutability.rw);

        /*********************************************************************
         IO port I clock enable
        */
        alias GPIOIEN = Bit!(8, Mutability.rw);

        /*********************************************************************
         IO port H clock enable
        */
        alias GPIOHEN = Bit!(7, Mutability.rw);

        /*********************************************************************
         IO port G clock enable
        */
        alias GPIOGEN = Bit!(6, Mutability.rw);

        /*********************************************************************
         IO port F clock enable
        */
        alias GPIOFEN = Bit!(5, Mutability.rw);

        /*********************************************************************
         IO port E clock enable
        */
        alias GPIOEEN = Bit!(4, Mutability.rw);

        /*********************************************************************
         IO port D clock enable
        */
        alias GPIODEN = Bit!(3, Mutability.rw);

        /*********************************************************************
         IO port C clock enable
        */
        alias GPIOCEN = Bit!(2, Mutability.rw);

        /*********************************************************************
         IO port B clock enable
        */
        alias GPIOBEN = Bit!(1, Mutability.rw);

        /*********************************************************************
         IO port A clock enable
        */
        alias GPIOAEN = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     AHB2 peripheral clock enable
          register
    */
    final abstract class AHB2ENR : Register!(0x34)
    {
        /*********************************************************************
         USB OTG FS clock enable
        */
        alias OTGFSEN = Bit!(7, Mutability.rw);

        /*********************************************************************
         Random number generator clock
              enable
        */
        alias RNGEN = Bit!(6, Mutability.rw);

        /*********************************************************************
         Hash modules clock enable
        */
        alias HASHEN = Bit!(5, Mutability.rw);

        /*********************************************************************
         Cryptographic modules clock
              enable
        */
        alias CRYPEN = Bit!(4, Mutability.rw);

        /*********************************************************************
         Camera interface enable
        */
        alias DCMIEN = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     AHB3 peripheral clock enable
          register
    */
    final abstract class AHB3ENR : Register!(0x38)
    {
        /*********************************************************************
         Flexible memory controller module clock
              enable
        */
        alias FMCEN = Bit!(0, Mutability.rw);

        /*********************************************************************
         Quad SPI memory controller clock
              enable
        */
        alias QSPIEN = Bit!(1, Mutability.rw);
    }

    /*************************************************************************
     APB1 peripheral clock enable
          register
    */
    final abstract class APB1ENR : Register!(0x40)
    {
        /*********************************************************************
         TIM2 clock enable
        */
        alias TIM2EN = Bit!(0, Mutability.rw);

        /*********************************************************************
         TIM3 clock enable
        */
        alias TIM3EN = Bit!(1, Mutability.rw);

        /*********************************************************************
         TIM4 clock enable
        */
        alias TIM4EN = Bit!(2, Mutability.rw);

        /*********************************************************************
         TIM5 clock enable
        */
        alias TIM5EN = Bit!(3, Mutability.rw);

        /*********************************************************************
         TIM6 clock enable
        */
        alias TIM6EN = Bit!(4, Mutability.rw);

        /*********************************************************************
         TIM7 clock enable
        */
        alias TIM7EN = Bit!(5, Mutability.rw);

        /*********************************************************************
         TIM12 clock enable
        */
        alias TIM12EN = Bit!(6, Mutability.rw);

        /*********************************************************************
         TIM13 clock enable
        */
        alias TIM13EN = Bit!(7, Mutability.rw);

        /*********************************************************************
         TIM14 clock enable
        */
        alias TIM14EN = Bit!(8, Mutability.rw);

        /*********************************************************************
         Window watchdog clock
              enable
        */
        alias WWDGEN = Bit!(11, Mutability.rw);

        /*********************************************************************
         SPI2 clock enable
        */
        alias SPI2EN = Bit!(14, Mutability.rw);

        /*********************************************************************
         SPI3 clock enable
        */
        alias SPI3EN = Bit!(15, Mutability.rw);

        /*********************************************************************
         USART 2 clock enable
        */
        alias USART2EN = Bit!(17, Mutability.rw);

        /*********************************************************************
         USART3 clock enable
        */
        alias USART3EN = Bit!(18, Mutability.rw);

        /*********************************************************************
         UART4 clock enable
        */
        alias UART4EN = Bit!(19, Mutability.rw);

        /*********************************************************************
         UART5 clock enable
        */
        alias UART5EN = Bit!(20, Mutability.rw);

        /*********************************************************************
         I2C1 clock enable
        */
        alias I2C1EN = Bit!(21, Mutability.rw);

        /*********************************************************************
         I2C2 clock enable
        */
        alias I2C2EN = Bit!(22, Mutability.rw);

        /*********************************************************************
         I2C3 clock enable
        */
        alias I2C3EN = Bit!(23, Mutability.rw);

        /*********************************************************************
         CAN 1 clock enable
        */
        alias CAN1EN = Bit!(25, Mutability.rw);

        /*********************************************************************
         CAN 2 clock enable
        */
        alias CAN2EN = Bit!(26, Mutability.rw);

        /*********************************************************************
         Power interface clock
              enable
        */
        alias PWREN = Bit!(28, Mutability.rw);

        /*********************************************************************
         DAC interface clock enable
        */
        alias DACEN = Bit!(29, Mutability.rw);

        /*********************************************************************
         UART7 clock enable
        */
        alias UART7ENR = Bit!(30, Mutability.rw);

        /*********************************************************************
         UART8 clock enable
        */
        alias UART8ENR = Bit!(31, Mutability.rw);

        /*********************************************************************
         SPDIF-RX clock enable
        */
        alias SPDIFRXEN = Bit!(16, Mutability.rw);

        /*********************************************************************
         HDMI-CEN clock enable
        */
        alias CECEN = Bit!(27, Mutability.rw);

        /*********************************************************************
         Low power timer 1 clock
              enable
        */
        alias LPTMI1EN = Bit!(9, Mutability.rw);

        /*********************************************************************
         I2C4 clock enable
        */
        alias I2C4EN = Bit!(24, Mutability.rw);
    }

    /*************************************************************************
     APB2 peripheral clock enable
          register
    */
    final abstract class APB2ENR : Register!(0x44)
    {
        /*********************************************************************
         TIM1 clock enable
        */
        alias TIM1EN = Bit!(0, Mutability.rw);

        /*********************************************************************
         TIM8 clock enable
        */
        alias TIM8EN = Bit!(1, Mutability.rw);

        /*********************************************************************
         USART1 clock enable
        */
        alias USART1EN = Bit!(4, Mutability.rw);

        /*********************************************************************
         USART6 clock enable
        */
        alias USART6EN = Bit!(5, Mutability.rw);

        /*********************************************************************
         ADC1 clock enable
        */
        alias ADC1EN = Bit!(8, Mutability.rw);

        /*********************************************************************
         ADC2 clock enable
        */
        alias ADC2EN = Bit!(9, Mutability.rw);

        /*********************************************************************
         ADC3 clock enable
        */
        alias ADC3EN = Bit!(10, Mutability.rw);

        /*********************************************************************
         SPI1 clock enable
        */
        alias SPI1EN = Bit!(12, Mutability.rw);

        /*********************************************************************
         SPI4 clock enable
        */
        alias SPI4ENR = Bit!(13, Mutability.rw);

        /*********************************************************************
         System configuration controller clock
              enable
        */
        alias SYSCFGEN = Bit!(14, Mutability.rw);

        /*********************************************************************
         TIM9 clock enable
        */
        alias TIM9EN = Bit!(16, Mutability.rw);

        /*********************************************************************
         TIM10 clock enable
        */
        alias TIM10EN = Bit!(17, Mutability.rw);

        /*********************************************************************
         TIM11 clock enable
        */
        alias TIM11EN = Bit!(18, Mutability.rw);

        /*********************************************************************
         SPI5 clock enable
        */
        alias SPI5ENR = Bit!(20, Mutability.rw);

        /*********************************************************************
         SPI6 clock enable
        */
        alias SPI6ENR = Bit!(21, Mutability.rw);

        /*********************************************************************
         SAI1 clock enable
        */
        alias SAI1EN = Bit!(22, Mutability.rw);

        /*********************************************************************
         LTDC clock enable
        */
        alias LTDCEN = Bit!(26, Mutability.rw);

        /*********************************************************************
         SAI2 clock enable
        */
        alias SAI2EN = Bit!(23, Mutability.rw);

        /*********************************************************************
         SDMMC1 clock enable
        */
        alias SDMMC1EN = Bit!(11, Mutability.rw);
    }

    /*************************************************************************
     AHB1 peripheral clock enable in low power
          mode register
    */
    final abstract class AHB1LPENR : Register!(0x50)
    {
        /*********************************************************************
         IO port A clock enable during sleep
              mode
        */
        alias GPIOALPEN = Bit!(0, Mutability.rw);

        /*********************************************************************
         IO port B clock enable during Sleep
              mode
        */
        alias GPIOBLPEN = Bit!(1, Mutability.rw);

        /*********************************************************************
         IO port C clock enable during Sleep
              mode
        */
        alias GPIOCLPEN = Bit!(2, Mutability.rw);

        /*********************************************************************
         IO port D clock enable during Sleep
              mode
        */
        alias GPIODLPEN = Bit!(3, Mutability.rw);

        /*********************************************************************
         IO port E clock enable during Sleep
              mode
        */
        alias GPIOELPEN = Bit!(4, Mutability.rw);

        /*********************************************************************
         IO port F clock enable during Sleep
              mode
        */
        alias GPIOFLPEN = Bit!(5, Mutability.rw);

        /*********************************************************************
         IO port G clock enable during Sleep
              mode
        */
        alias GPIOGLPEN = Bit!(6, Mutability.rw);

        /*********************************************************************
         IO port H clock enable during Sleep
              mode
        */
        alias GPIOHLPEN = Bit!(7, Mutability.rw);

        /*********************************************************************
         IO port I clock enable during Sleep
              mode
        */
        alias GPIOILPEN = Bit!(8, Mutability.rw);

        /*********************************************************************
         IO port J clock enable during Sleep
              mode
        */
        alias GPIOJLPEN = Bit!(9, Mutability.rw);

        /*********************************************************************
         IO port K clock enable during Sleep
              mode
        */
        alias GPIOKLPEN = Bit!(10, Mutability.rw);

        /*********************************************************************
         CRC clock enable during Sleep
              mode
        */
        alias CRCLPEN = Bit!(12, Mutability.rw);

        /*********************************************************************
         Flash interface clock enable during
              Sleep mode
        */
        alias FLITFLPEN = Bit!(15, Mutability.rw);

        /*********************************************************************
         SRAM 1interface clock enable during
              Sleep mode
        */
        alias SRAM1LPEN = Bit!(16, Mutability.rw);

        /*********************************************************************
         SRAM 2 interface clock enable during
              Sleep mode
        */
        alias SRAM2LPEN = Bit!(17, Mutability.rw);

        /*********************************************************************
         Backup SRAM interface clock enable
              during Sleep mode
        */
        alias BKPSRAMLPEN = Bit!(18, Mutability.rw);

        /*********************************************************************
         SRAM 3 interface clock enable during
              Sleep mode
        */
        alias SRAM3LPEN = Bit!(19, Mutability.rw);

        /*********************************************************************
         DMA1 clock enable during Sleep
              mode
        */
        alias DMA1LPEN = Bit!(21, Mutability.rw);

        /*********************************************************************
         DMA2 clock enable during Sleep
              mode
        */
        alias DMA2LPEN = Bit!(22, Mutability.rw);

        /*********************************************************************
         DMA2D clock enable during Sleep
              mode
        */
        alias DMA2DLPEN = Bit!(23, Mutability.rw);

        /*********************************************************************
         Ethernet MAC clock enable during Sleep
              mode
        */
        alias ETHMACLPEN = Bit!(25, Mutability.rw);

        /*********************************************************************
         Ethernet transmission clock enable
              during Sleep mode
        */
        alias ETHMACTXLPEN = Bit!(26, Mutability.rw);

        /*********************************************************************
         Ethernet reception clock enable during
              Sleep mode
        */
        alias ETHMACRXLPEN = Bit!(27, Mutability.rw);

        /*********************************************************************
         Ethernet PTP clock enable during Sleep
              mode
        */
        alias ETHMACPTPLPEN = Bit!(28, Mutability.rw);

        /*********************************************************************
         USB OTG HS clock enable during Sleep
              mode
        */
        alias OTGHSLPEN = Bit!(29, Mutability.rw);

        /*********************************************************************
         USB OTG HS ULPI clock enable during
              Sleep mode
        */
        alias OTGHSULPILPEN = Bit!(30, Mutability.rw);
    }

    /*************************************************************************
     AHB2 peripheral clock enable in low power
          mode register
    */
    final abstract class AHB2LPENR : Register!(0x54)
    {
        /*********************************************************************
         USB OTG FS clock enable during Sleep
              mode
        */
        alias OTGFSLPEN = Bit!(7, Mutability.rw);

        /*********************************************************************
         Random number generator clock enable
              during Sleep mode
        */
        alias RNGLPEN = Bit!(6, Mutability.rw);

        /*********************************************************************
         Hash modules clock enable during Sleep
              mode
        */
        alias HASHLPEN = Bit!(5, Mutability.rw);

        /*********************************************************************
         Cryptography modules clock enable during
              Sleep mode
        */
        alias CRYPLPEN = Bit!(4, Mutability.rw);

        /*********************************************************************
         Camera interface enable during Sleep
              mode
        */
        alias DCMILPEN = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     AHB3 peripheral clock enable in low power
          mode register
    */
    final abstract class AHB3LPENR : Register!(0x58)
    {
        /*********************************************************************
         Flexible memory controller module clock
              enable during Sleep mode
        */
        alias FMCLPEN = Bit!(0, Mutability.rw);

        /*********************************************************************
         Quand SPI memory controller clock enable
              during Sleep mode
        */
        alias QSPILPEN = Bit!(1, Mutability.rw);
    }

    /*************************************************************************
     APB1 peripheral clock enable in low power
          mode register
    */
    final abstract class APB1LPENR : Register!(0x60)
    {
        /*********************************************************************
         TIM2 clock enable during Sleep
              mode
        */
        alias TIM2LPEN = Bit!(0, Mutability.rw);

        /*********************************************************************
         TIM3 clock enable during Sleep
              mode
        */
        alias TIM3LPEN = Bit!(1, Mutability.rw);

        /*********************************************************************
         TIM4 clock enable during Sleep
              mode
        */
        alias TIM4LPEN = Bit!(2, Mutability.rw);

        /*********************************************************************
         TIM5 clock enable during Sleep
              mode
        */
        alias TIM5LPEN = Bit!(3, Mutability.rw);

        /*********************************************************************
         TIM6 clock enable during Sleep
              mode
        */
        alias TIM6LPEN = Bit!(4, Mutability.rw);

        /*********************************************************************
         TIM7 clock enable during Sleep
              mode
        */
        alias TIM7LPEN = Bit!(5, Mutability.rw);

        /*********************************************************************
         TIM12 clock enable during Sleep
              mode
        */
        alias TIM12LPEN = Bit!(6, Mutability.rw);

        /*********************************************************************
         TIM13 clock enable during Sleep
              mode
        */
        alias TIM13LPEN = Bit!(7, Mutability.rw);

        /*********************************************************************
         TIM14 clock enable during Sleep
              mode
        */
        alias TIM14LPEN = Bit!(8, Mutability.rw);

        /*********************************************************************
         Window watchdog clock enable during
              Sleep mode
        */
        alias WWDGLPEN = Bit!(11, Mutability.rw);

        /*********************************************************************
         SPI2 clock enable during Sleep
              mode
        */
        alias SPI2LPEN = Bit!(14, Mutability.rw);

        /*********************************************************************
         SPI3 clock enable during Sleep
              mode
        */
        alias SPI3LPEN = Bit!(15, Mutability.rw);

        /*********************************************************************
         USART2 clock enable during Sleep
              mode
        */
        alias USART2LPEN = Bit!(17, Mutability.rw);

        /*********************************************************************
         USART3 clock enable during Sleep
              mode
        */
        alias USART3LPEN = Bit!(18, Mutability.rw);

        /*********************************************************************
         UART4 clock enable during Sleep
              mode
        */
        alias UART4LPEN = Bit!(19, Mutability.rw);

        /*********************************************************************
         UART5 clock enable during Sleep
              mode
        */
        alias UART5LPEN = Bit!(20, Mutability.rw);

        /*********************************************************************
         I2C1 clock enable during Sleep
              mode
        */
        alias I2C1LPEN = Bit!(21, Mutability.rw);

        /*********************************************************************
         I2C2 clock enable during Sleep
              mode
        */
        alias I2C2LPEN = Bit!(22, Mutability.rw);

        /*********************************************************************
         I2C3 clock enable during Sleep
              mode
        */
        alias I2C3LPEN = Bit!(23, Mutability.rw);

        /*********************************************************************
         CAN 1 clock enable during Sleep
              mode
        */
        alias CAN1LPEN = Bit!(25, Mutability.rw);

        /*********************************************************************
         CAN 2 clock enable during Sleep
              mode
        */
        alias CAN2LPEN = Bit!(26, Mutability.rw);

        /*********************************************************************
         Power interface clock enable during
              Sleep mode
        */
        alias PWRLPEN = Bit!(28, Mutability.rw);

        /*********************************************************************
         DAC interface clock enable during Sleep
              mode
        */
        alias DACLPEN = Bit!(29, Mutability.rw);

        /*********************************************************************
         UART7 clock enable during Sleep
              mode
        */
        alias UART7LPEN = Bit!(30, Mutability.rw);

        /*********************************************************************
         UART8 clock enable during Sleep
              mode
        */
        alias UART8LPEN = Bit!(31, Mutability.rw);

        /*********************************************************************
         SPDIF-RX clock enable during sleep
              mode
        */
        alias SPDIFRXLPEN = Bit!(16, Mutability.rw);

        /*********************************************************************
         HDMI-CEN clock enable during Sleep
              mode
        */
        alias CECLPEN = Bit!(27, Mutability.rw);

        /*********************************************************************
         low power timer 1 clock enable during
              Sleep mode
        */
        alias LPTIM1LPEN = Bit!(9, Mutability.rw);

        /*********************************************************************
         I2C4 clock enable during Sleep
              mode
        */
        alias I2C4LPEN = Bit!(24, Mutability.rw);
    }

    /*************************************************************************
     APB2 peripheral clock enabled in low power
          mode register
    */
    final abstract class APB2LPENR : Register!(0x64)
    {
        /*********************************************************************
         TIM1 clock enable during Sleep
              mode
        */
        alias TIM1LPEN = Bit!(0, Mutability.rw);

        /*********************************************************************
         TIM8 clock enable during Sleep
              mode
        */
        alias TIM8LPEN = Bit!(1, Mutability.rw);

        /*********************************************************************
         USART1 clock enable during Sleep
              mode
        */
        alias USART1LPEN = Bit!(4, Mutability.rw);

        /*********************************************************************
         USART6 clock enable during Sleep
              mode
        */
        alias USART6LPEN = Bit!(5, Mutability.rw);

        /*********************************************************************
         ADC1 clock enable during Sleep
              mode
        */
        alias ADC1LPEN = Bit!(8, Mutability.rw);

        /*********************************************************************
         ADC2 clock enable during Sleep
              mode
        */
        alias ADC2LPEN = Bit!(9, Mutability.rw);

        /*********************************************************************
         ADC 3 clock enable during Sleep
              mode
        */
        alias ADC3LPEN = Bit!(10, Mutability.rw);

        /*********************************************************************
         SPI 1 clock enable during Sleep
              mode
        */
        alias SPI1LPEN = Bit!(12, Mutability.rw);

        /*********************************************************************
         SPI 4 clock enable during Sleep
              mode
        */
        alias SPI4LPEN = Bit!(13, Mutability.rw);

        /*********************************************************************
         System configuration controller clock
              enable during Sleep mode
        */
        alias SYSCFGLPEN = Bit!(14, Mutability.rw);

        /*********************************************************************
         TIM9 clock enable during sleep
              mode
        */
        alias TIM9LPEN = Bit!(16, Mutability.rw);

        /*********************************************************************
         TIM10 clock enable during Sleep
              mode
        */
        alias TIM10LPEN = Bit!(17, Mutability.rw);

        /*********************************************************************
         TIM11 clock enable during Sleep
              mode
        */
        alias TIM11LPEN = Bit!(18, Mutability.rw);

        /*********************************************************************
         SPI 5 clock enable during Sleep
              mode
        */
        alias SPI5LPEN = Bit!(20, Mutability.rw);

        /*********************************************************************
         SPI 6 clock enable during Sleep
              mode
        */
        alias SPI6LPEN = Bit!(21, Mutability.rw);

        /*********************************************************************
         SAI1 clock enable during sleep
              mode
        */
        alias SAI1LPEN = Bit!(22, Mutability.rw);

        /*********************************************************************
         LTDC clock enable during sleep
              mode
        */
        alias LTDCLPEN = Bit!(26, Mutability.rw);

        /*********************************************************************
         SAI2 clock enable during sleep
              mode
        */
        alias SAI2LPEN = Bit!(23, Mutability.rw);

        /*********************************************************************
         SDMMC1 clock enable during Sleep
              mode
        */
        alias SDMMC1LPEN = Bit!(11, Mutability.rw);
    }

    /*************************************************************************
     Backup domain control register
    */
    final abstract class BDCR : Register!(0x70)
    {
        /*********************************************************************
         Backup domain software
              reset
        */
        alias BDRST = Bit!(16, Mutability.rw);

        /*********************************************************************
         RTC clock enable
        */
        alias RTCEN = Bit!(15, Mutability.rw);

        /*********************************************************************
         RTC clock source selection
        */
        alias RTCSEL1 = Bit!(9, Mutability.rw);

        /*********************************************************************
         RTC clock source selection
        */
        alias RTCSEL0 = Bit!(8, Mutability.rw);

        /*********************************************************************
         External low-speed oscillator
              bypass
        */
        alias LSEBYP = Bit!(2, Mutability.rw);

        /*********************************************************************
         External low-speed oscillator
              ready
        */
        alias LSERDY = Bit!(1, Mutability.r);

        /*********************************************************************
         External low-speed oscillator
              enable
        */
        alias LSEON = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     clock control & status
          register
    */
    final abstract class CSR : Register!(0x74)
    {
        /*********************************************************************
         Low-power reset flag
        */
        alias LPWRRSTF = Bit!(31, Mutability.rw);

        /*********************************************************************
         Window watchdog reset flag
        */
        alias WWDGRSTF = Bit!(30, Mutability.rw);

        /*********************************************************************
         Independent watchdog reset
              flag
        */
        alias WDGRSTF = Bit!(29, Mutability.rw);

        /*********************************************************************
         Software reset flag
        */
        alias SFTRSTF = Bit!(28, Mutability.rw);

        /*********************************************************************
         POR/PDR reset flag
        */
        alias PORRSTF = Bit!(27, Mutability.rw);

        /*********************************************************************
         PIN reset flag
        */
        alias PADRSTF = Bit!(26, Mutability.rw);

        /*********************************************************************
         BOR reset flag
        */
        alias BORRSTF = Bit!(25, Mutability.rw);

        /*********************************************************************
         Remove reset flag
        */
        alias RMVF = Bit!(24, Mutability.rw);

        /*********************************************************************
         Internal low-speed oscillator
              ready
        */
        alias LSIRDY = Bit!(1, Mutability.r);

        /*********************************************************************
         Internal low-speed oscillator
              enable
        */
        alias LSION = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     spread spectrum clock generation
          register
    */
    final abstract class SSCGR : Register!(0x80)
    {
        /*********************************************************************
         Spread spectrum modulation
              enable
        */
        alias SSCGEN = Bit!(31, Mutability.rw);

        /*********************************************************************
         Spread Select
        */
        alias SPREADSEL = Bit!(30, Mutability.rw);

        /*********************************************************************
         Incrementation step
        */
        alias INCSTEP = BitField!(27, 13, Mutability.rw);

        /*********************************************************************
         Modulation period
        */
        alias MODPER = BitField!(12, 0, Mutability.rw);
    }

    /*************************************************************************
     PLLI2S configuration register
    */
    final abstract class PLLI2SCFGR : Register!(0x84)
    {
        /*********************************************************************
         PLLI2S division factor for I2S
              clocks
        */
        alias PLLI2SR = BitField!(30, 28, Mutability.rw);

        /*********************************************************************
         PLLI2S division factor for SAI1
              clock
        */
        alias PLLI2SQ = BitField!(27, 24, Mutability.rw);

        /*********************************************************************
         PLLI2S multiplication factor for
              VCO
        */
        alias PLLI2SN = BitField!(14, 6, Mutability.rw);
    }

    /*************************************************************************
     PLL configuration register
    */
    final abstract class PLLSAICFGR : Register!(0x88)
    {
        /*********************************************************************
         PLLSAI division factor for
              VCO
        */
        alias PLLSAIN = BitField!(14, 6, Mutability.rw);

        /*********************************************************************
         PLLSAI division factor for 48MHz
              clock
        */
        alias PLLSAIP = BitField!(17, 16, Mutability.rw);

        /*********************************************************************
         PLLSAI division factor for SAI
              clock
        */
        alias PLLSAIQ = BitField!(27, 24, Mutability.rw);

        /*********************************************************************
         PLLSAI division factor for LCD
              clock
        */
        alias PLLSAIR = BitField!(30, 28, Mutability.rw);
    }

    /*************************************************************************
     dedicated clocks configuration
          register
    */
    final abstract class DKCFGR1 : Register!(0x8c)
    {
        /*********************************************************************
         PLLI2S division factor for SAI1
              clock
        */
        alias PLLI2SDIV = BitField!(4, 0, Mutability.rw);

        /*********************************************************************
         PLLSAI division factor for SAI1
              clock
        */
        alias PLLSAIDIVQ = BitField!(12, 8, Mutability.rw);

        /*********************************************************************
         division factor for
              LCD_CLK
        */
        alias PLLSAIDIVR = BitField!(17, 16, Mutability.rw);

        /*********************************************************************
         SAI1 clock source
              selection
        */
        alias SAI1SEL = BitField!(21, 20, Mutability.rw);

        /*********************************************************************
         SAI2 clock source
              selection
        */
        alias SAI2SEL = BitField!(23, 22, Mutability.rw);

        /*********************************************************************
         Timers clocks prescalers
              selection
        */
        alias TIMPRE = Bit!(24, Mutability.rw);
    }

    /*************************************************************************
     dedicated clocks configuration
          register
    */
    final abstract class DKCFGR2 : Register!(0x90)
    {
        /*********************************************************************
         USART 1 clock source
              selection
        */
        alias USART1SEL = BitField!(1, 0, Mutability.rw);

        /*********************************************************************
         USART 2 clock source
              selection
        */
        alias USART2SEL = BitField!(3, 2, Mutability.rw);

        /*********************************************************************
         USART 3 clock source
              selection
        */
        alias USART3SEL = BitField!(5, 4, Mutability.rw);

        /*********************************************************************
         UART 4 clock source
              selection
        */
        alias UART4SEL = BitField!(7, 6, Mutability.rw);

        /*********************************************************************
         UART 5 clock source
              selection
        */
        alias UART5SEL = BitField!(9, 8, Mutability.rw);

        /*********************************************************************
         USART 6 clock source
              selection
        */
        alias USART6SEL = BitField!(11, 10, Mutability.rw);

        /*********************************************************************
         UART 7 clock source
              selection
        */
        alias UART7SEL = BitField!(13, 12, Mutability.rw);

        /*********************************************************************
         UART 8 clock source
              selection
        */
        alias UART8SEL = BitField!(15, 14, Mutability.rw);

        /*********************************************************************
         I2C1 clock source
              selection
        */
        alias I2C1SEL = BitField!(17, 16, Mutability.rw);

        /*********************************************************************
         I2C2 clock source
              selection
        */
        alias I2C2SEL = BitField!(19, 18, Mutability.rw);

        /*********************************************************************
         I2C3 clock source
              selection
        */
        alias I2C3SEL = BitField!(21, 20, Mutability.rw);

        /*********************************************************************
         I2C4 clock source
              selection
        */
        alias I2C4SEL = BitField!(23, 22, Mutability.rw);

        /*********************************************************************
         Low power timer 1 clock source
              selection
        */
        alias LPTIM1SEL = BitField!(25, 24, Mutability.rw);

        /*********************************************************************
         HDMI-CEC clock source
              selection
        */
        alias CECSEL = Bit!(26, Mutability.rw);

        /*********************************************************************
         48MHz clock source
              selection
        */
        alias CK48MSEL = Bit!(27, Mutability.rw);

        /*********************************************************************
         SDMMC clock source
              selection
        */
        alias SDMMCSEL = Bit!(28, Mutability.rw);
    }
}
