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

#define CONTROL_ADDR_AP_CTRL                           0x00
#define CONTROL_ADDR_GIE                               0x04
#define CONTROL_ADDR_IER                               0x08
#define CONTROL_ADDR_ISR                               0x0c
#define CONTROL_ADDR_IMAGEPROJS_LOCAL_OFFSET_DATA      0x10
#define CONTROL_BITS_IMAGEPROJS_LOCAL_OFFSET_DATA      64
#define CONTROL_ADDR_IMAGEPROJS_OFFSET_DATA            0x1c
#define CONTROL_BITS_IMAGEPROJS_OFFSET_DATA            64
#define CONTROL_ADDR_IMAGEPROJS_LOCAL_SIZE_OFFSET_DATA 0x28
#define CONTROL_BITS_IMAGEPROJS_LOCAL_SIZE_OFFSET_DATA 64
#define CONTROL_ADDR_FULLIMAGE_OFFSET_DATA             0x34
#define CONTROL_BITS_FULLIMAGE_OFFSET_DATA             64
#define CONTROL_ADDR_EMISSIONS_OFFSET_DATA             0x40
#define CONTROL_BITS_EMISSIONS_OFFSET_DATA             64
