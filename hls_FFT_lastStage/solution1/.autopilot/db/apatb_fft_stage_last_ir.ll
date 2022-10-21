; ModuleID = 'C:/Users/ShaneWu/OneDrive/Desktop/Documents/NTU/HLS/labB/hls_FFT_lastStage/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_fft_stage_last_ir(float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1024" %X_R, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1024" %X_I, float* noalias nocapture nonnull "fpga.decayed.dim.hint"="1024" %OUT_R, float* noalias nocapture nonnull "fpga.decayed.dim.hint"="1024" %OUT_I) local_unnamed_addr #1 {
entry:
  %malloccall_0 = call i8* @malloc(i64 1024)
  %malloccall_1 = call i8* @malloc(i64 1024)
  %malloccall_2 = call i8* @malloc(i64 1024)
  %malloccall_3 = call i8* @malloc(i64 1024)
  %X_R_copy_0 = bitcast i8* %malloccall_0 to [256 x float]*
  %X_R_copy_1 = bitcast i8* %malloccall_1 to [256 x float]*
  %X_R_copy_2 = bitcast i8* %malloccall_2 to [256 x float]*
  %X_R_copy_3 = bitcast i8* %malloccall_3 to [256 x float]*
  %malloccall1_0 = call i8* @malloc(i64 1024)
  %malloccall1_1 = call i8* @malloc(i64 1024)
  %malloccall1_2 = call i8* @malloc(i64 1024)
  %malloccall1_3 = call i8* @malloc(i64 1024)
  %X_I_copy_0 = bitcast i8* %malloccall1_0 to [256 x float]*
  %X_I_copy_1 = bitcast i8* %malloccall1_1 to [256 x float]*
  %X_I_copy_2 = bitcast i8* %malloccall1_2 to [256 x float]*
  %X_I_copy_3 = bitcast i8* %malloccall1_3 to [256 x float]*
  %malloccall2_0 = call i8* @malloc(i64 1024)
  %malloccall2_1 = call i8* @malloc(i64 1024)
  %malloccall2_2 = call i8* @malloc(i64 1024)
  %malloccall2_3 = call i8* @malloc(i64 1024)
  %OUT_R_copy_0 = bitcast i8* %malloccall2_0 to [256 x float]*
  %OUT_R_copy_1 = bitcast i8* %malloccall2_1 to [256 x float]*
  %OUT_R_copy_2 = bitcast i8* %malloccall2_2 to [256 x float]*
  %OUT_R_copy_3 = bitcast i8* %malloccall2_3 to [256 x float]*
  %malloccall3_0 = call i8* @malloc(i64 1024)
  %malloccall3_1 = call i8* @malloc(i64 1024)
  %malloccall3_2 = call i8* @malloc(i64 1024)
  %malloccall3_3 = call i8* @malloc(i64 1024)
  %OUT_I_copy_0 = bitcast i8* %malloccall3_0 to [256 x float]*
  %OUT_I_copy_1 = bitcast i8* %malloccall3_1 to [256 x float]*
  %OUT_I_copy_2 = bitcast i8* %malloccall3_2 to [256 x float]*
  %OUT_I_copy_3 = bitcast i8* %malloccall3_3 to [256 x float]*
  %0 = bitcast float* %X_R to [1024 x float]*
  %1 = bitcast float* %X_I to [1024 x float]*
  %2 = bitcast float* %OUT_R to [1024 x float]*
  %3 = bitcast float* %OUT_I to [1024 x float]*
  call void @copy_in([1024 x float]* nonnull %0, [256 x float]* %X_R_copy_0, [256 x float]* %X_R_copy_1, [256 x float]* %X_R_copy_2, [256 x float]* %X_R_copy_3, [1024 x float]* nonnull %1, [256 x float]* %X_I_copy_0, [256 x float]* %X_I_copy_1, [256 x float]* %X_I_copy_2, [256 x float]* %X_I_copy_3, [1024 x float]* nonnull %2, [256 x float]* %OUT_R_copy_0, [256 x float]* %OUT_R_copy_1, [256 x float]* %OUT_R_copy_2, [256 x float]* %OUT_R_copy_3, [1024 x float]* nonnull %3, [256 x float]* %OUT_I_copy_0, [256 x float]* %OUT_I_copy_1, [256 x float]* %OUT_I_copy_2, [256 x float]* %OUT_I_copy_3)
  %_0 = getelementptr [256 x float], [256 x float]* %X_R_copy_0, i32 0, i32 0
  %_1 = getelementptr [256 x float], [256 x float]* %X_R_copy_1, i32 0, i32 0
  %_2 = getelementptr [256 x float], [256 x float]* %X_R_copy_2, i32 0, i32 0
  %_3 = getelementptr [256 x float], [256 x float]* %X_R_copy_3, i32 0, i32 0
  %_04 = getelementptr [256 x float], [256 x float]* %X_I_copy_0, i32 0, i32 0
  %_15 = getelementptr [256 x float], [256 x float]* %X_I_copy_1, i32 0, i32 0
  %_26 = getelementptr [256 x float], [256 x float]* %X_I_copy_2, i32 0, i32 0
  %_37 = getelementptr [256 x float], [256 x float]* %X_I_copy_3, i32 0, i32 0
  %_08 = getelementptr [256 x float], [256 x float]* %OUT_R_copy_0, i32 0, i32 0
  %_19 = getelementptr [256 x float], [256 x float]* %OUT_R_copy_1, i32 0, i32 0
  %_210 = getelementptr [256 x float], [256 x float]* %OUT_R_copy_2, i32 0, i32 0
  %_311 = getelementptr [256 x float], [256 x float]* %OUT_R_copy_3, i32 0, i32 0
  %_012 = getelementptr [256 x float], [256 x float]* %OUT_I_copy_0, i32 0, i32 0
  %_113 = getelementptr [256 x float], [256 x float]* %OUT_I_copy_1, i32 0, i32 0
  %_214 = getelementptr [256 x float], [256 x float]* %OUT_I_copy_2, i32 0, i32 0
  %_315 = getelementptr [256 x float], [256 x float]* %OUT_I_copy_3, i32 0, i32 0
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_0, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_1, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_2, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_3, i32 0, i32 1, i32 0, i1 false) ], !dbg !5
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_04, i32 0, i32 1, i32 0, i1 false) ], !dbg !2687
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_15, i32 0, i32 1, i32 0, i1 false) ], !dbg !2687
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_26, i32 0, i32 1, i32 0, i1 false) ], !dbg !2687
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_37, i32 0, i32 1, i32 0, i1 false) ], !dbg !2687
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_08, i32 0, i32 1, i32 0, i1 false) ], !dbg !2688
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_19, i32 0, i32 1, i32 0, i1 false) ], !dbg !2688
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_210, i32 0, i32 1, i32 0, i1 false) ], !dbg !2688
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_311, i32 0, i32 1, i32 0, i1 false) ], !dbg !2688
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_012, i32 0, i32 1, i32 0, i1 false) ], !dbg !2689
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_113, i32 0, i32 1, i32 0, i1 false) ], !dbg !2689
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_214, i32 0, i32 1, i32 0, i1 false) ], !dbg !2689
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_315, i32 0, i32 1, i32 0, i1 false) ], !dbg !2689
  call void @apatb_fft_stage_last_hw([256 x float]* %X_R_copy_0, [256 x float]* %X_R_copy_1, [256 x float]* %X_R_copy_2, [256 x float]* %X_R_copy_3, [256 x float]* %X_I_copy_0, [256 x float]* %X_I_copy_1, [256 x float]* %X_I_copy_2, [256 x float]* %X_I_copy_3, [256 x float]* %OUT_R_copy_0, [256 x float]* %OUT_R_copy_1, [256 x float]* %OUT_R_copy_2, [256 x float]* %OUT_R_copy_3, [256 x float]* %OUT_I_copy_0, [256 x float]* %OUT_I_copy_1, [256 x float]* %OUT_I_copy_2, [256 x float]* %OUT_I_copy_3)
  call void @copy_back([1024 x float]* %0, [256 x float]* %X_R_copy_0, [256 x float]* %X_R_copy_1, [256 x float]* %X_R_copy_2, [256 x float]* %X_R_copy_3, [1024 x float]* %1, [256 x float]* %X_I_copy_0, [256 x float]* %X_I_copy_1, [256 x float]* %X_I_copy_2, [256 x float]* %X_I_copy_3, [1024 x float]* %2, [256 x float]* %OUT_R_copy_0, [256 x float]* %OUT_R_copy_1, [256 x float]* %OUT_R_copy_2, [256 x float]* %OUT_R_copy_3, [1024 x float]* %3, [256 x float]* %OUT_I_copy_0, [256 x float]* %OUT_I_copy_1, [256 x float]* %OUT_I_copy_2, [256 x float]* %OUT_I_copy_3)
  call void @free(i8* %malloccall_0)
  call void @free(i8* %malloccall_1)
  call void @free(i8* %malloccall_2)
  call void @free(i8* %malloccall_3)
  call void @free(i8* %malloccall1_0)
  call void @free(i8* %malloccall1_1)
  call void @free(i8* %malloccall1_2)
  call void @free(i8* %malloccall1_3)
  call void @free(i8* %malloccall2_0)
  call void @free(i8* %malloccall2_1)
  call void @free(i8* %malloccall2_2)
  call void @free(i8* %malloccall2_3)
  call void @free(i8* %malloccall3_0)
  call void @free(i8* %malloccall3_1)
  call void @free(i8* %malloccall3_2)
  call void @free(i8* %malloccall3_3)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a1024f32.3.4([256 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0, [256 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1, [256 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_2, [256 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_3, [1024 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %1 = icmp eq [256 x float]* %_0, null
  %2 = icmp eq [1024 x float]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %dst.addr.exit ]
  %4 = udiv i64 %for.loop.idx1, 256
  %5 = urem i64 %for.loop.idx1, 256
  %dst.addr_0 = getelementptr [256 x float], [256 x float]* %_0, i64 0, i64 %5
  %dst.addr_1 = getelementptr [256 x float], [256 x float]* %_1, i64 0, i64 %5
  %dst.addr_2 = getelementptr [256 x float], [256 x float]* %_2, i64 0, i64 %5
  %dst.addr_3 = getelementptr [256 x float], [256 x float]* %_3, i64 0, i64 %5
  %src.addr = getelementptr [1024 x float], [1024 x float]* %0, i64 0, i64 %for.loop.idx1
  %6 = load float, float* %src.addr, align 4
  %7 = trunc i64 %4 to i2
  switch i2 %7, label %dst.addr.case.3 [
    i2 0, label %dst.addr.case.0
    i2 1, label %dst.addr.case.1
    i2 -2, label %dst.addr.case.2
  ]

dst.addr.case.0:                                  ; preds = %for.loop
  store float %6, float* %dst.addr_0, align 4
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  store float %6, float* %dst.addr_1, align 4
  br label %dst.addr.exit

dst.addr.case.2:                                  ; preds = %for.loop
  store float %6, float* %dst.addr_2, align 4
  br label %dst.addr.exit

dst.addr.case.3:                                  ; preds = %for.loop
  store float %6, float* %dst.addr_3, align 4
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.3, %dst.addr.case.2, %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1024
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %dst.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a1024f32.5.6([256 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0, [256 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1, [256 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_2, [256 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_3, [1024 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %1 = icmp eq [256 x float]* %_0, null
  %2 = icmp eq [1024 x float]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %dst.addr.exit ]
  %4 = urem i64 %for.loop.idx1, 4
  %5 = udiv i64 %for.loop.idx1, 4
  %dst.addr_0 = getelementptr [256 x float], [256 x float]* %_0, i64 0, i64 %5
  %dst.addr_1 = getelementptr [256 x float], [256 x float]* %_1, i64 0, i64 %5
  %dst.addr_2 = getelementptr [256 x float], [256 x float]* %_2, i64 0, i64 %5
  %dst.addr_3 = getelementptr [256 x float], [256 x float]* %_3, i64 0, i64 %5
  %src.addr = getelementptr [1024 x float], [1024 x float]* %0, i64 0, i64 %for.loop.idx1
  %6 = load float, float* %src.addr, align 4
  %7 = trunc i64 %4 to i2
  switch i2 %7, label %dst.addr.case.3 [
    i2 0, label %dst.addr.case.0
    i2 1, label %dst.addr.case.1
    i2 -2, label %dst.addr.case.2
  ]

dst.addr.case.0:                                  ; preds = %for.loop
  store float %6, float* %dst.addr_0, align 4
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  store float %6, float* %dst.addr_1, align 4
  br label %dst.addr.exit

dst.addr.case.2:                                  ; preds = %for.loop
  store float %6, float* %dst.addr_2, align 4
  br label %dst.addr.exit

dst.addr.case.3:                                  ; preds = %for.loop
  store float %6, float* %dst.addr_3, align 4
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.3, %dst.addr.case.2, %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1024
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %dst.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_in([1024 x float]* noalias readonly "orig.arg.no"="0", [256 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [256 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [256 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [256 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, [1024 x float]* noalias readonly "orig.arg.no"="2", [256 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, [256 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_12, [256 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_23, [256 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_34, [1024 x float]* noalias readonly "orig.arg.no"="4", [256 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_05, [256 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_16, [256 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_27, [256 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_38, [1024 x float]* noalias readonly "orig.arg.no"="6", [256 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_09, [256 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_110, [256 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_211, [256 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_312) #3 {
entry:
  call void @onebyonecpy_hls.p0a1024f32.3.4([256 x float]* %_0, [256 x float]* %_1, [256 x float]* %_2, [256 x float]* %_3, [1024 x float]* %0)
  call void @onebyonecpy_hls.p0a1024f32.3.4([256 x float]* %_01, [256 x float]* %_12, [256 x float]* %_23, [256 x float]* %_34, [1024 x float]* %1)
  call void @onebyonecpy_hls.p0a1024f32.5.6([256 x float]* %_05, [256 x float]* %_16, [256 x float]* %_27, [256 x float]* %_38, [1024 x float]* %2)
  call void @onebyonecpy_hls.p0a1024f32.5.6([256 x float]* %_09, [256 x float]* %_110, [256 x float]* %_211, [256 x float]* %_312, [1024 x float]* %3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a1024f32.11.12([1024 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3) #2 {
entry:
  %1 = icmp eq [1024 x float]* %0, null
  %2 = icmp eq [256 x float]* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [1024 x float], [1024 x float]* %0, i64 0, i64 %for.loop.idx1
  %4 = udiv i64 %for.loop.idx1, 256
  %5 = urem i64 %for.loop.idx1, 256
  %src.addr_0 = getelementptr [256 x float], [256 x float]* %_0, i64 0, i64 %5
  %src.addr_1 = getelementptr [256 x float], [256 x float]* %_1, i64 0, i64 %5
  %src.addr_2 = getelementptr [256 x float], [256 x float]* %_2, i64 0, i64 %5
  %src.addr_3 = getelementptr [256 x float], [256 x float]* %_3, i64 0, i64 %5
  %6 = trunc i64 %4 to i2
  switch i2 %6, label %src.addr.case.3 [
    i2 0, label %src.addr.case.0
    i2 1, label %src.addr.case.1
    i2 -2, label %src.addr.case.2
  ]

src.addr.case.0:                                  ; preds = %for.loop
  %_01 = load float, float* %src.addr_0, align 4
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  %_12 = load float, float* %src.addr_1, align 4
  br label %src.addr.exit

src.addr.case.2:                                  ; preds = %for.loop
  %_23 = load float, float* %src.addr_2, align 4
  br label %src.addr.exit

src.addr.case.3:                                  ; preds = %for.loop
  %_34 = load float, float* %src.addr_3, align 4
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.3, %src.addr.case.2, %src.addr.case.1, %src.addr.case.0
  %7 = phi float [ %_01, %src.addr.case.0 ], [ %_12, %src.addr.case.1 ], [ %_23, %src.addr.case.2 ], [ %_34, %src.addr.case.3 ]
  store float %7, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1024
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %src.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a1024f32.13.14([1024 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3) #2 {
entry:
  %1 = icmp eq [1024 x float]* %0, null
  %2 = icmp eq [256 x float]* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [1024 x float], [1024 x float]* %0, i64 0, i64 %for.loop.idx1
  %4 = urem i64 %for.loop.idx1, 4
  %5 = udiv i64 %for.loop.idx1, 4
  %src.addr_0 = getelementptr [256 x float], [256 x float]* %_0, i64 0, i64 %5
  %src.addr_1 = getelementptr [256 x float], [256 x float]* %_1, i64 0, i64 %5
  %src.addr_2 = getelementptr [256 x float], [256 x float]* %_2, i64 0, i64 %5
  %src.addr_3 = getelementptr [256 x float], [256 x float]* %_3, i64 0, i64 %5
  %6 = trunc i64 %4 to i2
  switch i2 %6, label %src.addr.case.3 [
    i2 0, label %src.addr.case.0
    i2 1, label %src.addr.case.1
    i2 -2, label %src.addr.case.2
  ]

src.addr.case.0:                                  ; preds = %for.loop
  %_01 = load float, float* %src.addr_0, align 4
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  %_12 = load float, float* %src.addr_1, align 4
  br label %src.addr.exit

src.addr.case.2:                                  ; preds = %for.loop
  %_23 = load float, float* %src.addr_2, align 4
  br label %src.addr.exit

src.addr.case.3:                                  ; preds = %for.loop
  %_34 = load float, float* %src.addr_3, align 4
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.3, %src.addr.case.2, %src.addr.case.1, %src.addr.case.0
  %7 = phi float [ %_01, %src.addr.case.0 ], [ %_12, %src.addr.case.1 ], [ %_23, %src.addr.case.2 ], [ %_34, %src.addr.case.3 ]
  store float %7, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1024
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %src.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_out([1024 x float]* noalias "orig.arg.no"="0", [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, [1024 x float]* noalias "orig.arg.no"="2", [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_12, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_23, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_34, [1024 x float]* noalias "orig.arg.no"="4", [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_05, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_16, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_27, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_38, [1024 x float]* noalias "orig.arg.no"="6", [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_09, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_110, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_211, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_312) #4 {
entry:
  call void @onebyonecpy_hls.p0a1024f32.11.12([1024 x float]* %0, [256 x float]* %_0, [256 x float]* %_1, [256 x float]* %_2, [256 x float]* %_3)
  call void @onebyonecpy_hls.p0a1024f32.11.12([1024 x float]* %1, [256 x float]* %_01, [256 x float]* %_12, [256 x float]* %_23, [256 x float]* %_34)
  call void @onebyonecpy_hls.p0a1024f32.13.14([1024 x float]* %2, [256 x float]* %_05, [256 x float]* %_16, [256 x float]* %_27, [256 x float]* %_38)
  call void @onebyonecpy_hls.p0a1024f32.13.14([1024 x float]* %3, [256 x float]* %_09, [256 x float]* %_110, [256 x float]* %_211, [256 x float]* %_312)
  ret void
}

declare void @apatb_fft_stage_last_hw([256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*)

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_back([1024 x float]* noalias "orig.arg.no"="0", [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, [1024 x float]* noalias "orig.arg.no"="2", [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_12, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_23, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_34, [1024 x float]* noalias "orig.arg.no"="4", [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_05, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_16, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_27, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_38, [1024 x float]* noalias "orig.arg.no"="6", [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_09, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_110, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_211, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_312) #4 {
entry:
  call void @onebyonecpy_hls.p0a1024f32.13.14([1024 x float]* %2, [256 x float]* %_05, [256 x float]* %_16, [256 x float]* %_27, [256 x float]* %_38)
  call void @onebyonecpy_hls.p0a1024f32.13.14([1024 x float]* %3, [256 x float]* %_09, [256 x float]* %_110, [256 x float]* %_211, [256 x float]* %_312)
  ret void
}

define void @fft_stage_last_hw_stub_wrapper([256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*) #5 {
entry:
  %malloccall = tail call i8* @malloc(i64 4096)
  %16 = bitcast i8* %malloccall to [1024 x float]*
  %malloccall1 = tail call i8* @malloc(i64 4096)
  %17 = bitcast i8* %malloccall1 to [1024 x float]*
  %malloccall2 = tail call i8* @malloc(i64 4096)
  %18 = bitcast i8* %malloccall2 to [1024 x float]*
  %malloccall3 = tail call i8* @malloc(i64 4096)
  %19 = bitcast i8* %malloccall3 to [1024 x float]*
  call void @copy_out([1024 x float]* %16, [256 x float]* %0, [256 x float]* %1, [256 x float]* %2, [256 x float]* %3, [1024 x float]* %17, [256 x float]* %4, [256 x float]* %5, [256 x float]* %6, [256 x float]* %7, [1024 x float]* %18, [256 x float]* %8, [256 x float]* %9, [256 x float]* %10, [256 x float]* %11, [1024 x float]* %19, [256 x float]* %12, [256 x float]* %13, [256 x float]* %14, [256 x float]* %15)
  %20 = bitcast [1024 x float]* %16 to float*
  %21 = bitcast [1024 x float]* %17 to float*
  %22 = bitcast [1024 x float]* %18 to float*
  %23 = bitcast [1024 x float]* %19 to float*
  call void @fft_stage_last_hw_stub(float* %20, float* %21, float* %22, float* %23)
  call void @copy_in([1024 x float]* %16, [256 x float]* %0, [256 x float]* %1, [256 x float]* %2, [256 x float]* %3, [1024 x float]* %17, [256 x float]* %4, [256 x float]* %5, [256 x float]* %6, [256 x float]* %7, [1024 x float]* %18, [256 x float]* %8, [256 x float]* %9, [256 x float]* %10, [256 x float]* %11, [1024 x float]* %19, [256 x float]* %12, [256 x float]* %13, [256 x float]* %14, [256 x float]* %15)
  ret void
}

declare void @fft_stage_last_hw_stub(float*, float*, float*, float*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #4 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
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
!5 = !DILocation(line: 8, column: 9, scope: !6)
!6 = !DILexicalBlockFile(scope: !8, file: !7, discriminator: 0)
!7 = !DIFile(filename: "C:/Users/ShaneWu/OneDrive/Desktop/Documents/NTU/HLS/labB/hls_FFT_lastStage/solution1/directives.tcl", directory: "C:\5CUsers\5CShaneWu\5COneDrive\5CDesktop\5CDocuments\5CNTU\5CHLS\5ClabB")
!8 = distinct !DISubprogram(name: "fft_stage_last", linkageName: "_Z14fft_stage_lastPfS_S_S_", scope: !9, file: !9, line: 16, type: !10, isLocal: false, isDefinition: true, scopeLine: 17, flags: DIFlagPrototyped, isOptimized: false, unit: !16, variables: !4)
!9 = !DIFile(filename: "../FFT/FFT/HLS/1_Subcomponents/fft_stage_last/fft_stage_last.cpp", directory: "C:\5CUsers\5CShaneWu\5COneDrive\5CDesktop\5CDocuments\5CNTU\5CHLS\5ClabB")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !12, !12, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "DTYPE", file: !14, line: 3, baseType: !15)
!14 = !DIFile(filename: "../FFT/FFT/HLS/1_Subcomponents/fft_stage_last/fft_stage_last.h", directory: "C:\5CUsers\5CShaneWu\5COneDrive\5CDesktop\5CDocuments\5CNTU\5CHLS\5ClabB")
!15 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!16 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !17, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !18, globals: !2678)
!17 = !DIFile(filename: "C:/Users/ShaneWu/OneDrive/Desktop/Documents/NTU/HLS/labB/hls_FFT_lastStage/solution1/.autopilot/db\5Cfft_stage_last.pp.0.cpp", directory: "C:\5CUsers\5CShaneWu\5COneDrive\5CDesktop\5CDocuments\5CNTU\5CHLS\5ClabB")
!18 = !{!19, !2131}
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !21, file: !20, line: 174, baseType: !2128)
!20 = !DIFile(filename: "E:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\5Cap_int_base.h", directory: "C:\5CUsers\5CShaneWu\5COneDrive\5CDesktop\5CDocuments\5CNTU\5CHLS\5ClabB")
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<32, false>", file: !20, line: 154, size: 32, flags: DIFlagTypePassByValue, elements: !22, templateParams: !2014, identifier: "_ZTS11ap_int_baseILi32ELb0EE")
!22 = !{!23, !41, !43, !45, !50, !54, !57, !62, !67, !72, !77, !82, !85, !89, !94, !99, !106, !112, !117, !120, !124, !128, !131, !136, !140, !145, !146, !150, !153, !156, !159, !162, !165, !168, !171, !174, !177, !180, !183, !186, !189, !192, !195, !198, !201, !204, !207, !210, !211, !214, !217, !220, !223, !226, !229, !232, !235, !239, !240, !241, !242, !243, !246, !247, !250, !253, !254, !257, !258, !259, !260, !261, !262, !263, !266, !267, !268, !362, !363, !366, !1893, !1894, !1895, !2015, !2018, !2021, !2024, !2025, !2026, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125}
!23 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !21, baseType: !24)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<32, false>", file: !25, line: 563, size: 32, flags: DIFlagTypePassByValue, elements: !26, templateParams: !36, identifier: "_ZTS8ssdm_intILi32ELb0EE")
!25 = !DIFile(filename: "E:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\5Cap_common.h", directory: "C:\5CUsers\5CShaneWu\5COneDrive\5CDesktop\5CDocuments\5CNTU\5CHLS\5ClabB")
!26 = !{!27, !29, !33}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !24, file: !25, line: 565, baseType: !28, size: 32)
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !DISubprogram(name: "ssdm_int", scope: !24, file: !25, line: 566, type: !30, isLocal: false, isDefinition: false, scopeLine: 566, flags: DIFlagPrototyped, isOptimized: false)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !32}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!33 = !DISubprogram(name: "ssdm_int", scope: !24, file: !25, line: 567, type: !34, isLocal: false, isDefinition: false, scopeLine: 567, flags: DIFlagPrototyped, isOptimized: false)
!34 = !DISubroutineType(types: !35)
!35 = !{null, !32, !28}
!36 = !{!37, !39}
!37 = !DITemplateValueParameter(name: "_AP_N", type: !38, value: i32 32)
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !DITemplateValueParameter(name: "_AP_S", type: !40, value: i8 0)
!40 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !21, file: !20, line: 176, baseType: !42, flags: DIFlagStaticMember, extraData: i32 32)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !21, file: !20, line: 177, baseType: !44, flags: DIFlagStaticMember, extraData: i1 false)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!45 = !DISubprogram(name: "countLeadingOnes", linkageName: "_ZNK11ap_int_baseILi32ELb0EE16countLeadingOnesEv", scope: !21, file: !20, line: 156, type: !46, isLocal: false, isDefinition: false, scopeLine: 156, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!46 = !DISubroutineType(types: !47)
!47 = !{!38, !48}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!50 = !DISubprogram(name: "ap_int_base", scope: !21, file: !20, line: 221, type: !51, isLocal: false, isDefinition: false, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: false)
!51 = !DISubroutineType(types: !52)
!52 = !{null, !53}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!54 = !DISubprogram(name: "ap_int_base", scope: !21, file: !20, line: 254, type: !55, isLocal: false, isDefinition: false, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: false)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !53, !44}
!57 = !DISubprogram(name: "ap_int_base", scope: !21, file: !20, line: 255, type: !58, isLocal: false, isDefinition: false, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: false)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !53, !60}
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!61 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!62 = !DISubprogram(name: "ap_int_base", scope: !21, file: !20, line: 256, type: !63, isLocal: false, isDefinition: false, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: false)
!63 = !DISubroutineType(types: !64)
!64 = !{null, !53, !65}
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!66 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!67 = !DISubprogram(name: "ap_int_base", scope: !21, file: !20, line: 257, type: !68, isLocal: false, isDefinition: false, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: false)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !53, !70}
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!71 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!72 = !DISubprogram(name: "ap_int_base", scope: !21, file: !20, line: 258, type: !73, isLocal: false, isDefinition: false, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: false)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !53, !75}
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!76 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!77 = !DISubprogram(name: "ap_int_base", scope: !21, file: !20, line: 259, type: !78, isLocal: false, isDefinition: false, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: false)
!78 = !DISubroutineType(types: !79)
!79 = !{null, !53, !80}
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!81 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!82 = !DISubprogram(name: "ap_int_base", scope: !21, file: !20, line: 260, type: !83, isLocal: false, isDefinition: false, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: false)
!83 = !DISubroutineType(types: !84)
!84 = !{null, !53, !42}
!85 = !DISubprogram(name: "ap_int_base", scope: !21, file: !20, line: 261, type: !86, isLocal: false, isDefinition: false, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: false)
!86 = !DISubroutineType(types: !87)
!87 = !{null, !53, !88}
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!89 = !DISubprogram(name: "ap_int_base", scope: !21, file: !20, line: 262, type: !90, isLocal: false, isDefinition: false, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: false)
!90 = !DISubroutineType(types: !91)
!91 = !{null, !53, !92}
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!93 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!94 = !DISubprogram(name: "ap_int_base", scope: !21, file: !20, line: 263, type: !95, isLocal: false, isDefinition: false, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: false)
!95 = !DISubroutineType(types: !96)
!96 = !{null, !53, !97}
!97 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!98 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!99 = !DISubprogram(name: "ap_int_base", scope: !21, file: !20, line: 264, type: !100, isLocal: false, isDefinition: false, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: false)
!100 = !DISubroutineType(types: !101)
!101 = !{null, !53, !102}
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_slong", file: !104, line: 233, baseType: !105)
!104 = !DIFile(filename: "E:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\5Cap_decl.h", directory: "C:\5CUsers\5CShaneWu\5COneDrive\5CDesktop\5CDocuments\5CNTU\5CHLS\5ClabB")
!105 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!106 = !DISubprogram(name: "ap_int_base", scope: !21, file: !20, line: 265, type: !107, isLocal: false, isDefinition: false, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: false)
!107 = !DISubroutineType(types: !108)
!108 = !{null, !53, !109}
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_ulong", file: !104, line: 234, baseType: !111)
!111 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!112 = !DISubprogram(name: "ap_int_base", scope: !21, file: !20, line: 270, type: !113, isLocal: false, isDefinition: false, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: false)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !53, !115}
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "half", file: !25, line: 657, baseType: !116)
!116 = !DIBasicType(name: "__fp16", size: 16, encoding: DW_ATE_float)
!117 = !DISubprogram(name: "ap_int_base", scope: !21, file: !20, line: 276, type: !118, isLocal: false, isDefinition: false, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: false)
!118 = !DISubroutineType(types: !119)
!119 = !{null, !53, !15}
!120 = !DISubprogram(name: "ap_int_base", scope: !21, file: !20, line: 335, type: !121, isLocal: false, isDefinition: false, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: false)
!121 = !DISubroutineType(types: !122)
!122 = !{null, !53, !123}
!123 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!124 = !DISubprogram(name: "ap_int_base", scope: !21, file: !20, line: 431, type: !125, isLocal: false, isDefinition: false, scopeLine: 431, flags: DIFlagPrototyped, isOptimized: false)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !53, !127}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!128 = !DISubprogram(name: "ap_int_base", scope: !21, file: !20, line: 437, type: !129, isLocal: false, isDefinition: false, scopeLine: 437, flags: DIFlagPrototyped, isOptimized: false)
!129 = !DISubroutineType(types: !130)
!130 = !{null, !53, !127, !66}
!131 = !DISubprogram(name: "read", linkageName: "_ZNV11ap_int_baseILi32ELb0EE4readEv", scope: !21, file: !20, line: 459, type: !132, isLocal: false, isDefinition: false, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: false)
!132 = !DISubroutineType(types: !133)
!133 = !{!21, !134}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!135 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !21)
!136 = !DISubprogram(name: "write", linkageName: "_ZNV11ap_int_baseILi32ELb0EE5writeERKS0_", scope: !21, file: !20, line: 466, type: !137, isLocal: false, isDefinition: false, scopeLine: 466, flags: DIFlagPrototyped, isOptimized: false)
!137 = !DISubroutineType(types: !138)
!138 = !{null, !134, !139}
!139 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !49, size: 64)
!140 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi32ELb0EEaSERVKS0_", scope: !21, file: !20, line: 478, type: !141, isLocal: false, isDefinition: false, scopeLine: 478, flags: DIFlagPrototyped, isOptimized: false)
!141 = !DISubroutineType(types: !142)
!142 = !{null, !134, !143}
!143 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!145 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi32ELb0EEaSERKS0_", scope: !21, file: !20, line: 488, type: !137, isLocal: false, isDefinition: false, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: false)
!146 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSERVKS0_", scope: !21, file: !20, line: 505, type: !147, isLocal: false, isDefinition: false, scopeLine: 505, flags: DIFlagPrototyped, isOptimized: false)
!147 = !DISubroutineType(types: !148)
!148 = !{!149, !53, !143}
!149 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !21, size: 64)
!150 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSERKS0_", scope: !21, file: !20, line: 511, type: !151, isLocal: false, isDefinition: false, scopeLine: 511, flags: DIFlagPrototyped, isOptimized: false)
!151 = !DISubroutineType(types: !152)
!152 = !{!149, !53, !139}
!153 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSEb", scope: !21, file: !20, line: 525, type: !154, isLocal: false, isDefinition: false, scopeLine: 525, flags: DIFlagPrototyped, isOptimized: false)
!154 = !DISubroutineType(types: !155)
!155 = !{!149, !53, !40}
!156 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSEc", scope: !21, file: !20, line: 526, type: !157, isLocal: false, isDefinition: false, scopeLine: 526, flags: DIFlagPrototyped, isOptimized: false)
!157 = !DISubroutineType(types: !158)
!158 = !{!149, !53, !61}
!159 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSEa", scope: !21, file: !20, line: 527, type: !160, isLocal: false, isDefinition: false, scopeLine: 527, flags: DIFlagPrototyped, isOptimized: false)
!160 = !DISubroutineType(types: !161)
!161 = !{!149, !53, !66}
!162 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSEh", scope: !21, file: !20, line: 528, type: !163, isLocal: false, isDefinition: false, scopeLine: 528, flags: DIFlagPrototyped, isOptimized: false)
!163 = !DISubroutineType(types: !164)
!164 = !{!149, !53, !71}
!165 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSEs", scope: !21, file: !20, line: 529, type: !166, isLocal: false, isDefinition: false, scopeLine: 529, flags: DIFlagPrototyped, isOptimized: false)
!166 = !DISubroutineType(types: !167)
!167 = !{!149, !53, !76}
!168 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSEt", scope: !21, file: !20, line: 530, type: !169, isLocal: false, isDefinition: false, scopeLine: 530, flags: DIFlagPrototyped, isOptimized: false)
!169 = !DISubroutineType(types: !170)
!170 = !{!149, !53, !81}
!171 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSEi", scope: !21, file: !20, line: 531, type: !172, isLocal: false, isDefinition: false, scopeLine: 531, flags: DIFlagPrototyped, isOptimized: false)
!172 = !DISubroutineType(types: !173)
!173 = !{!149, !53, !38}
!174 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSEj", scope: !21, file: !20, line: 532, type: !175, isLocal: false, isDefinition: false, scopeLine: 532, flags: DIFlagPrototyped, isOptimized: false)
!175 = !DISubroutineType(types: !176)
!176 = !{!149, !53, !28}
!177 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSEl", scope: !21, file: !20, line: 533, type: !178, isLocal: false, isDefinition: false, scopeLine: 533, flags: DIFlagPrototyped, isOptimized: false)
!178 = !DISubroutineType(types: !179)
!179 = !{!149, !53, !93}
!180 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSEm", scope: !21, file: !20, line: 534, type: !181, isLocal: false, isDefinition: false, scopeLine: 534, flags: DIFlagPrototyped, isOptimized: false)
!181 = !DISubroutineType(types: !182)
!182 = !{!149, !53, !98}
!183 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSEx", scope: !21, file: !20, line: 535, type: !184, isLocal: false, isDefinition: false, scopeLine: 535, flags: DIFlagPrototyped, isOptimized: false)
!184 = !DISubroutineType(types: !185)
!185 = !{!149, !53, !103}
!186 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSEy", scope: !21, file: !20, line: 536, type: !187, isLocal: false, isDefinition: false, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: false)
!187 = !DISubroutineType(types: !188)
!188 = !{!149, !53, !110}
!189 = !DISubprogram(name: "operator unsigned long long", linkageName: "_ZNK11ap_int_baseILi32ELb0EEcvyEv", scope: !21, file: !20, line: 587, type: !190, isLocal: false, isDefinition: false, scopeLine: 587, flags: DIFlagPrototyped, isOptimized: false)
!190 = !DISubroutineType(types: !191)
!191 = !{!19, !48}
!192 = !DISubprogram(name: "to_bool", linkageName: "_ZNK11ap_int_baseILi32ELb0EE7to_boolEv", scope: !21, file: !20, line: 592, type: !193, isLocal: false, isDefinition: false, scopeLine: 592, flags: DIFlagPrototyped, isOptimized: false)
!193 = !DISubroutineType(types: !194)
!194 = !{!40, !48}
!195 = !DISubprogram(name: "to_char", linkageName: "_ZNK11ap_int_baseILi32ELb0EE7to_charEv", scope: !21, file: !20, line: 593, type: !196, isLocal: false, isDefinition: false, scopeLine: 593, flags: DIFlagPrototyped, isOptimized: false)
!196 = !DISubroutineType(types: !197)
!197 = !{!61, !48}
!198 = !DISubprogram(name: "to_schar", linkageName: "_ZNK11ap_int_baseILi32ELb0EE8to_scharEv", scope: !21, file: !20, line: 594, type: !199, isLocal: false, isDefinition: false, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: false)
!199 = !DISubroutineType(types: !200)
!200 = !{!66, !48}
!201 = !DISubprogram(name: "to_uchar", linkageName: "_ZNK11ap_int_baseILi32ELb0EE8to_ucharEv", scope: !21, file: !20, line: 595, type: !202, isLocal: false, isDefinition: false, scopeLine: 595, flags: DIFlagPrototyped, isOptimized: false)
!202 = !DISubroutineType(types: !203)
!203 = !{!71, !48}
!204 = !DISubprogram(name: "to_short", linkageName: "_ZNK11ap_int_baseILi32ELb0EE8to_shortEv", scope: !21, file: !20, line: 596, type: !205, isLocal: false, isDefinition: false, scopeLine: 596, flags: DIFlagPrototyped, isOptimized: false)
!205 = !DISubroutineType(types: !206)
!206 = !{!76, !48}
!207 = !DISubprogram(name: "to_ushort", linkageName: "_ZNK11ap_int_baseILi32ELb0EE9to_ushortEv", scope: !21, file: !20, line: 597, type: !208, isLocal: false, isDefinition: false, scopeLine: 597, flags: DIFlagPrototyped, isOptimized: false)
!208 = !DISubroutineType(types: !209)
!209 = !{!81, !48}
!210 = !DISubprogram(name: "to_int", linkageName: "_ZNK11ap_int_baseILi32ELb0EE6to_intEv", scope: !21, file: !20, line: 598, type: !46, isLocal: false, isDefinition: false, scopeLine: 598, flags: DIFlagPrototyped, isOptimized: false)
!211 = !DISubprogram(name: "to_uint", linkageName: "_ZNK11ap_int_baseILi32ELb0EE7to_uintEv", scope: !21, file: !20, line: 599, type: !212, isLocal: false, isDefinition: false, scopeLine: 599, flags: DIFlagPrototyped, isOptimized: false)
!212 = !DISubroutineType(types: !213)
!213 = !{!28, !48}
!214 = !DISubprogram(name: "to_long", linkageName: "_ZNK11ap_int_baseILi32ELb0EE7to_longEv", scope: !21, file: !20, line: 600, type: !215, isLocal: false, isDefinition: false, scopeLine: 600, flags: DIFlagPrototyped, isOptimized: false)
!215 = !DISubroutineType(types: !216)
!216 = !{!93, !48}
!217 = !DISubprogram(name: "to_ulong", linkageName: "_ZNK11ap_int_baseILi32ELb0EE8to_ulongEv", scope: !21, file: !20, line: 601, type: !218, isLocal: false, isDefinition: false, scopeLine: 601, flags: DIFlagPrototyped, isOptimized: false)
!218 = !DISubroutineType(types: !219)
!219 = !{!98, !48}
!220 = !DISubprogram(name: "to_int64", linkageName: "_ZNK11ap_int_baseILi32ELb0EE8to_int64Ev", scope: !21, file: !20, line: 602, type: !221, isLocal: false, isDefinition: false, scopeLine: 602, flags: DIFlagPrototyped, isOptimized: false)
!221 = !DISubroutineType(types: !222)
!222 = !{!103, !48}
!223 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK11ap_int_baseILi32ELb0EE9to_uint64Ev", scope: !21, file: !20, line: 603, type: !224, isLocal: false, isDefinition: false, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: false)
!224 = !DISubroutineType(types: !225)
!225 = !{!110, !48}
!226 = !DISubprogram(name: "to_half", linkageName: "_ZNK11ap_int_baseILi32ELb0EE7to_halfEv", scope: !21, file: !20, line: 604, type: !227, isLocal: false, isDefinition: false, scopeLine: 604, flags: DIFlagPrototyped, isOptimized: false)
!227 = !DISubroutineType(types: !228)
!228 = !{!115, !48}
!229 = !DISubprogram(name: "to_float", linkageName: "_ZNK11ap_int_baseILi32ELb0EE8to_floatEv", scope: !21, file: !20, line: 605, type: !230, isLocal: false, isDefinition: false, scopeLine: 605, flags: DIFlagPrototyped, isOptimized: false)
!230 = !DISubroutineType(types: !231)
!231 = !{!15, !48}
!232 = !DISubprogram(name: "to_double", linkageName: "_ZNK11ap_int_baseILi32ELb0EE9to_doubleEv", scope: !21, file: !20, line: 606, type: !233, isLocal: false, isDefinition: false, scopeLine: 606, flags: DIFlagPrototyped, isOptimized: false)
!233 = !DISubroutineType(types: !234)
!234 = !{!123, !48}
!235 = !DISubprogram(name: "length", linkageName: "_ZNVK11ap_int_baseILi32ELb0EE6lengthEv", scope: !21, file: !20, line: 630, type: !236, isLocal: false, isDefinition: false, scopeLine: 630, flags: DIFlagPrototyped, isOptimized: false)
!236 = !DISubroutineType(types: !237)
!237 = !{!38, !238}
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!239 = !DISubprogram(name: "length", linkageName: "_ZNK11ap_int_baseILi32ELb0EE6lengthEv", scope: !21, file: !20, line: 631, type: !46, isLocal: false, isDefinition: false, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: false)
!240 = !DISubprogram(name: "iszero", linkageName: "_ZNK11ap_int_baseILi32ELb0EE6iszeroEv", scope: !21, file: !20, line: 634, type: !193, isLocal: false, isDefinition: false, scopeLine: 634, flags: DIFlagPrototyped, isOptimized: false)
!241 = !DISubprogram(name: "is_zero", linkageName: "_ZNK11ap_int_baseILi32ELb0EE7is_zeroEv", scope: !21, file: !20, line: 637, type: !193, isLocal: false, isDefinition: false, scopeLine: 637, flags: DIFlagPrototyped, isOptimized: false)
!242 = !DISubprogram(name: "sign", linkageName: "_ZNK11ap_int_baseILi32ELb0EE4signEv", scope: !21, file: !20, line: 640, type: !193, isLocal: false, isDefinition: false, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: false)
!243 = !DISubprogram(name: "clear", linkageName: "_ZN11ap_int_baseILi32ELb0EE5clearEi", scope: !21, file: !20, line: 649, type: !244, isLocal: false, isDefinition: false, scopeLine: 649, flags: DIFlagPrototyped, isOptimized: false)
!244 = !DISubroutineType(types: !245)
!245 = !{null, !53, !38}
!246 = !DISubprogram(name: "invert", linkageName: "_ZN11ap_int_baseILi32ELb0EE6invertEi", scope: !21, file: !20, line: 655, type: !244, isLocal: false, isDefinition: false, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: false)
!247 = !DISubprogram(name: "test", linkageName: "_ZNK11ap_int_baseILi32ELb0EE4testEi", scope: !21, file: !20, line: 664, type: !248, isLocal: false, isDefinition: false, scopeLine: 664, flags: DIFlagPrototyped, isOptimized: false)
!248 = !DISubroutineType(types: !249)
!249 = !{!40, !48, !38}
!250 = !DISubprogram(name: "get", linkageName: "_ZN11ap_int_baseILi32ELb0EE3getEv", scope: !21, file: !20, line: 670, type: !251, isLocal: false, isDefinition: false, scopeLine: 670, flags: DIFlagPrototyped, isOptimized: false)
!251 = !DISubroutineType(types: !252)
!252 = !{!149, !53}
!253 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi32ELb0EE3setEi", scope: !21, file: !20, line: 673, type: !244, isLocal: false, isDefinition: false, scopeLine: 673, flags: DIFlagPrototyped, isOptimized: false)
!254 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi32ELb0EE3setEib", scope: !21, file: !20, line: 679, type: !255, isLocal: false, isDefinition: false, scopeLine: 679, flags: DIFlagPrototyped, isOptimized: false)
!255 = !DISubroutineType(types: !256)
!256 = !{null, !53, !38, !40}
!257 = !DISubprogram(name: "lrotate", linkageName: "_ZN11ap_int_baseILi32ELb0EE7lrotateEi", scope: !21, file: !20, line: 686, type: !172, isLocal: false, isDefinition: false, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: false)
!258 = !DISubprogram(name: "rrotate", linkageName: "_ZN11ap_int_baseILi32ELb0EE7rrotateEi", scope: !21, file: !20, line: 701, type: !172, isLocal: false, isDefinition: false, scopeLine: 701, flags: DIFlagPrototyped, isOptimized: false)
!259 = !DISubprogram(name: "reverse", linkageName: "_ZN11ap_int_baseILi32ELb0EE7reverseEv", scope: !21, file: !20, line: 716, type: !251, isLocal: false, isDefinition: false, scopeLine: 716, flags: DIFlagPrototyped, isOptimized: false)
!260 = !DISubprogram(name: "set_bit", linkageName: "_ZN11ap_int_baseILi32ELb0EE7set_bitEib", scope: !21, file: !20, line: 722, type: !255, isLocal: false, isDefinition: false, scopeLine: 722, flags: DIFlagPrototyped, isOptimized: false)
!261 = !DISubprogram(name: "get_bit", linkageName: "_ZNK11ap_int_baseILi32ELb0EE7get_bitEi", scope: !21, file: !20, line: 727, type: !248, isLocal: false, isDefinition: false, scopeLine: 727, flags: DIFlagPrototyped, isOptimized: false)
!262 = !DISubprogram(name: "b_not", linkageName: "_ZN11ap_int_baseILi32ELb0EE5b_notEv", scope: !21, file: !20, line: 732, type: !51, isLocal: false, isDefinition: false, scopeLine: 732, flags: DIFlagPrototyped, isOptimized: false)
!263 = !DISubprogram(name: "checkOverflowCsim", linkageName: "_ZNK11ap_int_baseILi32ELb0EE17checkOverflowCsimEibb", scope: !21, file: !20, line: 806, type: !264, isLocal: false, isDefinition: false, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: false)
!264 = !DISubroutineType(types: !265)
!265 = !{!40, !48, !38, !40, !40}
!266 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi32ELb0EEppEv", scope: !21, file: !20, line: 911, type: !251, isLocal: false, isDefinition: false, scopeLine: 911, flags: DIFlagPrototyped, isOptimized: false)
!267 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi32ELb0EEmmEv", scope: !21, file: !20, line: 915, type: !251, isLocal: false, isDefinition: false, scopeLine: 915, flags: DIFlagPrototyped, isOptimized: false)
!268 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi32ELb0EEppEi", scope: !21, file: !20, line: 923, type: !269, isLocal: false, isDefinition: false, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: false)
!269 = !DISubroutineType(types: !270)
!270 = !{!271, !53, !38}
!271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "arg1", scope: !273, file: !20, line: 213, baseType: !277)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<32, false>", scope: !21, file: !20, line: 180, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !274, identifier: "_ZTSN11ap_int_baseILi32ELb0EE5RTypeILi32ELb0EEE")
!274 = !{!275, !276}
!275 = !DITemplateValueParameter(name: "_AP_W2", type: !38, value: i32 32)
!276 = !DITemplateValueParameter(name: "_AP_S2", type: !40, value: i8 0)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !278, file: !20, line: 151, baseType: !279)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_int_factory<32, false>", file: !20, line: 151, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !274, identifier: "_ZTS15_ap_int_factoryILi32ELb0EE")
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<32>", file: !280, line: 227, size: 32, flags: DIFlagTypePassByValue, elements: !281, templateParams: !360, identifier: "_ZTS7ap_uintILi32EE")
!280 = !DIFile(filename: "E:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\5Cap_int.h", directory: "C:\5CUsers\5CShaneWu\5COneDrive\5CDesktop\5CDocuments\5CNTU\5CHLS\5ClabB")
!281 = !{!282, !283, !287, !290, !293, !296, !299, !302, !305, !308, !311, !314, !317, !320, !323, !326, !329, !332, !335, !338, !341, !347, !353, !357}
!282 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !279, baseType: !21)
!283 = !DISubprogram(name: "ap_uint", scope: !279, file: !280, line: 230, type: !284, isLocal: false, isDefinition: false, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: false)
!284 = !DISubroutineType(types: !285)
!285 = !{null, !286}
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!287 = !DISubprogram(name: "ap_uint", scope: !279, file: !280, line: 258, type: !288, isLocal: false, isDefinition: false, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: false)
!288 = !DISubroutineType(types: !289)
!289 = !{null, !286, !28, !40}
!290 = !DISubprogram(name: "ap_uint", scope: !279, file: !280, line: 327, type: !291, isLocal: false, isDefinition: false, scopeLine: 327, flags: DIFlagPrototyped, isOptimized: false)
!291 = !DISubroutineType(types: !292)
!292 = !{null, !286, !40}
!293 = !DISubprogram(name: "ap_uint", scope: !279, file: !280, line: 328, type: !294, isLocal: false, isDefinition: false, scopeLine: 328, flags: DIFlagPrototyped, isOptimized: false)
!294 = !DISubroutineType(types: !295)
!295 = !{null, !286, !61}
!296 = !DISubprogram(name: "ap_uint", scope: !279, file: !280, line: 329, type: !297, isLocal: false, isDefinition: false, scopeLine: 329, flags: DIFlagPrototyped, isOptimized: false)
!297 = !DISubroutineType(types: !298)
!298 = !{null, !286, !66}
!299 = !DISubprogram(name: "ap_uint", scope: !279, file: !280, line: 330, type: !300, isLocal: false, isDefinition: false, scopeLine: 330, flags: DIFlagPrototyped, isOptimized: false)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !286, !71}
!302 = !DISubprogram(name: "ap_uint", scope: !279, file: !280, line: 331, type: !303, isLocal: false, isDefinition: false, scopeLine: 331, flags: DIFlagPrototyped, isOptimized: false)
!303 = !DISubroutineType(types: !304)
!304 = !{null, !286, !76}
!305 = !DISubprogram(name: "ap_uint", scope: !279, file: !280, line: 332, type: !306, isLocal: false, isDefinition: false, scopeLine: 332, flags: DIFlagPrototyped, isOptimized: false)
!306 = !DISubroutineType(types: !307)
!307 = !{null, !286, !81}
!308 = !DISubprogram(name: "ap_uint", scope: !279, file: !280, line: 333, type: !309, isLocal: false, isDefinition: false, scopeLine: 333, flags: DIFlagPrototyped, isOptimized: false)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !286, !38}
!311 = !DISubprogram(name: "ap_uint", scope: !279, file: !280, line: 334, type: !312, isLocal: false, isDefinition: false, scopeLine: 334, flags: DIFlagPrototyped, isOptimized: false)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !286, !28}
!314 = !DISubprogram(name: "ap_uint", scope: !279, file: !280, line: 335, type: !315, isLocal: false, isDefinition: false, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: false)
!315 = !DISubroutineType(types: !316)
!316 = !{null, !286, !93}
!317 = !DISubprogram(name: "ap_uint", scope: !279, file: !280, line: 336, type: !318, isLocal: false, isDefinition: false, scopeLine: 336, flags: DIFlagPrototyped, isOptimized: false)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !286, !98}
!320 = !DISubprogram(name: "ap_uint", scope: !279, file: !280, line: 337, type: !321, isLocal: false, isDefinition: false, scopeLine: 337, flags: DIFlagPrototyped, isOptimized: false)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !286, !103}
!323 = !DISubprogram(name: "ap_uint", scope: !279, file: !280, line: 338, type: !324, isLocal: false, isDefinition: false, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: false)
!324 = !DISubroutineType(types: !325)
!325 = !{null, !286, !110}
!326 = !DISubprogram(name: "ap_uint", scope: !279, file: !280, line: 340, type: !327, isLocal: false, isDefinition: false, scopeLine: 340, flags: DIFlagPrototyped, isOptimized: false)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !286, !123}
!329 = !DISubprogram(name: "ap_uint", scope: !279, file: !280, line: 341, type: !330, isLocal: false, isDefinition: false, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: false)
!330 = !DISubroutineType(types: !331)
!331 = !{null, !286, !15}
!332 = !DISubprogram(name: "ap_uint", scope: !279, file: !280, line: 342, type: !333, isLocal: false, isDefinition: false, scopeLine: 342, flags: DIFlagPrototyped, isOptimized: false)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !286, !115}
!335 = !DISubprogram(name: "ap_uint", scope: !279, file: !280, line: 345, type: !336, isLocal: false, isDefinition: false, scopeLine: 345, flags: DIFlagPrototyped, isOptimized: false)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !286, !127}
!338 = !DISubprogram(name: "ap_uint", scope: !279, file: !280, line: 347, type: !339, isLocal: false, isDefinition: false, scopeLine: 347, flags: DIFlagPrototyped, isOptimized: false)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !286, !127, !66}
!341 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi32EEaSERKS0_", scope: !279, file: !280, line: 353, type: !342, isLocal: false, isDefinition: false, scopeLine: 353, flags: DIFlagPrototyped, isOptimized: false)
!342 = !DISubroutineType(types: !343)
!343 = !{!344, !286, !345}
!344 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !279, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !279)
!347 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi32EEaSERVKS0_", scope: !279, file: !280, line: 363, type: !348, isLocal: false, isDefinition: false, scopeLine: 363, flags: DIFlagPrototyped, isOptimized: false)
!348 = !DISubroutineType(types: !349)
!349 = !{!344, !286, !350}
!350 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !279)
!353 = !DISubprogram(name: "operator=", linkageName: "_ZNV7ap_uintILi32EEaSERKS0_", scope: !279, file: !280, line: 369, type: !354, isLocal: false, isDefinition: false, scopeLine: 369, flags: DIFlagPrototyped, isOptimized: false)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !356, !345}
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!357 = !DISubprogram(name: "operator=", linkageName: "_ZNV7ap_uintILi32EEaSERVKS0_", scope: !279, file: !280, line: 373, type: !358, isLocal: false, isDefinition: false, scopeLine: 373, flags: DIFlagPrototyped, isOptimized: false)
!358 = !DISubroutineType(types: !359)
!359 = !{null, !356, !350}
!360 = !{!361}
!361 = !DITemplateValueParameter(name: "_AP_W", type: !38, value: i32 32)
!362 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi32ELb0EEmmEi", scope: !21, file: !20, line: 928, type: !269, isLocal: false, isDefinition: false, scopeLine: 928, flags: DIFlagPrototyped, isOptimized: false)
!363 = !DISubprogram(name: "operator+", linkageName: "_ZNK11ap_int_baseILi32ELb0EEpsEv", scope: !21, file: !20, line: 937, type: !364, isLocal: false, isDefinition: false, scopeLine: 937, flags: DIFlagPrototyped, isOptimized: false)
!364 = !DISubroutineType(types: !365)
!365 = !{!272, !48}
!366 = !DISubprogram(name: "operator-", linkageName: "_ZNK11ap_int_baseILi32ELb0EEngEv", scope: !21, file: !20, line: 940, type: !367, isLocal: false, isDefinition: false, scopeLine: 940, flags: DIFlagPrototyped, isOptimized: false)
!367 = !DISubroutineType(types: !368)
!368 = !{!369, !48}
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "minus", scope: !370, file: !20, line: 209, baseType: !373)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<1, false>", scope: !21, file: !20, line: 180, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !371, identifier: "_ZTSN11ap_int_baseILi32ELb0EE5RTypeILi1ELb0EEE")
!371 = !{!372, !276}
!372 = !DITemplateValueParameter(name: "_AP_W2", type: !38, value: i32 1)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !374, file: !20, line: 149, baseType: !378)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_int_factory<33, true>", file: !20, line: 149, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !375, identifier: "_ZTS15_ap_int_factoryILi33ELb1EE")
!375 = !{!376, !377}
!376 = !DITemplateValueParameter(name: "_AP_W2", type: !38, value: i32 33)
!377 = !DITemplateValueParameter(name: "_AP_S2", type: !40, value: i8 1)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int<33>", file: !379, line: 18, size: 64, flags: DIFlagTypePassByValue, elements: !380, templateParams: !1892, identifier: "_ZTS6ap_intILi33EE")
!379 = !DIFile(filename: "r:/ci/prod/2022.1/rdi_builds/continuous/2022_04_18_3526262/src/shared/hls/clib/include/header_files\5Cap_int.h", directory: "R:\5Cci\5Cprod\5C2022.1\5Crdi_builds\5Ccontinuous\5C2022_04_18_3526262\5Csrc\5Cshared")
!380 = !{!381, !1814, !1818, !1822, !1825, !1828, !1831, !1834, !1837, !1840, !1843, !1846, !1849, !1852, !1855, !1858, !1861, !1864, !1867, !1870, !1873, !1879, !1885, !1889}
!381 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !378, baseType: !382)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<33, true>", file: !383, line: 108, size: 64, flags: DIFlagTypePassByValue, elements: !384, templateParams: !1799, identifier: "_ZTS11ap_int_baseILi33ELb1EE")
!383 = !DIFile(filename: "r:/ci/prod/2022.1/rdi_builds/continuous/2022_04_18_3526262/src/shared/hls/clib/include/header_files\5Cap_int_base.h", directory: "R:\5Cci\5Cprod\5C2022.1\5Crdi_builds\5Ccontinuous\5C2022_04_18_3526262\5Csrc\5Cshared")
!384 = !{!385, !401, !402, !403, !408, !412, !415, !418, !421, !424, !427, !430, !433, !436, !439, !442, !448, !453, !457, !460, !463, !466, !469, !474, !478, !483, !484, !488, !491, !494, !497, !500, !503, !506, !509, !512, !515, !518, !521, !524, !527, !535, !538, !541, !544, !547, !550, !553, !554, !557, !560, !563, !566, !569, !572, !575, !578, !582, !583, !584, !585, !586, !589, !590, !593, !596, !597, !600, !601, !602, !603, !604, !605, !606, !609, !610, !611, !618, !619, !622, !1692, !1693, !1694, !1698, !1701, !1704, !1707, !1708, !1709, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811}
!385 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !382, baseType: !386)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<33, true>", file: !387, line: 509, size: 64, flags: DIFlagTypePassByValue, elements: !388, templateParams: !398, identifier: "_ZTS8ssdm_intILi33ELb1EE")
!387 = !DIFile(filename: "r:/ci/prod/2022.1/rdi_builds/continuous/2022_04_18_3526262/src/shared/hls/clib/include/header_files\5Cap_common.h", directory: "R:\5Cci\5Cprod\5C2022.1\5Crdi_builds\5Ccontinuous\5C2022_04_18_3526262\5Csrc\5Cshared")
!388 = !{!389, !391, !395}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !386, file: !387, line: 511, baseType: !390, size: 33, align: 64)
!390 = !DIBasicType(name: "int33", size: 33, encoding: DW_ATE_signed)
!391 = !DISubprogram(name: "ssdm_int", scope: !386, file: !387, line: 512, type: !392, isLocal: false, isDefinition: false, scopeLine: 512, flags: DIFlagPrototyped, isOptimized: false)
!392 = !DISubroutineType(types: !393)
!393 = !{null, !394}
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!395 = !DISubprogram(name: "ssdm_int", scope: !386, file: !387, line: 513, type: !396, isLocal: false, isDefinition: false, scopeLine: 513, flags: DIFlagPrototyped, isOptimized: false)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !394, !390}
!398 = !{!399, !400}
!399 = !DITemplateValueParameter(name: "_AP_N", type: !38, value: i32 33)
!400 = !DITemplateValueParameter(name: "_AP_S", type: !40, value: i8 1)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !382, file: !383, line: 130, baseType: !42, flags: DIFlagStaticMember, extraData: i32 33)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !382, file: !383, line: 131, baseType: !44, flags: DIFlagStaticMember, extraData: i1 true)
!403 = !DISubprogram(name: "countLeadingOnes", linkageName: "_ZNK11ap_int_baseILi33ELb1EE16countLeadingOnesEv", scope: !382, file: !383, line: 110, type: !404, isLocal: false, isDefinition: false, scopeLine: 110, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!404 = !DISubroutineType(types: !405)
!405 = !{!38, !406}
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !382)
!408 = !DISubprogram(name: "ap_int_base", scope: !382, file: !383, line: 175, type: !409, isLocal: false, isDefinition: false, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !411}
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!412 = !DISubprogram(name: "ap_int_base", scope: !382, file: !383, line: 208, type: !413, isLocal: false, isDefinition: false, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: false)
!413 = !DISubroutineType(types: !414)
!414 = !{null, !411, !44}
!415 = !DISubprogram(name: "ap_int_base", scope: !382, file: !383, line: 209, type: !416, isLocal: false, isDefinition: false, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: false)
!416 = !DISubroutineType(types: !417)
!417 = !{null, !411, !60}
!418 = !DISubprogram(name: "ap_int_base", scope: !382, file: !383, line: 210, type: !419, isLocal: false, isDefinition: false, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: false)
!419 = !DISubroutineType(types: !420)
!420 = !{null, !411, !65}
!421 = !DISubprogram(name: "ap_int_base", scope: !382, file: !383, line: 211, type: !422, isLocal: false, isDefinition: false, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: false)
!422 = !DISubroutineType(types: !423)
!423 = !{null, !411, !70}
!424 = !DISubprogram(name: "ap_int_base", scope: !382, file: !383, line: 212, type: !425, isLocal: false, isDefinition: false, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: false)
!425 = !DISubroutineType(types: !426)
!426 = !{null, !411, !75}
!427 = !DISubprogram(name: "ap_int_base", scope: !382, file: !383, line: 213, type: !428, isLocal: false, isDefinition: false, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: false)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !411, !80}
!430 = !DISubprogram(name: "ap_int_base", scope: !382, file: !383, line: 214, type: !431, isLocal: false, isDefinition: false, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: false)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !411, !42}
!433 = !DISubprogram(name: "ap_int_base", scope: !382, file: !383, line: 215, type: !434, isLocal: false, isDefinition: false, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: false)
!434 = !DISubroutineType(types: !435)
!435 = !{null, !411, !88}
!436 = !DISubprogram(name: "ap_int_base", scope: !382, file: !383, line: 216, type: !437, isLocal: false, isDefinition: false, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: false)
!437 = !DISubroutineType(types: !438)
!438 = !{null, !411, !92}
!439 = !DISubprogram(name: "ap_int_base", scope: !382, file: !383, line: 217, type: !440, isLocal: false, isDefinition: false, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: false)
!440 = !DISubroutineType(types: !441)
!441 = !{null, !411, !97}
!442 = !DISubprogram(name: "ap_int_base", scope: !382, file: !383, line: 218, type: !443, isLocal: false, isDefinition: false, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: false)
!443 = !DISubroutineType(types: !444)
!444 = !{null, !411, !445}
!445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !446)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_slong", file: !447, line: 187, baseType: !105)
!447 = !DIFile(filename: "r:/ci/prod/2022.1/rdi_builds/continuous/2022_04_18_3526262/src/shared/hls/clib/include/header_files\5Cap_decl.h", directory: "R:\5Cci\5Cprod\5C2022.1\5Crdi_builds\5Ccontinuous\5C2022_04_18_3526262\5Csrc\5Cshared")
!448 = !DISubprogram(name: "ap_int_base", scope: !382, file: !383, line: 219, type: !449, isLocal: false, isDefinition: false, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: false)
!449 = !DISubroutineType(types: !450)
!450 = !{null, !411, !451}
!451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !452)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_ulong", file: !447, line: 188, baseType: !111)
!453 = !DISubprogram(name: "ap_int_base", scope: !382, file: !383, line: 224, type: !454, isLocal: false, isDefinition: false, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: false)
!454 = !DISubroutineType(types: !455)
!455 = !{null, !411, !456}
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "half", file: !387, line: 611, baseType: !116)
!457 = !DISubprogram(name: "ap_int_base", scope: !382, file: !383, line: 230, type: !458, isLocal: false, isDefinition: false, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: false)
!458 = !DISubroutineType(types: !459)
!459 = !{null, !411, !15}
!460 = !DISubprogram(name: "ap_int_base", scope: !382, file: !383, line: 289, type: !461, isLocal: false, isDefinition: false, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: false)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !411, !123}
!463 = !DISubprogram(name: "ap_int_base", scope: !382, file: !383, line: 385, type: !464, isLocal: false, isDefinition: false, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: false)
!464 = !DISubroutineType(types: !465)
!465 = !{null, !411, !127}
!466 = !DISubprogram(name: "ap_int_base", scope: !382, file: !383, line: 391, type: !467, isLocal: false, isDefinition: false, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: false)
!467 = !DISubroutineType(types: !468)
!468 = !{null, !411, !127, !66}
!469 = !DISubprogram(name: "read", linkageName: "_ZNV11ap_int_baseILi33ELb1EE4readEv", scope: !382, file: !383, line: 413, type: !470, isLocal: false, isDefinition: false, scopeLine: 413, flags: DIFlagPrototyped, isOptimized: false)
!470 = !DISubroutineType(types: !471)
!471 = !{!382, !472}
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!473 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !382)
!474 = !DISubprogram(name: "write", linkageName: "_ZNV11ap_int_baseILi33ELb1EE5writeERKS0_", scope: !382, file: !383, line: 420, type: !475, isLocal: false, isDefinition: false, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: false)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !472, !477}
!477 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !407, size: 64)
!478 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi33ELb1EEaSERVKS0_", scope: !382, file: !383, line: 432, type: !479, isLocal: false, isDefinition: false, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: false)
!479 = !DISubroutineType(types: !480)
!480 = !{null, !472, !481}
!481 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !473)
!483 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi33ELb1EEaSERKS0_", scope: !382, file: !383, line: 442, type: !475, isLocal: false, isDefinition: false, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: false)
!484 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSERVKS0_", scope: !382, file: !383, line: 459, type: !485, isLocal: false, isDefinition: false, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: false)
!485 = !DISubroutineType(types: !486)
!486 = !{!487, !411, !481}
!487 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !382, size: 64)
!488 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSERKS0_", scope: !382, file: !383, line: 465, type: !489, isLocal: false, isDefinition: false, scopeLine: 465, flags: DIFlagPrototyped, isOptimized: false)
!489 = !DISubroutineType(types: !490)
!490 = !{!487, !411, !477}
!491 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSEb", scope: !382, file: !383, line: 479, type: !492, isLocal: false, isDefinition: false, scopeLine: 479, flags: DIFlagPrototyped, isOptimized: false)
!492 = !DISubroutineType(types: !493)
!493 = !{!487, !411, !40}
!494 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSEc", scope: !382, file: !383, line: 480, type: !495, isLocal: false, isDefinition: false, scopeLine: 480, flags: DIFlagPrototyped, isOptimized: false)
!495 = !DISubroutineType(types: !496)
!496 = !{!487, !411, !61}
!497 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSEa", scope: !382, file: !383, line: 481, type: !498, isLocal: false, isDefinition: false, scopeLine: 481, flags: DIFlagPrototyped, isOptimized: false)
!498 = !DISubroutineType(types: !499)
!499 = !{!487, !411, !66}
!500 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSEh", scope: !382, file: !383, line: 482, type: !501, isLocal: false, isDefinition: false, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: false)
!501 = !DISubroutineType(types: !502)
!502 = !{!487, !411, !71}
!503 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSEs", scope: !382, file: !383, line: 483, type: !504, isLocal: false, isDefinition: false, scopeLine: 483, flags: DIFlagPrototyped, isOptimized: false)
!504 = !DISubroutineType(types: !505)
!505 = !{!487, !411, !76}
!506 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSEt", scope: !382, file: !383, line: 484, type: !507, isLocal: false, isDefinition: false, scopeLine: 484, flags: DIFlagPrototyped, isOptimized: false)
!507 = !DISubroutineType(types: !508)
!508 = !{!487, !411, !81}
!509 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSEi", scope: !382, file: !383, line: 485, type: !510, isLocal: false, isDefinition: false, scopeLine: 485, flags: DIFlagPrototyped, isOptimized: false)
!510 = !DISubroutineType(types: !511)
!511 = !{!487, !411, !38}
!512 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSEj", scope: !382, file: !383, line: 486, type: !513, isLocal: false, isDefinition: false, scopeLine: 486, flags: DIFlagPrototyped, isOptimized: false)
!513 = !DISubroutineType(types: !514)
!514 = !{!487, !411, !28}
!515 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSEl", scope: !382, file: !383, line: 487, type: !516, isLocal: false, isDefinition: false, scopeLine: 487, flags: DIFlagPrototyped, isOptimized: false)
!516 = !DISubroutineType(types: !517)
!517 = !{!487, !411, !93}
!518 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSEm", scope: !382, file: !383, line: 488, type: !519, isLocal: false, isDefinition: false, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: false)
!519 = !DISubroutineType(types: !520)
!520 = !{!487, !411, !98}
!521 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSEx", scope: !382, file: !383, line: 489, type: !522, isLocal: false, isDefinition: false, scopeLine: 489, flags: DIFlagPrototyped, isOptimized: false)
!522 = !DISubroutineType(types: !523)
!523 = !{!487, !411, !446}
!524 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSEy", scope: !382, file: !383, line: 490, type: !525, isLocal: false, isDefinition: false, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: false)
!525 = !DISubroutineType(types: !526)
!526 = !{!487, !411, !452}
!527 = !DISubprogram(name: "operator long long", linkageName: "_ZNK11ap_int_baseILi33ELb1EEcvxEv", scope: !382, file: !383, line: 541, type: !528, isLocal: false, isDefinition: false, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: false)
!528 = !DISubroutineType(types: !529)
!529 = !{!530, !406}
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !382, file: !383, line: 128, baseType: !531)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "Type", scope: !532, file: !383, line: 46, baseType: !446)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "retval<8, true>", file: !20, line: 91, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !533, identifier: "_ZTS6retvalILi8ELb1EE")
!533 = !{!534, !400}
!534 = !DITemplateValueParameter(name: "_AP_N", type: !38, value: i32 8)
!535 = !DISubprogram(name: "to_bool", linkageName: "_ZNK11ap_int_baseILi33ELb1EE7to_boolEv", scope: !382, file: !383, line: 546, type: !536, isLocal: false, isDefinition: false, scopeLine: 546, flags: DIFlagPrototyped, isOptimized: false)
!536 = !DISubroutineType(types: !537)
!537 = !{!40, !406}
!538 = !DISubprogram(name: "to_char", linkageName: "_ZNK11ap_int_baseILi33ELb1EE7to_charEv", scope: !382, file: !383, line: 547, type: !539, isLocal: false, isDefinition: false, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: false)
!539 = !DISubroutineType(types: !540)
!540 = !{!61, !406}
!541 = !DISubprogram(name: "to_schar", linkageName: "_ZNK11ap_int_baseILi33ELb1EE8to_scharEv", scope: !382, file: !383, line: 548, type: !542, isLocal: false, isDefinition: false, scopeLine: 548, flags: DIFlagPrototyped, isOptimized: false)
!542 = !DISubroutineType(types: !543)
!543 = !{!66, !406}
!544 = !DISubprogram(name: "to_uchar", linkageName: "_ZNK11ap_int_baseILi33ELb1EE8to_ucharEv", scope: !382, file: !383, line: 549, type: !545, isLocal: false, isDefinition: false, scopeLine: 549, flags: DIFlagPrototyped, isOptimized: false)
!545 = !DISubroutineType(types: !546)
!546 = !{!71, !406}
!547 = !DISubprogram(name: "to_short", linkageName: "_ZNK11ap_int_baseILi33ELb1EE8to_shortEv", scope: !382, file: !383, line: 550, type: !548, isLocal: false, isDefinition: false, scopeLine: 550, flags: DIFlagPrototyped, isOptimized: false)
!548 = !DISubroutineType(types: !549)
!549 = !{!76, !406}
!550 = !DISubprogram(name: "to_ushort", linkageName: "_ZNK11ap_int_baseILi33ELb1EE9to_ushortEv", scope: !382, file: !383, line: 551, type: !551, isLocal: false, isDefinition: false, scopeLine: 551, flags: DIFlagPrototyped, isOptimized: false)
!551 = !DISubroutineType(types: !552)
!552 = !{!81, !406}
!553 = !DISubprogram(name: "to_int", linkageName: "_ZNK11ap_int_baseILi33ELb1EE6to_intEv", scope: !382, file: !383, line: 552, type: !404, isLocal: false, isDefinition: false, scopeLine: 552, flags: DIFlagPrototyped, isOptimized: false)
!554 = !DISubprogram(name: "to_uint", linkageName: "_ZNK11ap_int_baseILi33ELb1EE7to_uintEv", scope: !382, file: !383, line: 553, type: !555, isLocal: false, isDefinition: false, scopeLine: 553, flags: DIFlagPrototyped, isOptimized: false)
!555 = !DISubroutineType(types: !556)
!556 = !{!28, !406}
!557 = !DISubprogram(name: "to_long", linkageName: "_ZNK11ap_int_baseILi33ELb1EE7to_longEv", scope: !382, file: !383, line: 554, type: !558, isLocal: false, isDefinition: false, scopeLine: 554, flags: DIFlagPrototyped, isOptimized: false)
!558 = !DISubroutineType(types: !559)
!559 = !{!93, !406}
!560 = !DISubprogram(name: "to_ulong", linkageName: "_ZNK11ap_int_baseILi33ELb1EE8to_ulongEv", scope: !382, file: !383, line: 555, type: !561, isLocal: false, isDefinition: false, scopeLine: 555, flags: DIFlagPrototyped, isOptimized: false)
!561 = !DISubroutineType(types: !562)
!562 = !{!98, !406}
!563 = !DISubprogram(name: "to_int64", linkageName: "_ZNK11ap_int_baseILi33ELb1EE8to_int64Ev", scope: !382, file: !383, line: 556, type: !564, isLocal: false, isDefinition: false, scopeLine: 556, flags: DIFlagPrototyped, isOptimized: false)
!564 = !DISubroutineType(types: !565)
!565 = !{!446, !406}
!566 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK11ap_int_baseILi33ELb1EE9to_uint64Ev", scope: !382, file: !383, line: 557, type: !567, isLocal: false, isDefinition: false, scopeLine: 557, flags: DIFlagPrototyped, isOptimized: false)
!567 = !DISubroutineType(types: !568)
!568 = !{!452, !406}
!569 = !DISubprogram(name: "to_half", linkageName: "_ZNK11ap_int_baseILi33ELb1EE7to_halfEv", scope: !382, file: !383, line: 558, type: !570, isLocal: false, isDefinition: false, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: false)
!570 = !DISubroutineType(types: !571)
!571 = !{!456, !406}
!572 = !DISubprogram(name: "to_float", linkageName: "_ZNK11ap_int_baseILi33ELb1EE8to_floatEv", scope: !382, file: !383, line: 559, type: !573, isLocal: false, isDefinition: false, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false)
!573 = !DISubroutineType(types: !574)
!574 = !{!15, !406}
!575 = !DISubprogram(name: "to_double", linkageName: "_ZNK11ap_int_baseILi33ELb1EE9to_doubleEv", scope: !382, file: !383, line: 560, type: !576, isLocal: false, isDefinition: false, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: false)
!576 = !DISubroutineType(types: !577)
!577 = !{!123, !406}
!578 = !DISubprogram(name: "length", linkageName: "_ZNVK11ap_int_baseILi33ELb1EE6lengthEv", scope: !382, file: !383, line: 584, type: !579, isLocal: false, isDefinition: false, scopeLine: 584, flags: DIFlagPrototyped, isOptimized: false)
!579 = !DISubroutineType(types: !580)
!580 = !{!38, !581}
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!582 = !DISubprogram(name: "length", linkageName: "_ZNK11ap_int_baseILi33ELb1EE6lengthEv", scope: !382, file: !383, line: 585, type: !404, isLocal: false, isDefinition: false, scopeLine: 585, flags: DIFlagPrototyped, isOptimized: false)
!583 = !DISubprogram(name: "iszero", linkageName: "_ZNK11ap_int_baseILi33ELb1EE6iszeroEv", scope: !382, file: !383, line: 588, type: !536, isLocal: false, isDefinition: false, scopeLine: 588, flags: DIFlagPrototyped, isOptimized: false)
!584 = !DISubprogram(name: "is_zero", linkageName: "_ZNK11ap_int_baseILi33ELb1EE7is_zeroEv", scope: !382, file: !383, line: 591, type: !536, isLocal: false, isDefinition: false, scopeLine: 591, flags: DIFlagPrototyped, isOptimized: false)
!585 = !DISubprogram(name: "sign", linkageName: "_ZNK11ap_int_baseILi33ELb1EE4signEv", scope: !382, file: !383, line: 594, type: !536, isLocal: false, isDefinition: false, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: false)
!586 = !DISubprogram(name: "clear", linkageName: "_ZN11ap_int_baseILi33ELb1EE5clearEi", scope: !382, file: !383, line: 603, type: !587, isLocal: false, isDefinition: false, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: false)
!587 = !DISubroutineType(types: !588)
!588 = !{null, !411, !38}
!589 = !DISubprogram(name: "invert", linkageName: "_ZN11ap_int_baseILi33ELb1EE6invertEi", scope: !382, file: !383, line: 609, type: !587, isLocal: false, isDefinition: false, scopeLine: 609, flags: DIFlagPrototyped, isOptimized: false)
!590 = !DISubprogram(name: "test", linkageName: "_ZNK11ap_int_baseILi33ELb1EE4testEi", scope: !382, file: !383, line: 618, type: !591, isLocal: false, isDefinition: false, scopeLine: 618, flags: DIFlagPrototyped, isOptimized: false)
!591 = !DISubroutineType(types: !592)
!592 = !{!40, !406, !38}
!593 = !DISubprogram(name: "get", linkageName: "_ZN11ap_int_baseILi33ELb1EE3getEv", scope: !382, file: !383, line: 624, type: !594, isLocal: false, isDefinition: false, scopeLine: 624, flags: DIFlagPrototyped, isOptimized: false)
!594 = !DISubroutineType(types: !595)
!595 = !{!487, !411}
!596 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi33ELb1EE3setEi", scope: !382, file: !383, line: 627, type: !587, isLocal: false, isDefinition: false, scopeLine: 627, flags: DIFlagPrototyped, isOptimized: false)
!597 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi33ELb1EE3setEib", scope: !382, file: !383, line: 633, type: !598, isLocal: false, isDefinition: false, scopeLine: 633, flags: DIFlagPrototyped, isOptimized: false)
!598 = !DISubroutineType(types: !599)
!599 = !{null, !411, !38, !40}
!600 = !DISubprogram(name: "lrotate", linkageName: "_ZN11ap_int_baseILi33ELb1EE7lrotateEi", scope: !382, file: !383, line: 640, type: !510, isLocal: false, isDefinition: false, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: false)
!601 = !DISubprogram(name: "rrotate", linkageName: "_ZN11ap_int_baseILi33ELb1EE7rrotateEi", scope: !382, file: !383, line: 655, type: !510, isLocal: false, isDefinition: false, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: false)
!602 = !DISubprogram(name: "reverse", linkageName: "_ZN11ap_int_baseILi33ELb1EE7reverseEv", scope: !382, file: !383, line: 670, type: !594, isLocal: false, isDefinition: false, scopeLine: 670, flags: DIFlagPrototyped, isOptimized: false)
!603 = !DISubprogram(name: "set_bit", linkageName: "_ZN11ap_int_baseILi33ELb1EE7set_bitEib", scope: !382, file: !383, line: 676, type: !598, isLocal: false, isDefinition: false, scopeLine: 676, flags: DIFlagPrototyped, isOptimized: false)
!604 = !DISubprogram(name: "get_bit", linkageName: "_ZNK11ap_int_baseILi33ELb1EE7get_bitEi", scope: !382, file: !383, line: 681, type: !591, isLocal: false, isDefinition: false, scopeLine: 681, flags: DIFlagPrototyped, isOptimized: false)
!605 = !DISubprogram(name: "b_not", linkageName: "_ZN11ap_int_baseILi33ELb1EE5b_notEv", scope: !382, file: !383, line: 686, type: !409, isLocal: false, isDefinition: false, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: false)
!606 = !DISubprogram(name: "checkOverflowCsim", linkageName: "_ZNK11ap_int_baseILi33ELb1EE17checkOverflowCsimEibb", scope: !382, file: !383, line: 760, type: !607, isLocal: false, isDefinition: false, scopeLine: 760, flags: DIFlagPrototyped, isOptimized: false)
!607 = !DISubroutineType(types: !608)
!608 = !{!40, !406, !38, !40, !40}
!609 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi33ELb1EEppEv", scope: !382, file: !383, line: 865, type: !594, isLocal: false, isDefinition: false, scopeLine: 865, flags: DIFlagPrototyped, isOptimized: false)
!610 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi33ELb1EEmmEv", scope: !382, file: !383, line: 869, type: !594, isLocal: false, isDefinition: false, scopeLine: 869, flags: DIFlagPrototyped, isOptimized: false)
!611 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi33ELb1EEppEi", scope: !382, file: !383, line: 877, type: !612, isLocal: false, isDefinition: false, scopeLine: 877, flags: DIFlagPrototyped, isOptimized: false)
!612 = !DISubroutineType(types: !613)
!613 = !{!614, !411, !38}
!614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !615)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "arg1", scope: !616, file: !383, line: 167, baseType: !617)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<33, true>", scope: !382, file: !383, line: 134, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !375, identifier: "_ZTSN11ap_int_baseILi33ELb1EE5RTypeILi33ELb1EEE")
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !374, file: !383, line: 103, baseType: !378)
!618 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi33ELb1EEmmEi", scope: !382, file: !383, line: 882, type: !612, isLocal: false, isDefinition: false, scopeLine: 882, flags: DIFlagPrototyped, isOptimized: false)
!619 = !DISubprogram(name: "operator+", linkageName: "_ZNK11ap_int_baseILi33ELb1EEpsEv", scope: !382, file: !383, line: 891, type: !620, isLocal: false, isDefinition: false, scopeLine: 891, flags: DIFlagPrototyped, isOptimized: false)
!620 = !DISubroutineType(types: !621)
!621 = !{!615, !406}
!622 = !DISubprogram(name: "operator-", linkageName: "_ZNK11ap_int_baseILi33ELb1EEngEv", scope: !382, file: !383, line: 894, type: !623, isLocal: false, isDefinition: false, scopeLine: 894, flags: DIFlagPrototyped, isOptimized: false)
!623 = !DISubroutineType(types: !624)
!624 = !{!625, !406}
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "minus", scope: !626, file: !383, line: 163, baseType: !627)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<1, false>", scope: !382, file: !383, line: 134, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !371, identifier: "_ZTSN11ap_int_baseILi33ELb1EE5RTypeILi1ELb0EEE")
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !628, file: !383, line: 103, baseType: !631)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_int_factory<34, true>", file: !383, line: 103, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !629, identifier: "_ZTS15_ap_int_factoryILi34ELb1EE")
!629 = !{!630, !377}
!630 = !DITemplateValueParameter(name: "_AP_W2", type: !38, value: i32 34)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int<34>", file: !379, line: 18, size: 64, flags: DIFlagTypePassByValue, elements: !632, templateParams: !1691, identifier: "_ZTS6ap_intILi34EE")
!632 = !{!633, !1613, !1617, !1621, !1624, !1627, !1630, !1633, !1636, !1639, !1642, !1645, !1648, !1651, !1654, !1657, !1660, !1663, !1666, !1669, !1672, !1678, !1684, !1688}
!633 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !631, baseType: !634)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<34, true>", file: !383, line: 108, size: 64, flags: DIFlagTypePassByValue, elements: !635, templateParams: !1611, identifier: "_ZTS11ap_int_baseILi34ELb1EE")
!635 = !{!636, !650, !651, !652, !657, !661, !664, !667, !670, !673, !676, !679, !682, !685, !688, !691, !694, !697, !700, !703, !706, !709, !712, !717, !721, !726, !727, !731, !734, !737, !740, !743, !746, !749, !752, !755, !758, !761, !764, !767, !770, !774, !777, !780, !783, !786, !789, !792, !793, !796, !799, !802, !805, !808, !811, !814, !817, !821, !822, !823, !824, !825, !828, !829, !832, !835, !836, !839, !840, !841, !842, !843, !844, !845, !848, !849, !850, !856, !857, !860, !1577, !1578, !1579, !1583, !1586, !1589, !1592, !1593, !1594, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608}
!636 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !634, baseType: !637)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<34, true>", file: !387, line: 509, size: 64, flags: DIFlagTypePassByValue, elements: !638, templateParams: !648, identifier: "_ZTS8ssdm_intILi34ELb1EE")
!638 = !{!639, !641, !645}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !637, file: !387, line: 511, baseType: !640, size: 34, align: 64)
!640 = !DIBasicType(name: "int34", size: 34, encoding: DW_ATE_signed)
!641 = !DISubprogram(name: "ssdm_int", scope: !637, file: !387, line: 512, type: !642, isLocal: false, isDefinition: false, scopeLine: 512, flags: DIFlagPrototyped, isOptimized: false)
!642 = !DISubroutineType(types: !643)
!643 = !{null, !644}
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!645 = !DISubprogram(name: "ssdm_int", scope: !637, file: !387, line: 513, type: !646, isLocal: false, isDefinition: false, scopeLine: 513, flags: DIFlagPrototyped, isOptimized: false)
!646 = !DISubroutineType(types: !647)
!647 = !{null, !644, !640}
!648 = !{!649, !400}
!649 = !DITemplateValueParameter(name: "_AP_N", type: !38, value: i32 34)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !634, file: !383, line: 130, baseType: !42, flags: DIFlagStaticMember, extraData: i32 34)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !634, file: !383, line: 131, baseType: !44, flags: DIFlagStaticMember, extraData: i1 true)
!652 = !DISubprogram(name: "countLeadingOnes", linkageName: "_ZNK11ap_int_baseILi34ELb1EE16countLeadingOnesEv", scope: !634, file: !383, line: 110, type: !653, isLocal: false, isDefinition: false, scopeLine: 110, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!653 = !DISubroutineType(types: !654)
!654 = !{!38, !655}
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !634)
!657 = !DISubprogram(name: "ap_int_base", scope: !634, file: !383, line: 175, type: !658, isLocal: false, isDefinition: false, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false)
!658 = !DISubroutineType(types: !659)
!659 = !{null, !660}
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!661 = !DISubprogram(name: "ap_int_base", scope: !634, file: !383, line: 208, type: !662, isLocal: false, isDefinition: false, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: false)
!662 = !DISubroutineType(types: !663)
!663 = !{null, !660, !44}
!664 = !DISubprogram(name: "ap_int_base", scope: !634, file: !383, line: 209, type: !665, isLocal: false, isDefinition: false, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: false)
!665 = !DISubroutineType(types: !666)
!666 = !{null, !660, !60}
!667 = !DISubprogram(name: "ap_int_base", scope: !634, file: !383, line: 210, type: !668, isLocal: false, isDefinition: false, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: false)
!668 = !DISubroutineType(types: !669)
!669 = !{null, !660, !65}
!670 = !DISubprogram(name: "ap_int_base", scope: !634, file: !383, line: 211, type: !671, isLocal: false, isDefinition: false, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: false)
!671 = !DISubroutineType(types: !672)
!672 = !{null, !660, !70}
!673 = !DISubprogram(name: "ap_int_base", scope: !634, file: !383, line: 212, type: !674, isLocal: false, isDefinition: false, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: false)
!674 = !DISubroutineType(types: !675)
!675 = !{null, !660, !75}
!676 = !DISubprogram(name: "ap_int_base", scope: !634, file: !383, line: 213, type: !677, isLocal: false, isDefinition: false, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: false)
!677 = !DISubroutineType(types: !678)
!678 = !{null, !660, !80}
!679 = !DISubprogram(name: "ap_int_base", scope: !634, file: !383, line: 214, type: !680, isLocal: false, isDefinition: false, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: false)
!680 = !DISubroutineType(types: !681)
!681 = !{null, !660, !42}
!682 = !DISubprogram(name: "ap_int_base", scope: !634, file: !383, line: 215, type: !683, isLocal: false, isDefinition: false, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: false)
!683 = !DISubroutineType(types: !684)
!684 = !{null, !660, !88}
!685 = !DISubprogram(name: "ap_int_base", scope: !634, file: !383, line: 216, type: !686, isLocal: false, isDefinition: false, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: false)
!686 = !DISubroutineType(types: !687)
!687 = !{null, !660, !92}
!688 = !DISubprogram(name: "ap_int_base", scope: !634, file: !383, line: 217, type: !689, isLocal: false, isDefinition: false, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: false)
!689 = !DISubroutineType(types: !690)
!690 = !{null, !660, !97}
!691 = !DISubprogram(name: "ap_int_base", scope: !634, file: !383, line: 218, type: !692, isLocal: false, isDefinition: false, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: false)
!692 = !DISubroutineType(types: !693)
!693 = !{null, !660, !445}
!694 = !DISubprogram(name: "ap_int_base", scope: !634, file: !383, line: 219, type: !695, isLocal: false, isDefinition: false, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: false)
!695 = !DISubroutineType(types: !696)
!696 = !{null, !660, !451}
!697 = !DISubprogram(name: "ap_int_base", scope: !634, file: !383, line: 224, type: !698, isLocal: false, isDefinition: false, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: false)
!698 = !DISubroutineType(types: !699)
!699 = !{null, !660, !456}
!700 = !DISubprogram(name: "ap_int_base", scope: !634, file: !383, line: 230, type: !701, isLocal: false, isDefinition: false, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: false)
!701 = !DISubroutineType(types: !702)
!702 = !{null, !660, !15}
!703 = !DISubprogram(name: "ap_int_base", scope: !634, file: !383, line: 289, type: !704, isLocal: false, isDefinition: false, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: false)
!704 = !DISubroutineType(types: !705)
!705 = !{null, !660, !123}
!706 = !DISubprogram(name: "ap_int_base", scope: !634, file: !383, line: 385, type: !707, isLocal: false, isDefinition: false, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: false)
!707 = !DISubroutineType(types: !708)
!708 = !{null, !660, !127}
!709 = !DISubprogram(name: "ap_int_base", scope: !634, file: !383, line: 391, type: !710, isLocal: false, isDefinition: false, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: false)
!710 = !DISubroutineType(types: !711)
!711 = !{null, !660, !127, !66}
!712 = !DISubprogram(name: "read", linkageName: "_ZNV11ap_int_baseILi34ELb1EE4readEv", scope: !634, file: !383, line: 413, type: !713, isLocal: false, isDefinition: false, scopeLine: 413, flags: DIFlagPrototyped, isOptimized: false)
!713 = !DISubroutineType(types: !714)
!714 = !{!634, !715}
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!716 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !634)
!717 = !DISubprogram(name: "write", linkageName: "_ZNV11ap_int_baseILi34ELb1EE5writeERKS0_", scope: !634, file: !383, line: 420, type: !718, isLocal: false, isDefinition: false, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: false)
!718 = !DISubroutineType(types: !719)
!719 = !{null, !715, !720}
!720 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !656, size: 64)
!721 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi34ELb1EEaSERVKS0_", scope: !634, file: !383, line: 432, type: !722, isLocal: false, isDefinition: false, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: false)
!722 = !DISubroutineType(types: !723)
!723 = !{null, !715, !724}
!724 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !716)
!726 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi34ELb1EEaSERKS0_", scope: !634, file: !383, line: 442, type: !718, isLocal: false, isDefinition: false, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: false)
!727 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSERVKS0_", scope: !634, file: !383, line: 459, type: !728, isLocal: false, isDefinition: false, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: false)
!728 = !DISubroutineType(types: !729)
!729 = !{!730, !660, !724}
!730 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !634, size: 64)
!731 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSERKS0_", scope: !634, file: !383, line: 465, type: !732, isLocal: false, isDefinition: false, scopeLine: 465, flags: DIFlagPrototyped, isOptimized: false)
!732 = !DISubroutineType(types: !733)
!733 = !{!730, !660, !720}
!734 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSEb", scope: !634, file: !383, line: 479, type: !735, isLocal: false, isDefinition: false, scopeLine: 479, flags: DIFlagPrototyped, isOptimized: false)
!735 = !DISubroutineType(types: !736)
!736 = !{!730, !660, !40}
!737 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSEc", scope: !634, file: !383, line: 480, type: !738, isLocal: false, isDefinition: false, scopeLine: 480, flags: DIFlagPrototyped, isOptimized: false)
!738 = !DISubroutineType(types: !739)
!739 = !{!730, !660, !61}
!740 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSEa", scope: !634, file: !383, line: 481, type: !741, isLocal: false, isDefinition: false, scopeLine: 481, flags: DIFlagPrototyped, isOptimized: false)
!741 = !DISubroutineType(types: !742)
!742 = !{!730, !660, !66}
!743 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSEh", scope: !634, file: !383, line: 482, type: !744, isLocal: false, isDefinition: false, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: false)
!744 = !DISubroutineType(types: !745)
!745 = !{!730, !660, !71}
!746 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSEs", scope: !634, file: !383, line: 483, type: !747, isLocal: false, isDefinition: false, scopeLine: 483, flags: DIFlagPrototyped, isOptimized: false)
!747 = !DISubroutineType(types: !748)
!748 = !{!730, !660, !76}
!749 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSEt", scope: !634, file: !383, line: 484, type: !750, isLocal: false, isDefinition: false, scopeLine: 484, flags: DIFlagPrototyped, isOptimized: false)
!750 = !DISubroutineType(types: !751)
!751 = !{!730, !660, !81}
!752 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSEi", scope: !634, file: !383, line: 485, type: !753, isLocal: false, isDefinition: false, scopeLine: 485, flags: DIFlagPrototyped, isOptimized: false)
!753 = !DISubroutineType(types: !754)
!754 = !{!730, !660, !38}
!755 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSEj", scope: !634, file: !383, line: 486, type: !756, isLocal: false, isDefinition: false, scopeLine: 486, flags: DIFlagPrototyped, isOptimized: false)
!756 = !DISubroutineType(types: !757)
!757 = !{!730, !660, !28}
!758 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSEl", scope: !634, file: !383, line: 487, type: !759, isLocal: false, isDefinition: false, scopeLine: 487, flags: DIFlagPrototyped, isOptimized: false)
!759 = !DISubroutineType(types: !760)
!760 = !{!730, !660, !93}
!761 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSEm", scope: !634, file: !383, line: 488, type: !762, isLocal: false, isDefinition: false, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: false)
!762 = !DISubroutineType(types: !763)
!763 = !{!730, !660, !98}
!764 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSEx", scope: !634, file: !383, line: 489, type: !765, isLocal: false, isDefinition: false, scopeLine: 489, flags: DIFlagPrototyped, isOptimized: false)
!765 = !DISubroutineType(types: !766)
!766 = !{!730, !660, !446}
!767 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSEy", scope: !634, file: !383, line: 490, type: !768, isLocal: false, isDefinition: false, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: false)
!768 = !DISubroutineType(types: !769)
!769 = !{!730, !660, !452}
!770 = !DISubprogram(name: "operator long long", linkageName: "_ZNK11ap_int_baseILi34ELb1EEcvxEv", scope: !634, file: !383, line: 541, type: !771, isLocal: false, isDefinition: false, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: false)
!771 = !DISubroutineType(types: !772)
!772 = !{!773, !655}
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !634, file: !383, line: 128, baseType: !531)
!774 = !DISubprogram(name: "to_bool", linkageName: "_ZNK11ap_int_baseILi34ELb1EE7to_boolEv", scope: !634, file: !383, line: 546, type: !775, isLocal: false, isDefinition: false, scopeLine: 546, flags: DIFlagPrototyped, isOptimized: false)
!775 = !DISubroutineType(types: !776)
!776 = !{!40, !655}
!777 = !DISubprogram(name: "to_char", linkageName: "_ZNK11ap_int_baseILi34ELb1EE7to_charEv", scope: !634, file: !383, line: 547, type: !778, isLocal: false, isDefinition: false, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: false)
!778 = !DISubroutineType(types: !779)
!779 = !{!61, !655}
!780 = !DISubprogram(name: "to_schar", linkageName: "_ZNK11ap_int_baseILi34ELb1EE8to_scharEv", scope: !634, file: !383, line: 548, type: !781, isLocal: false, isDefinition: false, scopeLine: 548, flags: DIFlagPrototyped, isOptimized: false)
!781 = !DISubroutineType(types: !782)
!782 = !{!66, !655}
!783 = !DISubprogram(name: "to_uchar", linkageName: "_ZNK11ap_int_baseILi34ELb1EE8to_ucharEv", scope: !634, file: !383, line: 549, type: !784, isLocal: false, isDefinition: false, scopeLine: 549, flags: DIFlagPrototyped, isOptimized: false)
!784 = !DISubroutineType(types: !785)
!785 = !{!71, !655}
!786 = !DISubprogram(name: "to_short", linkageName: "_ZNK11ap_int_baseILi34ELb1EE8to_shortEv", scope: !634, file: !383, line: 550, type: !787, isLocal: false, isDefinition: false, scopeLine: 550, flags: DIFlagPrototyped, isOptimized: false)
!787 = !DISubroutineType(types: !788)
!788 = !{!76, !655}
!789 = !DISubprogram(name: "to_ushort", linkageName: "_ZNK11ap_int_baseILi34ELb1EE9to_ushortEv", scope: !634, file: !383, line: 551, type: !790, isLocal: false, isDefinition: false, scopeLine: 551, flags: DIFlagPrototyped, isOptimized: false)
!790 = !DISubroutineType(types: !791)
!791 = !{!81, !655}
!792 = !DISubprogram(name: "to_int", linkageName: "_ZNK11ap_int_baseILi34ELb1EE6to_intEv", scope: !634, file: !383, line: 552, type: !653, isLocal: false, isDefinition: false, scopeLine: 552, flags: DIFlagPrototyped, isOptimized: false)
!793 = !DISubprogram(name: "to_uint", linkageName: "_ZNK11ap_int_baseILi34ELb1EE7to_uintEv", scope: !634, file: !383, line: 553, type: !794, isLocal: false, isDefinition: false, scopeLine: 553, flags: DIFlagPrototyped, isOptimized: false)
!794 = !DISubroutineType(types: !795)
!795 = !{!28, !655}
!796 = !DISubprogram(name: "to_long", linkageName: "_ZNK11ap_int_baseILi34ELb1EE7to_longEv", scope: !634, file: !383, line: 554, type: !797, isLocal: false, isDefinition: false, scopeLine: 554, flags: DIFlagPrototyped, isOptimized: false)
!797 = !DISubroutineType(types: !798)
!798 = !{!93, !655}
!799 = !DISubprogram(name: "to_ulong", linkageName: "_ZNK11ap_int_baseILi34ELb1EE8to_ulongEv", scope: !634, file: !383, line: 555, type: !800, isLocal: false, isDefinition: false, scopeLine: 555, flags: DIFlagPrototyped, isOptimized: false)
!800 = !DISubroutineType(types: !801)
!801 = !{!98, !655}
!802 = !DISubprogram(name: "to_int64", linkageName: "_ZNK11ap_int_baseILi34ELb1EE8to_int64Ev", scope: !634, file: !383, line: 556, type: !803, isLocal: false, isDefinition: false, scopeLine: 556, flags: DIFlagPrototyped, isOptimized: false)
!803 = !DISubroutineType(types: !804)
!804 = !{!446, !655}
!805 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK11ap_int_baseILi34ELb1EE9to_uint64Ev", scope: !634, file: !383, line: 557, type: !806, isLocal: false, isDefinition: false, scopeLine: 557, flags: DIFlagPrototyped, isOptimized: false)
!806 = !DISubroutineType(types: !807)
!807 = !{!452, !655}
!808 = !DISubprogram(name: "to_half", linkageName: "_ZNK11ap_int_baseILi34ELb1EE7to_halfEv", scope: !634, file: !383, line: 558, type: !809, isLocal: false, isDefinition: false, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: false)
!809 = !DISubroutineType(types: !810)
!810 = !{!456, !655}
!811 = !DISubprogram(name: "to_float", linkageName: "_ZNK11ap_int_baseILi34ELb1EE8to_floatEv", scope: !634, file: !383, line: 559, type: !812, isLocal: false, isDefinition: false, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false)
!812 = !DISubroutineType(types: !813)
!813 = !{!15, !655}
!814 = !DISubprogram(name: "to_double", linkageName: "_ZNK11ap_int_baseILi34ELb1EE9to_doubleEv", scope: !634, file: !383, line: 560, type: !815, isLocal: false, isDefinition: false, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: false)
!815 = !DISubroutineType(types: !816)
!816 = !{!123, !655}
!817 = !DISubprogram(name: "length", linkageName: "_ZNVK11ap_int_baseILi34ELb1EE6lengthEv", scope: !634, file: !383, line: 584, type: !818, isLocal: false, isDefinition: false, scopeLine: 584, flags: DIFlagPrototyped, isOptimized: false)
!818 = !DISubroutineType(types: !819)
!819 = !{!38, !820}
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!821 = !DISubprogram(name: "length", linkageName: "_ZNK11ap_int_baseILi34ELb1EE6lengthEv", scope: !634, file: !383, line: 585, type: !653, isLocal: false, isDefinition: false, scopeLine: 585, flags: DIFlagPrototyped, isOptimized: false)
!822 = !DISubprogram(name: "iszero", linkageName: "_ZNK11ap_int_baseILi34ELb1EE6iszeroEv", scope: !634, file: !383, line: 588, type: !775, isLocal: false, isDefinition: false, scopeLine: 588, flags: DIFlagPrototyped, isOptimized: false)
!823 = !DISubprogram(name: "is_zero", linkageName: "_ZNK11ap_int_baseILi34ELb1EE7is_zeroEv", scope: !634, file: !383, line: 591, type: !775, isLocal: false, isDefinition: false, scopeLine: 591, flags: DIFlagPrototyped, isOptimized: false)
!824 = !DISubprogram(name: "sign", linkageName: "_ZNK11ap_int_baseILi34ELb1EE4signEv", scope: !634, file: !383, line: 594, type: !775, isLocal: false, isDefinition: false, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: false)
!825 = !DISubprogram(name: "clear", linkageName: "_ZN11ap_int_baseILi34ELb1EE5clearEi", scope: !634, file: !383, line: 603, type: !826, isLocal: false, isDefinition: false, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: false)
!826 = !DISubroutineType(types: !827)
!827 = !{null, !660, !38}
!828 = !DISubprogram(name: "invert", linkageName: "_ZN11ap_int_baseILi34ELb1EE6invertEi", scope: !634, file: !383, line: 609, type: !826, isLocal: false, isDefinition: false, scopeLine: 609, flags: DIFlagPrototyped, isOptimized: false)
!829 = !DISubprogram(name: "test", linkageName: "_ZNK11ap_int_baseILi34ELb1EE4testEi", scope: !634, file: !383, line: 618, type: !830, isLocal: false, isDefinition: false, scopeLine: 618, flags: DIFlagPrototyped, isOptimized: false)
!830 = !DISubroutineType(types: !831)
!831 = !{!40, !655, !38}
!832 = !DISubprogram(name: "get", linkageName: "_ZN11ap_int_baseILi34ELb1EE3getEv", scope: !634, file: !383, line: 624, type: !833, isLocal: false, isDefinition: false, scopeLine: 624, flags: DIFlagPrototyped, isOptimized: false)
!833 = !DISubroutineType(types: !834)
!834 = !{!730, !660}
!835 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi34ELb1EE3setEi", scope: !634, file: !383, line: 627, type: !826, isLocal: false, isDefinition: false, scopeLine: 627, flags: DIFlagPrototyped, isOptimized: false)
!836 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi34ELb1EE3setEib", scope: !634, file: !383, line: 633, type: !837, isLocal: false, isDefinition: false, scopeLine: 633, flags: DIFlagPrototyped, isOptimized: false)
!837 = !DISubroutineType(types: !838)
!838 = !{null, !660, !38, !40}
!839 = !DISubprogram(name: "lrotate", linkageName: "_ZN11ap_int_baseILi34ELb1EE7lrotateEi", scope: !634, file: !383, line: 640, type: !753, isLocal: false, isDefinition: false, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: false)
!840 = !DISubprogram(name: "rrotate", linkageName: "_ZN11ap_int_baseILi34ELb1EE7rrotateEi", scope: !634, file: !383, line: 655, type: !753, isLocal: false, isDefinition: false, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: false)
!841 = !DISubprogram(name: "reverse", linkageName: "_ZN11ap_int_baseILi34ELb1EE7reverseEv", scope: !634, file: !383, line: 670, type: !833, isLocal: false, isDefinition: false, scopeLine: 670, flags: DIFlagPrototyped, isOptimized: false)
!842 = !DISubprogram(name: "set_bit", linkageName: "_ZN11ap_int_baseILi34ELb1EE7set_bitEib", scope: !634, file: !383, line: 676, type: !837, isLocal: false, isDefinition: false, scopeLine: 676, flags: DIFlagPrototyped, isOptimized: false)
!843 = !DISubprogram(name: "get_bit", linkageName: "_ZNK11ap_int_baseILi34ELb1EE7get_bitEi", scope: !634, file: !383, line: 681, type: !830, isLocal: false, isDefinition: false, scopeLine: 681, flags: DIFlagPrototyped, isOptimized: false)
!844 = !DISubprogram(name: "b_not", linkageName: "_ZN11ap_int_baseILi34ELb1EE5b_notEv", scope: !634, file: !383, line: 686, type: !658, isLocal: false, isDefinition: false, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: false)
!845 = !DISubprogram(name: "checkOverflowCsim", linkageName: "_ZNK11ap_int_baseILi34ELb1EE17checkOverflowCsimEibb", scope: !634, file: !383, line: 760, type: !846, isLocal: false, isDefinition: false, scopeLine: 760, flags: DIFlagPrototyped, isOptimized: false)
!846 = !DISubroutineType(types: !847)
!847 = !{!40, !655, !38, !40, !40}
!848 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi34ELb1EEppEv", scope: !634, file: !383, line: 865, type: !833, isLocal: false, isDefinition: false, scopeLine: 865, flags: DIFlagPrototyped, isOptimized: false)
!849 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi34ELb1EEmmEv", scope: !634, file: !383, line: 869, type: !833, isLocal: false, isDefinition: false, scopeLine: 869, flags: DIFlagPrototyped, isOptimized: false)
!850 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi34ELb1EEppEi", scope: !634, file: !383, line: 877, type: !851, isLocal: false, isDefinition: false, scopeLine: 877, flags: DIFlagPrototyped, isOptimized: false)
!851 = !DISubroutineType(types: !852)
!852 = !{!853, !660, !38}
!853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !854)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "arg1", scope: !855, file: !383, line: 167, baseType: !627)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<34, true>", scope: !634, file: !383, line: 134, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !629, identifier: "_ZTSN11ap_int_baseILi34ELb1EE5RTypeILi34ELb1EEE")
!856 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi34ELb1EEmmEi", scope: !634, file: !383, line: 882, type: !851, isLocal: false, isDefinition: false, scopeLine: 882, flags: DIFlagPrototyped, isOptimized: false)
!857 = !DISubprogram(name: "operator+", linkageName: "_ZNK11ap_int_baseILi34ELb1EEpsEv", scope: !634, file: !383, line: 891, type: !858, isLocal: false, isDefinition: false, scopeLine: 891, flags: DIFlagPrototyped, isOptimized: false)
!858 = !DISubroutineType(types: !859)
!859 = !{!854, !655}
!860 = !DISubprogram(name: "operator-", linkageName: "_ZNK11ap_int_baseILi34ELb1EEngEv", scope: !634, file: !383, line: 894, type: !861, isLocal: false, isDefinition: false, scopeLine: 894, flags: DIFlagPrototyped, isOptimized: false)
!861 = !DISubroutineType(types: !862)
!862 = !{!863, !655}
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "minus", scope: !864, file: !383, line: 163, baseType: !865)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<1, false>", scope: !634, file: !383, line: 134, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !371, identifier: "_ZTSN11ap_int_baseILi34ELb1EE5RTypeILi1ELb0EEE")
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !866, file: !383, line: 103, baseType: !869)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_int_factory<35, true>", file: !383, line: 103, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !867, identifier: "_ZTS15_ap_int_factoryILi35ELb1EE")
!867 = !{!868, !377}
!868 = !DITemplateValueParameter(name: "_AP_W2", type: !38, value: i32 35)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int<35>", file: !379, line: 18, size: 64, flags: DIFlagTypePassByValue, elements: !870, templateParams: !1576, identifier: "_ZTS6ap_intILi35EE")
!870 = !{!871, !1498, !1502, !1506, !1509, !1512, !1515, !1518, !1521, !1524, !1527, !1530, !1533, !1536, !1539, !1542, !1545, !1548, !1551, !1554, !1557, !1563, !1569, !1573}
!871 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !869, baseType: !872)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<35, true>", file: !383, line: 108, size: 64, flags: DIFlagTypePassByValue, elements: !873, templateParams: !1496, identifier: "_ZTS11ap_int_baseILi35ELb1EE")
!873 = !{!874, !888, !889, !890, !895, !899, !902, !905, !908, !911, !914, !917, !920, !923, !926, !929, !932, !935, !938, !941, !944, !947, !950, !955, !959, !964, !965, !969, !972, !975, !978, !981, !984, !987, !990, !993, !996, !999, !1002, !1005, !1008, !1012, !1015, !1018, !1021, !1024, !1027, !1030, !1031, !1034, !1037, !1040, !1043, !1046, !1049, !1052, !1055, !1059, !1060, !1061, !1062, !1063, !1066, !1067, !1070, !1073, !1074, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1086, !1087, !1088, !1094, !1095, !1098, !1462, !1463, !1464, !1468, !1471, !1474, !1477, !1478, !1479, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493}
!874 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !872, baseType: !875)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<35, true>", file: !387, line: 509, size: 64, flags: DIFlagTypePassByValue, elements: !876, templateParams: !886, identifier: "_ZTS8ssdm_intILi35ELb1EE")
!876 = !{!877, !879, !883}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !875, file: !387, line: 511, baseType: !878, size: 35, align: 64)
!878 = !DIBasicType(name: "int35", size: 35, encoding: DW_ATE_signed)
!879 = !DISubprogram(name: "ssdm_int", scope: !875, file: !387, line: 512, type: !880, isLocal: false, isDefinition: false, scopeLine: 512, flags: DIFlagPrototyped, isOptimized: false)
!880 = !DISubroutineType(types: !881)
!881 = !{null, !882}
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!883 = !DISubprogram(name: "ssdm_int", scope: !875, file: !387, line: 513, type: !884, isLocal: false, isDefinition: false, scopeLine: 513, flags: DIFlagPrototyped, isOptimized: false)
!884 = !DISubroutineType(types: !885)
!885 = !{null, !882, !878}
!886 = !{!887, !400}
!887 = !DITemplateValueParameter(name: "_AP_N", type: !38, value: i32 35)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !872, file: !383, line: 130, baseType: !42, flags: DIFlagStaticMember, extraData: i32 35)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !872, file: !383, line: 131, baseType: !44, flags: DIFlagStaticMember, extraData: i1 true)
!890 = !DISubprogram(name: "countLeadingOnes", linkageName: "_ZNK11ap_int_baseILi35ELb1EE16countLeadingOnesEv", scope: !872, file: !383, line: 110, type: !891, isLocal: false, isDefinition: false, scopeLine: 110, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!891 = !DISubroutineType(types: !892)
!892 = !{!38, !893}
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !872)
!895 = !DISubprogram(name: "ap_int_base", scope: !872, file: !383, line: 175, type: !896, isLocal: false, isDefinition: false, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false)
!896 = !DISubroutineType(types: !897)
!897 = !{null, !898}
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!899 = !DISubprogram(name: "ap_int_base", scope: !872, file: !383, line: 208, type: !900, isLocal: false, isDefinition: false, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: false)
!900 = !DISubroutineType(types: !901)
!901 = !{null, !898, !44}
!902 = !DISubprogram(name: "ap_int_base", scope: !872, file: !383, line: 209, type: !903, isLocal: false, isDefinition: false, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: false)
!903 = !DISubroutineType(types: !904)
!904 = !{null, !898, !60}
!905 = !DISubprogram(name: "ap_int_base", scope: !872, file: !383, line: 210, type: !906, isLocal: false, isDefinition: false, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: false)
!906 = !DISubroutineType(types: !907)
!907 = !{null, !898, !65}
!908 = !DISubprogram(name: "ap_int_base", scope: !872, file: !383, line: 211, type: !909, isLocal: false, isDefinition: false, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: false)
!909 = !DISubroutineType(types: !910)
!910 = !{null, !898, !70}
!911 = !DISubprogram(name: "ap_int_base", scope: !872, file: !383, line: 212, type: !912, isLocal: false, isDefinition: false, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: false)
!912 = !DISubroutineType(types: !913)
!913 = !{null, !898, !75}
!914 = !DISubprogram(name: "ap_int_base", scope: !872, file: !383, line: 213, type: !915, isLocal: false, isDefinition: false, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: false)
!915 = !DISubroutineType(types: !916)
!916 = !{null, !898, !80}
!917 = !DISubprogram(name: "ap_int_base", scope: !872, file: !383, line: 214, type: !918, isLocal: false, isDefinition: false, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: false)
!918 = !DISubroutineType(types: !919)
!919 = !{null, !898, !42}
!920 = !DISubprogram(name: "ap_int_base", scope: !872, file: !383, line: 215, type: !921, isLocal: false, isDefinition: false, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: false)
!921 = !DISubroutineType(types: !922)
!922 = !{null, !898, !88}
!923 = !DISubprogram(name: "ap_int_base", scope: !872, file: !383, line: 216, type: !924, isLocal: false, isDefinition: false, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: false)
!924 = !DISubroutineType(types: !925)
!925 = !{null, !898, !92}
!926 = !DISubprogram(name: "ap_int_base", scope: !872, file: !383, line: 217, type: !927, isLocal: false, isDefinition: false, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: false)
!927 = !DISubroutineType(types: !928)
!928 = !{null, !898, !97}
!929 = !DISubprogram(name: "ap_int_base", scope: !872, file: !383, line: 218, type: !930, isLocal: false, isDefinition: false, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: false)
!930 = !DISubroutineType(types: !931)
!931 = !{null, !898, !445}
!932 = !DISubprogram(name: "ap_int_base", scope: !872, file: !383, line: 219, type: !933, isLocal: false, isDefinition: false, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: false)
!933 = !DISubroutineType(types: !934)
!934 = !{null, !898, !451}
!935 = !DISubprogram(name: "ap_int_base", scope: !872, file: !383, line: 224, type: !936, isLocal: false, isDefinition: false, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: false)
!936 = !DISubroutineType(types: !937)
!937 = !{null, !898, !456}
!938 = !DISubprogram(name: "ap_int_base", scope: !872, file: !383, line: 230, type: !939, isLocal: false, isDefinition: false, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: false)
!939 = !DISubroutineType(types: !940)
!940 = !{null, !898, !15}
!941 = !DISubprogram(name: "ap_int_base", scope: !872, file: !383, line: 289, type: !942, isLocal: false, isDefinition: false, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: false)
!942 = !DISubroutineType(types: !943)
!943 = !{null, !898, !123}
!944 = !DISubprogram(name: "ap_int_base", scope: !872, file: !383, line: 385, type: !945, isLocal: false, isDefinition: false, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: false)
!945 = !DISubroutineType(types: !946)
!946 = !{null, !898, !127}
!947 = !DISubprogram(name: "ap_int_base", scope: !872, file: !383, line: 391, type: !948, isLocal: false, isDefinition: false, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: false)
!948 = !DISubroutineType(types: !949)
!949 = !{null, !898, !127, !66}
!950 = !DISubprogram(name: "read", linkageName: "_ZNV11ap_int_baseILi35ELb1EE4readEv", scope: !872, file: !383, line: 413, type: !951, isLocal: false, isDefinition: false, scopeLine: 413, flags: DIFlagPrototyped, isOptimized: false)
!951 = !DISubroutineType(types: !952)
!952 = !{!872, !953}
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!954 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !872)
!955 = !DISubprogram(name: "write", linkageName: "_ZNV11ap_int_baseILi35ELb1EE5writeERKS0_", scope: !872, file: !383, line: 420, type: !956, isLocal: false, isDefinition: false, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: false)
!956 = !DISubroutineType(types: !957)
!957 = !{null, !953, !958}
!958 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !894, size: 64)
!959 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi35ELb1EEaSERVKS0_", scope: !872, file: !383, line: 432, type: !960, isLocal: false, isDefinition: false, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: false)
!960 = !DISubroutineType(types: !961)
!961 = !{null, !953, !962}
!962 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !963, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !954)
!964 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi35ELb1EEaSERKS0_", scope: !872, file: !383, line: 442, type: !956, isLocal: false, isDefinition: false, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: false)
!965 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi35ELb1EEaSERVKS0_", scope: !872, file: !383, line: 459, type: !966, isLocal: false, isDefinition: false, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: false)
!966 = !DISubroutineType(types: !967)
!967 = !{!968, !898, !962}
!968 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !872, size: 64)
!969 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi35ELb1EEaSERKS0_", scope: !872, file: !383, line: 465, type: !970, isLocal: false, isDefinition: false, scopeLine: 465, flags: DIFlagPrototyped, isOptimized: false)
!970 = !DISubroutineType(types: !971)
!971 = !{!968, !898, !958}
!972 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi35ELb1EEaSEb", scope: !872, file: !383, line: 479, type: !973, isLocal: false, isDefinition: false, scopeLine: 479, flags: DIFlagPrototyped, isOptimized: false)
!973 = !DISubroutineType(types: !974)
!974 = !{!968, !898, !40}
!975 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi35ELb1EEaSEc", scope: !872, file: !383, line: 480, type: !976, isLocal: false, isDefinition: false, scopeLine: 480, flags: DIFlagPrototyped, isOptimized: false)
!976 = !DISubroutineType(types: !977)
!977 = !{!968, !898, !61}
!978 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi35ELb1EEaSEa", scope: !872, file: !383, line: 481, type: !979, isLocal: false, isDefinition: false, scopeLine: 481, flags: DIFlagPrototyped, isOptimized: false)
!979 = !DISubroutineType(types: !980)
!980 = !{!968, !898, !66}
!981 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi35ELb1EEaSEh", scope: !872, file: !383, line: 482, type: !982, isLocal: false, isDefinition: false, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: false)
!982 = !DISubroutineType(types: !983)
!983 = !{!968, !898, !71}
!984 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi35ELb1EEaSEs", scope: !872, file: !383, line: 483, type: !985, isLocal: false, isDefinition: false, scopeLine: 483, flags: DIFlagPrototyped, isOptimized: false)
!985 = !DISubroutineType(types: !986)
!986 = !{!968, !898, !76}
!987 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi35ELb1EEaSEt", scope: !872, file: !383, line: 484, type: !988, isLocal: false, isDefinition: false, scopeLine: 484, flags: DIFlagPrototyped, isOptimized: false)
!988 = !DISubroutineType(types: !989)
!989 = !{!968, !898, !81}
!990 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi35ELb1EEaSEi", scope: !872, file: !383, line: 485, type: !991, isLocal: false, isDefinition: false, scopeLine: 485, flags: DIFlagPrototyped, isOptimized: false)
!991 = !DISubroutineType(types: !992)
!992 = !{!968, !898, !38}
!993 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi35ELb1EEaSEj", scope: !872, file: !383, line: 486, type: !994, isLocal: false, isDefinition: false, scopeLine: 486, flags: DIFlagPrototyped, isOptimized: false)
!994 = !DISubroutineType(types: !995)
!995 = !{!968, !898, !28}
!996 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi35ELb1EEaSEl", scope: !872, file: !383, line: 487, type: !997, isLocal: false, isDefinition: false, scopeLine: 487, flags: DIFlagPrototyped, isOptimized: false)
!997 = !DISubroutineType(types: !998)
!998 = !{!968, !898, !93}
!999 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi35ELb1EEaSEm", scope: !872, file: !383, line: 488, type: !1000, isLocal: false, isDefinition: false, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: false)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!968, !898, !98}
!1002 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi35ELb1EEaSEx", scope: !872, file: !383, line: 489, type: !1003, isLocal: false, isDefinition: false, scopeLine: 489, flags: DIFlagPrototyped, isOptimized: false)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!968, !898, !446}
!1005 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi35ELb1EEaSEy", scope: !872, file: !383, line: 490, type: !1006, isLocal: false, isDefinition: false, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: false)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!968, !898, !452}
!1008 = !DISubprogram(name: "operator long long", linkageName: "_ZNK11ap_int_baseILi35ELb1EEcvxEv", scope: !872, file: !383, line: 541, type: !1009, isLocal: false, isDefinition: false, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: false)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!1011, !893}
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !872, file: !383, line: 128, baseType: !531)
!1012 = !DISubprogram(name: "to_bool", linkageName: "_ZNK11ap_int_baseILi35ELb1EE7to_boolEv", scope: !872, file: !383, line: 546, type: !1013, isLocal: false, isDefinition: false, scopeLine: 546, flags: DIFlagPrototyped, isOptimized: false)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!40, !893}
!1015 = !DISubprogram(name: "to_char", linkageName: "_ZNK11ap_int_baseILi35ELb1EE7to_charEv", scope: !872, file: !383, line: 547, type: !1016, isLocal: false, isDefinition: false, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: false)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!61, !893}
!1018 = !DISubprogram(name: "to_schar", linkageName: "_ZNK11ap_int_baseILi35ELb1EE8to_scharEv", scope: !872, file: !383, line: 548, type: !1019, isLocal: false, isDefinition: false, scopeLine: 548, flags: DIFlagPrototyped, isOptimized: false)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!66, !893}
!1021 = !DISubprogram(name: "to_uchar", linkageName: "_ZNK11ap_int_baseILi35ELb1EE8to_ucharEv", scope: !872, file: !383, line: 549, type: !1022, isLocal: false, isDefinition: false, scopeLine: 549, flags: DIFlagPrototyped, isOptimized: false)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!71, !893}
!1024 = !DISubprogram(name: "to_short", linkageName: "_ZNK11ap_int_baseILi35ELb1EE8to_shortEv", scope: !872, file: !383, line: 550, type: !1025, isLocal: false, isDefinition: false, scopeLine: 550, flags: DIFlagPrototyped, isOptimized: false)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!76, !893}
!1027 = !DISubprogram(name: "to_ushort", linkageName: "_ZNK11ap_int_baseILi35ELb1EE9to_ushortEv", scope: !872, file: !383, line: 551, type: !1028, isLocal: false, isDefinition: false, scopeLine: 551, flags: DIFlagPrototyped, isOptimized: false)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!81, !893}
!1030 = !DISubprogram(name: "to_int", linkageName: "_ZNK11ap_int_baseILi35ELb1EE6to_intEv", scope: !872, file: !383, line: 552, type: !891, isLocal: false, isDefinition: false, scopeLine: 552, flags: DIFlagPrototyped, isOptimized: false)
!1031 = !DISubprogram(name: "to_uint", linkageName: "_ZNK11ap_int_baseILi35ELb1EE7to_uintEv", scope: !872, file: !383, line: 553, type: !1032, isLocal: false, isDefinition: false, scopeLine: 553, flags: DIFlagPrototyped, isOptimized: false)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!28, !893}
!1034 = !DISubprogram(name: "to_long", linkageName: "_ZNK11ap_int_baseILi35ELb1EE7to_longEv", scope: !872, file: !383, line: 554, type: !1035, isLocal: false, isDefinition: false, scopeLine: 554, flags: DIFlagPrototyped, isOptimized: false)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!93, !893}
!1037 = !DISubprogram(name: "to_ulong", linkageName: "_ZNK11ap_int_baseILi35ELb1EE8to_ulongEv", scope: !872, file: !383, line: 555, type: !1038, isLocal: false, isDefinition: false, scopeLine: 555, flags: DIFlagPrototyped, isOptimized: false)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!98, !893}
!1040 = !DISubprogram(name: "to_int64", linkageName: "_ZNK11ap_int_baseILi35ELb1EE8to_int64Ev", scope: !872, file: !383, line: 556, type: !1041, isLocal: false, isDefinition: false, scopeLine: 556, flags: DIFlagPrototyped, isOptimized: false)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!446, !893}
!1043 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK11ap_int_baseILi35ELb1EE9to_uint64Ev", scope: !872, file: !383, line: 557, type: !1044, isLocal: false, isDefinition: false, scopeLine: 557, flags: DIFlagPrototyped, isOptimized: false)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!452, !893}
!1046 = !DISubprogram(name: "to_half", linkageName: "_ZNK11ap_int_baseILi35ELb1EE7to_halfEv", scope: !872, file: !383, line: 558, type: !1047, isLocal: false, isDefinition: false, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: false)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!456, !893}
!1049 = !DISubprogram(name: "to_float", linkageName: "_ZNK11ap_int_baseILi35ELb1EE8to_floatEv", scope: !872, file: !383, line: 559, type: !1050, isLocal: false, isDefinition: false, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!15, !893}
!1052 = !DISubprogram(name: "to_double", linkageName: "_ZNK11ap_int_baseILi35ELb1EE9to_doubleEv", scope: !872, file: !383, line: 560, type: !1053, isLocal: false, isDefinition: false, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: false)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!123, !893}
!1055 = !DISubprogram(name: "length", linkageName: "_ZNVK11ap_int_baseILi35ELb1EE6lengthEv", scope: !872, file: !383, line: 584, type: !1056, isLocal: false, isDefinition: false, scopeLine: 584, flags: DIFlagPrototyped, isOptimized: false)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!38, !1058}
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1059 = !DISubprogram(name: "length", linkageName: "_ZNK11ap_int_baseILi35ELb1EE6lengthEv", scope: !872, file: !383, line: 585, type: !891, isLocal: false, isDefinition: false, scopeLine: 585, flags: DIFlagPrototyped, isOptimized: false)
!1060 = !DISubprogram(name: "iszero", linkageName: "_ZNK11ap_int_baseILi35ELb1EE6iszeroEv", scope: !872, file: !383, line: 588, type: !1013, isLocal: false, isDefinition: false, scopeLine: 588, flags: DIFlagPrototyped, isOptimized: false)
!1061 = !DISubprogram(name: "is_zero", linkageName: "_ZNK11ap_int_baseILi35ELb1EE7is_zeroEv", scope: !872, file: !383, line: 591, type: !1013, isLocal: false, isDefinition: false, scopeLine: 591, flags: DIFlagPrototyped, isOptimized: false)
!1062 = !DISubprogram(name: "sign", linkageName: "_ZNK11ap_int_baseILi35ELb1EE4signEv", scope: !872, file: !383, line: 594, type: !1013, isLocal: false, isDefinition: false, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: false)
!1063 = !DISubprogram(name: "clear", linkageName: "_ZN11ap_int_baseILi35ELb1EE5clearEi", scope: !872, file: !383, line: 603, type: !1064, isLocal: false, isDefinition: false, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: false)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{null, !898, !38}
!1066 = !DISubprogram(name: "invert", linkageName: "_ZN11ap_int_baseILi35ELb1EE6invertEi", scope: !872, file: !383, line: 609, type: !1064, isLocal: false, isDefinition: false, scopeLine: 609, flags: DIFlagPrototyped, isOptimized: false)
!1067 = !DISubprogram(name: "test", linkageName: "_ZNK11ap_int_baseILi35ELb1EE4testEi", scope: !872, file: !383, line: 618, type: !1068, isLocal: false, isDefinition: false, scopeLine: 618, flags: DIFlagPrototyped, isOptimized: false)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!40, !893, !38}
!1070 = !DISubprogram(name: "get", linkageName: "_ZN11ap_int_baseILi35ELb1EE3getEv", scope: !872, file: !383, line: 624, type: !1071, isLocal: false, isDefinition: false, scopeLine: 624, flags: DIFlagPrototyped, isOptimized: false)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!968, !898}
!1073 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi35ELb1EE3setEi", scope: !872, file: !383, line: 627, type: !1064, isLocal: false, isDefinition: false, scopeLine: 627, flags: DIFlagPrototyped, isOptimized: false)
!1074 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi35ELb1EE3setEib", scope: !872, file: !383, line: 633, type: !1075, isLocal: false, isDefinition: false, scopeLine: 633, flags: DIFlagPrototyped, isOptimized: false)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{null, !898, !38, !40}
!1077 = !DISubprogram(name: "lrotate", linkageName: "_ZN11ap_int_baseILi35ELb1EE7lrotateEi", scope: !872, file: !383, line: 640, type: !991, isLocal: false, isDefinition: false, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: false)
!1078 = !DISubprogram(name: "rrotate", linkageName: "_ZN11ap_int_baseILi35ELb1EE7rrotateEi", scope: !872, file: !383, line: 655, type: !991, isLocal: false, isDefinition: false, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: false)
!1079 = !DISubprogram(name: "reverse", linkageName: "_ZN11ap_int_baseILi35ELb1EE7reverseEv", scope: !872, file: !383, line: 670, type: !1071, isLocal: false, isDefinition: false, scopeLine: 670, flags: DIFlagPrototyped, isOptimized: false)
!1080 = !DISubprogram(name: "set_bit", linkageName: "_ZN11ap_int_baseILi35ELb1EE7set_bitEib", scope: !872, file: !383, line: 676, type: !1075, isLocal: false, isDefinition: false, scopeLine: 676, flags: DIFlagPrototyped, isOptimized: false)
!1081 = !DISubprogram(name: "get_bit", linkageName: "_ZNK11ap_int_baseILi35ELb1EE7get_bitEi", scope: !872, file: !383, line: 681, type: !1068, isLocal: false, isDefinition: false, scopeLine: 681, flags: DIFlagPrototyped, isOptimized: false)
!1082 = !DISubprogram(name: "b_not", linkageName: "_ZN11ap_int_baseILi35ELb1EE5b_notEv", scope: !872, file: !383, line: 686, type: !896, isLocal: false, isDefinition: false, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: false)
!1083 = !DISubprogram(name: "checkOverflowCsim", linkageName: "_ZNK11ap_int_baseILi35ELb1EE17checkOverflowCsimEibb", scope: !872, file: !383, line: 760, type: !1084, isLocal: false, isDefinition: false, scopeLine: 760, flags: DIFlagPrototyped, isOptimized: false)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!40, !893, !38, !40, !40}
!1086 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi35ELb1EEppEv", scope: !872, file: !383, line: 865, type: !1071, isLocal: false, isDefinition: false, scopeLine: 865, flags: DIFlagPrototyped, isOptimized: false)
!1087 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi35ELb1EEmmEv", scope: !872, file: !383, line: 869, type: !1071, isLocal: false, isDefinition: false, scopeLine: 869, flags: DIFlagPrototyped, isOptimized: false)
!1088 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi35ELb1EEppEi", scope: !872, file: !383, line: 877, type: !1089, isLocal: false, isDefinition: false, scopeLine: 877, flags: DIFlagPrototyped, isOptimized: false)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!1091, !898, !38}
!1091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1092)
!1092 = !DIDerivedType(tag: DW_TAG_typedef, name: "arg1", scope: !1093, file: !383, line: 167, baseType: !865)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<35, true>", scope: !872, file: !383, line: 134, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !867, identifier: "_ZTSN11ap_int_baseILi35ELb1EE5RTypeILi35ELb1EEE")
!1094 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi35ELb1EEmmEi", scope: !872, file: !383, line: 882, type: !1089, isLocal: false, isDefinition: false, scopeLine: 882, flags: DIFlagPrototyped, isOptimized: false)
!1095 = !DISubprogram(name: "operator+", linkageName: "_ZNK11ap_int_baseILi35ELb1EEpsEv", scope: !872, file: !383, line: 891, type: !1096, isLocal: false, isDefinition: false, scopeLine: 891, flags: DIFlagPrototyped, isOptimized: false)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!1092, !893}
!1098 = !DISubprogram(name: "operator-", linkageName: "_ZNK11ap_int_baseILi35ELb1EEngEv", scope: !872, file: !383, line: 894, type: !1099, isLocal: false, isDefinition: false, scopeLine: 894, flags: DIFlagPrototyped, isOptimized: false)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!1101, !893}
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "minus", scope: !1102, file: !383, line: 163, baseType: !1103)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<1, false>", scope: !872, file: !383, line: 134, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !371, identifier: "_ZTSN11ap_int_baseILi35ELb1EE5RTypeILi1ELb0EEE")
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1104, file: !383, line: 103, baseType: !1107)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_int_factory<36, true>", file: !383, line: 103, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !1105, identifier: "_ZTS15_ap_int_factoryILi36ELb1EE")
!1105 = !{!1106, !377}
!1106 = !DITemplateValueParameter(name: "_AP_W2", type: !38, value: i32 36)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int<36>", file: !379, line: 18, size: 64, flags: DIFlagTypePassByValue, elements: !1108, templateParams: !1461, identifier: "_ZTS6ap_intILi36EE")
!1108 = !{!1109, !1383, !1387, !1391, !1394, !1397, !1400, !1403, !1406, !1409, !1412, !1415, !1418, !1421, !1424, !1427, !1430, !1433, !1436, !1439, !1442, !1448, !1454, !1458}
!1109 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1107, baseType: !1110)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<36, true>", file: !383, line: 108, size: 64, flags: DIFlagTypePassByValue, elements: !1111, templateParams: !1381, identifier: "_ZTS11ap_int_baseILi36ELb1EE")
!1111 = !{!1112, !1126, !1127, !1128, !1133, !1137, !1140, !1143, !1146, !1149, !1152, !1155, !1158, !1161, !1164, !1167, !1170, !1173, !1176, !1179, !1182, !1185, !1188, !1193, !1197, !1202, !1203, !1207, !1210, !1213, !1216, !1219, !1222, !1225, !1228, !1231, !1234, !1237, !1240, !1243, !1246, !1250, !1253, !1256, !1259, !1262, !1265, !1268, !1269, !1272, !1275, !1278, !1281, !1284, !1287, !1290, !1293, !1297, !1298, !1299, !1300, !1301, !1304, !1305, !1308, !1311, !1312, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1324, !1325, !1326, !1332, !1333, !1336, !1346, !1347, !1348, !1352, !1355, !1358, !1361, !1362, !1363, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377}
!1112 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1110, baseType: !1113)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<36, true>", file: !387, line: 509, size: 64, flags: DIFlagTypePassByValue, elements: !1114, templateParams: !1124, identifier: "_ZTS8ssdm_intILi36ELb1EE")
!1114 = !{!1115, !1117, !1121}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !1113, file: !387, line: 511, baseType: !1116, size: 36, align: 64)
!1116 = !DIBasicType(name: "int36", size: 36, encoding: DW_ATE_signed)
!1117 = !DISubprogram(name: "ssdm_int", scope: !1113, file: !387, line: 512, type: !1118, isLocal: false, isDefinition: false, scopeLine: 512, flags: DIFlagPrototyped, isOptimized: false)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{null, !1120}
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1121 = !DISubprogram(name: "ssdm_int", scope: !1113, file: !387, line: 513, type: !1122, isLocal: false, isDefinition: false, scopeLine: 513, flags: DIFlagPrototyped, isOptimized: false)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{null, !1120, !1116}
!1124 = !{!1125, !400}
!1125 = !DITemplateValueParameter(name: "_AP_N", type: !38, value: i32 36)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !1110, file: !383, line: 130, baseType: !42, flags: DIFlagStaticMember, extraData: i32 36)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !1110, file: !383, line: 131, baseType: !44, flags: DIFlagStaticMember, extraData: i1 true)
!1128 = !DISubprogram(name: "countLeadingOnes", linkageName: "_ZNK11ap_int_baseILi36ELb1EE16countLeadingOnesEv", scope: !1110, file: !383, line: 110, type: !1129, isLocal: false, isDefinition: false, scopeLine: 110, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!38, !1131}
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1110)
!1133 = !DISubprogram(name: "ap_int_base", scope: !1110, file: !383, line: 175, type: !1134, isLocal: false, isDefinition: false, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{null, !1136}
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1137 = !DISubprogram(name: "ap_int_base", scope: !1110, file: !383, line: 208, type: !1138, isLocal: false, isDefinition: false, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: false)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{null, !1136, !44}
!1140 = !DISubprogram(name: "ap_int_base", scope: !1110, file: !383, line: 209, type: !1141, isLocal: false, isDefinition: false, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: false)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{null, !1136, !60}
!1143 = !DISubprogram(name: "ap_int_base", scope: !1110, file: !383, line: 210, type: !1144, isLocal: false, isDefinition: false, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: false)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{null, !1136, !65}
!1146 = !DISubprogram(name: "ap_int_base", scope: !1110, file: !383, line: 211, type: !1147, isLocal: false, isDefinition: false, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: false)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{null, !1136, !70}
!1149 = !DISubprogram(name: "ap_int_base", scope: !1110, file: !383, line: 212, type: !1150, isLocal: false, isDefinition: false, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: false)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{null, !1136, !75}
!1152 = !DISubprogram(name: "ap_int_base", scope: !1110, file: !383, line: 213, type: !1153, isLocal: false, isDefinition: false, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: false)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{null, !1136, !80}
!1155 = !DISubprogram(name: "ap_int_base", scope: !1110, file: !383, line: 214, type: !1156, isLocal: false, isDefinition: false, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: false)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{null, !1136, !42}
!1158 = !DISubprogram(name: "ap_int_base", scope: !1110, file: !383, line: 215, type: !1159, isLocal: false, isDefinition: false, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: false)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{null, !1136, !88}
!1161 = !DISubprogram(name: "ap_int_base", scope: !1110, file: !383, line: 216, type: !1162, isLocal: false, isDefinition: false, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: false)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{null, !1136, !92}
!1164 = !DISubprogram(name: "ap_int_base", scope: !1110, file: !383, line: 217, type: !1165, isLocal: false, isDefinition: false, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: false)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{null, !1136, !97}
!1167 = !DISubprogram(name: "ap_int_base", scope: !1110, file: !383, line: 218, type: !1168, isLocal: false, isDefinition: false, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: false)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{null, !1136, !445}
!1170 = !DISubprogram(name: "ap_int_base", scope: !1110, file: !383, line: 219, type: !1171, isLocal: false, isDefinition: false, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: false)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{null, !1136, !451}
!1173 = !DISubprogram(name: "ap_int_base", scope: !1110, file: !383, line: 224, type: !1174, isLocal: false, isDefinition: false, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: false)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{null, !1136, !456}
!1176 = !DISubprogram(name: "ap_int_base", scope: !1110, file: !383, line: 230, type: !1177, isLocal: false, isDefinition: false, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: false)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{null, !1136, !15}
!1179 = !DISubprogram(name: "ap_int_base", scope: !1110, file: !383, line: 289, type: !1180, isLocal: false, isDefinition: false, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: false)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{null, !1136, !123}
!1182 = !DISubprogram(name: "ap_int_base", scope: !1110, file: !383, line: 385, type: !1183, isLocal: false, isDefinition: false, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: false)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{null, !1136, !127}
!1185 = !DISubprogram(name: "ap_int_base", scope: !1110, file: !383, line: 391, type: !1186, isLocal: false, isDefinition: false, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: false)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{null, !1136, !127, !66}
!1188 = !DISubprogram(name: "read", linkageName: "_ZNV11ap_int_baseILi36ELb1EE4readEv", scope: !1110, file: !383, line: 413, type: !1189, isLocal: false, isDefinition: false, scopeLine: 413, flags: DIFlagPrototyped, isOptimized: false)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!1110, !1191}
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1192 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1110)
!1193 = !DISubprogram(name: "write", linkageName: "_ZNV11ap_int_baseILi36ELb1EE5writeERKS0_", scope: !1110, file: !383, line: 420, type: !1194, isLocal: false, isDefinition: false, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: false)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{null, !1191, !1196}
!1196 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1132, size: 64)
!1197 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi36ELb1EEaSERVKS0_", scope: !1110, file: !383, line: 432, type: !1198, isLocal: false, isDefinition: false, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: false)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{null, !1191, !1200}
!1200 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1201, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1192)
!1202 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi36ELb1EEaSERKS0_", scope: !1110, file: !383, line: 442, type: !1194, isLocal: false, isDefinition: false, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: false)
!1203 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi36ELb1EEaSERVKS0_", scope: !1110, file: !383, line: 459, type: !1204, isLocal: false, isDefinition: false, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: false)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!1206, !1136, !1200}
!1206 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1110, size: 64)
!1207 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi36ELb1EEaSERKS0_", scope: !1110, file: !383, line: 465, type: !1208, isLocal: false, isDefinition: false, scopeLine: 465, flags: DIFlagPrototyped, isOptimized: false)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!1206, !1136, !1196}
!1210 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi36ELb1EEaSEb", scope: !1110, file: !383, line: 479, type: !1211, isLocal: false, isDefinition: false, scopeLine: 479, flags: DIFlagPrototyped, isOptimized: false)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!1206, !1136, !40}
!1213 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi36ELb1EEaSEc", scope: !1110, file: !383, line: 480, type: !1214, isLocal: false, isDefinition: false, scopeLine: 480, flags: DIFlagPrototyped, isOptimized: false)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!1206, !1136, !61}
!1216 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi36ELb1EEaSEa", scope: !1110, file: !383, line: 481, type: !1217, isLocal: false, isDefinition: false, scopeLine: 481, flags: DIFlagPrototyped, isOptimized: false)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!1206, !1136, !66}
!1219 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi36ELb1EEaSEh", scope: !1110, file: !383, line: 482, type: !1220, isLocal: false, isDefinition: false, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: false)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!1206, !1136, !71}
!1222 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi36ELb1EEaSEs", scope: !1110, file: !383, line: 483, type: !1223, isLocal: false, isDefinition: false, scopeLine: 483, flags: DIFlagPrototyped, isOptimized: false)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!1206, !1136, !76}
!1225 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi36ELb1EEaSEt", scope: !1110, file: !383, line: 484, type: !1226, isLocal: false, isDefinition: false, scopeLine: 484, flags: DIFlagPrototyped, isOptimized: false)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!1206, !1136, !81}
!1228 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi36ELb1EEaSEi", scope: !1110, file: !383, line: 485, type: !1229, isLocal: false, isDefinition: false, scopeLine: 485, flags: DIFlagPrototyped, isOptimized: false)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!1206, !1136, !38}
!1231 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi36ELb1EEaSEj", scope: !1110, file: !383, line: 486, type: !1232, isLocal: false, isDefinition: false, scopeLine: 486, flags: DIFlagPrototyped, isOptimized: false)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!1206, !1136, !28}
!1234 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi36ELb1EEaSEl", scope: !1110, file: !383, line: 487, type: !1235, isLocal: false, isDefinition: false, scopeLine: 487, flags: DIFlagPrototyped, isOptimized: false)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!1206, !1136, !93}
!1237 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi36ELb1EEaSEm", scope: !1110, file: !383, line: 488, type: !1238, isLocal: false, isDefinition: false, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: false)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!1206, !1136, !98}
!1240 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi36ELb1EEaSEx", scope: !1110, file: !383, line: 489, type: !1241, isLocal: false, isDefinition: false, scopeLine: 489, flags: DIFlagPrototyped, isOptimized: false)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!1206, !1136, !446}
!1243 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi36ELb1EEaSEy", scope: !1110, file: !383, line: 490, type: !1244, isLocal: false, isDefinition: false, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: false)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!1206, !1136, !452}
!1246 = !DISubprogram(name: "operator long long", linkageName: "_ZNK11ap_int_baseILi36ELb1EEcvxEv", scope: !1110, file: !383, line: 541, type: !1247, isLocal: false, isDefinition: false, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: false)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!1249, !1131}
!1249 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !1110, file: !383, line: 128, baseType: !531)
!1250 = !DISubprogram(name: "to_bool", linkageName: "_ZNK11ap_int_baseILi36ELb1EE7to_boolEv", scope: !1110, file: !383, line: 546, type: !1251, isLocal: false, isDefinition: false, scopeLine: 546, flags: DIFlagPrototyped, isOptimized: false)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!40, !1131}
!1253 = !DISubprogram(name: "to_char", linkageName: "_ZNK11ap_int_baseILi36ELb1EE7to_charEv", scope: !1110, file: !383, line: 547, type: !1254, isLocal: false, isDefinition: false, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: false)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!61, !1131}
!1256 = !DISubprogram(name: "to_schar", linkageName: "_ZNK11ap_int_baseILi36ELb1EE8to_scharEv", scope: !1110, file: !383, line: 548, type: !1257, isLocal: false, isDefinition: false, scopeLine: 548, flags: DIFlagPrototyped, isOptimized: false)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!66, !1131}
!1259 = !DISubprogram(name: "to_uchar", linkageName: "_ZNK11ap_int_baseILi36ELb1EE8to_ucharEv", scope: !1110, file: !383, line: 549, type: !1260, isLocal: false, isDefinition: false, scopeLine: 549, flags: DIFlagPrototyped, isOptimized: false)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!71, !1131}
!1262 = !DISubprogram(name: "to_short", linkageName: "_ZNK11ap_int_baseILi36ELb1EE8to_shortEv", scope: !1110, file: !383, line: 550, type: !1263, isLocal: false, isDefinition: false, scopeLine: 550, flags: DIFlagPrototyped, isOptimized: false)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!76, !1131}
!1265 = !DISubprogram(name: "to_ushort", linkageName: "_ZNK11ap_int_baseILi36ELb1EE9to_ushortEv", scope: !1110, file: !383, line: 551, type: !1266, isLocal: false, isDefinition: false, scopeLine: 551, flags: DIFlagPrototyped, isOptimized: false)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{!81, !1131}
!1268 = !DISubprogram(name: "to_int", linkageName: "_ZNK11ap_int_baseILi36ELb1EE6to_intEv", scope: !1110, file: !383, line: 552, type: !1129, isLocal: false, isDefinition: false, scopeLine: 552, flags: DIFlagPrototyped, isOptimized: false)
!1269 = !DISubprogram(name: "to_uint", linkageName: "_ZNK11ap_int_baseILi36ELb1EE7to_uintEv", scope: !1110, file: !383, line: 553, type: !1270, isLocal: false, isDefinition: false, scopeLine: 553, flags: DIFlagPrototyped, isOptimized: false)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!28, !1131}
!1272 = !DISubprogram(name: "to_long", linkageName: "_ZNK11ap_int_baseILi36ELb1EE7to_longEv", scope: !1110, file: !383, line: 554, type: !1273, isLocal: false, isDefinition: false, scopeLine: 554, flags: DIFlagPrototyped, isOptimized: false)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!93, !1131}
!1275 = !DISubprogram(name: "to_ulong", linkageName: "_ZNK11ap_int_baseILi36ELb1EE8to_ulongEv", scope: !1110, file: !383, line: 555, type: !1276, isLocal: false, isDefinition: false, scopeLine: 555, flags: DIFlagPrototyped, isOptimized: false)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!98, !1131}
!1278 = !DISubprogram(name: "to_int64", linkageName: "_ZNK11ap_int_baseILi36ELb1EE8to_int64Ev", scope: !1110, file: !383, line: 556, type: !1279, isLocal: false, isDefinition: false, scopeLine: 556, flags: DIFlagPrototyped, isOptimized: false)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!446, !1131}
!1281 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK11ap_int_baseILi36ELb1EE9to_uint64Ev", scope: !1110, file: !383, line: 557, type: !1282, isLocal: false, isDefinition: false, scopeLine: 557, flags: DIFlagPrototyped, isOptimized: false)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!452, !1131}
!1284 = !DISubprogram(name: "to_half", linkageName: "_ZNK11ap_int_baseILi36ELb1EE7to_halfEv", scope: !1110, file: !383, line: 558, type: !1285, isLocal: false, isDefinition: false, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: false)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!456, !1131}
!1287 = !DISubprogram(name: "to_float", linkageName: "_ZNK11ap_int_baseILi36ELb1EE8to_floatEv", scope: !1110, file: !383, line: 559, type: !1288, isLocal: false, isDefinition: false, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!15, !1131}
!1290 = !DISubprogram(name: "to_double", linkageName: "_ZNK11ap_int_baseILi36ELb1EE9to_doubleEv", scope: !1110, file: !383, line: 560, type: !1291, isLocal: false, isDefinition: false, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: false)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{!123, !1131}
!1293 = !DISubprogram(name: "length", linkageName: "_ZNVK11ap_int_baseILi36ELb1EE6lengthEv", scope: !1110, file: !383, line: 584, type: !1294, isLocal: false, isDefinition: false, scopeLine: 584, flags: DIFlagPrototyped, isOptimized: false)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!38, !1296}
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1297 = !DISubprogram(name: "length", linkageName: "_ZNK11ap_int_baseILi36ELb1EE6lengthEv", scope: !1110, file: !383, line: 585, type: !1129, isLocal: false, isDefinition: false, scopeLine: 585, flags: DIFlagPrototyped, isOptimized: false)
!1298 = !DISubprogram(name: "iszero", linkageName: "_ZNK11ap_int_baseILi36ELb1EE6iszeroEv", scope: !1110, file: !383, line: 588, type: !1251, isLocal: false, isDefinition: false, scopeLine: 588, flags: DIFlagPrototyped, isOptimized: false)
!1299 = !DISubprogram(name: "is_zero", linkageName: "_ZNK11ap_int_baseILi36ELb1EE7is_zeroEv", scope: !1110, file: !383, line: 591, type: !1251, isLocal: false, isDefinition: false, scopeLine: 591, flags: DIFlagPrototyped, isOptimized: false)
!1300 = !DISubprogram(name: "sign", linkageName: "_ZNK11ap_int_baseILi36ELb1EE4signEv", scope: !1110, file: !383, line: 594, type: !1251, isLocal: false, isDefinition: false, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: false)
!1301 = !DISubprogram(name: "clear", linkageName: "_ZN11ap_int_baseILi36ELb1EE5clearEi", scope: !1110, file: !383, line: 603, type: !1302, isLocal: false, isDefinition: false, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: false)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{null, !1136, !38}
!1304 = !DISubprogram(name: "invert", linkageName: "_ZN11ap_int_baseILi36ELb1EE6invertEi", scope: !1110, file: !383, line: 609, type: !1302, isLocal: false, isDefinition: false, scopeLine: 609, flags: DIFlagPrototyped, isOptimized: false)
!1305 = !DISubprogram(name: "test", linkageName: "_ZNK11ap_int_baseILi36ELb1EE4testEi", scope: !1110, file: !383, line: 618, type: !1306, isLocal: false, isDefinition: false, scopeLine: 618, flags: DIFlagPrototyped, isOptimized: false)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!40, !1131, !38}
!1308 = !DISubprogram(name: "get", linkageName: "_ZN11ap_int_baseILi36ELb1EE3getEv", scope: !1110, file: !383, line: 624, type: !1309, isLocal: false, isDefinition: false, scopeLine: 624, flags: DIFlagPrototyped, isOptimized: false)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!1206, !1136}
!1311 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi36ELb1EE3setEi", scope: !1110, file: !383, line: 627, type: !1302, isLocal: false, isDefinition: false, scopeLine: 627, flags: DIFlagPrototyped, isOptimized: false)
!1312 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi36ELb1EE3setEib", scope: !1110, file: !383, line: 633, type: !1313, isLocal: false, isDefinition: false, scopeLine: 633, flags: DIFlagPrototyped, isOptimized: false)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{null, !1136, !38, !40}
!1315 = !DISubprogram(name: "lrotate", linkageName: "_ZN11ap_int_baseILi36ELb1EE7lrotateEi", scope: !1110, file: !383, line: 640, type: !1229, isLocal: false, isDefinition: false, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: false)
!1316 = !DISubprogram(name: "rrotate", linkageName: "_ZN11ap_int_baseILi36ELb1EE7rrotateEi", scope: !1110, file: !383, line: 655, type: !1229, isLocal: false, isDefinition: false, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: false)
!1317 = !DISubprogram(name: "reverse", linkageName: "_ZN11ap_int_baseILi36ELb1EE7reverseEv", scope: !1110, file: !383, line: 670, type: !1309, isLocal: false, isDefinition: false, scopeLine: 670, flags: DIFlagPrototyped, isOptimized: false)
!1318 = !DISubprogram(name: "set_bit", linkageName: "_ZN11ap_int_baseILi36ELb1EE7set_bitEib", scope: !1110, file: !383, line: 676, type: !1313, isLocal: false, isDefinition: false, scopeLine: 676, flags: DIFlagPrototyped, isOptimized: false)
!1319 = !DISubprogram(name: "get_bit", linkageName: "_ZNK11ap_int_baseILi36ELb1EE7get_bitEi", scope: !1110, file: !383, line: 681, type: !1306, isLocal: false, isDefinition: false, scopeLine: 681, flags: DIFlagPrototyped, isOptimized: false)
!1320 = !DISubprogram(name: "b_not", linkageName: "_ZN11ap_int_baseILi36ELb1EE5b_notEv", scope: !1110, file: !383, line: 686, type: !1134, isLocal: false, isDefinition: false, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: false)
!1321 = !DISubprogram(name: "checkOverflowCsim", linkageName: "_ZNK11ap_int_baseILi36ELb1EE17checkOverflowCsimEibb", scope: !1110, file: !383, line: 760, type: !1322, isLocal: false, isDefinition: false, scopeLine: 760, flags: DIFlagPrototyped, isOptimized: false)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!40, !1131, !38, !40, !40}
!1324 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi36ELb1EEppEv", scope: !1110, file: !383, line: 865, type: !1309, isLocal: false, isDefinition: false, scopeLine: 865, flags: DIFlagPrototyped, isOptimized: false)
!1325 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi36ELb1EEmmEv", scope: !1110, file: !383, line: 869, type: !1309, isLocal: false, isDefinition: false, scopeLine: 869, flags: DIFlagPrototyped, isOptimized: false)
!1326 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi36ELb1EEppEi", scope: !1110, file: !383, line: 877, type: !1327, isLocal: false, isDefinition: false, scopeLine: 877, flags: DIFlagPrototyped, isOptimized: false)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!1329, !1136, !38}
!1329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1330)
!1330 = !DIDerivedType(tag: DW_TAG_typedef, name: "arg1", scope: !1331, file: !383, line: 167, baseType: !1103)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<36, true>", scope: !1110, file: !383, line: 134, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !1105, identifier: "_ZTSN11ap_int_baseILi36ELb1EE5RTypeILi36ELb1EEE")
!1332 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi36ELb1EEmmEi", scope: !1110, file: !383, line: 882, type: !1327, isLocal: false, isDefinition: false, scopeLine: 882, flags: DIFlagPrototyped, isOptimized: false)
!1333 = !DISubprogram(name: "operator+", linkageName: "_ZNK11ap_int_baseILi36ELb1EEpsEv", scope: !1110, file: !383, line: 891, type: !1334, isLocal: false, isDefinition: false, scopeLine: 891, flags: DIFlagPrototyped, isOptimized: false)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!1330, !1131}
!1336 = !DISubprogram(name: "operator-", linkageName: "_ZNK11ap_int_baseILi36ELb1EEngEv", scope: !1110, file: !383, line: 894, type: !1337, isLocal: false, isDefinition: false, scopeLine: 894, flags: DIFlagPrototyped, isOptimized: false)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!1339, !1131}
!1339 = !DIDerivedType(tag: DW_TAG_typedef, name: "minus", scope: !1340, file: !383, line: 163, baseType: !1341)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<1, false>", scope: !1110, file: !383, line: 134, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !371, identifier: "_ZTSN11ap_int_baseILi36ELb1EE5RTypeILi1ELb0EEE")
!1341 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1342, file: !383, line: 103, baseType: !1345)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_int_factory<37, true>", file: !383, line: 103, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !1343, identifier: "_ZTS15_ap_int_factoryILi37ELb1EE")
!1343 = !{!1344, !377}
!1344 = !DITemplateValueParameter(name: "_AP_W2", type: !38, value: i32 37)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int<37>", file: !447, line: 137, flags: DIFlagFwdDecl, identifier: "_ZTS6ap_intILi37EE")
!1346 = !DISubprogram(name: "operator!", linkageName: "_ZNK11ap_int_baseILi36ELb1EEntEv", scope: !1110, file: !383, line: 901, type: !1251, isLocal: false, isDefinition: false, scopeLine: 901, flags: DIFlagPrototyped, isOptimized: false)
!1347 = !DISubprogram(name: "operator~", linkageName: "_ZNK11ap_int_baseILi36ELb1EEcoEv", scope: !1110, file: !383, line: 907, type: !1334, isLocal: false, isDefinition: false, scopeLine: 907, flags: DIFlagPrototyped, isOptimized: false)
!1348 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi36ELb1EE5rangeEii", scope: !1110, file: !383, line: 1045, type: !1349, isLocal: false, isDefinition: false, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: false)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!1351, !1136, !38, !38}
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_range_ref<36, true>", file: !447, line: 143, flags: DIFlagFwdDecl, identifier: "_ZTS12ap_range_refILi36ELb1EE")
!1352 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi36ELb1EE5rangeEii", scope: !1110, file: !383, line: 1052, type: !1353, isLocal: false, isDefinition: false, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: false)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!1351, !1131, !38, !38}
!1355 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi36ELb1EE5rangeEv", scope: !1110, file: !383, line: 1076, type: !1356, isLocal: false, isDefinition: false, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: false)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!1351, !1136}
!1358 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi36ELb1EE5rangeEv", scope: !1110, file: !383, line: 1080, type: !1359, isLocal: false, isDefinition: false, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: false)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!1351, !1131}
!1361 = !DISubprogram(name: "operator()", linkageName: "_ZN11ap_int_baseILi36ELb1EEclEii", scope: !1110, file: !383, line: 1084, type: !1349, isLocal: false, isDefinition: false, scopeLine: 1084, flags: DIFlagPrototyped, isOptimized: false)
!1362 = !DISubprogram(name: "operator()", linkageName: "_ZNK11ap_int_baseILi36ELb1EEclEii", scope: !1110, file: !383, line: 1088, type: !1353, isLocal: false, isDefinition: false, scopeLine: 1088, flags: DIFlagPrototyped, isOptimized: false)
!1363 = !DISubprogram(name: "operator[]", linkageName: "_ZN11ap_int_baseILi36ELb1EEixEi", scope: !1110, file: !383, line: 1126, type: !1364, isLocal: false, isDefinition: false, scopeLine: 1126, flags: DIFlagPrototyped, isOptimized: false)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!1366, !1136, !38}
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_bit_ref<36, true>", file: !447, line: 146, flags: DIFlagFwdDecl, identifier: "_ZTS10ap_bit_refILi36ELb1EE")
!1367 = !DISubprogram(name: "operator[]", linkageName: "_ZNK11ap_int_baseILi36ELb1EEixEi", scope: !1110, file: !383, line: 1142, type: !1306, isLocal: false, isDefinition: false, scopeLine: 1142, flags: DIFlagPrototyped, isOptimized: false)
!1368 = !DISubprogram(name: "bit", linkageName: "_ZN11ap_int_baseILi36ELb1EE3bitEi", scope: !1110, file: !383, line: 1155, type: !1364, isLocal: false, isDefinition: false, scopeLine: 1155, flags: DIFlagPrototyped, isOptimized: false)
!1369 = !DISubprogram(name: "bit", linkageName: "_ZNK11ap_int_baseILi36ELb1EE3bitEi", scope: !1110, file: !383, line: 1170, type: !1306, isLocal: false, isDefinition: false, scopeLine: 1170, flags: DIFlagPrototyped, isOptimized: false)
!1370 = !DISubprogram(name: "countLeadingZeros", linkageName: "_ZNK11ap_int_baseILi36ELb1EE17countLeadingZerosEv", scope: !1110, file: !383, line: 1193, type: !1129, isLocal: false, isDefinition: false, scopeLine: 1193, flags: DIFlagPrototyped, isOptimized: false)
!1371 = !DISubprogram(name: "and_reduce", linkageName: "_ZNK11ap_int_baseILi36ELb1EE10and_reduceEv", scope: !1110, file: !383, line: 1413, type: !1251, isLocal: false, isDefinition: false, scopeLine: 1413, flags: DIFlagPrototyped, isOptimized: false)
!1372 = !DISubprogram(name: "nand_reduce", linkageName: "_ZNK11ap_int_baseILi36ELb1EE11nand_reduceEv", scope: !1110, file: !383, line: 1414, type: !1251, isLocal: false, isDefinition: false, scopeLine: 1414, flags: DIFlagPrototyped, isOptimized: false)
!1373 = !DISubprogram(name: "or_reduce", linkageName: "_ZNK11ap_int_baseILi36ELb1EE9or_reduceEv", scope: !1110, file: !383, line: 1415, type: !1251, isLocal: false, isDefinition: false, scopeLine: 1415, flags: DIFlagPrototyped, isOptimized: false)
!1374 = !DISubprogram(name: "nor_reduce", linkageName: "_ZNK11ap_int_baseILi36ELb1EE10nor_reduceEv", scope: !1110, file: !383, line: 1416, type: !1251, isLocal: false, isDefinition: false, scopeLine: 1416, flags: DIFlagPrototyped, isOptimized: false)
!1375 = !DISubprogram(name: "xor_reduce", linkageName: "_ZNK11ap_int_baseILi36ELb1EE10xor_reduceEv", scope: !1110, file: !383, line: 1417, type: !1251, isLocal: false, isDefinition: false, scopeLine: 1417, flags: DIFlagPrototyped, isOptimized: false)
!1376 = !DISubprogram(name: "xnor_reduce", linkageName: "_ZNK11ap_int_baseILi36ELb1EE11xnor_reduceEv", scope: !1110, file: !383, line: 1418, type: !1251, isLocal: false, isDefinition: false, scopeLine: 1418, flags: DIFlagPrototyped, isOptimized: false)
!1377 = !DISubprogram(name: "to_string", linkageName: "_ZNK11ap_int_baseILi36ELb1EE9to_stringEab", scope: !1110, file: !383, line: 1433, type: !1378, isLocal: false, isDefinition: false, scopeLine: 1433, flags: DIFlagPrototyped, isOptimized: false)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!1380, !1131, !66, !40}
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!1381 = !{!1382, !400}
!1382 = !DITemplateValueParameter(name: "_AP_W", type: !38, value: i32 36)
!1383 = !DISubprogram(name: "ap_int", scope: !1107, file: !379, line: 21, type: !1384, isLocal: false, isDefinition: false, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: false)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{null, !1386}
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1387 = !DISubprogram(name: "ap_int", scope: !1107, file: !379, line: 57, type: !1388, isLocal: false, isDefinition: false, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{null, !1386, !1390, !40}
!1390 = !DIBasicType(name: "uint36", size: 36, encoding: DW_ATE_unsigned)
!1391 = !DISubprogram(name: "ap_int", scope: !1107, file: !379, line: 127, type: !1392, isLocal: false, isDefinition: false, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: false)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{null, !1386, !40}
!1394 = !DISubprogram(name: "ap_int", scope: !1107, file: !379, line: 128, type: !1395, isLocal: false, isDefinition: false, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{null, !1386, !61}
!1397 = !DISubprogram(name: "ap_int", scope: !1107, file: !379, line: 129, type: !1398, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: false)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{null, !1386, !66}
!1400 = !DISubprogram(name: "ap_int", scope: !1107, file: !379, line: 130, type: !1401, isLocal: false, isDefinition: false, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: false)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{null, !1386, !71}
!1403 = !DISubprogram(name: "ap_int", scope: !1107, file: !379, line: 131, type: !1404, isLocal: false, isDefinition: false, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{null, !1386, !76}
!1406 = !DISubprogram(name: "ap_int", scope: !1107, file: !379, line: 132, type: !1407, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{null, !1386, !81}
!1409 = !DISubprogram(name: "ap_int", scope: !1107, file: !379, line: 133, type: !1410, isLocal: false, isDefinition: false, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{null, !1386, !38}
!1412 = !DISubprogram(name: "ap_int", scope: !1107, file: !379, line: 134, type: !1413, isLocal: false, isDefinition: false, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{null, !1386, !28}
!1415 = !DISubprogram(name: "ap_int", scope: !1107, file: !379, line: 135, type: !1416, isLocal: false, isDefinition: false, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{null, !1386, !93}
!1418 = !DISubprogram(name: "ap_int", scope: !1107, file: !379, line: 136, type: !1419, isLocal: false, isDefinition: false, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: false)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{null, !1386, !98}
!1421 = !DISubprogram(name: "ap_int", scope: !1107, file: !379, line: 137, type: !1422, isLocal: false, isDefinition: false, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{null, !1386, !446}
!1424 = !DISubprogram(name: "ap_int", scope: !1107, file: !379, line: 138, type: !1425, isLocal: false, isDefinition: false, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{null, !1386, !452}
!1427 = !DISubprogram(name: "ap_int", scope: !1107, file: !379, line: 140, type: !1428, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{null, !1386, !123}
!1430 = !DISubprogram(name: "ap_int", scope: !1107, file: !379, line: 141, type: !1431, isLocal: false, isDefinition: false, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{null, !1386, !15}
!1433 = !DISubprogram(name: "ap_int", scope: !1107, file: !379, line: 142, type: !1434, isLocal: false, isDefinition: false, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{null, !1386, !456}
!1436 = !DISubprogram(name: "ap_int", scope: !1107, file: !379, line: 145, type: !1437, isLocal: false, isDefinition: false, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{null, !1386, !127}
!1439 = !DISubprogram(name: "ap_int", scope: !1107, file: !379, line: 147, type: !1440, isLocal: false, isDefinition: false, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{null, !1386, !127, !66}
!1442 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi36EEaSERKS0_", scope: !1107, file: !379, line: 152, type: !1443, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: false)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!1445, !1386, !1446}
!1445 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1107, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1447, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1107)
!1448 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi36EEaSERVKS0_", scope: !1107, file: !379, line: 161, type: !1449, isLocal: false, isDefinition: false, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!1445, !1386, !1451}
!1451 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1452, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1453)
!1453 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1107)
!1454 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi36EEaSERKS0_", scope: !1107, file: !379, line: 167, type: !1455, isLocal: false, isDefinition: false, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{null, !1457, !1446}
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1458 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi36EEaSERVKS0_", scope: !1107, file: !379, line: 171, type: !1459, isLocal: false, isDefinition: false, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: false)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{null, !1457, !1451}
!1461 = !{!1382}
!1462 = !DISubprogram(name: "operator!", linkageName: "_ZNK11ap_int_baseILi35ELb1EEntEv", scope: !872, file: !383, line: 901, type: !1013, isLocal: false, isDefinition: false, scopeLine: 901, flags: DIFlagPrototyped, isOptimized: false)
!1463 = !DISubprogram(name: "operator~", linkageName: "_ZNK11ap_int_baseILi35ELb1EEcoEv", scope: !872, file: !383, line: 907, type: !1096, isLocal: false, isDefinition: false, scopeLine: 907, flags: DIFlagPrototyped, isOptimized: false)
!1464 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi35ELb1EE5rangeEii", scope: !872, file: !383, line: 1045, type: !1465, isLocal: false, isDefinition: false, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: false)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!1467, !898, !38, !38}
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_range_ref<35, true>", file: !447, line: 143, flags: DIFlagFwdDecl, identifier: "_ZTS12ap_range_refILi35ELb1EE")
!1468 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi35ELb1EE5rangeEii", scope: !872, file: !383, line: 1052, type: !1469, isLocal: false, isDefinition: false, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: false)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!1467, !893, !38, !38}
!1471 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi35ELb1EE5rangeEv", scope: !872, file: !383, line: 1076, type: !1472, isLocal: false, isDefinition: false, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: false)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!1467, !898}
!1474 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi35ELb1EE5rangeEv", scope: !872, file: !383, line: 1080, type: !1475, isLocal: false, isDefinition: false, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: false)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!1467, !893}
!1477 = !DISubprogram(name: "operator()", linkageName: "_ZN11ap_int_baseILi35ELb1EEclEii", scope: !872, file: !383, line: 1084, type: !1465, isLocal: false, isDefinition: false, scopeLine: 1084, flags: DIFlagPrototyped, isOptimized: false)
!1478 = !DISubprogram(name: "operator()", linkageName: "_ZNK11ap_int_baseILi35ELb1EEclEii", scope: !872, file: !383, line: 1088, type: !1469, isLocal: false, isDefinition: false, scopeLine: 1088, flags: DIFlagPrototyped, isOptimized: false)
!1479 = !DISubprogram(name: "operator[]", linkageName: "_ZN11ap_int_baseILi35ELb1EEixEi", scope: !872, file: !383, line: 1126, type: !1480, isLocal: false, isDefinition: false, scopeLine: 1126, flags: DIFlagPrototyped, isOptimized: false)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!1482, !898, !38}
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_bit_ref<35, true>", file: !447, line: 146, flags: DIFlagFwdDecl, identifier: "_ZTS10ap_bit_refILi35ELb1EE")
!1483 = !DISubprogram(name: "operator[]", linkageName: "_ZNK11ap_int_baseILi35ELb1EEixEi", scope: !872, file: !383, line: 1142, type: !1068, isLocal: false, isDefinition: false, scopeLine: 1142, flags: DIFlagPrototyped, isOptimized: false)
!1484 = !DISubprogram(name: "bit", linkageName: "_ZN11ap_int_baseILi35ELb1EE3bitEi", scope: !872, file: !383, line: 1155, type: !1480, isLocal: false, isDefinition: false, scopeLine: 1155, flags: DIFlagPrototyped, isOptimized: false)
!1485 = !DISubprogram(name: "bit", linkageName: "_ZNK11ap_int_baseILi35ELb1EE3bitEi", scope: !872, file: !383, line: 1170, type: !1068, isLocal: false, isDefinition: false, scopeLine: 1170, flags: DIFlagPrototyped, isOptimized: false)
!1486 = !DISubprogram(name: "countLeadingZeros", linkageName: "_ZNK11ap_int_baseILi35ELb1EE17countLeadingZerosEv", scope: !872, file: !383, line: 1193, type: !891, isLocal: false, isDefinition: false, scopeLine: 1193, flags: DIFlagPrototyped, isOptimized: false)
!1487 = !DISubprogram(name: "and_reduce", linkageName: "_ZNK11ap_int_baseILi35ELb1EE10and_reduceEv", scope: !872, file: !383, line: 1413, type: !1013, isLocal: false, isDefinition: false, scopeLine: 1413, flags: DIFlagPrototyped, isOptimized: false)
!1488 = !DISubprogram(name: "nand_reduce", linkageName: "_ZNK11ap_int_baseILi35ELb1EE11nand_reduceEv", scope: !872, file: !383, line: 1414, type: !1013, isLocal: false, isDefinition: false, scopeLine: 1414, flags: DIFlagPrototyped, isOptimized: false)
!1489 = !DISubprogram(name: "or_reduce", linkageName: "_ZNK11ap_int_baseILi35ELb1EE9or_reduceEv", scope: !872, file: !383, line: 1415, type: !1013, isLocal: false, isDefinition: false, scopeLine: 1415, flags: DIFlagPrototyped, isOptimized: false)
!1490 = !DISubprogram(name: "nor_reduce", linkageName: "_ZNK11ap_int_baseILi35ELb1EE10nor_reduceEv", scope: !872, file: !383, line: 1416, type: !1013, isLocal: false, isDefinition: false, scopeLine: 1416, flags: DIFlagPrototyped, isOptimized: false)
!1491 = !DISubprogram(name: "xor_reduce", linkageName: "_ZNK11ap_int_baseILi35ELb1EE10xor_reduceEv", scope: !872, file: !383, line: 1417, type: !1013, isLocal: false, isDefinition: false, scopeLine: 1417, flags: DIFlagPrototyped, isOptimized: false)
!1492 = !DISubprogram(name: "xnor_reduce", linkageName: "_ZNK11ap_int_baseILi35ELb1EE11xnor_reduceEv", scope: !872, file: !383, line: 1418, type: !1013, isLocal: false, isDefinition: false, scopeLine: 1418, flags: DIFlagPrototyped, isOptimized: false)
!1493 = !DISubprogram(name: "to_string", linkageName: "_ZNK11ap_int_baseILi35ELb1EE9to_stringEab", scope: !872, file: !383, line: 1433, type: !1494, isLocal: false, isDefinition: false, scopeLine: 1433, flags: DIFlagPrototyped, isOptimized: false)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!1380, !893, !66, !40}
!1496 = !{!1497, !400}
!1497 = !DITemplateValueParameter(name: "_AP_W", type: !38, value: i32 35)
!1498 = !DISubprogram(name: "ap_int", scope: !869, file: !379, line: 21, type: !1499, isLocal: false, isDefinition: false, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: false)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{null, !1501}
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1502 = !DISubprogram(name: "ap_int", scope: !869, file: !379, line: 57, type: !1503, isLocal: false, isDefinition: false, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{null, !1501, !1505, !40}
!1505 = !DIBasicType(name: "uint35", size: 35, encoding: DW_ATE_unsigned)
!1506 = !DISubprogram(name: "ap_int", scope: !869, file: !379, line: 127, type: !1507, isLocal: false, isDefinition: false, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: false)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{null, !1501, !40}
!1509 = !DISubprogram(name: "ap_int", scope: !869, file: !379, line: 128, type: !1510, isLocal: false, isDefinition: false, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{null, !1501, !61}
!1512 = !DISubprogram(name: "ap_int", scope: !869, file: !379, line: 129, type: !1513, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: false)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{null, !1501, !66}
!1515 = !DISubprogram(name: "ap_int", scope: !869, file: !379, line: 130, type: !1516, isLocal: false, isDefinition: false, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: false)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{null, !1501, !71}
!1518 = !DISubprogram(name: "ap_int", scope: !869, file: !379, line: 131, type: !1519, isLocal: false, isDefinition: false, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{null, !1501, !76}
!1521 = !DISubprogram(name: "ap_int", scope: !869, file: !379, line: 132, type: !1522, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{null, !1501, !81}
!1524 = !DISubprogram(name: "ap_int", scope: !869, file: !379, line: 133, type: !1525, isLocal: false, isDefinition: false, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{null, !1501, !38}
!1527 = !DISubprogram(name: "ap_int", scope: !869, file: !379, line: 134, type: !1528, isLocal: false, isDefinition: false, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{null, !1501, !28}
!1530 = !DISubprogram(name: "ap_int", scope: !869, file: !379, line: 135, type: !1531, isLocal: false, isDefinition: false, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{null, !1501, !93}
!1533 = !DISubprogram(name: "ap_int", scope: !869, file: !379, line: 136, type: !1534, isLocal: false, isDefinition: false, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: false)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{null, !1501, !98}
!1536 = !DISubprogram(name: "ap_int", scope: !869, file: !379, line: 137, type: !1537, isLocal: false, isDefinition: false, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{null, !1501, !446}
!1539 = !DISubprogram(name: "ap_int", scope: !869, file: !379, line: 138, type: !1540, isLocal: false, isDefinition: false, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{null, !1501, !452}
!1542 = !DISubprogram(name: "ap_int", scope: !869, file: !379, line: 140, type: !1543, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{null, !1501, !123}
!1545 = !DISubprogram(name: "ap_int", scope: !869, file: !379, line: 141, type: !1546, isLocal: false, isDefinition: false, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{null, !1501, !15}
!1548 = !DISubprogram(name: "ap_int", scope: !869, file: !379, line: 142, type: !1549, isLocal: false, isDefinition: false, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{null, !1501, !456}
!1551 = !DISubprogram(name: "ap_int", scope: !869, file: !379, line: 145, type: !1552, isLocal: false, isDefinition: false, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{null, !1501, !127}
!1554 = !DISubprogram(name: "ap_int", scope: !869, file: !379, line: 147, type: !1555, isLocal: false, isDefinition: false, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{null, !1501, !127, !66}
!1557 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi35EEaSERKS0_", scope: !869, file: !379, line: 152, type: !1558, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: false)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!1560, !1501, !1561}
!1560 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !869, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1562, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !869)
!1563 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi35EEaSERVKS0_", scope: !869, file: !379, line: 161, type: !1564, isLocal: false, isDefinition: false, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!1560, !1501, !1566}
!1566 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1567, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1568)
!1568 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !869)
!1569 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi35EEaSERKS0_", scope: !869, file: !379, line: 167, type: !1570, isLocal: false, isDefinition: false, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{null, !1572, !1561}
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1573 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi35EEaSERVKS0_", scope: !869, file: !379, line: 171, type: !1574, isLocal: false, isDefinition: false, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: false)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{null, !1572, !1566}
!1576 = !{!1497}
!1577 = !DISubprogram(name: "operator!", linkageName: "_ZNK11ap_int_baseILi34ELb1EEntEv", scope: !634, file: !383, line: 901, type: !775, isLocal: false, isDefinition: false, scopeLine: 901, flags: DIFlagPrototyped, isOptimized: false)
!1578 = !DISubprogram(name: "operator~", linkageName: "_ZNK11ap_int_baseILi34ELb1EEcoEv", scope: !634, file: !383, line: 907, type: !858, isLocal: false, isDefinition: false, scopeLine: 907, flags: DIFlagPrototyped, isOptimized: false)
!1579 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi34ELb1EE5rangeEii", scope: !634, file: !383, line: 1045, type: !1580, isLocal: false, isDefinition: false, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: false)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!1582, !660, !38, !38}
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_range_ref<34, true>", file: !447, line: 143, flags: DIFlagFwdDecl, identifier: "_ZTS12ap_range_refILi34ELb1EE")
!1583 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi34ELb1EE5rangeEii", scope: !634, file: !383, line: 1052, type: !1584, isLocal: false, isDefinition: false, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: false)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!1582, !655, !38, !38}
!1586 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi34ELb1EE5rangeEv", scope: !634, file: !383, line: 1076, type: !1587, isLocal: false, isDefinition: false, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: false)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!1582, !660}
!1589 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi34ELb1EE5rangeEv", scope: !634, file: !383, line: 1080, type: !1590, isLocal: false, isDefinition: false, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: false)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!1582, !655}
!1592 = !DISubprogram(name: "operator()", linkageName: "_ZN11ap_int_baseILi34ELb1EEclEii", scope: !634, file: !383, line: 1084, type: !1580, isLocal: false, isDefinition: false, scopeLine: 1084, flags: DIFlagPrototyped, isOptimized: false)
!1593 = !DISubprogram(name: "operator()", linkageName: "_ZNK11ap_int_baseILi34ELb1EEclEii", scope: !634, file: !383, line: 1088, type: !1584, isLocal: false, isDefinition: false, scopeLine: 1088, flags: DIFlagPrototyped, isOptimized: false)
!1594 = !DISubprogram(name: "operator[]", linkageName: "_ZN11ap_int_baseILi34ELb1EEixEi", scope: !634, file: !383, line: 1126, type: !1595, isLocal: false, isDefinition: false, scopeLine: 1126, flags: DIFlagPrototyped, isOptimized: false)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!1597, !660, !38}
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_bit_ref<34, true>", file: !447, line: 146, flags: DIFlagFwdDecl, identifier: "_ZTS10ap_bit_refILi34ELb1EE")
!1598 = !DISubprogram(name: "operator[]", linkageName: "_ZNK11ap_int_baseILi34ELb1EEixEi", scope: !634, file: !383, line: 1142, type: !830, isLocal: false, isDefinition: false, scopeLine: 1142, flags: DIFlagPrototyped, isOptimized: false)
!1599 = !DISubprogram(name: "bit", linkageName: "_ZN11ap_int_baseILi34ELb1EE3bitEi", scope: !634, file: !383, line: 1155, type: !1595, isLocal: false, isDefinition: false, scopeLine: 1155, flags: DIFlagPrototyped, isOptimized: false)
!1600 = !DISubprogram(name: "bit", linkageName: "_ZNK11ap_int_baseILi34ELb1EE3bitEi", scope: !634, file: !383, line: 1170, type: !830, isLocal: false, isDefinition: false, scopeLine: 1170, flags: DIFlagPrototyped, isOptimized: false)
!1601 = !DISubprogram(name: "countLeadingZeros", linkageName: "_ZNK11ap_int_baseILi34ELb1EE17countLeadingZerosEv", scope: !634, file: !383, line: 1193, type: !653, isLocal: false, isDefinition: false, scopeLine: 1193, flags: DIFlagPrototyped, isOptimized: false)
!1602 = !DISubprogram(name: "and_reduce", linkageName: "_ZNK11ap_int_baseILi34ELb1EE10and_reduceEv", scope: !634, file: !383, line: 1413, type: !775, isLocal: false, isDefinition: false, scopeLine: 1413, flags: DIFlagPrototyped, isOptimized: false)
!1603 = !DISubprogram(name: "nand_reduce", linkageName: "_ZNK11ap_int_baseILi34ELb1EE11nand_reduceEv", scope: !634, file: !383, line: 1414, type: !775, isLocal: false, isDefinition: false, scopeLine: 1414, flags: DIFlagPrototyped, isOptimized: false)
!1604 = !DISubprogram(name: "or_reduce", linkageName: "_ZNK11ap_int_baseILi34ELb1EE9or_reduceEv", scope: !634, file: !383, line: 1415, type: !775, isLocal: false, isDefinition: false, scopeLine: 1415, flags: DIFlagPrototyped, isOptimized: false)
!1605 = !DISubprogram(name: "nor_reduce", linkageName: "_ZNK11ap_int_baseILi34ELb1EE10nor_reduceEv", scope: !634, file: !383, line: 1416, type: !775, isLocal: false, isDefinition: false, scopeLine: 1416, flags: DIFlagPrototyped, isOptimized: false)
!1606 = !DISubprogram(name: "xor_reduce", linkageName: "_ZNK11ap_int_baseILi34ELb1EE10xor_reduceEv", scope: !634, file: !383, line: 1417, type: !775, isLocal: false, isDefinition: false, scopeLine: 1417, flags: DIFlagPrototyped, isOptimized: false)
!1607 = !DISubprogram(name: "xnor_reduce", linkageName: "_ZNK11ap_int_baseILi34ELb1EE11xnor_reduceEv", scope: !634, file: !383, line: 1418, type: !775, isLocal: false, isDefinition: false, scopeLine: 1418, flags: DIFlagPrototyped, isOptimized: false)
!1608 = !DISubprogram(name: "to_string", linkageName: "_ZNK11ap_int_baseILi34ELb1EE9to_stringEab", scope: !634, file: !383, line: 1433, type: !1609, isLocal: false, isDefinition: false, scopeLine: 1433, flags: DIFlagPrototyped, isOptimized: false)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!1380, !655, !66, !40}
!1611 = !{!1612, !400}
!1612 = !DITemplateValueParameter(name: "_AP_W", type: !38, value: i32 34)
!1613 = !DISubprogram(name: "ap_int", scope: !631, file: !379, line: 21, type: !1614, isLocal: false, isDefinition: false, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: false)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{null, !1616}
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1617 = !DISubprogram(name: "ap_int", scope: !631, file: !379, line: 57, type: !1618, isLocal: false, isDefinition: false, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{null, !1616, !1620, !40}
!1620 = !DIBasicType(name: "uint34", size: 34, encoding: DW_ATE_unsigned)
!1621 = !DISubprogram(name: "ap_int", scope: !631, file: !379, line: 127, type: !1622, isLocal: false, isDefinition: false, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: false)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{null, !1616, !40}
!1624 = !DISubprogram(name: "ap_int", scope: !631, file: !379, line: 128, type: !1625, isLocal: false, isDefinition: false, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{null, !1616, !61}
!1627 = !DISubprogram(name: "ap_int", scope: !631, file: !379, line: 129, type: !1628, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: false)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{null, !1616, !66}
!1630 = !DISubprogram(name: "ap_int", scope: !631, file: !379, line: 130, type: !1631, isLocal: false, isDefinition: false, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: false)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{null, !1616, !71}
!1633 = !DISubprogram(name: "ap_int", scope: !631, file: !379, line: 131, type: !1634, isLocal: false, isDefinition: false, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{null, !1616, !76}
!1636 = !DISubprogram(name: "ap_int", scope: !631, file: !379, line: 132, type: !1637, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{null, !1616, !81}
!1639 = !DISubprogram(name: "ap_int", scope: !631, file: !379, line: 133, type: !1640, isLocal: false, isDefinition: false, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{null, !1616, !38}
!1642 = !DISubprogram(name: "ap_int", scope: !631, file: !379, line: 134, type: !1643, isLocal: false, isDefinition: false, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{null, !1616, !28}
!1645 = !DISubprogram(name: "ap_int", scope: !631, file: !379, line: 135, type: !1646, isLocal: false, isDefinition: false, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{null, !1616, !93}
!1648 = !DISubprogram(name: "ap_int", scope: !631, file: !379, line: 136, type: !1649, isLocal: false, isDefinition: false, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: false)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{null, !1616, !98}
!1651 = !DISubprogram(name: "ap_int", scope: !631, file: !379, line: 137, type: !1652, isLocal: false, isDefinition: false, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{null, !1616, !446}
!1654 = !DISubprogram(name: "ap_int", scope: !631, file: !379, line: 138, type: !1655, isLocal: false, isDefinition: false, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{null, !1616, !452}
!1657 = !DISubprogram(name: "ap_int", scope: !631, file: !379, line: 140, type: !1658, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{null, !1616, !123}
!1660 = !DISubprogram(name: "ap_int", scope: !631, file: !379, line: 141, type: !1661, isLocal: false, isDefinition: false, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{null, !1616, !15}
!1663 = !DISubprogram(name: "ap_int", scope: !631, file: !379, line: 142, type: !1664, isLocal: false, isDefinition: false, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{null, !1616, !456}
!1666 = !DISubprogram(name: "ap_int", scope: !631, file: !379, line: 145, type: !1667, isLocal: false, isDefinition: false, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{null, !1616, !127}
!1669 = !DISubprogram(name: "ap_int", scope: !631, file: !379, line: 147, type: !1670, isLocal: false, isDefinition: false, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{null, !1616, !127, !66}
!1672 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi34EEaSERKS0_", scope: !631, file: !379, line: 152, type: !1673, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: false)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!1675, !1616, !1676}
!1675 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !631, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1677, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !631)
!1678 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi34EEaSERVKS0_", scope: !631, file: !379, line: 161, type: !1679, isLocal: false, isDefinition: false, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!1675, !1616, !1681}
!1681 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1682, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1683)
!1683 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !631)
!1684 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi34EEaSERKS0_", scope: !631, file: !379, line: 167, type: !1685, isLocal: false, isDefinition: false, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{null, !1687, !1676}
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1688 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi34EEaSERVKS0_", scope: !631, file: !379, line: 171, type: !1689, isLocal: false, isDefinition: false, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: false)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{null, !1687, !1681}
!1691 = !{!1612}
!1692 = !DISubprogram(name: "operator!", linkageName: "_ZNK11ap_int_baseILi33ELb1EEntEv", scope: !382, file: !383, line: 901, type: !536, isLocal: false, isDefinition: false, scopeLine: 901, flags: DIFlagPrototyped, isOptimized: false)
!1693 = !DISubprogram(name: "operator~", linkageName: "_ZNK11ap_int_baseILi33ELb1EEcoEv", scope: !382, file: !383, line: 907, type: !620, isLocal: false, isDefinition: false, scopeLine: 907, flags: DIFlagPrototyped, isOptimized: false)
!1694 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi33ELb1EE5rangeEii", scope: !382, file: !383, line: 1045, type: !1695, isLocal: false, isDefinition: false, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: false)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!1697, !411, !38, !38}
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_range_ref<33, true>", file: !447, line: 143, flags: DIFlagFwdDecl, identifier: "_ZTS12ap_range_refILi33ELb1EE")
!1698 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi33ELb1EE5rangeEii", scope: !382, file: !383, line: 1052, type: !1699, isLocal: false, isDefinition: false, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: false)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!1697, !406, !38, !38}
!1701 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi33ELb1EE5rangeEv", scope: !382, file: !383, line: 1076, type: !1702, isLocal: false, isDefinition: false, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: false)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!1697, !411}
!1704 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi33ELb1EE5rangeEv", scope: !382, file: !383, line: 1080, type: !1705, isLocal: false, isDefinition: false, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: false)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!1697, !406}
!1707 = !DISubprogram(name: "operator()", linkageName: "_ZN11ap_int_baseILi33ELb1EEclEii", scope: !382, file: !383, line: 1084, type: !1695, isLocal: false, isDefinition: false, scopeLine: 1084, flags: DIFlagPrototyped, isOptimized: false)
!1708 = !DISubprogram(name: "operator()", linkageName: "_ZNK11ap_int_baseILi33ELb1EEclEii", scope: !382, file: !383, line: 1088, type: !1699, isLocal: false, isDefinition: false, scopeLine: 1088, flags: DIFlagPrototyped, isOptimized: false)
!1709 = !DISubprogram(name: "operator[]", linkageName: "_ZN11ap_int_baseILi33ELb1EEixEi", scope: !382, file: !383, line: 1126, type: !1710, isLocal: false, isDefinition: false, scopeLine: 1126, flags: DIFlagPrototyped, isOptimized: false)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{!1712, !411, !38}
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_bit_ref<33, true>", file: !1713, line: 761, size: 128, flags: DIFlagTypePassByReference, elements: !1714, templateParams: !1799, identifier: "_ZTS10ap_bit_refILi33ELb1EE")
!1713 = !DIFile(filename: "r:/ci/prod/2022.1/rdi_builds/continuous/2022_04_18_3526262/src/shared/hls/clib/include/header_files\5Cap_int_ref.h", directory: "R:\5Cci\5Cprod\5C2022.1\5Crdi_builds\5Ccontinuous\5C2022_04_18_3526262\5Csrc\5Cshared")
!1714 = !{!1715, !1718, !1719, !1725, !1729, !1734, !1738, !1739, !1743, !1746, !1749, !1752, !1755, !1758, !1761, !1764, !1767, !1770, !1773, !1776, !1779, !1782, !1785, !1788, !1789, !1792, !1793, !1796}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "d_bv", scope: !1712, file: !1713, line: 766, baseType: !1716, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1717, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_typedef, name: "ref_type", scope: !1712, file: !1713, line: 765, baseType: !382)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "d_index", scope: !1712, file: !1713, line: 767, baseType: !38, size: 32, offset: 64)
!1719 = !DISubprogram(name: "ap_bit_ref", scope: !1712, file: !1713, line: 771, type: !1720, isLocal: false, isDefinition: false, scopeLine: 771, flags: DIFlagPrototyped, isOptimized: false)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{null, !1722, !1723}
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1723 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1724, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1712)
!1725 = !DISubprogram(name: "ap_bit_ref", scope: !1712, file: !1713, line: 774, type: !1726, isLocal: false, isDefinition: false, scopeLine: 774, flags: DIFlagPrototyped, isOptimized: false)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{null, !1722, !1728, !38}
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1729 = !DISubprogram(name: "ap_bit_ref", scope: !1712, file: !1713, line: 776, type: !1730, isLocal: false, isDefinition: false, scopeLine: 776, flags: DIFlagPrototyped, isOptimized: false)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{null, !1722, !1732, !38}
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1717)
!1734 = !DISubprogram(name: "operator bool", linkageName: "_ZNK10ap_bit_refILi33ELb1EEcvbEv", scope: !1712, file: !1713, line: 779, type: !1735, isLocal: false, isDefinition: false, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: false)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!40, !1737}
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1738 = !DISubprogram(name: "to_bool", linkageName: "_ZNK10ap_bit_refILi33ELb1EE7to_boolEv", scope: !1712, file: !1713, line: 780, type: !1735, isLocal: false, isDefinition: false, scopeLine: 780, flags: DIFlagPrototyped, isOptimized: false)
!1739 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSEb", scope: !1712, file: !1713, line: 798, type: !1740, isLocal: false, isDefinition: false, scopeLine: 798, flags: DIFlagPrototyped, isOptimized: false)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!1742, !1722, !40}
!1742 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1712, size: 64)
!1743 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSEc", scope: !1712, file: !1713, line: 799, type: !1744, isLocal: false, isDefinition: false, scopeLine: 799, flags: DIFlagPrototyped, isOptimized: false)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!1742, !1722, !61}
!1746 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSEa", scope: !1712, file: !1713, line: 800, type: !1747, isLocal: false, isDefinition: false, scopeLine: 800, flags: DIFlagPrototyped, isOptimized: false)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!1742, !1722, !66}
!1749 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSEh", scope: !1712, file: !1713, line: 801, type: !1750, isLocal: false, isDefinition: false, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: false)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!1742, !1722, !71}
!1752 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSEs", scope: !1712, file: !1713, line: 802, type: !1753, isLocal: false, isDefinition: false, scopeLine: 802, flags: DIFlagPrototyped, isOptimized: false)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!1742, !1722, !76}
!1755 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSEt", scope: !1712, file: !1713, line: 803, type: !1756, isLocal: false, isDefinition: false, scopeLine: 803, flags: DIFlagPrototyped, isOptimized: false)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!1742, !1722, !81}
!1758 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSEi", scope: !1712, file: !1713, line: 804, type: !1759, isLocal: false, isDefinition: false, scopeLine: 804, flags: DIFlagPrototyped, isOptimized: false)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!1742, !1722, !38}
!1761 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSEj", scope: !1712, file: !1713, line: 805, type: !1762, isLocal: false, isDefinition: false, scopeLine: 805, flags: DIFlagPrototyped, isOptimized: false)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!1742, !1722, !28}
!1764 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSEl", scope: !1712, file: !1713, line: 806, type: !1765, isLocal: false, isDefinition: false, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: false)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!1742, !1722, !93}
!1767 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSEm", scope: !1712, file: !1713, line: 807, type: !1768, isLocal: false, isDefinition: false, scopeLine: 807, flags: DIFlagPrototyped, isOptimized: false)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!1742, !1722, !98}
!1770 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSEx", scope: !1712, file: !1713, line: 808, type: !1771, isLocal: false, isDefinition: false, scopeLine: 808, flags: DIFlagPrototyped, isOptimized: false)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{!1742, !1722, !446}
!1773 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSEy", scope: !1712, file: !1713, line: 809, type: !1774, isLocal: false, isDefinition: false, scopeLine: 809, flags: DIFlagPrototyped, isOptimized: false)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!1742, !1722, !452}
!1776 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSEDh", scope: !1712, file: !1713, line: 820, type: !1777, isLocal: false, isDefinition: false, scopeLine: 820, flags: DIFlagPrototyped, isOptimized: false)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!1742, !1722, !456}
!1779 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSEf", scope: !1712, file: !1713, line: 821, type: !1780, isLocal: false, isDefinition: false, scopeLine: 821, flags: DIFlagPrototyped, isOptimized: false)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{!1742, !1722, !15}
!1782 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSEd", scope: !1712, file: !1713, line: 822, type: !1783, isLocal: false, isDefinition: false, scopeLine: 822, flags: DIFlagPrototyped, isOptimized: false)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!1742, !1722, !123}
!1785 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSERKS0_", scope: !1712, file: !1713, line: 839, type: !1786, isLocal: false, isDefinition: false, scopeLine: 839, flags: DIFlagPrototyped, isOptimized: false)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!1742, !1722, !1723}
!1788 = !DISubprogram(name: "get", linkageName: "_ZNK10ap_bit_refILi33ELb1EE3getEv", scope: !1712, file: !1713, line: 959, type: !1735, isLocal: false, isDefinition: false, scopeLine: 959, flags: DIFlagPrototyped, isOptimized: false)
!1789 = !DISubprogram(name: "get", linkageName: "_ZN10ap_bit_refILi33ELb1EE3getEv", scope: !1712, file: !1713, line: 961, type: !1790, isLocal: false, isDefinition: false, scopeLine: 961, flags: DIFlagPrototyped, isOptimized: false)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!40, !1722}
!1792 = !DISubprogram(name: "operator~", linkageName: "_ZNK10ap_bit_refILi33ELb1EEcoEv", scope: !1712, file: !1713, line: 968, type: !1735, isLocal: false, isDefinition: false, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: false)
!1793 = !DISubprogram(name: "length", linkageName: "_ZNK10ap_bit_refILi33ELb1EE6lengthEv", scope: !1712, file: !1713, line: 973, type: !1794, isLocal: false, isDefinition: false, scopeLine: 973, flags: DIFlagPrototyped, isOptimized: false)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!38, !1737}
!1796 = !DISubprogram(name: "to_string", linkageName: "_ZNK10ap_bit_refILi33ELb1EE9to_stringEv", scope: !1712, file: !1713, line: 979, type: !1797, isLocal: false, isDefinition: false, scopeLine: 979, flags: DIFlagPrototyped, isOptimized: false)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{!1380, !1737}
!1799 = !{!1800, !400}
!1800 = !DITemplateValueParameter(name: "_AP_W", type: !38, value: i32 33)
!1801 = !DISubprogram(name: "operator[]", linkageName: "_ZNK11ap_int_baseILi33ELb1EEixEi", scope: !382, file: !383, line: 1142, type: !591, isLocal: false, isDefinition: false, scopeLine: 1142, flags: DIFlagPrototyped, isOptimized: false)
!1802 = !DISubprogram(name: "bit", linkageName: "_ZN11ap_int_baseILi33ELb1EE3bitEi", scope: !382, file: !383, line: 1155, type: !1710, isLocal: false, isDefinition: false, scopeLine: 1155, flags: DIFlagPrototyped, isOptimized: false)
!1803 = !DISubprogram(name: "bit", linkageName: "_ZNK11ap_int_baseILi33ELb1EE3bitEi", scope: !382, file: !383, line: 1170, type: !591, isLocal: false, isDefinition: false, scopeLine: 1170, flags: DIFlagPrototyped, isOptimized: false)
!1804 = !DISubprogram(name: "countLeadingZeros", linkageName: "_ZNK11ap_int_baseILi33ELb1EE17countLeadingZerosEv", scope: !382, file: !383, line: 1193, type: !404, isLocal: false, isDefinition: false, scopeLine: 1193, flags: DIFlagPrototyped, isOptimized: false)
!1805 = !DISubprogram(name: "and_reduce", linkageName: "_ZNK11ap_int_baseILi33ELb1EE10and_reduceEv", scope: !382, file: !383, line: 1413, type: !536, isLocal: false, isDefinition: false, scopeLine: 1413, flags: DIFlagPrototyped, isOptimized: false)
!1806 = !DISubprogram(name: "nand_reduce", linkageName: "_ZNK11ap_int_baseILi33ELb1EE11nand_reduceEv", scope: !382, file: !383, line: 1414, type: !536, isLocal: false, isDefinition: false, scopeLine: 1414, flags: DIFlagPrototyped, isOptimized: false)
!1807 = !DISubprogram(name: "or_reduce", linkageName: "_ZNK11ap_int_baseILi33ELb1EE9or_reduceEv", scope: !382, file: !383, line: 1415, type: !536, isLocal: false, isDefinition: false, scopeLine: 1415, flags: DIFlagPrototyped, isOptimized: false)
!1808 = !DISubprogram(name: "nor_reduce", linkageName: "_ZNK11ap_int_baseILi33ELb1EE10nor_reduceEv", scope: !382, file: !383, line: 1416, type: !536, isLocal: false, isDefinition: false, scopeLine: 1416, flags: DIFlagPrototyped, isOptimized: false)
!1809 = !DISubprogram(name: "xor_reduce", linkageName: "_ZNK11ap_int_baseILi33ELb1EE10xor_reduceEv", scope: !382, file: !383, line: 1417, type: !536, isLocal: false, isDefinition: false, scopeLine: 1417, flags: DIFlagPrototyped, isOptimized: false)
!1810 = !DISubprogram(name: "xnor_reduce", linkageName: "_ZNK11ap_int_baseILi33ELb1EE11xnor_reduceEv", scope: !382, file: !383, line: 1418, type: !536, isLocal: false, isDefinition: false, scopeLine: 1418, flags: DIFlagPrototyped, isOptimized: false)
!1811 = !DISubprogram(name: "to_string", linkageName: "_ZNK11ap_int_baseILi33ELb1EE9to_stringEab", scope: !382, file: !383, line: 1433, type: !1812, isLocal: false, isDefinition: false, scopeLine: 1433, flags: DIFlagPrototyped, isOptimized: false)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{!1380, !406, !66, !40}
!1814 = !DISubprogram(name: "ap_int", scope: !378, file: !379, line: 21, type: !1815, isLocal: false, isDefinition: false, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: false)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{null, !1817}
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1818 = !DISubprogram(name: "ap_int", scope: !378, file: !379, line: 57, type: !1819, isLocal: false, isDefinition: false, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{null, !1817, !1821, !40}
!1821 = !DIBasicType(name: "uint33", size: 33, encoding: DW_ATE_unsigned)
!1822 = !DISubprogram(name: "ap_int", scope: !378, file: !379, line: 127, type: !1823, isLocal: false, isDefinition: false, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: false)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{null, !1817, !40}
!1825 = !DISubprogram(name: "ap_int", scope: !378, file: !379, line: 128, type: !1826, isLocal: false, isDefinition: false, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{null, !1817, !61}
!1828 = !DISubprogram(name: "ap_int", scope: !378, file: !379, line: 129, type: !1829, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: false)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{null, !1817, !66}
!1831 = !DISubprogram(name: "ap_int", scope: !378, file: !379, line: 130, type: !1832, isLocal: false, isDefinition: false, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: false)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{null, !1817, !71}
!1834 = !DISubprogram(name: "ap_int", scope: !378, file: !379, line: 131, type: !1835, isLocal: false, isDefinition: false, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{null, !1817, !76}
!1837 = !DISubprogram(name: "ap_int", scope: !378, file: !379, line: 132, type: !1838, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{null, !1817, !81}
!1840 = !DISubprogram(name: "ap_int", scope: !378, file: !379, line: 133, type: !1841, isLocal: false, isDefinition: false, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{null, !1817, !38}
!1843 = !DISubprogram(name: "ap_int", scope: !378, file: !379, line: 134, type: !1844, isLocal: false, isDefinition: false, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{null, !1817, !28}
!1846 = !DISubprogram(name: "ap_int", scope: !378, file: !379, line: 135, type: !1847, isLocal: false, isDefinition: false, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{null, !1817, !93}
!1849 = !DISubprogram(name: "ap_int", scope: !378, file: !379, line: 136, type: !1850, isLocal: false, isDefinition: false, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: false)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{null, !1817, !98}
!1852 = !DISubprogram(name: "ap_int", scope: !378, file: !379, line: 137, type: !1853, isLocal: false, isDefinition: false, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{null, !1817, !446}
!1855 = !DISubprogram(name: "ap_int", scope: !378, file: !379, line: 138, type: !1856, isLocal: false, isDefinition: false, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{null, !1817, !452}
!1858 = !DISubprogram(name: "ap_int", scope: !378, file: !379, line: 140, type: !1859, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{null, !1817, !123}
!1861 = !DISubprogram(name: "ap_int", scope: !378, file: !379, line: 141, type: !1862, isLocal: false, isDefinition: false, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{null, !1817, !15}
!1864 = !DISubprogram(name: "ap_int", scope: !378, file: !379, line: 142, type: !1865, isLocal: false, isDefinition: false, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{null, !1817, !456}
!1867 = !DISubprogram(name: "ap_int", scope: !378, file: !379, line: 145, type: !1868, isLocal: false, isDefinition: false, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{null, !1817, !127}
!1870 = !DISubprogram(name: "ap_int", scope: !378, file: !379, line: 147, type: !1871, isLocal: false, isDefinition: false, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{null, !1817, !127, !66}
!1873 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi33EEaSERKS0_", scope: !378, file: !379, line: 152, type: !1874, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: false)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!1876, !1817, !1877}
!1876 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !378, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1878, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !378)
!1879 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi33EEaSERVKS0_", scope: !378, file: !379, line: 161, type: !1880, isLocal: false, isDefinition: false, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{!1876, !1817, !1882}
!1882 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1883, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1884)
!1884 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !378)
!1885 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi33EEaSERKS0_", scope: !378, file: !379, line: 167, type: !1886, isLocal: false, isDefinition: false, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{null, !1888, !1877}
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1889 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi33EEaSERVKS0_", scope: !378, file: !379, line: 171, type: !1890, isLocal: false, isDefinition: false, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: false)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{null, !1888, !1882}
!1892 = !{!1800}
!1893 = !DISubprogram(name: "operator!", linkageName: "_ZNK11ap_int_baseILi32ELb0EEntEv", scope: !21, file: !20, line: 947, type: !193, isLocal: false, isDefinition: false, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: false)
!1894 = !DISubprogram(name: "operator~", linkageName: "_ZNK11ap_int_baseILi32ELb0EEcoEv", scope: !21, file: !20, line: 953, type: !364, isLocal: false, isDefinition: false, scopeLine: 953, flags: DIFlagPrototyped, isOptimized: false)
!1895 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi32ELb0EE5rangeEii", scope: !21, file: !20, line: 1091, type: !1896, isLocal: false, isDefinition: false, scopeLine: 1091, flags: DIFlagPrototyped, isOptimized: false)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!1898, !53, !38, !38}
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_range_ref<32, false>", file: !1899, line: 336, size: 128, flags: DIFlagTypePassByReference, elements: !1900, templateParams: !2014, identifier: "_ZTS12ap_range_refILi32ELb0EE")
!1899 = !DIFile(filename: "E:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\5Cap_int_ref.h", directory: "C:\5CUsers\5CShaneWu\5COneDrive\5CDesktop\5CDocuments\5CNTU\5CHLS\5ClabB")
!1900 = !{!1901, !1904, !1905, !1906, !1912, !1916, !1921, !1925, !1928, !1932, !1935, !1938, !1941, !1944, !1947, !1950, !1953, !1956, !1959, !1962, !1965, !1968, !1971, !1974, !1977, !1980, !1984, !1985, !1986, !1987, !1988, !1989, !1992, !1993, !1996, !1999, !2002, !2005, !2006, !2009, !2010, !2011}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "d_bv", scope: !1898, file: !1899, line: 341, baseType: !1902, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1903, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_typedef, name: "ref_type", scope: !1898, file: !1899, line: 340, baseType: !21)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "l_index", scope: !1898, file: !1899, line: 342, baseType: !38, size: 32, offset: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "h_index", scope: !1898, file: !1899, line: 343, baseType: !38, size: 32, offset: 96)
!1906 = !DISubprogram(name: "ap_range_ref", scope: !1898, file: !1899, line: 346, type: !1907, isLocal: false, isDefinition: false, scopeLine: 346, flags: DIFlagPrototyped, isOptimized: false)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{null, !1909, !1910}
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1910 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1911, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1898)
!1912 = !DISubprogram(name: "ap_range_ref", scope: !1898, file: !1899, line: 349, type: !1913, isLocal: false, isDefinition: false, scopeLine: 349, flags: DIFlagPrototyped, isOptimized: false)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{null, !1909, !1915, !38, !38}
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1916 = !DISubprogram(name: "ap_range_ref", scope: !1898, file: !1899, line: 352, type: !1917, isLocal: false, isDefinition: false, scopeLine: 352, flags: DIFlagPrototyped, isOptimized: false)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{null, !1909, !1919, !38, !38}
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1903)
!1921 = !DISubprogram(name: "operator ap_int_base", linkageName: "_ZNK12ap_range_refILi32ELb0EEcv11ap_int_baseILi32ELb0EEEv", scope: !1898, file: !1899, line: 355, type: !1922, isLocal: false, isDefinition: false, scopeLine: 355, flags: DIFlagPrototyped, isOptimized: false)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!21, !1924}
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1925 = !DISubprogram(name: "operator unsigned long long", linkageName: "_ZNK12ap_range_refILi32ELb0EEcvyEv", scope: !1898, file: !1899, line: 361, type: !1926, isLocal: false, isDefinition: false, scopeLine: 361, flags: DIFlagPrototyped, isOptimized: false)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!110, !1924}
!1928 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEb", scope: !1898, file: !1899, line: 385, type: !1929, isLocal: false, isDefinition: false, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: false)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!1931, !1909, !40}
!1931 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1898, size: 64)
!1932 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEc", scope: !1898, file: !1899, line: 386, type: !1933, isLocal: false, isDefinition: false, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: false)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!1931, !1909, !61}
!1935 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEa", scope: !1898, file: !1899, line: 387, type: !1936, isLocal: false, isDefinition: false, scopeLine: 387, flags: DIFlagPrototyped, isOptimized: false)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!1931, !1909, !66}
!1938 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEh", scope: !1898, file: !1899, line: 388, type: !1939, isLocal: false, isDefinition: false, scopeLine: 388, flags: DIFlagPrototyped, isOptimized: false)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!1931, !1909, !71}
!1941 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEs", scope: !1898, file: !1899, line: 389, type: !1942, isLocal: false, isDefinition: false, scopeLine: 389, flags: DIFlagPrototyped, isOptimized: false)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!1931, !1909, !76}
!1944 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEt", scope: !1898, file: !1899, line: 390, type: !1945, isLocal: false, isDefinition: false, scopeLine: 390, flags: DIFlagPrototyped, isOptimized: false)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!1931, !1909, !81}
!1947 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEi", scope: !1898, file: !1899, line: 391, type: !1948, isLocal: false, isDefinition: false, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: false)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!1931, !1909, !38}
!1950 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEj", scope: !1898, file: !1899, line: 392, type: !1951, isLocal: false, isDefinition: false, scopeLine: 392, flags: DIFlagPrototyped, isOptimized: false)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!1931, !1909, !28}
!1953 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEl", scope: !1898, file: !1899, line: 393, type: !1954, isLocal: false, isDefinition: false, scopeLine: 393, flags: DIFlagPrototyped, isOptimized: false)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!1931, !1909, !93}
!1956 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEm", scope: !1898, file: !1899, line: 394, type: !1957, isLocal: false, isDefinition: false, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: false)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!1931, !1909, !98}
!1959 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEx", scope: !1898, file: !1899, line: 395, type: !1960, isLocal: false, isDefinition: false, scopeLine: 395, flags: DIFlagPrototyped, isOptimized: false)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!1931, !1909, !103}
!1962 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEy", scope: !1898, file: !1899, line: 396, type: !1963, isLocal: false, isDefinition: false, scopeLine: 396, flags: DIFlagPrototyped, isOptimized: false)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{!1931, !1909, !110}
!1965 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEDh", scope: !1898, file: !1899, line: 397, type: !1966, isLocal: false, isDefinition: false, scopeLine: 397, flags: DIFlagPrototyped, isOptimized: false)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!1931, !1909, !115}
!1968 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEf", scope: !1898, file: !1899, line: 398, type: !1969, isLocal: false, isDefinition: false, scopeLine: 398, flags: DIFlagPrototyped, isOptimized: false)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!1931, !1909, !15}
!1971 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEd", scope: !1898, file: !1899, line: 399, type: !1972, isLocal: false, isDefinition: false, scopeLine: 399, flags: DIFlagPrototyped, isOptimized: false)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!1931, !1909, !123}
!1974 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEPKc", scope: !1898, file: !1899, line: 404, type: !1975, isLocal: false, isDefinition: false, scopeLine: 404, flags: DIFlagPrototyped, isOptimized: false)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!1931, !1909, !127}
!1977 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSERKS0_", scope: !1898, file: !1899, line: 421, type: !1978, isLocal: false, isDefinition: false, scopeLine: 421, flags: DIFlagPrototyped, isOptimized: false)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!1931, !1909, !1910}
!1980 = !DISubprogram(name: "operator,", linkageName: "_ZN12ap_range_refILi32ELb0EEcmER11ap_int_baseILi32ELb0EE", scope: !1898, file: !1899, line: 489, type: !1981, isLocal: false, isDefinition: false, scopeLine: 489, flags: DIFlagPrototyped, isOptimized: false)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!1983, !1909, !149}
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_concat_ref<32, ap_range_ref<32, false>, 32, ap_int_base<32, false> >", file: !1899, line: 74, flags: DIFlagFwdDecl, identifier: "_ZTS13ap_concat_refILi32E12ap_range_refILi32ELb0EELi32E11ap_int_baseILi32ELb0EEE")
!1984 = !DISubprogram(name: "operator~", linkageName: "_ZNK12ap_range_refILi32ELb0EEcoEv", scope: !1898, file: !1899, line: 647, type: !1922, isLocal: false, isDefinition: false, scopeLine: 647, flags: DIFlagPrototyped, isOptimized: false)
!1985 = !DISubprogram(name: "operator!", linkageName: "_ZNK12ap_range_refILi32ELb0EEntEv", scope: !1898, file: !1899, line: 653, type: !1922, isLocal: false, isDefinition: false, scopeLine: 653, flags: DIFlagPrototyped, isOptimized: false)
!1986 = !DISubprogram(name: "operator+", linkageName: "_ZNK12ap_range_refILi32ELb0EEpsEv", scope: !1898, file: !1899, line: 659, type: !1922, isLocal: false, isDefinition: false, scopeLine: 659, flags: DIFlagPrototyped, isOptimized: false)
!1987 = !DISubprogram(name: "operator-", linkageName: "_ZNK12ap_range_refILi32ELb0EEngEv", scope: !1898, file: !1899, line: 665, type: !1922, isLocal: false, isDefinition: false, scopeLine: 665, flags: DIFlagPrototyped, isOptimized: false)
!1988 = !DISubprogram(name: "get", linkageName: "_ZNK12ap_range_refILi32ELb0EE3getEv", scope: !1898, file: !1899, line: 672, type: !1922, isLocal: false, isDefinition: false, scopeLine: 672, flags: DIFlagPrototyped, isOptimized: false)
!1989 = !DISubprogram(name: "length", linkageName: "_ZNK12ap_range_refILi32ELb0EE6lengthEv", scope: !1898, file: !1899, line: 683, type: !1990, isLocal: false, isDefinition: false, scopeLine: 683, flags: DIFlagPrototyped, isOptimized: false)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!38, !1924}
!1992 = !DISubprogram(name: "to_int", linkageName: "_ZNK12ap_range_refILi32ELb0EE6to_intEv", scope: !1898, file: !1899, line: 687, type: !1990, isLocal: false, isDefinition: false, scopeLine: 687, flags: DIFlagPrototyped, isOptimized: false)
!1993 = !DISubprogram(name: "to_uint", linkageName: "_ZNK12ap_range_refILi32ELb0EE7to_uintEv", scope: !1898, file: !1899, line: 691, type: !1994, isLocal: false, isDefinition: false, scopeLine: 691, flags: DIFlagPrototyped, isOptimized: false)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!28, !1924}
!1996 = !DISubprogram(name: "to_long", linkageName: "_ZNK12ap_range_refILi32ELb0EE7to_longEv", scope: !1898, file: !1899, line: 697, type: !1997, isLocal: false, isDefinition: false, scopeLine: 697, flags: DIFlagPrototyped, isOptimized: false)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!93, !1924}
!1999 = !DISubprogram(name: "to_ulong", linkageName: "_ZNK12ap_range_refILi32ELb0EE8to_ulongEv", scope: !1898, file: !1899, line: 701, type: !2000, isLocal: false, isDefinition: false, scopeLine: 701, flags: DIFlagPrototyped, isOptimized: false)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!98, !1924}
!2002 = !DISubprogram(name: "to_int64", linkageName: "_ZNK12ap_range_refILi32ELb0EE8to_int64Ev", scope: !1898, file: !1899, line: 707, type: !2003, isLocal: false, isDefinition: false, scopeLine: 707, flags: DIFlagPrototyped, isOptimized: false)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!103, !1924}
!2005 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK12ap_range_refILi32ELb0EE9to_uint64Ev", scope: !1898, file: !1899, line: 711, type: !1926, isLocal: false, isDefinition: false, scopeLine: 711, flags: DIFlagPrototyped, isOptimized: false)
!2006 = !DISubprogram(name: "and_reduce", linkageName: "_ZNK12ap_range_refILi32ELb0EE10and_reduceEv", scope: !1898, file: !1899, line: 717, type: !2007, isLocal: false, isDefinition: false, scopeLine: 717, flags: DIFlagPrototyped, isOptimized: false)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{!40, !1924}
!2009 = !DISubprogram(name: "or_reduce", linkageName: "_ZNK12ap_range_refILi32ELb0EE9or_reduceEv", scope: !1898, file: !1899, line: 731, type: !2007, isLocal: false, isDefinition: false, scopeLine: 731, flags: DIFlagPrototyped, isOptimized: false)
!2010 = !DISubprogram(name: "xor_reduce", linkageName: "_ZNK12ap_range_refILi32ELb0EE10xor_reduceEv", scope: !1898, file: !1899, line: 745, type: !2007, isLocal: false, isDefinition: false, scopeLine: 745, flags: DIFlagPrototyped, isOptimized: false)
!2011 = !DISubprogram(name: "to_string", linkageName: "_ZNK12ap_range_refILi32ELb0EE9to_stringEa", scope: !1898, file: !1899, line: 766, type: !2012, isLocal: false, isDefinition: false, scopeLine: 766, flags: DIFlagPrototyped, isOptimized: false)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!1380, !1924, !66}
!2014 = !{!361, !39}
!2015 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi32ELb0EE5rangeEii", scope: !21, file: !20, line: 1098, type: !2016, isLocal: false, isDefinition: false, scopeLine: 1098, flags: DIFlagPrototyped, isOptimized: false)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!1898, !48, !38, !38}
!2018 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi32ELb0EE5rangeEv", scope: !21, file: !20, line: 1122, type: !2019, isLocal: false, isDefinition: false, scopeLine: 1122, flags: DIFlagPrototyped, isOptimized: false)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!1898, !53}
!2021 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi32ELb0EE5rangeEv", scope: !21, file: !20, line: 1126, type: !2022, isLocal: false, isDefinition: false, scopeLine: 1126, flags: DIFlagPrototyped, isOptimized: false)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!1898, !48}
!2024 = !DISubprogram(name: "operator()", linkageName: "_ZN11ap_int_baseILi32ELb0EEclEii", scope: !21, file: !20, line: 1130, type: !1896, isLocal: false, isDefinition: false, scopeLine: 1130, flags: DIFlagPrototyped, isOptimized: false)
!2025 = !DISubprogram(name: "operator()", linkageName: "_ZNK11ap_int_baseILi32ELb0EEclEii", scope: !21, file: !20, line: 1134, type: !2016, isLocal: false, isDefinition: false, scopeLine: 1134, flags: DIFlagPrototyped, isOptimized: false)
!2026 = !DISubprogram(name: "operator[]", linkageName: "_ZN11ap_int_baseILi32ELb0EEixEi", scope: !21, file: !20, line: 1172, type: !2027, isLocal: false, isDefinition: false, scopeLine: 1172, flags: DIFlagPrototyped, isOptimized: false)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{!2029, !53, !38}
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_bit_ref<32, false>", file: !1713, line: 761, size: 128, flags: DIFlagTypePassByReference, elements: !2030, templateParams: !2014, identifier: "_ZTS10ap_bit_refILi32ELb0EE")
!2030 = !{!2031, !2034, !2035, !2041, !2045, !2050, !2054, !2055, !2059, !2062, !2065, !2068, !2071, !2074, !2077, !2080, !2083, !2086, !2089, !2092, !2095, !2098, !2101, !2104, !2105, !2108, !2109, !2112}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "d_bv", scope: !2029, file: !1713, line: 766, baseType: !2032, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2033, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_typedef, name: "ref_type", scope: !2029, file: !1713, line: 765, baseType: !21)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "d_index", scope: !2029, file: !1713, line: 767, baseType: !38, size: 32, offset: 64)
!2035 = !DISubprogram(name: "ap_bit_ref", scope: !2029, file: !1713, line: 771, type: !2036, isLocal: false, isDefinition: false, scopeLine: 771, flags: DIFlagPrototyped, isOptimized: false)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{null, !2038, !2039}
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2039 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2040, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2029)
!2041 = !DISubprogram(name: "ap_bit_ref", scope: !2029, file: !1713, line: 774, type: !2042, isLocal: false, isDefinition: false, scopeLine: 774, flags: DIFlagPrototyped, isOptimized: false)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{null, !2038, !2044, !38}
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2045 = !DISubprogram(name: "ap_bit_ref", scope: !2029, file: !1713, line: 776, type: !2046, isLocal: false, isDefinition: false, scopeLine: 776, flags: DIFlagPrototyped, isOptimized: false)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{null, !2038, !2048, !38}
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2033)
!2050 = !DISubprogram(name: "operator bool", linkageName: "_ZNK10ap_bit_refILi32ELb0EEcvbEv", scope: !2029, file: !1713, line: 779, type: !2051, isLocal: false, isDefinition: false, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: false)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!40, !2053}
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2054 = !DISubprogram(name: "to_bool", linkageName: "_ZNK10ap_bit_refILi32ELb0EE7to_boolEv", scope: !2029, file: !1713, line: 780, type: !2051, isLocal: false, isDefinition: false, scopeLine: 780, flags: DIFlagPrototyped, isOptimized: false)
!2055 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSEb", scope: !2029, file: !1713, line: 798, type: !2056, isLocal: false, isDefinition: false, scopeLine: 798, flags: DIFlagPrototyped, isOptimized: false)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!2058, !2038, !40}
!2058 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2029, size: 64)
!2059 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSEc", scope: !2029, file: !1713, line: 799, type: !2060, isLocal: false, isDefinition: false, scopeLine: 799, flags: DIFlagPrototyped, isOptimized: false)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!2058, !2038, !61}
!2062 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSEa", scope: !2029, file: !1713, line: 800, type: !2063, isLocal: false, isDefinition: false, scopeLine: 800, flags: DIFlagPrototyped, isOptimized: false)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!2058, !2038, !66}
!2065 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSEh", scope: !2029, file: !1713, line: 801, type: !2066, isLocal: false, isDefinition: false, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: false)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!2058, !2038, !71}
!2068 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSEs", scope: !2029, file: !1713, line: 802, type: !2069, isLocal: false, isDefinition: false, scopeLine: 802, flags: DIFlagPrototyped, isOptimized: false)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{!2058, !2038, !76}
!2071 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSEt", scope: !2029, file: !1713, line: 803, type: !2072, isLocal: false, isDefinition: false, scopeLine: 803, flags: DIFlagPrototyped, isOptimized: false)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!2058, !2038, !81}
!2074 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSEi", scope: !2029, file: !1713, line: 804, type: !2075, isLocal: false, isDefinition: false, scopeLine: 804, flags: DIFlagPrototyped, isOptimized: false)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{!2058, !2038, !38}
!2077 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSEj", scope: !2029, file: !1713, line: 805, type: !2078, isLocal: false, isDefinition: false, scopeLine: 805, flags: DIFlagPrototyped, isOptimized: false)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!2058, !2038, !28}
!2080 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSEl", scope: !2029, file: !1713, line: 806, type: !2081, isLocal: false, isDefinition: false, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: false)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!2058, !2038, !93}
!2083 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSEm", scope: !2029, file: !1713, line: 807, type: !2084, isLocal: false, isDefinition: false, scopeLine: 807, flags: DIFlagPrototyped, isOptimized: false)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!2058, !2038, !98}
!2086 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSEx", scope: !2029, file: !1713, line: 808, type: !2087, isLocal: false, isDefinition: false, scopeLine: 808, flags: DIFlagPrototyped, isOptimized: false)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!2058, !2038, !446}
!2089 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSEy", scope: !2029, file: !1713, line: 809, type: !2090, isLocal: false, isDefinition: false, scopeLine: 809, flags: DIFlagPrototyped, isOptimized: false)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!2058, !2038, !452}
!2092 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSEDh", scope: !2029, file: !1713, line: 820, type: !2093, isLocal: false, isDefinition: false, scopeLine: 820, flags: DIFlagPrototyped, isOptimized: false)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!2058, !2038, !456}
!2095 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSEf", scope: !2029, file: !1713, line: 821, type: !2096, isLocal: false, isDefinition: false, scopeLine: 821, flags: DIFlagPrototyped, isOptimized: false)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!2058, !2038, !15}
!2098 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSEd", scope: !2029, file: !1713, line: 822, type: !2099, isLocal: false, isDefinition: false, scopeLine: 822, flags: DIFlagPrototyped, isOptimized: false)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!2058, !2038, !123}
!2101 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSERKS0_", scope: !2029, file: !1713, line: 839, type: !2102, isLocal: false, isDefinition: false, scopeLine: 839, flags: DIFlagPrototyped, isOptimized: false)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!2058, !2038, !2039}
!2104 = !DISubprogram(name: "get", linkageName: "_ZNK10ap_bit_refILi32ELb0EE3getEv", scope: !2029, file: !1713, line: 959, type: !2051, isLocal: false, isDefinition: false, scopeLine: 959, flags: DIFlagPrototyped, isOptimized: false)
!2105 = !DISubprogram(name: "get", linkageName: "_ZN10ap_bit_refILi32ELb0EE3getEv", scope: !2029, file: !1713, line: 961, type: !2106, isLocal: false, isDefinition: false, scopeLine: 961, flags: DIFlagPrototyped, isOptimized: false)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!40, !2038}
!2108 = !DISubprogram(name: "operator~", linkageName: "_ZNK10ap_bit_refILi32ELb0EEcoEv", scope: !2029, file: !1713, line: 968, type: !2051, isLocal: false, isDefinition: false, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: false)
!2109 = !DISubprogram(name: "length", linkageName: "_ZNK10ap_bit_refILi32ELb0EE6lengthEv", scope: !2029, file: !1713, line: 973, type: !2110, isLocal: false, isDefinition: false, scopeLine: 973, flags: DIFlagPrototyped, isOptimized: false)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{!38, !2053}
!2112 = !DISubprogram(name: "to_string", linkageName: "_ZNK10ap_bit_refILi32ELb0EE9to_stringEv", scope: !2029, file: !1713, line: 979, type: !2113, isLocal: false, isDefinition: false, scopeLine: 979, flags: DIFlagPrototyped, isOptimized: false)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!1380, !2053}
!2115 = !DISubprogram(name: "operator[]", linkageName: "_ZNK11ap_int_baseILi32ELb0EEixEi", scope: !21, file: !20, line: 1188, type: !248, isLocal: false, isDefinition: false, scopeLine: 1188, flags: DIFlagPrototyped, isOptimized: false)
!2116 = !DISubprogram(name: "bit", linkageName: "_ZN11ap_int_baseILi32ELb0EE3bitEi", scope: !21, file: !20, line: 1201, type: !2027, isLocal: false, isDefinition: false, scopeLine: 1201, flags: DIFlagPrototyped, isOptimized: false)
!2117 = !DISubprogram(name: "bit", linkageName: "_ZNK11ap_int_baseILi32ELb0EE3bitEi", scope: !21, file: !20, line: 1216, type: !248, isLocal: false, isDefinition: false, scopeLine: 1216, flags: DIFlagPrototyped, isOptimized: false)
!2118 = !DISubprogram(name: "countLeadingZeros", linkageName: "_ZNK11ap_int_baseILi32ELb0EE17countLeadingZerosEv", scope: !21, file: !20, line: 1239, type: !46, isLocal: false, isDefinition: false, scopeLine: 1239, flags: DIFlagPrototyped, isOptimized: false)
!2119 = !DISubprogram(name: "and_reduce", linkageName: "_ZNK11ap_int_baseILi32ELb0EE10and_reduceEv", scope: !21, file: !20, line: 1459, type: !193, isLocal: false, isDefinition: false, scopeLine: 1459, flags: DIFlagPrototyped, isOptimized: false)
!2120 = !DISubprogram(name: "nand_reduce", linkageName: "_ZNK11ap_int_baseILi32ELb0EE11nand_reduceEv", scope: !21, file: !20, line: 1460, type: !193, isLocal: false, isDefinition: false, scopeLine: 1460, flags: DIFlagPrototyped, isOptimized: false)
!2121 = !DISubprogram(name: "or_reduce", linkageName: "_ZNK11ap_int_baseILi32ELb0EE9or_reduceEv", scope: !21, file: !20, line: 1461, type: !193, isLocal: false, isDefinition: false, scopeLine: 1461, flags: DIFlagPrototyped, isOptimized: false)
!2122 = !DISubprogram(name: "nor_reduce", linkageName: "_ZNK11ap_int_baseILi32ELb0EE10nor_reduceEv", scope: !21, file: !20, line: 1462, type: !193, isLocal: false, isDefinition: false, scopeLine: 1462, flags: DIFlagPrototyped, isOptimized: false)
!2123 = !DISubprogram(name: "xor_reduce", linkageName: "_ZNK11ap_int_baseILi32ELb0EE10xor_reduceEv", scope: !21, file: !20, line: 1463, type: !193, isLocal: false, isDefinition: false, scopeLine: 1463, flags: DIFlagPrototyped, isOptimized: false)
!2124 = !DISubprogram(name: "xnor_reduce", linkageName: "_ZNK11ap_int_baseILi32ELb0EE11xnor_reduceEv", scope: !21, file: !20, line: 1464, type: !193, isLocal: false, isDefinition: false, scopeLine: 1464, flags: DIFlagPrototyped, isOptimized: false)
!2125 = !DISubprogram(name: "to_string", linkageName: "_ZNK11ap_int_baseILi32ELb0EE9to_stringEab", scope: !21, file: !20, line: 1479, type: !2126, isLocal: false, isDefinition: false, scopeLine: 1479, flags: DIFlagPrototyped, isOptimized: false)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!1380, !48, !66, !40}
!2128 = !DIDerivedType(tag: DW_TAG_typedef, name: "Type", scope: !2129, file: !20, line: 97, baseType: !110)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "retval<8, false>", file: !20, line: 96, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !2130, identifier: "_ZTS6retvalILi8ELb0EE")
!2130 = !{!534, !39}
!2131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<32, true>", file: !20, line: 154, size: 32, flags: DIFlagTypePassByValue, elements: !2132, templateParams: !2564, identifier: "_ZTS11ap_int_baseILi32ELb1EE")
!2132 = !{!2133, !2145, !2146, !2147, !2152, !2156, !2159, !2162, !2165, !2168, !2171, !2174, !2177, !2180, !2183, !2186, !2189, !2192, !2195, !2198, !2201, !2204, !2207, !2212, !2216, !2221, !2222, !2226, !2229, !2232, !2235, !2238, !2241, !2244, !2247, !2250, !2253, !2256, !2259, !2262, !2265, !2270, !2273, !2276, !2279, !2282, !2285, !2288, !2289, !2292, !2295, !2298, !2301, !2304, !2307, !2310, !2313, !2317, !2318, !2319, !2320, !2321, !2324, !2325, !2328, !2331, !2332, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2344, !2345, !2346, !2435, !2436, !2439, !2444, !2445, !2446, !2565, !2568, !2571, !2574, !2575, !2576, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675}
!2133 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2131, baseType: !2134)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<32, true>", file: !25, line: 555, size: 32, flags: DIFlagTypePassByValue, elements: !2135, templateParams: !2144, identifier: "_ZTS8ssdm_intILi32ELb1EE")
!2135 = !{!2136, !2137, !2141}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !2134, file: !25, line: 557, baseType: !38, size: 32)
!2137 = !DISubprogram(name: "ssdm_int", scope: !2134, file: !25, line: 558, type: !2138, isLocal: false, isDefinition: false, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: false)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{null, !2140}
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2141 = !DISubprogram(name: "ssdm_int", scope: !2134, file: !25, line: 559, type: !2142, isLocal: false, isDefinition: false, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{null, !2140, !38}
!2144 = !{!37, !400}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !2131, file: !20, line: 176, baseType: !42, flags: DIFlagStaticMember, extraData: i32 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !2131, file: !20, line: 177, baseType: !44, flags: DIFlagStaticMember, extraData: i1 true)
!2147 = !DISubprogram(name: "countLeadingOnes", linkageName: "_ZNK11ap_int_baseILi32ELb1EE16countLeadingOnesEv", scope: !2131, file: !20, line: 156, type: !2148, isLocal: false, isDefinition: false, scopeLine: 156, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!38, !2150}
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2131)
!2152 = !DISubprogram(name: "ap_int_base", scope: !2131, file: !20, line: 221, type: !2153, isLocal: false, isDefinition: false, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: false)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{null, !2155}
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2156 = !DISubprogram(name: "ap_int_base", scope: !2131, file: !20, line: 254, type: !2157, isLocal: false, isDefinition: false, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: false)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{null, !2155, !44}
!2159 = !DISubprogram(name: "ap_int_base", scope: !2131, file: !20, line: 255, type: !2160, isLocal: false, isDefinition: false, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: false)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{null, !2155, !60}
!2162 = !DISubprogram(name: "ap_int_base", scope: !2131, file: !20, line: 256, type: !2163, isLocal: false, isDefinition: false, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: false)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{null, !2155, !65}
!2165 = !DISubprogram(name: "ap_int_base", scope: !2131, file: !20, line: 257, type: !2166, isLocal: false, isDefinition: false, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: false)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{null, !2155, !70}
!2168 = !DISubprogram(name: "ap_int_base", scope: !2131, file: !20, line: 258, type: !2169, isLocal: false, isDefinition: false, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: false)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{null, !2155, !75}
!2171 = !DISubprogram(name: "ap_int_base", scope: !2131, file: !20, line: 259, type: !2172, isLocal: false, isDefinition: false, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: false)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{null, !2155, !80}
!2174 = !DISubprogram(name: "ap_int_base", scope: !2131, file: !20, line: 260, type: !2175, isLocal: false, isDefinition: false, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: false)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{null, !2155, !42}
!2177 = !DISubprogram(name: "ap_int_base", scope: !2131, file: !20, line: 261, type: !2178, isLocal: false, isDefinition: false, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: false)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{null, !2155, !88}
!2180 = !DISubprogram(name: "ap_int_base", scope: !2131, file: !20, line: 262, type: !2181, isLocal: false, isDefinition: false, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: false)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{null, !2155, !92}
!2183 = !DISubprogram(name: "ap_int_base", scope: !2131, file: !20, line: 263, type: !2184, isLocal: false, isDefinition: false, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: false)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{null, !2155, !97}
!2186 = !DISubprogram(name: "ap_int_base", scope: !2131, file: !20, line: 264, type: !2187, isLocal: false, isDefinition: false, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: false)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{null, !2155, !102}
!2189 = !DISubprogram(name: "ap_int_base", scope: !2131, file: !20, line: 265, type: !2190, isLocal: false, isDefinition: false, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: false)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{null, !2155, !109}
!2192 = !DISubprogram(name: "ap_int_base", scope: !2131, file: !20, line: 270, type: !2193, isLocal: false, isDefinition: false, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: false)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{null, !2155, !115}
!2195 = !DISubprogram(name: "ap_int_base", scope: !2131, file: !20, line: 276, type: !2196, isLocal: false, isDefinition: false, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: false)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{null, !2155, !15}
!2198 = !DISubprogram(name: "ap_int_base", scope: !2131, file: !20, line: 335, type: !2199, isLocal: false, isDefinition: false, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: false)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{null, !2155, !123}
!2201 = !DISubprogram(name: "ap_int_base", scope: !2131, file: !20, line: 431, type: !2202, isLocal: false, isDefinition: false, scopeLine: 431, flags: DIFlagPrototyped, isOptimized: false)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{null, !2155, !127}
!2204 = !DISubprogram(name: "ap_int_base", scope: !2131, file: !20, line: 437, type: !2205, isLocal: false, isDefinition: false, scopeLine: 437, flags: DIFlagPrototyped, isOptimized: false)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{null, !2155, !127, !66}
!2207 = !DISubprogram(name: "read", linkageName: "_ZNV11ap_int_baseILi32ELb1EE4readEv", scope: !2131, file: !20, line: 459, type: !2208, isLocal: false, isDefinition: false, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: false)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{!2131, !2210}
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2211 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !2131)
!2212 = !DISubprogram(name: "write", linkageName: "_ZNV11ap_int_baseILi32ELb1EE5writeERKS0_", scope: !2131, file: !20, line: 466, type: !2213, isLocal: false, isDefinition: false, scopeLine: 466, flags: DIFlagPrototyped, isOptimized: false)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{null, !2210, !2215}
!2215 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2151, size: 64)
!2216 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi32ELb1EEaSERVKS0_", scope: !2131, file: !20, line: 478, type: !2217, isLocal: false, isDefinition: false, scopeLine: 478, flags: DIFlagPrototyped, isOptimized: false)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{null, !2210, !2219}
!2219 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2220, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2211)
!2221 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi32ELb1EEaSERKS0_", scope: !2131, file: !20, line: 488, type: !2213, isLocal: false, isDefinition: false, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: false)
!2222 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSERVKS0_", scope: !2131, file: !20, line: 505, type: !2223, isLocal: false, isDefinition: false, scopeLine: 505, flags: DIFlagPrototyped, isOptimized: false)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!2225, !2155, !2219}
!2225 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2131, size: 64)
!2226 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSERKS0_", scope: !2131, file: !20, line: 511, type: !2227, isLocal: false, isDefinition: false, scopeLine: 511, flags: DIFlagPrototyped, isOptimized: false)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!2225, !2155, !2215}
!2229 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSEb", scope: !2131, file: !20, line: 525, type: !2230, isLocal: false, isDefinition: false, scopeLine: 525, flags: DIFlagPrototyped, isOptimized: false)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{!2225, !2155, !40}
!2232 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSEc", scope: !2131, file: !20, line: 526, type: !2233, isLocal: false, isDefinition: false, scopeLine: 526, flags: DIFlagPrototyped, isOptimized: false)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!2225, !2155, !61}
!2235 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSEa", scope: !2131, file: !20, line: 527, type: !2236, isLocal: false, isDefinition: false, scopeLine: 527, flags: DIFlagPrototyped, isOptimized: false)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{!2225, !2155, !66}
!2238 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSEh", scope: !2131, file: !20, line: 528, type: !2239, isLocal: false, isDefinition: false, scopeLine: 528, flags: DIFlagPrototyped, isOptimized: false)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!2225, !2155, !71}
!2241 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSEs", scope: !2131, file: !20, line: 529, type: !2242, isLocal: false, isDefinition: false, scopeLine: 529, flags: DIFlagPrototyped, isOptimized: false)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!2225, !2155, !76}
!2244 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSEt", scope: !2131, file: !20, line: 530, type: !2245, isLocal: false, isDefinition: false, scopeLine: 530, flags: DIFlagPrototyped, isOptimized: false)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{!2225, !2155, !81}
!2247 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSEi", scope: !2131, file: !20, line: 531, type: !2248, isLocal: false, isDefinition: false, scopeLine: 531, flags: DIFlagPrototyped, isOptimized: false)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!2225, !2155, !38}
!2250 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSEj", scope: !2131, file: !20, line: 532, type: !2251, isLocal: false, isDefinition: false, scopeLine: 532, flags: DIFlagPrototyped, isOptimized: false)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!2225, !2155, !28}
!2253 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSEl", scope: !2131, file: !20, line: 533, type: !2254, isLocal: false, isDefinition: false, scopeLine: 533, flags: DIFlagPrototyped, isOptimized: false)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{!2225, !2155, !93}
!2256 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSEm", scope: !2131, file: !20, line: 534, type: !2257, isLocal: false, isDefinition: false, scopeLine: 534, flags: DIFlagPrototyped, isOptimized: false)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{!2225, !2155, !98}
!2259 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSEx", scope: !2131, file: !20, line: 535, type: !2260, isLocal: false, isDefinition: false, scopeLine: 535, flags: DIFlagPrototyped, isOptimized: false)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{!2225, !2155, !103}
!2262 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSEy", scope: !2131, file: !20, line: 536, type: !2263, isLocal: false, isDefinition: false, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: false)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!2225, !2155, !110}
!2265 = !DISubprogram(name: "operator long long", linkageName: "_ZNK11ap_int_baseILi32ELb1EEcvxEv", scope: !2131, file: !20, line: 587, type: !2266, isLocal: false, isDefinition: false, scopeLine: 587, flags: DIFlagPrototyped, isOptimized: false)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!2268, !2150}
!2268 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !2131, file: !20, line: 174, baseType: !2269)
!2269 = !DIDerivedType(tag: DW_TAG_typedef, name: "Type", scope: !532, file: !20, line: 92, baseType: !103)
!2270 = !DISubprogram(name: "to_bool", linkageName: "_ZNK11ap_int_baseILi32ELb1EE7to_boolEv", scope: !2131, file: !20, line: 592, type: !2271, isLocal: false, isDefinition: false, scopeLine: 592, flags: DIFlagPrototyped, isOptimized: false)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!40, !2150}
!2273 = !DISubprogram(name: "to_char", linkageName: "_ZNK11ap_int_baseILi32ELb1EE7to_charEv", scope: !2131, file: !20, line: 593, type: !2274, isLocal: false, isDefinition: false, scopeLine: 593, flags: DIFlagPrototyped, isOptimized: false)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{!61, !2150}
!2276 = !DISubprogram(name: "to_schar", linkageName: "_ZNK11ap_int_baseILi32ELb1EE8to_scharEv", scope: !2131, file: !20, line: 594, type: !2277, isLocal: false, isDefinition: false, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: false)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{!66, !2150}
!2279 = !DISubprogram(name: "to_uchar", linkageName: "_ZNK11ap_int_baseILi32ELb1EE8to_ucharEv", scope: !2131, file: !20, line: 595, type: !2280, isLocal: false, isDefinition: false, scopeLine: 595, flags: DIFlagPrototyped, isOptimized: false)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!71, !2150}
!2282 = !DISubprogram(name: "to_short", linkageName: "_ZNK11ap_int_baseILi32ELb1EE8to_shortEv", scope: !2131, file: !20, line: 596, type: !2283, isLocal: false, isDefinition: false, scopeLine: 596, flags: DIFlagPrototyped, isOptimized: false)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!76, !2150}
!2285 = !DISubprogram(name: "to_ushort", linkageName: "_ZNK11ap_int_baseILi32ELb1EE9to_ushortEv", scope: !2131, file: !20, line: 597, type: !2286, isLocal: false, isDefinition: false, scopeLine: 597, flags: DIFlagPrototyped, isOptimized: false)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{!81, !2150}
!2288 = !DISubprogram(name: "to_int", linkageName: "_ZNK11ap_int_baseILi32ELb1EE6to_intEv", scope: !2131, file: !20, line: 598, type: !2148, isLocal: false, isDefinition: false, scopeLine: 598, flags: DIFlagPrototyped, isOptimized: false)
!2289 = !DISubprogram(name: "to_uint", linkageName: "_ZNK11ap_int_baseILi32ELb1EE7to_uintEv", scope: !2131, file: !20, line: 599, type: !2290, isLocal: false, isDefinition: false, scopeLine: 599, flags: DIFlagPrototyped, isOptimized: false)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!28, !2150}
!2292 = !DISubprogram(name: "to_long", linkageName: "_ZNK11ap_int_baseILi32ELb1EE7to_longEv", scope: !2131, file: !20, line: 600, type: !2293, isLocal: false, isDefinition: false, scopeLine: 600, flags: DIFlagPrototyped, isOptimized: false)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!93, !2150}
!2295 = !DISubprogram(name: "to_ulong", linkageName: "_ZNK11ap_int_baseILi32ELb1EE8to_ulongEv", scope: !2131, file: !20, line: 601, type: !2296, isLocal: false, isDefinition: false, scopeLine: 601, flags: DIFlagPrototyped, isOptimized: false)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!98, !2150}
!2298 = !DISubprogram(name: "to_int64", linkageName: "_ZNK11ap_int_baseILi32ELb1EE8to_int64Ev", scope: !2131, file: !20, line: 602, type: !2299, isLocal: false, isDefinition: false, scopeLine: 602, flags: DIFlagPrototyped, isOptimized: false)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!103, !2150}
!2301 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK11ap_int_baseILi32ELb1EE9to_uint64Ev", scope: !2131, file: !20, line: 603, type: !2302, isLocal: false, isDefinition: false, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: false)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!110, !2150}
!2304 = !DISubprogram(name: "to_half", linkageName: "_ZNK11ap_int_baseILi32ELb1EE7to_halfEv", scope: !2131, file: !20, line: 604, type: !2305, isLocal: false, isDefinition: false, scopeLine: 604, flags: DIFlagPrototyped, isOptimized: false)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!115, !2150}
!2307 = !DISubprogram(name: "to_float", linkageName: "_ZNK11ap_int_baseILi32ELb1EE8to_floatEv", scope: !2131, file: !20, line: 605, type: !2308, isLocal: false, isDefinition: false, scopeLine: 605, flags: DIFlagPrototyped, isOptimized: false)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{!15, !2150}
!2310 = !DISubprogram(name: "to_double", linkageName: "_ZNK11ap_int_baseILi32ELb1EE9to_doubleEv", scope: !2131, file: !20, line: 606, type: !2311, isLocal: false, isDefinition: false, scopeLine: 606, flags: DIFlagPrototyped, isOptimized: false)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!123, !2150}
!2313 = !DISubprogram(name: "length", linkageName: "_ZNVK11ap_int_baseILi32ELb1EE6lengthEv", scope: !2131, file: !20, line: 630, type: !2314, isLocal: false, isDefinition: false, scopeLine: 630, flags: DIFlagPrototyped, isOptimized: false)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{!38, !2316}
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2317 = !DISubprogram(name: "length", linkageName: "_ZNK11ap_int_baseILi32ELb1EE6lengthEv", scope: !2131, file: !20, line: 631, type: !2148, isLocal: false, isDefinition: false, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: false)
!2318 = !DISubprogram(name: "iszero", linkageName: "_ZNK11ap_int_baseILi32ELb1EE6iszeroEv", scope: !2131, file: !20, line: 634, type: !2271, isLocal: false, isDefinition: false, scopeLine: 634, flags: DIFlagPrototyped, isOptimized: false)
!2319 = !DISubprogram(name: "is_zero", linkageName: "_ZNK11ap_int_baseILi32ELb1EE7is_zeroEv", scope: !2131, file: !20, line: 637, type: !2271, isLocal: false, isDefinition: false, scopeLine: 637, flags: DIFlagPrototyped, isOptimized: false)
!2320 = !DISubprogram(name: "sign", linkageName: "_ZNK11ap_int_baseILi32ELb1EE4signEv", scope: !2131, file: !20, line: 640, type: !2271, isLocal: false, isDefinition: false, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: false)
!2321 = !DISubprogram(name: "clear", linkageName: "_ZN11ap_int_baseILi32ELb1EE5clearEi", scope: !2131, file: !20, line: 649, type: !2322, isLocal: false, isDefinition: false, scopeLine: 649, flags: DIFlagPrototyped, isOptimized: false)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{null, !2155, !38}
!2324 = !DISubprogram(name: "invert", linkageName: "_ZN11ap_int_baseILi32ELb1EE6invertEi", scope: !2131, file: !20, line: 655, type: !2322, isLocal: false, isDefinition: false, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: false)
!2325 = !DISubprogram(name: "test", linkageName: "_ZNK11ap_int_baseILi32ELb1EE4testEi", scope: !2131, file: !20, line: 664, type: !2326, isLocal: false, isDefinition: false, scopeLine: 664, flags: DIFlagPrototyped, isOptimized: false)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!40, !2150, !38}
!2328 = !DISubprogram(name: "get", linkageName: "_ZN11ap_int_baseILi32ELb1EE3getEv", scope: !2131, file: !20, line: 670, type: !2329, isLocal: false, isDefinition: false, scopeLine: 670, flags: DIFlagPrototyped, isOptimized: false)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!2225, !2155}
!2331 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi32ELb1EE3setEi", scope: !2131, file: !20, line: 673, type: !2322, isLocal: false, isDefinition: false, scopeLine: 673, flags: DIFlagPrototyped, isOptimized: false)
!2332 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi32ELb1EE3setEib", scope: !2131, file: !20, line: 679, type: !2333, isLocal: false, isDefinition: false, scopeLine: 679, flags: DIFlagPrototyped, isOptimized: false)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{null, !2155, !38, !40}
!2335 = !DISubprogram(name: "lrotate", linkageName: "_ZN11ap_int_baseILi32ELb1EE7lrotateEi", scope: !2131, file: !20, line: 686, type: !2248, isLocal: false, isDefinition: false, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: false)
!2336 = !DISubprogram(name: "rrotate", linkageName: "_ZN11ap_int_baseILi32ELb1EE7rrotateEi", scope: !2131, file: !20, line: 701, type: !2248, isLocal: false, isDefinition: false, scopeLine: 701, flags: DIFlagPrototyped, isOptimized: false)
!2337 = !DISubprogram(name: "reverse", linkageName: "_ZN11ap_int_baseILi32ELb1EE7reverseEv", scope: !2131, file: !20, line: 716, type: !2329, isLocal: false, isDefinition: false, scopeLine: 716, flags: DIFlagPrototyped, isOptimized: false)
!2338 = !DISubprogram(name: "set_bit", linkageName: "_ZN11ap_int_baseILi32ELb1EE7set_bitEib", scope: !2131, file: !20, line: 722, type: !2333, isLocal: false, isDefinition: false, scopeLine: 722, flags: DIFlagPrototyped, isOptimized: false)
!2339 = !DISubprogram(name: "get_bit", linkageName: "_ZNK11ap_int_baseILi32ELb1EE7get_bitEi", scope: !2131, file: !20, line: 727, type: !2326, isLocal: false, isDefinition: false, scopeLine: 727, flags: DIFlagPrototyped, isOptimized: false)
!2340 = !DISubprogram(name: "b_not", linkageName: "_ZN11ap_int_baseILi32ELb1EE5b_notEv", scope: !2131, file: !20, line: 732, type: !2153, isLocal: false, isDefinition: false, scopeLine: 732, flags: DIFlagPrototyped, isOptimized: false)
!2341 = !DISubprogram(name: "checkOverflowCsim", linkageName: "_ZNK11ap_int_baseILi32ELb1EE17checkOverflowCsimEibb", scope: !2131, file: !20, line: 806, type: !2342, isLocal: false, isDefinition: false, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: false)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!40, !2150, !38, !40, !40}
!2344 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi32ELb1EEppEv", scope: !2131, file: !20, line: 911, type: !2329, isLocal: false, isDefinition: false, scopeLine: 911, flags: DIFlagPrototyped, isOptimized: false)
!2345 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi32ELb1EEmmEv", scope: !2131, file: !20, line: 915, type: !2329, isLocal: false, isDefinition: false, scopeLine: 915, flags: DIFlagPrototyped, isOptimized: false)
!2346 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi32ELb1EEppEi", scope: !2131, file: !20, line: 923, type: !2347, isLocal: false, isDefinition: false, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: false)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!2349, !2155, !38}
!2349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2350)
!2350 = !DIDerivedType(tag: DW_TAG_typedef, name: "arg1", scope: !2351, file: !20, line: 213, baseType: !2353)
!2351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<32, true>", scope: !2131, file: !20, line: 180, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !2352, identifier: "_ZTSN11ap_int_baseILi32ELb1EE5RTypeILi32ELb1EEE")
!2352 = !{!275, !377}
!2353 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2354, file: !20, line: 149, baseType: !2355)
!2354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_int_factory<32, true>", file: !20, line: 149, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !2352, identifier: "_ZTS15_ap_int_factoryILi32ELb1EE")
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int<32>", file: !379, line: 18, size: 32, flags: DIFlagTypePassByValue, elements: !2356, templateParams: !360, identifier: "_ZTS6ap_intILi32EE")
!2356 = !{!2357, !2358, !2362, !2365, !2368, !2371, !2374, !2377, !2380, !2383, !2386, !2389, !2392, !2395, !2398, !2401, !2404, !2407, !2410, !2413, !2416, !2422, !2428, !2432}
!2357 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2355, baseType: !2131)
!2358 = !DISubprogram(name: "ap_int", scope: !2355, file: !379, line: 21, type: !2359, isLocal: false, isDefinition: false, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: false)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{null, !2361}
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2362 = !DISubprogram(name: "ap_int", scope: !2355, file: !379, line: 57, type: !2363, isLocal: false, isDefinition: false, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{null, !2361, !28, !40}
!2365 = !DISubprogram(name: "ap_int", scope: !2355, file: !379, line: 127, type: !2366, isLocal: false, isDefinition: false, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: false)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{null, !2361, !40}
!2368 = !DISubprogram(name: "ap_int", scope: !2355, file: !379, line: 128, type: !2369, isLocal: false, isDefinition: false, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{null, !2361, !61}
!2371 = !DISubprogram(name: "ap_int", scope: !2355, file: !379, line: 129, type: !2372, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: false)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{null, !2361, !66}
!2374 = !DISubprogram(name: "ap_int", scope: !2355, file: !379, line: 130, type: !2375, isLocal: false, isDefinition: false, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: false)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{null, !2361, !71}
!2377 = !DISubprogram(name: "ap_int", scope: !2355, file: !379, line: 131, type: !2378, isLocal: false, isDefinition: false, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{null, !2361, !76}
!2380 = !DISubprogram(name: "ap_int", scope: !2355, file: !379, line: 132, type: !2381, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{null, !2361, !81}
!2383 = !DISubprogram(name: "ap_int", scope: !2355, file: !379, line: 133, type: !2384, isLocal: false, isDefinition: false, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{null, !2361, !38}
!2386 = !DISubprogram(name: "ap_int", scope: !2355, file: !379, line: 134, type: !2387, isLocal: false, isDefinition: false, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{null, !2361, !28}
!2389 = !DISubprogram(name: "ap_int", scope: !2355, file: !379, line: 135, type: !2390, isLocal: false, isDefinition: false, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{null, !2361, !93}
!2392 = !DISubprogram(name: "ap_int", scope: !2355, file: !379, line: 136, type: !2393, isLocal: false, isDefinition: false, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: false)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{null, !2361, !98}
!2395 = !DISubprogram(name: "ap_int", scope: !2355, file: !379, line: 137, type: !2396, isLocal: false, isDefinition: false, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{null, !2361, !446}
!2398 = !DISubprogram(name: "ap_int", scope: !2355, file: !379, line: 138, type: !2399, isLocal: false, isDefinition: false, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{null, !2361, !452}
!2401 = !DISubprogram(name: "ap_int", scope: !2355, file: !379, line: 140, type: !2402, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{null, !2361, !123}
!2404 = !DISubprogram(name: "ap_int", scope: !2355, file: !379, line: 141, type: !2405, isLocal: false, isDefinition: false, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{null, !2361, !15}
!2407 = !DISubprogram(name: "ap_int", scope: !2355, file: !379, line: 142, type: !2408, isLocal: false, isDefinition: false, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{null, !2361, !456}
!2410 = !DISubprogram(name: "ap_int", scope: !2355, file: !379, line: 145, type: !2411, isLocal: false, isDefinition: false, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{null, !2361, !127}
!2413 = !DISubprogram(name: "ap_int", scope: !2355, file: !379, line: 147, type: !2414, isLocal: false, isDefinition: false, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{null, !2361, !127, !66}
!2416 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi32EEaSERKS0_", scope: !2355, file: !379, line: 152, type: !2417, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: false)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!2419, !2361, !2420}
!2419 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2355, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2421, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2355)
!2422 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi32EEaSERVKS0_", scope: !2355, file: !379, line: 161, type: !2423, isLocal: false, isDefinition: false, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!2419, !2361, !2425}
!2425 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2426, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2427)
!2427 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !2355)
!2428 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi32EEaSERKS0_", scope: !2355, file: !379, line: 167, type: !2429, isLocal: false, isDefinition: false, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{null, !2431, !2420}
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2432 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi32EEaSERVKS0_", scope: !2355, file: !379, line: 171, type: !2433, isLocal: false, isDefinition: false, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: false)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{null, !2431, !2425}
!2435 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi32ELb1EEmmEi", scope: !2131, file: !20, line: 928, type: !2347, isLocal: false, isDefinition: false, scopeLine: 928, flags: DIFlagPrototyped, isOptimized: false)
!2436 = !DISubprogram(name: "operator+", linkageName: "_ZNK11ap_int_baseILi32ELb1EEpsEv", scope: !2131, file: !20, line: 937, type: !2437, isLocal: false, isDefinition: false, scopeLine: 937, flags: DIFlagPrototyped, isOptimized: false)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!2350, !2150}
!2439 = !DISubprogram(name: "operator-", linkageName: "_ZNK11ap_int_baseILi32ELb1EEngEv", scope: !2131, file: !20, line: 940, type: !2440, isLocal: false, isDefinition: false, scopeLine: 940, flags: DIFlagPrototyped, isOptimized: false)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{!2442, !2150}
!2442 = !DIDerivedType(tag: DW_TAG_typedef, name: "minus", scope: !2443, file: !20, line: 209, baseType: !373)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<1, false>", scope: !2131, file: !20, line: 180, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !371, identifier: "_ZTSN11ap_int_baseILi32ELb1EE5RTypeILi1ELb0EEE")
!2444 = !DISubprogram(name: "operator!", linkageName: "_ZNK11ap_int_baseILi32ELb1EEntEv", scope: !2131, file: !20, line: 947, type: !2271, isLocal: false, isDefinition: false, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: false)
!2445 = !DISubprogram(name: "operator~", linkageName: "_ZNK11ap_int_baseILi32ELb1EEcoEv", scope: !2131, file: !20, line: 953, type: !2437, isLocal: false, isDefinition: false, scopeLine: 953, flags: DIFlagPrototyped, isOptimized: false)
!2446 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi32ELb1EE5rangeEii", scope: !2131, file: !20, line: 1091, type: !2447, isLocal: false, isDefinition: false, scopeLine: 1091, flags: DIFlagPrototyped, isOptimized: false)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!2449, !2155, !38, !38}
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_range_ref<32, true>", file: !1713, line: 290, size: 128, flags: DIFlagTypePassByReference, elements: !2450, templateParams: !2564, identifier: "_ZTS12ap_range_refILi32ELb1EE")
!2450 = !{!2451, !2454, !2455, !2456, !2462, !2466, !2471, !2475, !2478, !2482, !2485, !2488, !2491, !2494, !2497, !2500, !2503, !2506, !2509, !2512, !2515, !2518, !2521, !2524, !2527, !2530, !2534, !2535, !2536, !2537, !2538, !2539, !2542, !2543, !2546, !2549, !2552, !2555, !2556, !2559, !2560, !2561}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "d_bv", scope: !2449, file: !1713, line: 295, baseType: !2452, size: 64)
!2452 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2453, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_typedef, name: "ref_type", scope: !2449, file: !1713, line: 294, baseType: !2131)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "l_index", scope: !2449, file: !1713, line: 296, baseType: !38, size: 32, offset: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "h_index", scope: !2449, file: !1713, line: 297, baseType: !38, size: 32, offset: 96)
!2456 = !DISubprogram(name: "ap_range_ref", scope: !2449, file: !1713, line: 300, type: !2457, isLocal: false, isDefinition: false, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: false)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{null, !2459, !2460}
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2460 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2461, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2449)
!2462 = !DISubprogram(name: "ap_range_ref", scope: !2449, file: !1713, line: 303, type: !2463, isLocal: false, isDefinition: false, scopeLine: 303, flags: DIFlagPrototyped, isOptimized: false)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{null, !2459, !2465, !38, !38}
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2466 = !DISubprogram(name: "ap_range_ref", scope: !2449, file: !1713, line: 306, type: !2467, isLocal: false, isDefinition: false, scopeLine: 306, flags: DIFlagPrototyped, isOptimized: false)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{null, !2459, !2469, !38, !38}
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2453)
!2471 = !DISubprogram(name: "operator ap_int_base", linkageName: "_ZNK12ap_range_refILi32ELb1EEcv11ap_int_baseILi32ELb0EEEv", scope: !2449, file: !1713, line: 309, type: !2472, isLocal: false, isDefinition: false, scopeLine: 309, flags: DIFlagPrototyped, isOptimized: false)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!21, !2474}
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2475 = !DISubprogram(name: "operator unsigned long long", linkageName: "_ZNK12ap_range_refILi32ELb1EEcvyEv", scope: !2449, file: !1713, line: 315, type: !2476, isLocal: false, isDefinition: false, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: false)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!452, !2474}
!2478 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEb", scope: !2449, file: !1713, line: 339, type: !2479, isLocal: false, isDefinition: false, scopeLine: 339, flags: DIFlagPrototyped, isOptimized: false)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!2481, !2459, !40}
!2481 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2449, size: 64)
!2482 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEc", scope: !2449, file: !1713, line: 340, type: !2483, isLocal: false, isDefinition: false, scopeLine: 340, flags: DIFlagPrototyped, isOptimized: false)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!2481, !2459, !61}
!2485 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEa", scope: !2449, file: !1713, line: 341, type: !2486, isLocal: false, isDefinition: false, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: false)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!2481, !2459, !66}
!2488 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEh", scope: !2449, file: !1713, line: 342, type: !2489, isLocal: false, isDefinition: false, scopeLine: 342, flags: DIFlagPrototyped, isOptimized: false)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{!2481, !2459, !71}
!2491 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEs", scope: !2449, file: !1713, line: 343, type: !2492, isLocal: false, isDefinition: false, scopeLine: 343, flags: DIFlagPrototyped, isOptimized: false)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!2481, !2459, !76}
!2494 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEt", scope: !2449, file: !1713, line: 344, type: !2495, isLocal: false, isDefinition: false, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: false)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{!2481, !2459, !81}
!2497 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEi", scope: !2449, file: !1713, line: 345, type: !2498, isLocal: false, isDefinition: false, scopeLine: 345, flags: DIFlagPrototyped, isOptimized: false)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!2481, !2459, !38}
!2500 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEj", scope: !2449, file: !1713, line: 346, type: !2501, isLocal: false, isDefinition: false, scopeLine: 346, flags: DIFlagPrototyped, isOptimized: false)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!2481, !2459, !28}
!2503 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEl", scope: !2449, file: !1713, line: 347, type: !2504, isLocal: false, isDefinition: false, scopeLine: 347, flags: DIFlagPrototyped, isOptimized: false)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!2481, !2459, !93}
!2506 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEm", scope: !2449, file: !1713, line: 348, type: !2507, isLocal: false, isDefinition: false, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: false)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!2481, !2459, !98}
!2509 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEx", scope: !2449, file: !1713, line: 349, type: !2510, isLocal: false, isDefinition: false, scopeLine: 349, flags: DIFlagPrototyped, isOptimized: false)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!2481, !2459, !446}
!2512 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEy", scope: !2449, file: !1713, line: 350, type: !2513, isLocal: false, isDefinition: false, scopeLine: 350, flags: DIFlagPrototyped, isOptimized: false)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!2481, !2459, !452}
!2515 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEDh", scope: !2449, file: !1713, line: 351, type: !2516, isLocal: false, isDefinition: false, scopeLine: 351, flags: DIFlagPrototyped, isOptimized: false)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{!2481, !2459, !456}
!2518 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEf", scope: !2449, file: !1713, line: 352, type: !2519, isLocal: false, isDefinition: false, scopeLine: 352, flags: DIFlagPrototyped, isOptimized: false)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!2481, !2459, !15}
!2521 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEd", scope: !2449, file: !1713, line: 353, type: !2522, isLocal: false, isDefinition: false, scopeLine: 353, flags: DIFlagPrototyped, isOptimized: false)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!2481, !2459, !123}
!2524 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEPKc", scope: !2449, file: !1713, line: 358, type: !2525, isLocal: false, isDefinition: false, scopeLine: 358, flags: DIFlagPrototyped, isOptimized: false)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!2481, !2459, !127}
!2527 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSERKS0_", scope: !2449, file: !1713, line: 375, type: !2528, isLocal: false, isDefinition: false, scopeLine: 375, flags: DIFlagPrototyped, isOptimized: false)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!2481, !2459, !2460}
!2530 = !DISubprogram(name: "operator,", linkageName: "_ZN12ap_range_refILi32ELb1EEcmER11ap_int_baseILi32ELb1EE", scope: !2449, file: !1713, line: 443, type: !2531, isLocal: false, isDefinition: false, scopeLine: 443, flags: DIFlagPrototyped, isOptimized: false)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!2533, !2459, !2225}
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_concat_ref<32, ap_range_ref<32, true>, 32, ap_int_base<32, true> >", file: !1713, line: 28, flags: DIFlagFwdDecl, identifier: "_ZTS13ap_concat_refILi32E12ap_range_refILi32ELb1EELi32E11ap_int_baseILi32ELb1EEE")
!2534 = !DISubprogram(name: "operator~", linkageName: "_ZNK12ap_range_refILi32ELb1EEcoEv", scope: !2449, file: !1713, line: 601, type: !2472, isLocal: false, isDefinition: false, scopeLine: 601, flags: DIFlagPrototyped, isOptimized: false)
!2535 = !DISubprogram(name: "operator!", linkageName: "_ZNK12ap_range_refILi32ELb1EEntEv", scope: !2449, file: !1713, line: 607, type: !2472, isLocal: false, isDefinition: false, scopeLine: 607, flags: DIFlagPrototyped, isOptimized: false)
!2536 = !DISubprogram(name: "operator+", linkageName: "_ZNK12ap_range_refILi32ELb1EEpsEv", scope: !2449, file: !1713, line: 613, type: !2472, isLocal: false, isDefinition: false, scopeLine: 613, flags: DIFlagPrototyped, isOptimized: false)
!2537 = !DISubprogram(name: "operator-", linkageName: "_ZNK12ap_range_refILi32ELb1EEngEv", scope: !2449, file: !1713, line: 619, type: !2472, isLocal: false, isDefinition: false, scopeLine: 619, flags: DIFlagPrototyped, isOptimized: false)
!2538 = !DISubprogram(name: "get", linkageName: "_ZNK12ap_range_refILi32ELb1EE3getEv", scope: !2449, file: !1713, line: 626, type: !2472, isLocal: false, isDefinition: false, scopeLine: 626, flags: DIFlagPrototyped, isOptimized: false)
!2539 = !DISubprogram(name: "length", linkageName: "_ZNK12ap_range_refILi32ELb1EE6lengthEv", scope: !2449, file: !1713, line: 637, type: !2540, isLocal: false, isDefinition: false, scopeLine: 637, flags: DIFlagPrototyped, isOptimized: false)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!38, !2474}
!2542 = !DISubprogram(name: "to_int", linkageName: "_ZNK12ap_range_refILi32ELb1EE6to_intEv", scope: !2449, file: !1713, line: 641, type: !2540, isLocal: false, isDefinition: false, scopeLine: 641, flags: DIFlagPrototyped, isOptimized: false)
!2543 = !DISubprogram(name: "to_uint", linkageName: "_ZNK12ap_range_refILi32ELb1EE7to_uintEv", scope: !2449, file: !1713, line: 645, type: !2544, isLocal: false, isDefinition: false, scopeLine: 645, flags: DIFlagPrototyped, isOptimized: false)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{!28, !2474}
!2546 = !DISubprogram(name: "to_long", linkageName: "_ZNK12ap_range_refILi32ELb1EE7to_longEv", scope: !2449, file: !1713, line: 651, type: !2547, isLocal: false, isDefinition: false, scopeLine: 651, flags: DIFlagPrototyped, isOptimized: false)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!93, !2474}
!2549 = !DISubprogram(name: "to_ulong", linkageName: "_ZNK12ap_range_refILi32ELb1EE8to_ulongEv", scope: !2449, file: !1713, line: 655, type: !2550, isLocal: false, isDefinition: false, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: false)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!98, !2474}
!2552 = !DISubprogram(name: "to_int64", linkageName: "_ZNK12ap_range_refILi32ELb1EE8to_int64Ev", scope: !2449, file: !1713, line: 661, type: !2553, isLocal: false, isDefinition: false, scopeLine: 661, flags: DIFlagPrototyped, isOptimized: false)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!446, !2474}
!2555 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK12ap_range_refILi32ELb1EE9to_uint64Ev", scope: !2449, file: !1713, line: 665, type: !2476, isLocal: false, isDefinition: false, scopeLine: 665, flags: DIFlagPrototyped, isOptimized: false)
!2556 = !DISubprogram(name: "and_reduce", linkageName: "_ZNK12ap_range_refILi32ELb1EE10and_reduceEv", scope: !2449, file: !1713, line: 671, type: !2557, isLocal: false, isDefinition: false, scopeLine: 671, flags: DIFlagPrototyped, isOptimized: false)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!40, !2474}
!2559 = !DISubprogram(name: "or_reduce", linkageName: "_ZNK12ap_range_refILi32ELb1EE9or_reduceEv", scope: !2449, file: !1713, line: 685, type: !2557, isLocal: false, isDefinition: false, scopeLine: 685, flags: DIFlagPrototyped, isOptimized: false)
!2560 = !DISubprogram(name: "xor_reduce", linkageName: "_ZNK12ap_range_refILi32ELb1EE10xor_reduceEv", scope: !2449, file: !1713, line: 699, type: !2557, isLocal: false, isDefinition: false, scopeLine: 699, flags: DIFlagPrototyped, isOptimized: false)
!2561 = !DISubprogram(name: "to_string", linkageName: "_ZNK12ap_range_refILi32ELb1EE9to_stringEa", scope: !2449, file: !1713, line: 720, type: !2562, isLocal: false, isDefinition: false, scopeLine: 720, flags: DIFlagPrototyped, isOptimized: false)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{!1380, !2474, !66}
!2564 = !{!361, !400}
!2565 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi32ELb1EE5rangeEii", scope: !2131, file: !20, line: 1098, type: !2566, isLocal: false, isDefinition: false, scopeLine: 1098, flags: DIFlagPrototyped, isOptimized: false)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!2449, !2150, !38, !38}
!2568 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi32ELb1EE5rangeEv", scope: !2131, file: !20, line: 1122, type: !2569, isLocal: false, isDefinition: false, scopeLine: 1122, flags: DIFlagPrototyped, isOptimized: false)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!2449, !2155}
!2571 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi32ELb1EE5rangeEv", scope: !2131, file: !20, line: 1126, type: !2572, isLocal: false, isDefinition: false, scopeLine: 1126, flags: DIFlagPrototyped, isOptimized: false)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!2449, !2150}
!2574 = !DISubprogram(name: "operator()", linkageName: "_ZN11ap_int_baseILi32ELb1EEclEii", scope: !2131, file: !20, line: 1130, type: !2447, isLocal: false, isDefinition: false, scopeLine: 1130, flags: DIFlagPrototyped, isOptimized: false)
!2575 = !DISubprogram(name: "operator()", linkageName: "_ZNK11ap_int_baseILi32ELb1EEclEii", scope: !2131, file: !20, line: 1134, type: !2566, isLocal: false, isDefinition: false, scopeLine: 1134, flags: DIFlagPrototyped, isOptimized: false)
!2576 = !DISubprogram(name: "operator[]", linkageName: "_ZN11ap_int_baseILi32ELb1EEixEi", scope: !2131, file: !20, line: 1172, type: !2577, isLocal: false, isDefinition: false, scopeLine: 1172, flags: DIFlagPrototyped, isOptimized: false)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!2579, !2155, !38}
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_bit_ref<32, true>", file: !1713, line: 761, size: 128, flags: DIFlagTypePassByReference, elements: !2580, templateParams: !2564, identifier: "_ZTS10ap_bit_refILi32ELb1EE")
!2580 = !{!2581, !2584, !2585, !2591, !2595, !2600, !2604, !2605, !2609, !2612, !2615, !2618, !2621, !2624, !2627, !2630, !2633, !2636, !2639, !2642, !2645, !2648, !2651, !2654, !2655, !2658, !2659, !2662}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "d_bv", scope: !2579, file: !1713, line: 766, baseType: !2582, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2583, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_typedef, name: "ref_type", scope: !2579, file: !1713, line: 765, baseType: !2131)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "d_index", scope: !2579, file: !1713, line: 767, baseType: !38, size: 32, offset: 64)
!2585 = !DISubprogram(name: "ap_bit_ref", scope: !2579, file: !1713, line: 771, type: !2586, isLocal: false, isDefinition: false, scopeLine: 771, flags: DIFlagPrototyped, isOptimized: false)
!2586 = !DISubroutineType(types: !2587)
!2587 = !{null, !2588, !2589}
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2589 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2590, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2579)
!2591 = !DISubprogram(name: "ap_bit_ref", scope: !2579, file: !1713, line: 774, type: !2592, isLocal: false, isDefinition: false, scopeLine: 774, flags: DIFlagPrototyped, isOptimized: false)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{null, !2588, !2594, !38}
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2595 = !DISubprogram(name: "ap_bit_ref", scope: !2579, file: !1713, line: 776, type: !2596, isLocal: false, isDefinition: false, scopeLine: 776, flags: DIFlagPrototyped, isOptimized: false)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{null, !2588, !2598, !38}
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2583)
!2600 = !DISubprogram(name: "operator bool", linkageName: "_ZNK10ap_bit_refILi32ELb1EEcvbEv", scope: !2579, file: !1713, line: 779, type: !2601, isLocal: false, isDefinition: false, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: false)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!40, !2603}
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2604 = !DISubprogram(name: "to_bool", linkageName: "_ZNK10ap_bit_refILi32ELb1EE7to_boolEv", scope: !2579, file: !1713, line: 780, type: !2601, isLocal: false, isDefinition: false, scopeLine: 780, flags: DIFlagPrototyped, isOptimized: false)
!2605 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSEb", scope: !2579, file: !1713, line: 798, type: !2606, isLocal: false, isDefinition: false, scopeLine: 798, flags: DIFlagPrototyped, isOptimized: false)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!2608, !2588, !40}
!2608 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2579, size: 64)
!2609 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSEc", scope: !2579, file: !1713, line: 799, type: !2610, isLocal: false, isDefinition: false, scopeLine: 799, flags: DIFlagPrototyped, isOptimized: false)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{!2608, !2588, !61}
!2612 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSEa", scope: !2579, file: !1713, line: 800, type: !2613, isLocal: false, isDefinition: false, scopeLine: 800, flags: DIFlagPrototyped, isOptimized: false)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{!2608, !2588, !66}
!2615 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSEh", scope: !2579, file: !1713, line: 801, type: !2616, isLocal: false, isDefinition: false, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: false)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!2608, !2588, !71}
!2618 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSEs", scope: !2579, file: !1713, line: 802, type: !2619, isLocal: false, isDefinition: false, scopeLine: 802, flags: DIFlagPrototyped, isOptimized: false)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!2608, !2588, !76}
!2621 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSEt", scope: !2579, file: !1713, line: 803, type: !2622, isLocal: false, isDefinition: false, scopeLine: 803, flags: DIFlagPrototyped, isOptimized: false)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{!2608, !2588, !81}
!2624 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSEi", scope: !2579, file: !1713, line: 804, type: !2625, isLocal: false, isDefinition: false, scopeLine: 804, flags: DIFlagPrototyped, isOptimized: false)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!2608, !2588, !38}
!2627 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSEj", scope: !2579, file: !1713, line: 805, type: !2628, isLocal: false, isDefinition: false, scopeLine: 805, flags: DIFlagPrototyped, isOptimized: false)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!2608, !2588, !28}
!2630 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSEl", scope: !2579, file: !1713, line: 806, type: !2631, isLocal: false, isDefinition: false, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: false)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!2608, !2588, !93}
!2633 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSEm", scope: !2579, file: !1713, line: 807, type: !2634, isLocal: false, isDefinition: false, scopeLine: 807, flags: DIFlagPrototyped, isOptimized: false)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{!2608, !2588, !98}
!2636 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSEx", scope: !2579, file: !1713, line: 808, type: !2637, isLocal: false, isDefinition: false, scopeLine: 808, flags: DIFlagPrototyped, isOptimized: false)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{!2608, !2588, !446}
!2639 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSEy", scope: !2579, file: !1713, line: 809, type: !2640, isLocal: false, isDefinition: false, scopeLine: 809, flags: DIFlagPrototyped, isOptimized: false)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{!2608, !2588, !452}
!2642 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSEDh", scope: !2579, file: !1713, line: 820, type: !2643, isLocal: false, isDefinition: false, scopeLine: 820, flags: DIFlagPrototyped, isOptimized: false)
!2643 = !DISubroutineType(types: !2644)
!2644 = !{!2608, !2588, !456}
!2645 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSEf", scope: !2579, file: !1713, line: 821, type: !2646, isLocal: false, isDefinition: false, scopeLine: 821, flags: DIFlagPrototyped, isOptimized: false)
!2646 = !DISubroutineType(types: !2647)
!2647 = !{!2608, !2588, !15}
!2648 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSEd", scope: !2579, file: !1713, line: 822, type: !2649, isLocal: false, isDefinition: false, scopeLine: 822, flags: DIFlagPrototyped, isOptimized: false)
!2649 = !DISubroutineType(types: !2650)
!2650 = !{!2608, !2588, !123}
!2651 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSERKS0_", scope: !2579, file: !1713, line: 839, type: !2652, isLocal: false, isDefinition: false, scopeLine: 839, flags: DIFlagPrototyped, isOptimized: false)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{!2608, !2588, !2589}
!2654 = !DISubprogram(name: "get", linkageName: "_ZNK10ap_bit_refILi32ELb1EE3getEv", scope: !2579, file: !1713, line: 959, type: !2601, isLocal: false, isDefinition: false, scopeLine: 959, flags: DIFlagPrototyped, isOptimized: false)
!2655 = !DISubprogram(name: "get", linkageName: "_ZN10ap_bit_refILi32ELb1EE3getEv", scope: !2579, file: !1713, line: 961, type: !2656, isLocal: false, isDefinition: false, scopeLine: 961, flags: DIFlagPrototyped, isOptimized: false)
!2656 = !DISubroutineType(types: !2657)
!2657 = !{!40, !2588}
!2658 = !DISubprogram(name: "operator~", linkageName: "_ZNK10ap_bit_refILi32ELb1EEcoEv", scope: !2579, file: !1713, line: 968, type: !2601, isLocal: false, isDefinition: false, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: false)
!2659 = !DISubprogram(name: "length", linkageName: "_ZNK10ap_bit_refILi32ELb1EE6lengthEv", scope: !2579, file: !1713, line: 973, type: !2660, isLocal: false, isDefinition: false, scopeLine: 973, flags: DIFlagPrototyped, isOptimized: false)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!38, !2603}
!2662 = !DISubprogram(name: "to_string", linkageName: "_ZNK10ap_bit_refILi32ELb1EE9to_stringEv", scope: !2579, file: !1713, line: 979, type: !2663, isLocal: false, isDefinition: false, scopeLine: 979, flags: DIFlagPrototyped, isOptimized: false)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{!1380, !2603}
!2665 = !DISubprogram(name: "operator[]", linkageName: "_ZNK11ap_int_baseILi32ELb1EEixEi", scope: !2131, file: !20, line: 1188, type: !2326, isLocal: false, isDefinition: false, scopeLine: 1188, flags: DIFlagPrototyped, isOptimized: false)
!2666 = !DISubprogram(name: "bit", linkageName: "_ZN11ap_int_baseILi32ELb1EE3bitEi", scope: !2131, file: !20, line: 1201, type: !2577, isLocal: false, isDefinition: false, scopeLine: 1201, flags: DIFlagPrototyped, isOptimized: false)
!2667 = !DISubprogram(name: "bit", linkageName: "_ZNK11ap_int_baseILi32ELb1EE3bitEi", scope: !2131, file: !20, line: 1216, type: !2326, isLocal: false, isDefinition: false, scopeLine: 1216, flags: DIFlagPrototyped, isOptimized: false)
!2668 = !DISubprogram(name: "countLeadingZeros", linkageName: "_ZNK11ap_int_baseILi32ELb1EE17countLeadingZerosEv", scope: !2131, file: !20, line: 1239, type: !2148, isLocal: false, isDefinition: false, scopeLine: 1239, flags: DIFlagPrototyped, isOptimized: false)
!2669 = !DISubprogram(name: "and_reduce", linkageName: "_ZNK11ap_int_baseILi32ELb1EE10and_reduceEv", scope: !2131, file: !20, line: 1459, type: !2271, isLocal: false, isDefinition: false, scopeLine: 1459, flags: DIFlagPrototyped, isOptimized: false)
!2670 = !DISubprogram(name: "nand_reduce", linkageName: "_ZNK11ap_int_baseILi32ELb1EE11nand_reduceEv", scope: !2131, file: !20, line: 1460, type: !2271, isLocal: false, isDefinition: false, scopeLine: 1460, flags: DIFlagPrototyped, isOptimized: false)
!2671 = !DISubprogram(name: "or_reduce", linkageName: "_ZNK11ap_int_baseILi32ELb1EE9or_reduceEv", scope: !2131, file: !20, line: 1461, type: !2271, isLocal: false, isDefinition: false, scopeLine: 1461, flags: DIFlagPrototyped, isOptimized: false)
!2672 = !DISubprogram(name: "nor_reduce", linkageName: "_ZNK11ap_int_baseILi32ELb1EE10nor_reduceEv", scope: !2131, file: !20, line: 1462, type: !2271, isLocal: false, isDefinition: false, scopeLine: 1462, flags: DIFlagPrototyped, isOptimized: false)
!2673 = !DISubprogram(name: "xor_reduce", linkageName: "_ZNK11ap_int_baseILi32ELb1EE10xor_reduceEv", scope: !2131, file: !20, line: 1463, type: !2271, isLocal: false, isDefinition: false, scopeLine: 1463, flags: DIFlagPrototyped, isOptimized: false)
!2674 = !DISubprogram(name: "xnor_reduce", linkageName: "_ZNK11ap_int_baseILi32ELb1EE11xnor_reduceEv", scope: !2131, file: !20, line: 1464, type: !2271, isLocal: false, isDefinition: false, scopeLine: 1464, flags: DIFlagPrototyped, isOptimized: false)
!2675 = !DISubprogram(name: "to_string", linkageName: "_ZNK11ap_int_baseILi32ELb1EE9to_stringEab", scope: !2131, file: !20, line: 1479, type: !2676, isLocal: false, isDefinition: false, scopeLine: 1479, flags: DIFlagPrototyped, isOptimized: false)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!1380, !2150, !66, !40}
!2678 = !{!2679, !2685}
!2679 = !DIGlobalVariableExpression(var: !2680, expr: !DIExpression())
!2680 = distinct !DIGlobalVariable(name: "W_real", linkageName: "_ZL6W_real", scope: !16, file: !14, line: 14, type: !2681, isLocal: true, isDefinition: true)
!2681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2682, size: 16384, elements: !2683)
!2682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!2683 = !{!2684}
!2684 = !DISubrange(count: 512)
!2685 = !DIGlobalVariableExpression(var: !2686, expr: !DIExpression())
!2686 = distinct !DIGlobalVariable(name: "W_imag", linkageName: "_ZL6W_imag", scope: !16, file: !14, line: 77, type: !2681, isLocal: true, isDefinition: true)
!2687 = !DILocation(line: 9, column: 9, scope: !6)
!2688 = !DILocation(line: 10, column: 9, scope: !6)
!2689 = !DILocation(line: 11, column: 9, scope: !6)
