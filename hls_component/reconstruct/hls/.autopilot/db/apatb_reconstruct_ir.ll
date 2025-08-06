; ModuleID = 'F:/LMU/quantumMA/opimization/reconstructv1maxi/hls_component/reconstruct/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%struct.atom_location = type { float, float }

; Function Attrs: noinline
define void @apatb_reconstruct_ir(i32 %atomLocationsSize, i32 %projShape0, i32 %projShape1, %struct.atom_location* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1024" "maxi" %atomLocations, i32 %psfSupersample, i32 %imageProjectionSize, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="100000" "maxi" %imageProjs_local, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="100" "maxi" %imageProjs, i32* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="100" "maxi" %imageProjs_local_size, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="160000" "maxi" %fullImage, i32 %fullImage_rows, i32 %fullImage_cols, float* noalias nocapture nonnull "maxi" %emissions) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.atom_location* %atomLocations to [1024 x %struct.atom_location]*
  %1 = call i8* @malloc(i64 8192)
  %atomLocations_copy = bitcast i8* %1 to [1024 x %struct.atom_location]*
  %2 = bitcast float* %imageProjs_local to [100000 x float]*
  %3 = call i8* @malloc(i64 400000)
  %imageProjs_local_copy = bitcast i8* %3 to [100000 x float]*
  %4 = bitcast float* %imageProjs to [100 x float]*
  %imageProjs_copy = alloca [100 x float], align 512
  %5 = bitcast i32* %imageProjs_local_size to [100 x i32]*
  %imageProjs_local_size_copy = alloca [100 x i32], align 512
  %6 = bitcast float* %fullImage to [160000 x float]*
  %7 = call i8* @malloc(i64 640000)
  %fullImage_copy = bitcast i8* %7 to [160000 x float]*
  %8 = bitcast float* %emissions to [1600 x float]*
  %9 = call i8* @malloc(i64 6400)
  %emissions_copy = bitcast i8* %9 to [1600 x float]*
  call fastcc void @copy_in([1024 x %struct.atom_location]* nonnull %0, [1024 x %struct.atom_location]* %atomLocations_copy, [100000 x float]* nonnull %2, [100000 x float]* %imageProjs_local_copy, [100 x float]* nonnull %4, [100 x float]* nonnull align 512 %imageProjs_copy, [100 x i32]* nonnull %5, [100 x i32]* nonnull align 512 %imageProjs_local_size_copy, [160000 x float]* nonnull %6, [160000 x float]* %fullImage_copy, [1600 x float]* nonnull %8, [1600 x float]* %emissions_copy)
  call void @apatb_reconstruct_hw(i32 %atomLocationsSize, i32 %projShape0, i32 %projShape1, [1024 x %struct.atom_location]* %atomLocations_copy, i32 %psfSupersample, i32 %imageProjectionSize, [100000 x float]* %imageProjs_local_copy, [100 x float]* %imageProjs_copy, [100 x i32]* %imageProjs_local_size_copy, [160000 x float]* %fullImage_copy, i32 %fullImage_rows, i32 %fullImage_cols, [1600 x float]* %emissions_copy)
  call void @copy_back([1024 x %struct.atom_location]* %0, [1024 x %struct.atom_location]* %atomLocations_copy, [100000 x float]* %2, [100000 x float]* %imageProjs_local_copy, [100 x float]* %4, [100 x float]* %imageProjs_copy, [100 x i32]* %5, [100 x i32]* %imageProjs_local_size_copy, [160000 x float]* %6, [160000 x float]* %fullImage_copy, [1600 x float]* %8, [1600 x float]* %emissions_copy)
  tail call void @free(i8* %1)
  tail call void @free(i8* %3)
  tail call void @free(i8* %7)
  tail call void @free(i8* %9)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([1024 x %struct.atom_location]* readonly, [1024 x %struct.atom_location]*, [100000 x float]* readonly, [100000 x float]*, [100 x float]* readonly, [100 x float]* align 512, [100 x i32]* readonly, [100 x i32]* align 512, [160000 x float]* readonly, [160000 x float]*, [1600 x float]* readonly, [1600 x float]*) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1024struct.atom_location([1024 x %struct.atom_location]* %1, [1024 x %struct.atom_location]* %0)
  call fastcc void @onebyonecpy_hls.p0a100000f32([100000 x float]* %3, [100000 x float]* %2)
  call fastcc void @onebyonecpy_hls.p0a100f32([100 x float]* align 512 %5, [100 x float]* %4)
  call fastcc void @onebyonecpy_hls.p0a100i32([100 x i32]* align 512 %7, [100 x i32]* %6)
  call fastcc void @onebyonecpy_hls.p0a160000f32([160000 x float]* %9, [160000 x float]* %8)
  call fastcc void @onebyonecpy_hls.p0a1600f32([1600 x float]* %11, [1600 x float]* %10)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a1024struct.atom_location([1024 x %struct.atom_location]* %dst, [1024 x %struct.atom_location]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [1024 x %struct.atom_location]* %dst, null
  %1 = icmp eq [1024 x %struct.atom_location]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a1024struct.atom_location([1024 x %struct.atom_location]* nonnull %dst, [1024 x %struct.atom_location]* nonnull %src, i64 1024)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a1024struct.atom_location([1024 x %struct.atom_location]* %dst, [1024 x %struct.atom_location]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [1024 x %struct.atom_location]* %src, null
  %1 = icmp eq [1024 x %struct.atom_location]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond5 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond5, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx6 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.01 = getelementptr [1024 x %struct.atom_location], [1024 x %struct.atom_location]* %src, i64 0, i64 %for.loop.idx6, i32 0
  %dst.addr.02 = getelementptr [1024 x %struct.atom_location], [1024 x %struct.atom_location]* %dst, i64 0, i64 %for.loop.idx6, i32 0
  %3 = load float, float* %src.addr.01, align 4
  store float %3, float* %dst.addr.02, align 4
  %src.addr.13 = getelementptr [1024 x %struct.atom_location], [1024 x %struct.atom_location]* %src, i64 0, i64 %for.loop.idx6, i32 1
  %dst.addr.14 = getelementptr [1024 x %struct.atom_location], [1024 x %struct.atom_location]* %dst, i64 0, i64 %for.loop.idx6, i32 1
  %4 = load float, float* %src.addr.13, align 4
  store float %4, float* %dst.addr.14, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx6, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a100000f32([100000 x float]* %dst, [100000 x float]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [100000 x float]* %dst, null
  %1 = icmp eq [100000 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a100000f32([100000 x float]* nonnull %dst, [100000 x float]* nonnull %src, i64 100000)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a100000f32([100000 x float]* %dst, [100000 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [100000 x float]* %src, null
  %1 = icmp eq [100000 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [100000 x float], [100000 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [100000 x float], [100000 x float]* %src, i64 0, i64 %for.loop.idx2
  %3 = load float, float* %src.addr, align 4
  store float %3, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a100f32([100 x float]* align 512 %dst, [100 x float]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [100 x float]* %dst, null
  %1 = icmp eq [100 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a100f32([100 x float]* nonnull %dst, [100 x float]* nonnull %src, i64 100)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a100f32([100 x float]* %dst, [100 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [100 x float]* %src, null
  %1 = icmp eq [100 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [100 x float], [100 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [100 x float], [100 x float]* %src, i64 0, i64 %for.loop.idx2
  %3 = load float, float* %src.addr, align 4
  store float %3, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a100i32([100 x i32]* align 512 %dst, [100 x i32]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [100 x i32]* %dst, null
  %1 = icmp eq [100 x i32]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a100i32([100 x i32]* nonnull %dst, [100 x i32]* nonnull %src, i64 100)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a100i32([100 x i32]* %dst, [100 x i32]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [100 x i32]* %src, null
  %1 = icmp eq [100 x i32]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [100 x i32], [100 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [100 x i32], [100 x i32]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i32, i32* %src.addr, align 4
  store i32 %3, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a160000f32([160000 x float]* %dst, [160000 x float]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [160000 x float]* %dst, null
  %1 = icmp eq [160000 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a160000f32([160000 x float]* nonnull %dst, [160000 x float]* nonnull %src, i64 160000)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a160000f32([160000 x float]* %dst, [160000 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [160000 x float]* %src, null
  %1 = icmp eq [160000 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [160000 x float], [160000 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [160000 x float], [160000 x float]* %src, i64 0, i64 %for.loop.idx2
  %3 = load float, float* %src.addr, align 4
  store float %3, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a1600f32([1600 x float]* %dst, [1600 x float]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [1600 x float]* %dst, null
  %1 = icmp eq [1600 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a1600f32([1600 x float]* nonnull %dst, [1600 x float]* nonnull %src, i64 1600)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a1600f32([1600 x float]* %dst, [1600 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [1600 x float]* %src, null
  %1 = icmp eq [1600 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1600 x float], [1600 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [1600 x float], [1600 x float]* %src, i64 0, i64 %for.loop.idx2
  %3 = load float, float* %src.addr, align 4
  store float %3, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out([1024 x %struct.atom_location]*, [1024 x %struct.atom_location]* readonly, [100000 x float]*, [100000 x float]* readonly, [100 x float]*, [100 x float]* readonly align 512, [100 x i32]*, [100 x i32]* readonly align 512, [160000 x float]*, [160000 x float]* readonly, [1600 x float]*, [1600 x float]* readonly) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1024struct.atom_location([1024 x %struct.atom_location]* %0, [1024 x %struct.atom_location]* %1)
  call fastcc void @onebyonecpy_hls.p0a100000f32([100000 x float]* %2, [100000 x float]* %3)
  call fastcc void @onebyonecpy_hls.p0a100f32([100 x float]* %4, [100 x float]* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0a100i32([100 x i32]* %6, [100 x i32]* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0a160000f32([160000 x float]* %8, [160000 x float]* %9)
  call fastcc void @onebyonecpy_hls.p0a1600f32([1600 x float]* %10, [1600 x float]* %11)
  ret void
}

declare i8* @malloc(i64) local_unnamed_addr

declare void @free(i8*) local_unnamed_addr

declare void @apatb_reconstruct_hw(i32, i32, i32, [1024 x %struct.atom_location]*, i32, i32, [100000 x float]*, [100 x float]*, [100 x i32]*, [160000 x float]*, i32, i32, [1600 x float]*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([1024 x %struct.atom_location]*, [1024 x %struct.atom_location]* readonly, [100000 x float]*, [100000 x float]* readonly, [100 x float]*, [100 x float]* readonly align 512, [100 x i32]*, [100 x i32]* readonly align 512, [160000 x float]*, [160000 x float]* readonly, [1600 x float]*, [1600 x float]* readonly) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1600f32([1600 x float]* %10, [1600 x float]* %11)
  ret void
}

declare void @reconstruct_hw_stub(i32, i32, i32, %struct.atom_location* noalias nocapture nonnull readonly, i32, i32, float* noalias nocapture nonnull readonly, float* noalias nocapture nonnull readonly, i32* noalias nocapture nonnull readonly, float* noalias nocapture nonnull readonly, i32, i32, float* noalias nocapture nonnull)

define void @reconstruct_hw_stub_wrapper(i32, i32, i32, [1024 x %struct.atom_location]*, i32, i32, [100000 x float]*, [100 x float]*, [100 x i32]*, [160000 x float]*, i32, i32, [1600 x float]*) #5 {
entry:
  call void @copy_out([1024 x %struct.atom_location]* null, [1024 x %struct.atom_location]* %3, [100000 x float]* null, [100000 x float]* %6, [100 x float]* null, [100 x float]* %7, [100 x i32]* null, [100 x i32]* %8, [160000 x float]* null, [160000 x float]* %9, [1600 x float]* null, [1600 x float]* %12)
  %13 = bitcast [1024 x %struct.atom_location]* %3 to %struct.atom_location*
  %14 = bitcast [100000 x float]* %6 to float*
  %15 = bitcast [100 x float]* %7 to float*
  %16 = bitcast [100 x i32]* %8 to i32*
  %17 = bitcast [160000 x float]* %9 to float*
  %18 = bitcast [1600 x float]* %12 to float*
  call void @reconstruct_hw_stub(i32 %0, i32 %1, i32 %2, %struct.atom_location* %13, i32 %4, i32 %5, float* %14, float* %15, i32* %16, float* %17, i32 %10, i32 %11, float* %18)
  call void @copy_in([1024 x %struct.atom_location]* null, [1024 x %struct.atom_location]* %3, [100000 x float]* null, [100000 x float]* %6, [100 x float]* null, [100 x float]* %7, [100 x i32]* null, [100 x i32]* %8, [160000 x float]* null, [160000 x float]* %9, [1600 x float]* null, [1600 x float]* %12)
  ret void
}

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
