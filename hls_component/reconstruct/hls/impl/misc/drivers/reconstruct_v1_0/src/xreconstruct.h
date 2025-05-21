// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XRECONSTRUCT_H
#define XRECONSTRUCT_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xreconstruct_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
    u64 Scalar_data_BaseAddress;
} XReconstruct_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u64 Scalar_data_BaseAddress;
    u32 IsReady;
} XReconstruct;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XReconstruct_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XReconstruct_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XReconstruct_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XReconstruct_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XReconstruct_Initialize(XReconstruct *InstancePtr, UINTPTR BaseAddress);
XReconstruct_Config* XReconstruct_LookupConfig(UINTPTR BaseAddress);
#else
int XReconstruct_Initialize(XReconstruct *InstancePtr, u16 DeviceId);
XReconstruct_Config* XReconstruct_LookupConfig(u16 DeviceId);
#endif
int XReconstruct_CfgInitialize(XReconstruct *InstancePtr, XReconstruct_Config *ConfigPtr);
#else
int XReconstruct_Initialize(XReconstruct *InstancePtr, const char* InstanceName);
int XReconstruct_Release(XReconstruct *InstancePtr);
#endif

void XReconstruct_Start(XReconstruct *InstancePtr);
u32 XReconstruct_IsDone(XReconstruct *InstancePtr);
u32 XReconstruct_IsIdle(XReconstruct *InstancePtr);
u32 XReconstruct_IsReady(XReconstruct *InstancePtr);
void XReconstruct_EnableAutoRestart(XReconstruct *InstancePtr);
void XReconstruct_DisableAutoRestart(XReconstruct *InstancePtr);

void XReconstruct_Set_imageProjs_local_offset(XReconstruct *InstancePtr, u64 Data);
u64 XReconstruct_Get_imageProjs_local_offset(XReconstruct *InstancePtr);
void XReconstruct_Set_imageProjs_offset(XReconstruct *InstancePtr, u64 Data);
u64 XReconstruct_Get_imageProjs_offset(XReconstruct *InstancePtr);
void XReconstruct_Set_imageProjs_local_size_offset(XReconstruct *InstancePtr, u64 Data);
u64 XReconstruct_Get_imageProjs_local_size_offset(XReconstruct *InstancePtr);
void XReconstruct_Set_fullImage_offset(XReconstruct *InstancePtr, u64 Data);
u64 XReconstruct_Get_fullImage_offset(XReconstruct *InstancePtr);
void XReconstruct_Set_emissions_offset(XReconstruct *InstancePtr, u64 Data);
u64 XReconstruct_Get_emissions_offset(XReconstruct *InstancePtr);
void XReconstruct_Set_atomLocationsSize(XReconstruct *InstancePtr, u32 Data);
u32 XReconstruct_Get_atomLocationsSize(XReconstruct *InstancePtr);
void XReconstruct_Set_projShape0(XReconstruct *InstancePtr, u32 Data);
u32 XReconstruct_Get_projShape0(XReconstruct *InstancePtr);
void XReconstruct_Set_projShape1(XReconstruct *InstancePtr, u32 Data);
u32 XReconstruct_Get_projShape1(XReconstruct *InstancePtr);
void XReconstruct_Set_psfSupersample(XReconstruct *InstancePtr, u32 Data);
u32 XReconstruct_Get_psfSupersample(XReconstruct *InstancePtr);
void XReconstruct_Set_imageProjectionSize(XReconstruct *InstancePtr, u32 Data);
u32 XReconstruct_Get_imageProjectionSize(XReconstruct *InstancePtr);
void XReconstruct_Set_fullImage_rows(XReconstruct *InstancePtr, u32 Data);
u32 XReconstruct_Get_fullImage_rows(XReconstruct *InstancePtr);
void XReconstruct_Set_fullImage_cols(XReconstruct *InstancePtr, u32 Data);
u32 XReconstruct_Get_fullImage_cols(XReconstruct *InstancePtr);
u32 XReconstruct_Get_emission_cnt(XReconstruct *InstancePtr);
u32 XReconstruct_Get_emission_cnt_vld(XReconstruct *InstancePtr);

void XReconstruct_InterruptGlobalEnable(XReconstruct *InstancePtr);
void XReconstruct_InterruptGlobalDisable(XReconstruct *InstancePtr);
void XReconstruct_InterruptEnable(XReconstruct *InstancePtr, u32 Mask);
void XReconstruct_InterruptDisable(XReconstruct *InstancePtr, u32 Mask);
void XReconstruct_InterruptClear(XReconstruct *InstancePtr, u32 Mask);
u32 XReconstruct_InterruptGetEnabled(XReconstruct *InstancePtr);
u32 XReconstruct_InterruptGetStatus(XReconstruct *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
