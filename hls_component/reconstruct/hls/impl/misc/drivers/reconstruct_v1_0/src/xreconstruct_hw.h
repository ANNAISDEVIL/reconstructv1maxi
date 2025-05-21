// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of imageProjs_local_offset
//        bit 31~0 - imageProjs_local_offset[31:0] (Read/Write)
// 0x14 : Data signal of imageProjs_local_offset
//        bit 31~0 - imageProjs_local_offset[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of imageProjs_offset
//        bit 31~0 - imageProjs_offset[31:0] (Read/Write)
// 0x20 : Data signal of imageProjs_offset
//        bit 31~0 - imageProjs_offset[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of imageProjs_local_size_offset
//        bit 31~0 - imageProjs_local_size_offset[31:0] (Read/Write)
// 0x2c : Data signal of imageProjs_local_size_offset
//        bit 31~0 - imageProjs_local_size_offset[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of fullImage_offset
//        bit 31~0 - fullImage_offset[31:0] (Read/Write)
// 0x38 : Data signal of fullImage_offset
//        bit 31~0 - fullImage_offset[63:32] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of emissions_offset
//        bit 31~0 - emissions_offset[31:0] (Read/Write)
// 0x44 : Data signal of emissions_offset
//        bit 31~0 - emissions_offset[63:32] (Read/Write)
// 0x48 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XRECONSTRUCT_CONTROL_ADDR_AP_CTRL                           0x00
#define XRECONSTRUCT_CONTROL_ADDR_GIE                               0x04
#define XRECONSTRUCT_CONTROL_ADDR_IER                               0x08
#define XRECONSTRUCT_CONTROL_ADDR_ISR                               0x0c
#define XRECONSTRUCT_CONTROL_ADDR_IMAGEPROJS_LOCAL_OFFSET_DATA      0x10
#define XRECONSTRUCT_CONTROL_BITS_IMAGEPROJS_LOCAL_OFFSET_DATA      64
#define XRECONSTRUCT_CONTROL_ADDR_IMAGEPROJS_OFFSET_DATA            0x1c
#define XRECONSTRUCT_CONTROL_BITS_IMAGEPROJS_OFFSET_DATA            64
#define XRECONSTRUCT_CONTROL_ADDR_IMAGEPROJS_LOCAL_SIZE_OFFSET_DATA 0x28
#define XRECONSTRUCT_CONTROL_BITS_IMAGEPROJS_LOCAL_SIZE_OFFSET_DATA 64
#define XRECONSTRUCT_CONTROL_ADDR_FULLIMAGE_OFFSET_DATA             0x34
#define XRECONSTRUCT_CONTROL_BITS_FULLIMAGE_OFFSET_DATA             64
#define XRECONSTRUCT_CONTROL_ADDR_EMISSIONS_OFFSET_DATA             0x40
#define XRECONSTRUCT_CONTROL_BITS_EMISSIONS_OFFSET_DATA             64

// scalar_data
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of atomLocationsSize
//        bit 31~0 - atomLocationsSize[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of projShape0
//        bit 31~0 - projShape0[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of projShape1
//        bit 31~0 - projShape1[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of psfSupersample
//        bit 31~0 - psfSupersample[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of imageProjectionSize
//        bit 31~0 - imageProjectionSize[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of fullImage_rows
//        bit 31~0 - fullImage_rows[31:0] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of fullImage_cols
//        bit 31~0 - fullImage_cols[31:0] (Read/Write)
// 0x44 : reserved
// 0x48 : Data signal of emission_cnt
//        bit 31~0 - emission_cnt[31:0] (Read)
// 0x4c : Control signal of emission_cnt
//        bit 0  - emission_cnt_ap_vld (Read/COR)
//        others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XRECONSTRUCT_SCALAR_DATA_ADDR_ATOMLOCATIONSSIZE_DATA   0x10
#define XRECONSTRUCT_SCALAR_DATA_BITS_ATOMLOCATIONSSIZE_DATA   32
#define XRECONSTRUCT_SCALAR_DATA_ADDR_PROJSHAPE0_DATA          0x18
#define XRECONSTRUCT_SCALAR_DATA_BITS_PROJSHAPE0_DATA          32
#define XRECONSTRUCT_SCALAR_DATA_ADDR_PROJSHAPE1_DATA          0x20
#define XRECONSTRUCT_SCALAR_DATA_BITS_PROJSHAPE1_DATA          32
#define XRECONSTRUCT_SCALAR_DATA_ADDR_PSFSUPERSAMPLE_DATA      0x28
#define XRECONSTRUCT_SCALAR_DATA_BITS_PSFSUPERSAMPLE_DATA      32
#define XRECONSTRUCT_SCALAR_DATA_ADDR_IMAGEPROJECTIONSIZE_DATA 0x30
#define XRECONSTRUCT_SCALAR_DATA_BITS_IMAGEPROJECTIONSIZE_DATA 32
#define XRECONSTRUCT_SCALAR_DATA_ADDR_FULLIMAGE_ROWS_DATA      0x38
#define XRECONSTRUCT_SCALAR_DATA_BITS_FULLIMAGE_ROWS_DATA      32
#define XRECONSTRUCT_SCALAR_DATA_ADDR_FULLIMAGE_COLS_DATA      0x40
#define XRECONSTRUCT_SCALAR_DATA_BITS_FULLIMAGE_COLS_DATA      32
#define XRECONSTRUCT_SCALAR_DATA_ADDR_EMISSION_CNT_DATA        0x48
#define XRECONSTRUCT_SCALAR_DATA_BITS_EMISSION_CNT_DATA        32
#define XRECONSTRUCT_SCALAR_DATA_ADDR_EMISSION_CNT_CTRL        0x4c

