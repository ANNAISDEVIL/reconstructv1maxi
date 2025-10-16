## This repository contains four optimized versions of the reconstruction accelerator in algorithm level
1. The main branch directly maps from CPU versions to FPGA implementation.
2. Optimize1 processes atoms sequentially and decomposes outer loop into a four-stage dataflow pipeline.
3. Optimize2 optimizes the image convolution module with adder tree structures.
4. Optimize3 optimizes the image extraction module by manual burst data transmission.
