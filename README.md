# SVD to D

This repository is a command-line utility for generating memory-mapped-IO code from SVD files for ARM Cortex-M microcontrollers.  

SVD files are XML files that describe, in great detail, the memory layout and characteristics of registers on an ARM Cortex-M microcontroller.  From that information, code for accessing those registers can be automatically generated, and this software program does exactly that.

The generated code will depend on [this memory-mapped-io library](https://github.com/JinShil/memory_mapped_io).

## Building

To build, from within this repository, run `dmd source/main.d -of=svd_to_d`.

## Executing

To run, execute `svd_to_d path/to/svd/file -o=path/to/output/folder`

## Examples

Some examples of the generated D code can be found in the [examples folder](https://github.com/JinShil/svd_to_d/tree/master/examples).

## References
  * [CMSIS-SVD](https://www.keil.com/pack/doc/CMSIS/SVD/html/index.html)
  * [Curated list of SVD files](https://github.com/posborne/cmsis-svd/tree/master/data)

## License
  * See LICENSE.