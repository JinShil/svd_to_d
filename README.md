# A Command-Line Utility for Generating Memory-Mapped-IO Code from SVD files for ARM Cortex-M MCUs

This repository is a command-line utility for generating memory-mapped-IO code from SVD files for ARM Cortex-M microcontrollers.

The generated code will depend on [this memory-mapped-io library](https://github.com/JinShil/memory_mapped_io)

## Building and Testing

To build, from within this repository, run `dmd source/main.d -of=svd_to_d`.

To run, execute `svd_to_d path/to/svd/file -o=path/to/output/folder`

## References
  * [CMSIS-SVD](https://www.keil.com/pack/doc/CMSIS/SVD/html/index.html)

## License
  * See COPYING.