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

#define SCALAR_DATA_ADDR_ATOMLOCATIONSSIZE_DATA   0x10
#define SCALAR_DATA_BITS_ATOMLOCATIONSSIZE_DATA   32
#define SCALAR_DATA_ADDR_PROJSHAPE0_DATA          0x18
#define SCALAR_DATA_BITS_PROJSHAPE0_DATA          32
#define SCALAR_DATA_ADDR_PROJSHAPE1_DATA          0x20
#define SCALAR_DATA_BITS_PROJSHAPE1_DATA          32
#define SCALAR_DATA_ADDR_PSFSUPERSAMPLE_DATA      0x28
#define SCALAR_DATA_BITS_PSFSUPERSAMPLE_DATA      32
#define SCALAR_DATA_ADDR_IMAGEPROJECTIONSIZE_DATA 0x30
#define SCALAR_DATA_BITS_IMAGEPROJECTIONSIZE_DATA 32
#define SCALAR_DATA_ADDR_FULLIMAGE_ROWS_DATA      0x38
#define SCALAR_DATA_BITS_FULLIMAGE_ROWS_DATA      32
#define SCALAR_DATA_ADDR_FULLIMAGE_COLS_DATA      0x40
#define SCALAR_DATA_BITS_FULLIMAGE_COLS_DATA      32
#define SCALAR_DATA_ADDR_EMISSION_CNT_DATA        0x48
#define SCALAR_DATA_BITS_EMISSION_CNT_DATA        32
#define SCALAR_DATA_ADDR_EMISSION_CNT_CTRL        0x4c
