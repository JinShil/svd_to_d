module stm32f7x9.jpeg;

import stm32f7x9.mmio;

/*****************************************************************************
 JPEG codec
*/
final abstract class JPEG : Peripheral!(0x50051000)
{
    /*************************************************************************
     JPEG codec configuration register
          0
    */
    final abstract class JPEG_CONFR0 : Register!(00)
    {
        /*********************************************************************
         Start
        */
        alias START = Bit!(0, Mutability.rw);
    }

    /*************************************************************************
     JPEG codec configuration register
          1
    */
    final abstract class JPEG_CONFR1 : Register!(0x4)
    {
        /*********************************************************************
         Number of color components
        */
        alias NF = BitField!(1, 0, Mutability.rw);

        /*********************************************************************
         Decoding Enable
        */
        alias DE = Bit!(3, Mutability.rw);

        /*********************************************************************
         Color Space
        */
        alias COLORSPACE = BitField!(5, 4, Mutability.rw);

        /*********************************************************************
         Number of components for
              Scan
        */
        alias NS = BitField!(7, 6, Mutability.rw);

        /*********************************************************************
         Header Processing
        */
        alias HDR = Bit!(8, Mutability.rw);

        /*********************************************************************
         Y Size
        */
        alias YSIZE = BitField!(31, 16, Mutability.rw);
    }

    /*************************************************************************
     JPEG codec configuration register
          2
    */
    final abstract class JPEG_CONFR2 : Register!(0x8)
    {
        /*********************************************************************
         Number of MCU
        */
        alias NMCU = BitField!(25, 0, Mutability.rw);
    }

    /*************************************************************************
     JPEG codec configuration register
          3
    */
    final abstract class JPEG_CONFR3 : Register!(0xc)
    {
        /*********************************************************************
         X size
        */
        alias XSIZE = BitField!(31, 16, Mutability.rw);
    }

    /*************************************************************************
     JPEG codec configuration register
          4
    */
    final abstract class JPEG_CONFR4 : Register!(0x10)
    {
        /*********************************************************************
         Huffman DC
        */
        alias HD = Bit!(0, Mutability.rw);

        /*********************************************************************
         Huffman AC
        */
        alias HA = Bit!(1, Mutability.rw);

        /*********************************************************************
         Quantization Table
        */
        alias QT = BitField!(3, 2, Mutability.rw);

        /*********************************************************************
         Number of Block
        */
        alias NB = BitField!(7, 4, Mutability.rw);

        /*********************************************************************
         Vertical Sampling Factor
        */
        alias VSF = BitField!(11, 8, Mutability.rw);

        /*********************************************************************
         Horizontal Sampling Factor
        */
        alias HSF = BitField!(15, 12, Mutability.rw);
    }

    /*************************************************************************
     JPEG codec configuration register
          5
    */
    final abstract class JPEG_CONFR5 : Register!(0x14)
    {
        /*********************************************************************
         Huffman DC
        */
        alias HD = Bit!(0, Mutability.rw);

        /*********************************************************************
         Huffman AC
        */
        alias HA = Bit!(1, Mutability.rw);

        /*********************************************************************
         Quantization Table
        */
        alias QT = BitField!(3, 2, Mutability.rw);

        /*********************************************************************
         Number of Block
        */
        alias NB = BitField!(7, 4, Mutability.rw);

        /*********************************************************************
         Vertical Sampling Factor
        */
        alias VSF = BitField!(11, 8, Mutability.rw);

        /*********************************************************************
         Horizontal Sampling Factor
        */
        alias HSF = BitField!(15, 12, Mutability.rw);
    }

    /*************************************************************************
     JPEG codec configuration register
          6
    */
    final abstract class JPEG_CONFR6 : Register!(0x18)
    {
        /*********************************************************************
         Huffman DC
        */
        alias HD = Bit!(0, Mutability.rw);

        /*********************************************************************
         Huffman AC
        */
        alias HA = Bit!(1, Mutability.rw);

        /*********************************************************************
         Quantization Table
        */
        alias QT = BitField!(3, 2, Mutability.rw);

        /*********************************************************************
         Number of Block
        */
        alias NB = BitField!(7, 4, Mutability.rw);

        /*********************************************************************
         Vertical Sampling Factor
        */
        alias VSF = BitField!(11, 8, Mutability.rw);

        /*********************************************************************
         Horizontal Sampling Factor
        */
        alias HSF = BitField!(15, 12, Mutability.rw);
    }

    /*************************************************************************
     JPEG codec configuration register
          7
    */
    final abstract class JPEG_CONFR7 : Register!(0x1c)
    {
        /*********************************************************************
         Huffman DC
        */
        alias HD = Bit!(0, Mutability.rw);

        /*********************************************************************
         Huffman AC
        */
        alias HA = Bit!(1, Mutability.rw);

        /*********************************************************************
         Quantization Table
        */
        alias QT = BitField!(3, 2, Mutability.rw);

        /*********************************************************************
         Number of Block
        */
        alias NB = BitField!(7, 4, Mutability.rw);

        /*********************************************************************
         Vertical Sampling Factor
        */
        alias VSF = BitField!(11, 8, Mutability.rw);

        /*********************************************************************
         Horizontal Sampling Factor
        */
        alias HSF = BitField!(15, 12, Mutability.rw);
    }

    /*************************************************************************
     JPEG control register
    */
    final abstract class JPEG_CR : Register!(0x20)
    {
        /*********************************************************************
         JPEG Core Enable
        */
        alias JCEN = Bit!(0, Mutability.rw);

        /*********************************************************************
         Input FIFO Threshold Interrupt
              Enable
        */
        alias IFTIE = Bit!(1, Mutability.rw);

        /*********************************************************************
         Input FIFO Not Full Interrupt
              Enable
        */
        alias IFNFIE = Bit!(2, Mutability.rw);

        /*********************************************************************
         Output FIFO Threshold Interrupt
              Enable
        */
        alias OFTIE = Bit!(3, Mutability.rw);

        /*********************************************************************
         Output FIFO Not Empty Interrupt
              Enable
        */
        alias OFNEIE = Bit!(4, Mutability.rw);

        /*********************************************************************
         End of Conversion Interrupt
              Enable
        */
        alias EOCIE = Bit!(5, Mutability.rw);

        /*********************************************************************
         Header Parsing Done Interrupt
              Enable
        */
        alias HPDIE = Bit!(6, Mutability.rw);

        /*********************************************************************
         Input DMA Enable
        */
        alias IDMAEN = Bit!(11, Mutability.rw);

        /*********************************************************************
         Output DMA Enable
        */
        alias ODMAEN = Bit!(12, Mutability.rw);

        /*********************************************************************
         Input FIFO Flush
        */
        alias IFF = Bit!(13, Mutability.r);

        /*********************************************************************
         Output FIFO Flush
        */
        alias OFF = Bit!(14, Mutability.r);
    }

    /*************************************************************************
     JPEG status register
    */
    final abstract class JPEG_SR : Register!(0x24)
    {
        /*********************************************************************
         Input FIFO Threshold Flag
        */
        alias IFTF = Bit!(1, Mutability.rw);

        /*********************************************************************
         Input FIFO Not Full Flag
        */
        alias IFNFF = Bit!(2, Mutability.rw);

        /*********************************************************************
         Output FIFO Threshold Flag
        */
        alias OFTF = Bit!(3, Mutability.rw);

        /*********************************************************************
         Output FIFO Not Empty Flag
        */
        alias OFNEF = Bit!(4, Mutability.rw);

        /*********************************************************************
         End of Conversion Flag
        */
        alias EOCF = Bit!(5, Mutability.rw);

        /*********************************************************************
         Header Parsing Done Flag
        */
        alias HPDF = Bit!(6, Mutability.rw);

        /*********************************************************************
         Codec Operation Flag
        */
        alias COF = Bit!(7, Mutability.rw);
    }

    /*************************************************************************
     JPEG clear flag register
    */
    final abstract class JPEG_CFR : Register!(0x28)
    {
        /*********************************************************************
         Clear End of Conversion
              Flag
        */
        alias CEOCF = Bit!(5, Mutability.rw);

        /*********************************************************************
         Clear Header Parsing Done
              Flag
        */
        alias CHPDF = Bit!(6, Mutability.rw);
    }

    /*************************************************************************
     JPEG data input register
    */
    final abstract class JPEG_DIR : Register!(0x2c)
    {
        /*********************************************************************
         Data Input FIFO
        */
        alias DATAIN = BitField!(31, 0, Mutability.rw);
    }

    /*************************************************************************
     JPEG data output register
    */
    final abstract class JPEG_DOR : Register!(0x30)
    {
        /*********************************************************************
         Data Output FIFO
        */
        alias DATAOUT = BitField!(31, 0, Mutability.rw);
    }
}
