; ModuleID = 'F:/LMU/quantumMA/opimization/reconstructv1maxi/hls_component/reconstruct/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%struct.atom_location = type { double, double }

; Function Attrs: noinline
define void @apatb_reconstruct_ir(i32 %atomLocationsSize, i32 %projShape0, i32 %projShape1, %struct.atom_location* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="100" %atomLocations, i32 %psfSupersample, i32 %imageProjectionSize, double* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="100000" "maxi" %imageProjs_local, double* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="100" "maxi" %imageProjs, i32* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="100" "maxi" %imageProjs_local_size, double* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="65536" "maxi" %fullImage, i32 %fullImage_rows, i32 %fullImage_cols, double* noalias nocapture nonnull "maxi" %emissions, i32* noalias nocapture nonnull dereferenceable(4) %emission_cnt) local_unnamed_addr #0 {
entry:
  %0 = bitcast %struct.atom_location* %atomLocations to [100 x %struct.atom_location]*
  %atomLocations_copy = alloca [100 x i128], align 512
  %1 = bitcast double* %imageProjs_local to [100000 x double]*
  %2 = call i8* @malloc(i64 800000)
  %imageProjs_local_copy = bitcast i8* %2 to [100000 x double]*
  %3 = bitcast double* %imageProjs to [100 x double]*
  %imageProjs_copy = alloca [100 x double], align 512
  %4 = bitcast i32* %imageProjs_local_size to [100 x i32]*
  %imageProjs_local_size_copy = alloca [100 x i32], align 512
  %5 = bitcast double* %fullImage to [65536 x double]*
  %6 = call i8* @malloc(i64 524288)
  %fullImage_copy = bitcast i8* %6 to [65536 x double]*
  %7 = bitcast double* %emissions to [1000 x double]*
  %8 = call i8* @malloc(i64 8000)
  %emissions_copy = bitcast i8* %8 to [1000 x double]*
  %emission_cnt_copy = alloca i32, align 512
  call fastcc void @copy_in([100 x %struct.atom_location]* nonnull %0, [100 x i128]* nonnull align 512 %atomLocations_copy, [100000 x double]* nonnull %1, [100000 x double]* %imageProjs_local_copy, [100 x double]* nonnull %3, [100 x double]* nonnull align 512 %imageProjs_copy, [100 x i32]* nonnull %4, [100 x i32]* nonnull align 512 %imageProjs_local_size_copy, [65536 x double]* nonnull %5, [65536 x double]* %fullImage_copy, [1000 x double]* nonnull %7, [1000 x double]* %emissions_copy, i32* nonnull %emission_cnt, i32* nonnull align 512 %emission_cnt_copy)
  call void @apatb_reconstruct_hw(i32 %atomLocationsSize, i32 %projShape0, i32 %projShape1, [100 x i128]* %atomLocations_copy, i32 %psfSupersample, i32 %imageProjectionSize, [100000 x double]* %imageProjs_local_copy, [100 x double]* %imageProjs_copy, [100 x i32]* %imageProjs_local_size_copy, [65536 x double]* %fullImage_copy, i32 %fullImage_rows, i32 %fullImage_cols, [1000 x double]* %emissions_copy, i32* %emission_cnt_copy)
  call void @copy_back([100 x %struct.atom_location]* %0, [100 x i128]* %atomLocations_copy, [100000 x double]* %1, [100000 x double]* %imageProjs_local_copy, [100 x double]* %3, [100 x double]* %imageProjs_copy, [100 x i32]* %4, [100 x i32]* %imageProjs_local_size_copy, [65536 x double]* %5, [65536 x double]* %fullImage_copy, [1000 x double]* %7, [1000 x double]* %emissions_copy, i32* %emission_cnt, i32* %emission_cnt_copy)
  tail call void @free(i8* %2)
  tail call void @free(i8* %6)
  tail call void @free(i8* %8)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([100 x %struct.atom_location]* readonly, [100 x i128]* align 512, [100000 x double]* readonly, [100000 x double]*, [100 x double]* readonly, [100 x double]* align 512, [100 x i32]* readonly, [100 x i32]* align 512, [65536 x double]* readonly, [65536 x double]*, [1000 x double]* readonly, [1000 x double]*, i32* readonly, i32* align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a100struct.atom_location([100 x i128]* align 512 %1, [100 x %struct.atom_location]* %0)
  call fastcc void @onebyonecpy_hls.p0a100000f64([100000 x double]* %3, [100000 x double]* %2)
  call fastcc void @onebyonecpy_hls.p0a100f64([100 x double]* align 512 %5, [100 x double]* %4)
  call fastcc void @onebyonecpy_hls.p0a100i32([100 x i32]* align 512 %7, [100 x i32]* %6)
  call fastcc void @onebyonecpy_hls.p0a65536f64([65536 x double]* %9, [65536 x double]* %8)
  call fastcc void @onebyonecpy_hls.p0a1000f64([1000 x double]* %11, [1000 x double]* %10)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %13, i32* %12)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a100struct.atom_location([100 x i128]* align 512 %dst, [100 x %struct.atom_location]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [100 x i128]* %dst, null
  %1 = icmp eq [100 x %struct.atom_location]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a100struct.atom_location([100 x i128]* nonnull %dst, [100 x %struct.atom_location]* nonnull %src, i64 100)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a100struct.atom_location([100 x i128]* %dst, [100 x %struct.atom_location]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [100 x %struct.atom_location]* %src, null
  %1 = icmp eq [100 x i128]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond5 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond5, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx6 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.01 = getelementptr [100 x %struct.atom_location], [100 x %struct.atom_location]* %src, i64 0, i64 %for.loop.idx6, i32 0
  %3 = getelementptr [100 x i128], [100 x i128]* %dst, i64 0, i64 %for.loop.idx6
  %4 = load double, double* %src.addr.01, align 8
  %5 = call i64 @_llvm.fpga.pack.bits.i64.f64(double %4)
  %6 = load i128, i128* %3, align 8
  %7 = zext i64 %5 to i128
  %8 = and i128 %6, -18446744073709551616
  %.partset1 = or i128 %8, %7
  store i128 %.partset1, i128* %3, align 8
  %src.addr.13 = getelementptr [100 x %struct.atom_location], [100 x %struct.atom_location]* %src, i64 0, i64 %for.loop.idx6, i32 1
  %9 = load double, double* %src.addr.13, align 8
  %10 = call i64 @_llvm.fpga.pack.bits.i64.f64(double %9)
  %11 = zext i64 %10 to i128
  %12 = shl i128 %11, 64
  %.partset = or i128 %12, %7
  store i128 %.partset, i128* %3, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx6, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a100000f64([100000 x double]* %dst, [100000 x double]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [100000 x double]* %dst, null
  %1 = icmp eq [100000 x double]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a100000f64([100000 x double]* nonnull %dst, [100000 x double]* nonnull %src, i64 100000)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a100000f64([100000 x double]* %dst, [100000 x double]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [100000 x double]* %src, null
  %1 = icmp eq [100000 x double]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [100000 x double], [100000 x double]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [100000 x double], [100000 x double]* %src, i64 0, i64 %for.loop.idx2
  %3 = load double, double* %src.addr, align 8
  store double %3, double* %dst.addr, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a100f64([100 x double]* align 512 %dst, [100 x double]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [100 x double]* %dst, null
  %1 = icmp eq [100 x double]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a100f64([100 x double]* nonnull %dst, [100 x double]* nonnull %src, i64 100)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a100f64([100 x double]* %dst, [100 x double]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [100 x double]* %src, null
  %1 = icmp eq [100 x double]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [100 x double], [100 x double]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [100 x double], [100 x double]* %src, i64 0, i64 %for.loop.idx2
  %3 = load double, double* %src.addr, align 8
  store double %3, double* %dst.addr, align 8
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
define internal fastcc void @onebyonecpy_hls.p0a65536f64([65536 x double]* %dst, [65536 x double]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [65536 x double]* %dst, null
  %1 = icmp eq [65536 x double]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a65536f64([65536 x double]* nonnull %dst, [65536 x double]* nonnull %src, i64 65536)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a65536f64([65536 x double]* %dst, [65536 x double]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [65536 x double]* %src, null
  %1 = icmp eq [65536 x double]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [65536 x double], [65536 x double]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [65536 x double], [65536 x double]* %src, i64 0, i64 %for.loop.idx2
  %3 = load double, double* %src.addr, align 8
  store double %3, double* %dst.addr, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a1000f64([1000 x double]* %dst, [1000 x double]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [1000 x double]* %dst, null
  %1 = icmp eq [1000 x double]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a1000f64([1000 x double]* nonnull %dst, [1000 x double]* nonnull %src, i64 1000)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a1000f64([1000 x double]* %dst, [1000 x double]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [1000 x double]* %src, null
  %1 = icmp eq [1000 x double]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1000 x double], [1000 x double]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [1000 x double], [1000 x double]* %src, i64 0, i64 %for.loop.idx2
  %3 = load double, double* %src.addr, align 8
  store double %3, double* %dst.addr, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %dst, i32* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq i32* %dst, null
  %1 = icmp eq i32* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %3 = load i32, i32* %src, align 4
  store i32 %3, i32* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out([100 x %struct.atom_location]*, [100 x i128]* readonly align 512, [100000 x double]*, [100000 x double]* readonly, [100 x double]*, [100 x double]* readonly align 512, [100 x i32]*, [100 x i32]* readonly align 512, [65536 x double]*, [65536 x double]* readonly, [1000 x double]*, [1000 x double]* readonly, i32*, i32* readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a100struct.atom_location.111([100 x %struct.atom_location]* %0, [100 x i128]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a100000f64([100000 x double]* %2, [100000 x double]* %3)
  call fastcc void @onebyonecpy_hls.p0a100f64([100 x double]* %4, [100 x double]* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0a100i32([100 x i32]* %6, [100 x i32]* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0a65536f64([65536 x double]* %8, [65536 x double]* %9)
  call fastcc void @onebyonecpy_hls.p0a1000f64([1000 x double]* %10, [1000 x double]* %11)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %12, i32* align 512 %13)
  ret void
}

declare i8* @malloc(i64) local_unnamed_addr

declare void @free(i8*) local_unnamed_addr

; Function Attrs: alwaysinline nounwind readnone willreturn
define internal double @_llvm.fpga.unpack.bits.f64.i64(i64 %A) #5 {
  %A.cast = bitcast i64 %A to double
  ret double %A.cast
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a100struct.atom_location.111([100 x %struct.atom_location]* %dst, [100 x i128]* readonly align 512 %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [100 x %struct.atom_location]* %dst, null
  %1 = icmp eq [100 x i128]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a100struct.atom_location.114([100 x %struct.atom_location]* nonnull %dst, [100 x i128]* nonnull %src, i64 100)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a100struct.atom_location.114([100 x %struct.atom_location]* %dst, [100 x i128]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [100 x i128]* %src, null
  %1 = icmp eq [100 x %struct.atom_location]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond5 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond5, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx6 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [100 x i128], [100 x i128]* %src, i64 0, i64 %for.loop.idx6
  %dst.addr.02 = getelementptr [100 x %struct.atom_location], [100 x %struct.atom_location]* %dst, i64 0, i64 %for.loop.idx6, i32 0
  %4 = load i128, i128* %3, align 8
  %.partselect1 = trunc i128 %4 to i64
  %5 = call double @_llvm.fpga.unpack.bits.f64.i64(i64 %.partselect1)
  store double %5, double* %dst.addr.02, align 8
  %dst.addr.14 = getelementptr [100 x %struct.atom_location], [100 x %struct.atom_location]* %dst, i64 0, i64 %for.loop.idx6, i32 1
  %6 = load i128, i128* %3, align 8
  %7 = lshr i128 %6, 64
  %.partselect = trunc i128 %7 to i64
  %8 = call double @_llvm.fpga.unpack.bits.f64.i64(i64 %.partselect)
  store double %8, double* %dst.addr.14, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx6, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: alwaysinline nounwind readnone willreturn
define internal i64 @_llvm.fpga.pack.bits.i64.f64(double %A) #5 {
  %A.cast = bitcast double %A to i64
  ret i64 %A.cast
}

declare void @apatb_reconstruct_hw(i32, i32, i32, [100 x i128]*, i32, i32, [100000 x double]*, [100 x double]*, [100 x i32]*, [65536 x double]*, i32, i32, [1000 x double]*, i32*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([100 x %struct.atom_location]*, [100 x i128]* readonly align 512, [100000 x double]*, [100000 x double]* readonly, [100 x double]*, [100 x double]* readonly align 512, [100 x i32]*, [100 x i32]* readonly align 512, [65536 x double]*, [65536 x double]* readonly, [1000 x double]*, [1000 x double]* readonly, i32*, i32* readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1000f64([1000 x double]* %10, [1000 x double]* %11)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %12, i32* align 512 %13)
  ret void
}

declare void @reconstruct_hw_stub(i32, i32, i32, %struct.atom_location* noalias nocapture nonnull readonly, i32, i32, double* noalias nocapture nonnull readonly, double* noalias nocapture nonnull readonly, i32* noalias nocapture nonnull readonly, double* noalias nocapture nonnull readonly, i32, i32, double* noalias nocapture nonnull, i32* noalias nocapture nonnull)

define void @reconstruct_hw_stub_wrapper(i32, i32, i32, [100 x i128]*, i32, i32, [100000 x double]*, [100 x double]*, [100 x i32]*, [65536 x double]*, i32, i32, [1000 x double]*, i32*) #6 {
entry:
  %14 = call i8* @malloc(i64 1600)
  %15 = bitcast i8* %14 to [100 x %struct.atom_location]*
  call void @copy_out([100 x %struct.atom_location]* %15, [100 x i128]* %3, [100000 x double]* null, [100000 x double]* %6, [100 x double]* null, [100 x double]* %7, [100 x i32]* null, [100 x i32]* %8, [65536 x double]* null, [65536 x double]* %9, [1000 x double]* null, [1000 x double]* %12, i32* null, i32* %13)
  %16 = bitcast [100 x %struct.atom_location]* %15 to %struct.atom_location*
  %17 = bitcast [100000 x double]* %6 to double*
  %18 = bitcast [100 x double]* %7 to double*
  %19 = bitcast [100 x i32]* %8 to i32*
  %20 = bitcast [65536 x double]* %9 to double*
  %21 = bitcast [1000 x double]* %12 to double*
  call void @reconstruct_hw_stub(i32 %0, i32 %1, i32 %2, %struct.atom_location* %16, i32 %4, i32 %5, double* %17, double* %18, i32* %19, double* %20, i32 %10, i32 %11, double* %21, i32* %13)
  call void @copy_in([100 x %struct.atom_location]* %15, [100 x i128]* %3, [100000 x double]* null, [100000 x double]* %6, [100 x double]* null, [100 x double]* %7, [100 x i32]* null, [100 x i32]* %8, [65536 x double]* null, [65536 x double]* %9, [1000 x double]* null, [1000 x double]* %12, i32* null, i32* %13)
  call void @free(i8* %14)
  ret void
}

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #5 = { alwaysinline nounwind readnone willreturn }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
