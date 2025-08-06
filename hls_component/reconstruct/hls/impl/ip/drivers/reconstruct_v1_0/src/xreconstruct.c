// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xreconstruct.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XReconstruct_CfgInitialize(XReconstruct *InstancePtr, XReconstruct_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->Scalar_data_BaseAddress = ConfigPtr->Scalar_data_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XReconstruct_Start(XReconstruct *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XReconstruct_ReadReg(InstancePtr->Control_BaseAddress, XRECONSTRUCT_CONTROL_ADDR_AP_CTRL) & 0x80;
    XReconstruct_WriteReg(InstancePtr->Control_BaseAddress, XRECONSTRUCT_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XReconstruct_IsDone(XReconstruct *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XReconstruct_ReadReg(InstancePtr->Control_BaseAddress, XRECONSTRUCT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XReconstruct_IsIdle(XReconstruct *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XReconstruct_ReadReg(InstancePtr->Control_BaseAddress, XRECONSTRUCT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XReconstruct_IsReady(XReconstruct *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XReconstruct_ReadReg(InstancePtr->Control_BaseAddress, XRECONSTRUCT_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XReconstruct_EnableAutoRestart(XReconstruct *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XReconstruct_WriteReg(InstancePtr->Control_BaseAddress, XRECONSTRUCT_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XReconstruct_DisableAutoRestart(XReconstruct *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XReconstruct_WriteReg(InstancePtr->Control_BaseAddress, XRECONSTRUCT_CONTROL_ADDR_AP_CTRL, 0);
}

void XReconstruct_Set_atomLocations_offset(XReconstruct *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XReconstruct_WriteReg(InstancePtr->Control_BaseAddress, XRECONSTRUCT_CONTROL_ADDR_ATOMLOCATIONS_OFFSET_DATA, (u32)(Data));
    XReconstruct_WriteReg(InstancePtr->Control_BaseAddress, XRECONSTRUCT_CONTROL_ADDR_ATOMLOCATIONS_OFFSET_DATA + 4, (u32)(Data >> 32));
}

u64 XReconstruct_Get_atomLocations_offset(XReconstruct *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XReconstruct_ReadReg(InstancePtr->Control_BaseAddress, XRECONSTRUCT_CONTROL_ADDR_ATOMLOCATIONS_OFFSET_DATA);
    Data += (u64)XReconstruct_ReadReg(InstancePtr->Control_BaseAddress, XRECONSTRUCT_CONTROL_ADDR_ATOMLOCATIONS_OFFSET_DATA + 4) << 32;
    return Data;
}

void XReconstruct_Set_imageProjs_local_offset(XReconstruct *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XReconstruct_WriteReg(InstancePtr->Control_BaseAddress, XRECONSTRUCT_CONTROL_ADDR_IMAGEPROJS_LOCAL_OFFSET_DATA, (u32)(Data));
    XReconstruct_WriteReg(InstancePtr->Control_BaseAddress, XRECONSTRUCT_CONTROL_ADDR_IMAGEPROJS_LOCAL_OFFSET_DATA + 4, (u32)(Data >> 32));
}

u64 XReconstruct_Get_imageProjs_local_offset(XReconstruct *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XReconstruct_ReadReg(InstancePtr->Control_BaseAddress, XRECONSTRUCT_CONTROL_ADDR_IMAGEPROJS_LOCAL_OFFSET_DATA);
    Data += (u64)XReconstruct_ReadReg(InstancePtr->Control_BaseAddress, XRECONSTRUCT_CONTROL_ADDR_IMAGEPROJS_LOCAL_OFFSET_DATA + 4) << 32;
    return Data;
}

void XReconstruct_Set_imageProjs_offset(XReconstruct *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XReconstruct_WriteReg(InstancePtr->Control_BaseAddress, XRECONSTRUCT_CONTROL_ADDR_IMAGEPROJS_OFFSET_DATA, (u32)(Data));
    XReconstruct_WriteReg(InstancePtr->Control_BaseAddress, XRECONSTRUCT_CONTROL_ADDR_IMAGEPROJS_OFFSET_DATA + 4, (u32)(Data >> 32));
}

u64 XReconstruct_Get_imageProjs_offset(XReconstruct *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XReconstruct_ReadReg(InstancePtr->Control_BaseAddress, XRECONSTRUCT_CONTROL_ADDR_IMAGEPROJS_OFFSET_DATA);
    Data += (u64)XReconstruct_ReadReg(InstancePtr->Control_BaseAddress, XRECONSTRUCT_CONTROL_ADDR_IMAGEPROJS_OFFSET_DATA + 4) << 32;
    return Data;
}

void XReconstruct_Set_imageProjs_local_size_offset(XReconstruct *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XReconstruct_WriteReg(InstancePtr->Control_BaseAddress, XRECONSTRUCT_CONTROL_ADDR_IMAGEPROJS_LOCAL_SIZE_OFFSET_DATA, (u32)(Data));
    XReconstruct_WriteReg(InstancePtr->Control_BaseAddress, XRECONSTRUCT_CONTROL_ADDR_IMAGEPROJS_LOCAL_SIZE_OFFSET_DATA + 4, (u32)(Data >> 32));
}

u64 XReconstruct_Get_imageProjs_local_size_offset(XReconstruct *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XReconstruct_ReadReg(InstancePtr->Control_BaseAddress, XRECONSTRUCT_CONTROL_ADDR_IMAGEPROJS_LOCAL_SIZE_OFFSET_DATA);
    Data += (u64)XReconstruct_ReadReg(InstancePtr->Control_BaseAddress, XRECONSTRUCT_CONTROL_ADDR_IMAGEPROJS_LOCAL_SIZE_OFFSET_DATA + 4) << 32;
    return Data;
}

void XReconstruct_Set_fullImage_offset(XReconstruct *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XReconstruct_WriteReg(InstancePtr->Control_BaseAddress, XRECONSTRUCT_CONTROL_ADDR_FULLIMAGE_OFFSET_DATA, (u32)(Data));
    XReconstruct_WriteReg(InstancePtr->Control_BaseAddress, XRECONSTRUCT_CONTROL_ADDR_FULLIMAGE_OFFSET_DATA + 4, (u32)(Data >> 32));
}

u64 XReconstruct_Get_fullImage_offset(XReconstruct *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XReconstruct_ReadReg(InstancePtr->Control_BaseAddress, XRECONSTRUCT_CONTROL_ADDR_FULLIMAGE_OFFSET_DATA);
    Data += (u64)XReconstruct_ReadReg(InstancePtr->Control_BaseAddress, XRECONSTRUCT_CONTROL_ADDR_FULLIMAGE_OFFSET_DATA + 4) << 32;
    return Data;
}

void XReconstruct_Set_emissions_offset(XReconstruct *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XReconstruct_WriteReg(InstancePtr->Control_BaseAddress, XRECONSTRUCT_CONTROL_ADDR_EMISSIONS_OFFSET_DATA, (u32)(Data));
    XReconstruct_WriteReg(InstancePtr->Control_BaseAddress, XRECONSTRUCT_CONTROL_ADDR_EMISSIONS_OFFSET_DATA + 4, (u32)(Data >> 32));
}

u64 XReconstruct_Get_emissions_offset(XReconstruct *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XReconstruct_ReadReg(InstancePtr->Control_BaseAddress, XRECONSTRUCT_CONTROL_ADDR_EMISSIONS_OFFSET_DATA);
    Data += (u64)XReconstruct_ReadReg(InstancePtr->Control_BaseAddress, XRECONSTRUCT_CONTROL_ADDR_EMISSIONS_OFFSET_DATA + 4) << 32;
    return Data;
}

void XReconstruct_Set_atomLocationsSize(XReconstruct *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XReconstruct_WriteReg(InstancePtr->Scalar_data_BaseAddress, XRECONSTRUCT_SCALAR_DATA_ADDR_ATOMLOCATIONSSIZE_DATA, Data);
}

u32 XReconstruct_Get_atomLocationsSize(XReconstruct *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XReconstruct_ReadReg(InstancePtr->Scalar_data_BaseAddress, XRECONSTRUCT_SCALAR_DATA_ADDR_ATOMLOCATIONSSIZE_DATA);
    return Data;
}

void XReconstruct_Set_projShape0(XReconstruct *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XReconstruct_WriteReg(InstancePtr->Scalar_data_BaseAddress, XRECONSTRUCT_SCALAR_DATA_ADDR_PROJSHAPE0_DATA, Data);
}

u32 XReconstruct_Get_projShape0(XReconstruct *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XReconstruct_ReadReg(InstancePtr->Scalar_data_BaseAddress, XRECONSTRUCT_SCALAR_DATA_ADDR_PROJSHAPE0_DATA);
    return Data;
}

void XReconstruct_Set_projShape1(XReconstruct *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XReconstruct_WriteReg(InstancePtr->Scalar_data_BaseAddress, XRECONSTRUCT_SCALAR_DATA_ADDR_PROJSHAPE1_DATA, Data);
}

u32 XReconstruct_Get_projShape1(XReconstruct *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XReconstruct_ReadReg(InstancePtr->Scalar_data_BaseAddress, XRECONSTRUCT_SCALAR_DATA_ADDR_PROJSHAPE1_DATA);
    return Data;
}

void XReconstruct_Set_psfSupersample(XReconstruct *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XReconstruct_WriteReg(InstancePtr->Scalar_data_BaseAddress, XRECONSTRUCT_SCALAR_DATA_ADDR_PSFSUPERSAMPLE_DATA, Data);
}

u32 XReconstruct_Get_psfSupersample(XReconstruct *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XReconstruct_ReadReg(InstancePtr->Scalar_data_BaseAddress, XRECONSTRUCT_SCALAR_DATA_ADDR_PSFSUPERSAMPLE_DATA);
    return Data;
}

void XReconstruct_Set_imageProjectionSize(XReconstruct *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XReconstruct_WriteReg(InstancePtr->Scalar_data_BaseAddress, XRECONSTRUCT_SCALAR_DATA_ADDR_IMAGEPROJECTIONSIZE_DATA, Data);
}

u32 XReconstruct_Get_imageProjectionSize(XReconstruct *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XReconstruct_ReadReg(InstancePtr->Scalar_data_BaseAddress, XRECONSTRUCT_SCALAR_DATA_ADDR_IMAGEPROJECTIONSIZE_DATA);
    return Data;
}

void XReconstruct_Set_fullImage_rows(XReconstruct *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XReconstruct_WriteReg(InstancePtr->Scalar_data_BaseAddress, XRECONSTRUCT_SCALAR_DATA_ADDR_FULLIMAGE_ROWS_DATA, Data);
}

u32 XReconstruct_Get_fullImage_rows(XReconstruct *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XReconstruct_ReadReg(InstancePtr->Scalar_data_BaseAddress, XRECONSTRUCT_SCALAR_DATA_ADDR_FULLIMAGE_ROWS_DATA);
    return Data;
}

void XReconstruct_Set_fullImage_cols(XReconstruct *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XReconstruct_WriteReg(InstancePtr->Scalar_data_BaseAddress, XRECONSTRUCT_SCALAR_DATA_ADDR_FULLIMAGE_COLS_DATA, Data);
}

u32 XReconstruct_Get_fullImage_cols(XReconstruct *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XReconstruct_ReadReg(InstancePtr->Scalar_data_BaseAddress, XRECONSTRUCT_SCALAR_DATA_ADDR_FULLIMAGE_COLS_DATA);
    return Data;
}

void XReconstruct_InterruptGlobalEnable(XReconstruct *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XReconstruct_WriteReg(InstancePtr->Control_BaseAddress, XRECONSTRUCT_CONTROL_ADDR_GIE, 1);
}

void XReconstruct_InterruptGlobalDisable(XReconstruct *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XReconstruct_WriteReg(InstancePtr->Control_BaseAddress, XRECONSTRUCT_CONTROL_ADDR_GIE, 0);
}

void XReconstruct_InterruptEnable(XReconstruct *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XReconstruct_ReadReg(InstancePtr->Control_BaseAddress, XRECONSTRUCT_CONTROL_ADDR_IER);
    XReconstruct_WriteReg(InstancePtr->Control_BaseAddress, XRECONSTRUCT_CONTROL_ADDR_IER, Register | Mask);
}

void XReconstruct_InterruptDisable(XReconstruct *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XReconstruct_ReadReg(InstancePtr->Control_BaseAddress, XRECONSTRUCT_CONTROL_ADDR_IER);
    XReconstruct_WriteReg(InstancePtr->Control_BaseAddress, XRECONSTRUCT_CONTROL_ADDR_IER, Register & (~Mask));
}

void XReconstruct_InterruptClear(XReconstruct *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XReconstruct_WriteReg(InstancePtr->Control_BaseAddress, XRECONSTRUCT_CONTROL_ADDR_ISR, Mask);
}

u32 XReconstruct_InterruptGetEnabled(XReconstruct *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XReconstruct_ReadReg(InstancePtr->Control_BaseAddress, XRECONSTRUCT_CONTROL_ADDR_IER);
}

u32 XReconstruct_InterruptGetStatus(XReconstruct *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XReconstruct_ReadReg(InstancePtr->Control_BaseAddress, XRECONSTRUCT_CONTROL_ADDR_ISR);
}

