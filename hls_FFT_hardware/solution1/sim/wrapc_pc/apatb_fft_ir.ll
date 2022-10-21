; ModuleID = 'C:/Users/ShaneWu/OneDrive/Desktop/Documents/NTU/HLS/labB/hls_FFT_hardware/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_fft_ir(float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1024" %X_R, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1024" %X_I, float* noalias nocapture nonnull "fpga.decayed.dim.hint"="1024" %OUT_R, float* noalias nocapture nonnull "fpga.decayed.dim.hint"="1024" %OUT_I) local_unnamed_addr #1 {
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
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_04, i32 0, i32 1, i32 0, i1 false) ], !dbg !3576
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_15, i32 0, i32 1, i32 0, i1 false) ], !dbg !3576
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_26, i32 0, i32 1, i32 0, i1 false) ], !dbg !3576
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_37, i32 0, i32 1, i32 0, i1 false) ], !dbg !3576
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_08, i32 0, i32 1, i32 0, i1 false) ], !dbg !3577
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_19, i32 0, i32 1, i32 0, i1 false) ], !dbg !3577
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_210, i32 0, i32 1, i32 0, i1 false) ], !dbg !3577
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_311, i32 0, i32 1, i32 0, i1 false) ], !dbg !3577
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_012, i32 0, i32 1, i32 0, i1 false) ], !dbg !3578
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_113, i32 0, i32 1, i32 0, i1 false) ], !dbg !3578
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_214, i32 0, i32 1, i32 0, i1 false) ], !dbg !3578
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_315, i32 0, i32 1, i32 0, i1 false) ], !dbg !3578
  call void @apatb_fft_hw([256 x float]* %X_R_copy_0, [256 x float]* %X_R_copy_1, [256 x float]* %X_R_copy_2, [256 x float]* %X_R_copy_3, [256 x float]* %X_I_copy_0, [256 x float]* %X_I_copy_1, [256 x float]* %X_I_copy_2, [256 x float]* %X_I_copy_3, [256 x float]* %OUT_R_copy_0, [256 x float]* %OUT_R_copy_1, [256 x float]* %OUT_R_copy_2, [256 x float]* %OUT_R_copy_3, [256 x float]* %OUT_I_copy_0, [256 x float]* %OUT_I_copy_1, [256 x float]* %OUT_I_copy_2, [256 x float]* %OUT_I_copy_3)
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
define internal void @onebyonecpy_hls.p0a1024f32.6.7([256 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0, [256 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_1, [256 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_2, [256 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_3, [1024 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
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
  call void @onebyonecpy_hls.p0a1024f32.6.7([256 x float]* %_0, [256 x float]* %_1, [256 x float]* %_2, [256 x float]* %_3, [1024 x float]* %0)
  call void @onebyonecpy_hls.p0a1024f32.6.7([256 x float]* %_01, [256 x float]* %_12, [256 x float]* %_23, [256 x float]* %_34, [1024 x float]* %1)
  call void @onebyonecpy_hls.p0a1024f32.6.7([256 x float]* %_05, [256 x float]* %_16, [256 x float]* %_27, [256 x float]* %_38, [1024 x float]* %2)
  call void @onebyonecpy_hls.p0a1024f32.6.7([256 x float]* %_09, [256 x float]* %_110, [256 x float]* %_211, [256 x float]* %_312, [1024 x float]* %3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a1024f32.12.13([1024 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3) #2 {
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
  call void @onebyonecpy_hls.p0a1024f32.12.13([1024 x float]* %0, [256 x float]* %_0, [256 x float]* %_1, [256 x float]* %_2, [256 x float]* %_3)
  call void @onebyonecpy_hls.p0a1024f32.12.13([1024 x float]* %1, [256 x float]* %_01, [256 x float]* %_12, [256 x float]* %_23, [256 x float]* %_34)
  call void @onebyonecpy_hls.p0a1024f32.12.13([1024 x float]* %2, [256 x float]* %_05, [256 x float]* %_16, [256 x float]* %_27, [256 x float]* %_38)
  call void @onebyonecpy_hls.p0a1024f32.12.13([1024 x float]* %3, [256 x float]* %_09, [256 x float]* %_110, [256 x float]* %_211, [256 x float]* %_312)
  ret void
}

declare void @apatb_fft_hw([256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*)

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_back([1024 x float]* noalias "orig.arg.no"="0", [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, [1024 x float]* noalias "orig.arg.no"="2", [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_12, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_23, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_34, [1024 x float]* noalias "orig.arg.no"="4", [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_05, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_16, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_27, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_38, [1024 x float]* noalias "orig.arg.no"="6", [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_09, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_110, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_211, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_312) #4 {
entry:
  call void @onebyonecpy_hls.p0a1024f32.12.13([1024 x float]* %2, [256 x float]* %_05, [256 x float]* %_16, [256 x float]* %_27, [256 x float]* %_38)
  call void @onebyonecpy_hls.p0a1024f32.12.13([1024 x float]* %3, [256 x float]* %_09, [256 x float]* %_110, [256 x float]* %_211, [256 x float]* %_312)
  ret void
}

define void @fft_hw_stub_wrapper([256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*) #5 {
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
  call void @fft_hw_stub(float* %20, float* %21, float* %22, float* %23)
  call void @copy_in([1024 x float]* %16, [256 x float]* %0, [256 x float]* %1, [256 x float]* %2, [256 x float]* %3, [1024 x float]* %17, [256 x float]* %4, [256 x float]* %5, [256 x float]* %6, [256 x float]* %7, [1024 x float]* %18, [256 x float]* %8, [256 x float]* %9, [256 x float]* %10, [256 x float]* %11, [1024 x float]* %19, [256 x float]* %12, [256 x float]* %13, [256 x float]* %14, [256 x float]* %15)
  ret void
}

declare void @fft_hw_stub(float*, float*, float*, float*)

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
!5 = !DILocation(line: 86, column: 9, scope: !6)
!6 = distinct !DISubprogram(name: "fft", linkageName: "_Z3fftPfS_S_S_", scope: !7, file: !7, line: 43, type: !8, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !4)
!7 = !DIFile(filename: "../FFT/FFT/HLS/2_Skeleton_Restructured/fft.cpp", directory: "C:\5CUsers\5CShaneWu\5COneDrive\5CDesktop\5CDocuments\5CNTU\5CHLS\5ClabB")
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !10, !10, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "DTYPE", file: !12, line: 4, baseType: !13)
!12 = !DIFile(filename: "../FFT/FFT/HLS/2_Skeleton_Restructured/fft.h", directory: "C:\5CUsers\5CShaneWu\5COneDrive\5CDesktop\5CDocuments\5CNTU\5CHLS\5ClabB")
!13 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!14 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !15, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !16, retainedTypes: !24, globals: !3567)
!15 = !DIFile(filename: "C:/Users/ShaneWu/OneDrive/Desktop/Documents/NTU/HLS/labB/hls_FFT_hardware/solution1/.autopilot/db\5Cfft.pp.0.cpp", directory: "C:\5CUsers\5CShaneWu\5COneDrive\5CDesktop\5CDocuments\5CNTU\5CHLS\5ClabB")
!16 = !{!17}
!17 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, scope: !18, file: !7, line: 19, size: 32, elements: !22, identifier: "_ZTSN9LOG2_CEILILi1024EEUt_E")
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LOG2_CEIL<1024>", file: !7, line: 18, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !19, identifier: "_ZTS9LOG2_CEILILi1024EE")
!19 = !{!20}
!20 = !DITemplateValueParameter(name: "N_VAL", type: !21, value: i32 1024)
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !{!23}
!23 = !DIEnumerator(name: "val", value: 10)
!24 = !{!25, !2136, !2137, !27, !526, !2684}
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !27, file: !26, line: 174, baseType: !2133)
!26 = !DIFile(filename: "E:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\5Cap_int_base.h", directory: "C:\5CUsers\5CShaneWu\5COneDrive\5CDesktop\5CDocuments\5CNTU\5CHLS\5ClabB")
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<32, false>", file: !26, line: 154, size: 32, flags: DIFlagTypePassByValue, elements: !28, templateParams: !2019, identifier: "_ZTS11ap_int_baseILi32ELb0EE")
!28 = !{!29, !46, !48, !50, !55, !59, !62, !67, !72, !77, !82, !87, !90, !94, !99, !104, !111, !117, !122, !125, !129, !133, !136, !141, !145, !150, !151, !155, !158, !161, !164, !167, !170, !173, !176, !179, !182, !185, !188, !191, !194, !197, !200, !203, !206, !209, !212, !215, !216, !219, !222, !225, !228, !231, !234, !237, !240, !244, !245, !246, !247, !248, !251, !252, !255, !258, !259, !262, !263, !264, !265, !266, !267, !268, !271, !272, !273, !367, !368, !371, !1899, !1900, !1901, !2020, !2023, !2026, !2029, !2030, !2031, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130}
!29 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !27, baseType: !30)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<32, false>", file: !31, line: 563, size: 32, flags: DIFlagTypePassByValue, elements: !32, templateParams: !42, identifier: "_ZTS8ssdm_intILi32ELb0EE")
!31 = !DIFile(filename: "E:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\5Cap_common.h", directory: "C:\5CUsers\5CShaneWu\5COneDrive\5CDesktop\5CDocuments\5CNTU\5CHLS\5ClabB")
!32 = !{!33, !35, !39}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !30, file: !31, line: 565, baseType: !34, size: 32)
!34 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!35 = !DISubprogram(name: "ssdm_int", scope: !30, file: !31, line: 566, type: !36, isLocal: false, isDefinition: false, scopeLine: 566, flags: DIFlagPrototyped, isOptimized: false)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !38}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!39 = !DISubprogram(name: "ssdm_int", scope: !30, file: !31, line: 567, type: !40, isLocal: false, isDefinition: false, scopeLine: 567, flags: DIFlagPrototyped, isOptimized: false)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !38, !34}
!42 = !{!43, !44}
!43 = !DITemplateValueParameter(name: "_AP_N", type: !21, value: i32 32)
!44 = !DITemplateValueParameter(name: "_AP_S", type: !45, value: i8 0)
!45 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !27, file: !26, line: 176, baseType: !47, flags: DIFlagStaticMember, extraData: i32 32)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !27, file: !26, line: 177, baseType: !49, flags: DIFlagStaticMember, extraData: i1 false)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!50 = !DISubprogram(name: "countLeadingOnes", linkageName: "_ZNK11ap_int_baseILi32ELb0EE16countLeadingOnesEv", scope: !27, file: !26, line: 156, type: !51, isLocal: false, isDefinition: false, scopeLine: 156, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!51 = !DISubroutineType(types: !52)
!52 = !{!21, !53}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!55 = !DISubprogram(name: "ap_int_base", scope: !27, file: !26, line: 221, type: !56, isLocal: false, isDefinition: false, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: false)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !58}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!59 = !DISubprogram(name: "ap_int_base", scope: !27, file: !26, line: 254, type: !60, isLocal: false, isDefinition: false, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: false)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !58, !49}
!62 = !DISubprogram(name: "ap_int_base", scope: !27, file: !26, line: 255, type: !63, isLocal: false, isDefinition: false, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: false)
!63 = !DISubroutineType(types: !64)
!64 = !{null, !58, !65}
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!66 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!67 = !DISubprogram(name: "ap_int_base", scope: !27, file: !26, line: 256, type: !68, isLocal: false, isDefinition: false, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: false)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !58, !70}
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!71 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!72 = !DISubprogram(name: "ap_int_base", scope: !27, file: !26, line: 257, type: !73, isLocal: false, isDefinition: false, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: false)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !58, !75}
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!76 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!77 = !DISubprogram(name: "ap_int_base", scope: !27, file: !26, line: 258, type: !78, isLocal: false, isDefinition: false, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: false)
!78 = !DISubroutineType(types: !79)
!79 = !{null, !58, !80}
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!81 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!82 = !DISubprogram(name: "ap_int_base", scope: !27, file: !26, line: 259, type: !83, isLocal: false, isDefinition: false, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: false)
!83 = !DISubroutineType(types: !84)
!84 = !{null, !58, !85}
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!86 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!87 = !DISubprogram(name: "ap_int_base", scope: !27, file: !26, line: 260, type: !88, isLocal: false, isDefinition: false, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: false)
!88 = !DISubroutineType(types: !89)
!89 = !{null, !58, !47}
!90 = !DISubprogram(name: "ap_int_base", scope: !27, file: !26, line: 261, type: !91, isLocal: false, isDefinition: false, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: false)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !58, !93}
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!94 = !DISubprogram(name: "ap_int_base", scope: !27, file: !26, line: 262, type: !95, isLocal: false, isDefinition: false, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: false)
!95 = !DISubroutineType(types: !96)
!96 = !{null, !58, !97}
!97 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!98 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!99 = !DISubprogram(name: "ap_int_base", scope: !27, file: !26, line: 263, type: !100, isLocal: false, isDefinition: false, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: false)
!100 = !DISubroutineType(types: !101)
!101 = !{null, !58, !102}
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!103 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!104 = !DISubprogram(name: "ap_int_base", scope: !27, file: !26, line: 264, type: !105, isLocal: false, isDefinition: false, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: false)
!105 = !DISubroutineType(types: !106)
!106 = !{null, !58, !107}
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_slong", file: !109, line: 233, baseType: !110)
!109 = !DIFile(filename: "E:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\5Cap_decl.h", directory: "C:\5CUsers\5CShaneWu\5COneDrive\5CDesktop\5CDocuments\5CNTU\5CHLS\5ClabB")
!110 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!111 = !DISubprogram(name: "ap_int_base", scope: !27, file: !26, line: 265, type: !112, isLocal: false, isDefinition: false, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: false)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !58, !114}
!114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_ulong", file: !109, line: 234, baseType: !116)
!116 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!117 = !DISubprogram(name: "ap_int_base", scope: !27, file: !26, line: 270, type: !118, isLocal: false, isDefinition: false, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: false)
!118 = !DISubroutineType(types: !119)
!119 = !{null, !58, !120}
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "half", file: !31, line: 657, baseType: !121)
!121 = !DIBasicType(name: "__fp16", size: 16, encoding: DW_ATE_float)
!122 = !DISubprogram(name: "ap_int_base", scope: !27, file: !26, line: 276, type: !123, isLocal: false, isDefinition: false, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: false)
!123 = !DISubroutineType(types: !124)
!124 = !{null, !58, !13}
!125 = !DISubprogram(name: "ap_int_base", scope: !27, file: !26, line: 335, type: !126, isLocal: false, isDefinition: false, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: false)
!126 = !DISubroutineType(types: !127)
!127 = !{null, !58, !128}
!128 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!129 = !DISubprogram(name: "ap_int_base", scope: !27, file: !26, line: 431, type: !130, isLocal: false, isDefinition: false, scopeLine: 431, flags: DIFlagPrototyped, isOptimized: false)
!130 = !DISubroutineType(types: !131)
!131 = !{null, !58, !132}
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!133 = !DISubprogram(name: "ap_int_base", scope: !27, file: !26, line: 437, type: !134, isLocal: false, isDefinition: false, scopeLine: 437, flags: DIFlagPrototyped, isOptimized: false)
!134 = !DISubroutineType(types: !135)
!135 = !{null, !58, !132, !71}
!136 = !DISubprogram(name: "read", linkageName: "_ZNV11ap_int_baseILi32ELb0EE4readEv", scope: !27, file: !26, line: 459, type: !137, isLocal: false, isDefinition: false, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: false)
!137 = !DISubroutineType(types: !138)
!138 = !{!27, !139}
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!140 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !27)
!141 = !DISubprogram(name: "write", linkageName: "_ZNV11ap_int_baseILi32ELb0EE5writeERKS0_", scope: !27, file: !26, line: 466, type: !142, isLocal: false, isDefinition: false, scopeLine: 466, flags: DIFlagPrototyped, isOptimized: false)
!142 = !DISubroutineType(types: !143)
!143 = !{null, !139, !144}
!144 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !54, size: 64)
!145 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi32ELb0EEaSERVKS0_", scope: !27, file: !26, line: 478, type: !146, isLocal: false, isDefinition: false, scopeLine: 478, flags: DIFlagPrototyped, isOptimized: false)
!146 = !DISubroutineType(types: !147)
!147 = !{null, !139, !148}
!148 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!150 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi32ELb0EEaSERKS0_", scope: !27, file: !26, line: 488, type: !142, isLocal: false, isDefinition: false, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: false)
!151 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSERVKS0_", scope: !27, file: !26, line: 505, type: !152, isLocal: false, isDefinition: false, scopeLine: 505, flags: DIFlagPrototyped, isOptimized: false)
!152 = !DISubroutineType(types: !153)
!153 = !{!154, !58, !148}
!154 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !27, size: 64)
!155 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSERKS0_", scope: !27, file: !26, line: 511, type: !156, isLocal: false, isDefinition: false, scopeLine: 511, flags: DIFlagPrototyped, isOptimized: false)
!156 = !DISubroutineType(types: !157)
!157 = !{!154, !58, !144}
!158 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSEb", scope: !27, file: !26, line: 525, type: !159, isLocal: false, isDefinition: false, scopeLine: 525, flags: DIFlagPrototyped, isOptimized: false)
!159 = !DISubroutineType(types: !160)
!160 = !{!154, !58, !45}
!161 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSEc", scope: !27, file: !26, line: 526, type: !162, isLocal: false, isDefinition: false, scopeLine: 526, flags: DIFlagPrototyped, isOptimized: false)
!162 = !DISubroutineType(types: !163)
!163 = !{!154, !58, !66}
!164 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSEa", scope: !27, file: !26, line: 527, type: !165, isLocal: false, isDefinition: false, scopeLine: 527, flags: DIFlagPrototyped, isOptimized: false)
!165 = !DISubroutineType(types: !166)
!166 = !{!154, !58, !71}
!167 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSEh", scope: !27, file: !26, line: 528, type: !168, isLocal: false, isDefinition: false, scopeLine: 528, flags: DIFlagPrototyped, isOptimized: false)
!168 = !DISubroutineType(types: !169)
!169 = !{!154, !58, !76}
!170 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSEs", scope: !27, file: !26, line: 529, type: !171, isLocal: false, isDefinition: false, scopeLine: 529, flags: DIFlagPrototyped, isOptimized: false)
!171 = !DISubroutineType(types: !172)
!172 = !{!154, !58, !81}
!173 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSEt", scope: !27, file: !26, line: 530, type: !174, isLocal: false, isDefinition: false, scopeLine: 530, flags: DIFlagPrototyped, isOptimized: false)
!174 = !DISubroutineType(types: !175)
!175 = !{!154, !58, !86}
!176 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSEi", scope: !27, file: !26, line: 531, type: !177, isLocal: false, isDefinition: false, scopeLine: 531, flags: DIFlagPrototyped, isOptimized: false)
!177 = !DISubroutineType(types: !178)
!178 = !{!154, !58, !21}
!179 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSEj", scope: !27, file: !26, line: 532, type: !180, isLocal: false, isDefinition: false, scopeLine: 532, flags: DIFlagPrototyped, isOptimized: false)
!180 = !DISubroutineType(types: !181)
!181 = !{!154, !58, !34}
!182 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSEl", scope: !27, file: !26, line: 533, type: !183, isLocal: false, isDefinition: false, scopeLine: 533, flags: DIFlagPrototyped, isOptimized: false)
!183 = !DISubroutineType(types: !184)
!184 = !{!154, !58, !98}
!185 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSEm", scope: !27, file: !26, line: 534, type: !186, isLocal: false, isDefinition: false, scopeLine: 534, flags: DIFlagPrototyped, isOptimized: false)
!186 = !DISubroutineType(types: !187)
!187 = !{!154, !58, !103}
!188 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSEx", scope: !27, file: !26, line: 535, type: !189, isLocal: false, isDefinition: false, scopeLine: 535, flags: DIFlagPrototyped, isOptimized: false)
!189 = !DISubroutineType(types: !190)
!190 = !{!154, !58, !108}
!191 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb0EEaSEy", scope: !27, file: !26, line: 536, type: !192, isLocal: false, isDefinition: false, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: false)
!192 = !DISubroutineType(types: !193)
!193 = !{!154, !58, !115}
!194 = !DISubprogram(name: "operator unsigned long long", linkageName: "_ZNK11ap_int_baseILi32ELb0EEcvyEv", scope: !27, file: !26, line: 587, type: !195, isLocal: false, isDefinition: false, scopeLine: 587, flags: DIFlagPrototyped, isOptimized: false)
!195 = !DISubroutineType(types: !196)
!196 = !{!25, !53}
!197 = !DISubprogram(name: "to_bool", linkageName: "_ZNK11ap_int_baseILi32ELb0EE7to_boolEv", scope: !27, file: !26, line: 592, type: !198, isLocal: false, isDefinition: false, scopeLine: 592, flags: DIFlagPrototyped, isOptimized: false)
!198 = !DISubroutineType(types: !199)
!199 = !{!45, !53}
!200 = !DISubprogram(name: "to_char", linkageName: "_ZNK11ap_int_baseILi32ELb0EE7to_charEv", scope: !27, file: !26, line: 593, type: !201, isLocal: false, isDefinition: false, scopeLine: 593, flags: DIFlagPrototyped, isOptimized: false)
!201 = !DISubroutineType(types: !202)
!202 = !{!66, !53}
!203 = !DISubprogram(name: "to_schar", linkageName: "_ZNK11ap_int_baseILi32ELb0EE8to_scharEv", scope: !27, file: !26, line: 594, type: !204, isLocal: false, isDefinition: false, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: false)
!204 = !DISubroutineType(types: !205)
!205 = !{!71, !53}
!206 = !DISubprogram(name: "to_uchar", linkageName: "_ZNK11ap_int_baseILi32ELb0EE8to_ucharEv", scope: !27, file: !26, line: 595, type: !207, isLocal: false, isDefinition: false, scopeLine: 595, flags: DIFlagPrototyped, isOptimized: false)
!207 = !DISubroutineType(types: !208)
!208 = !{!76, !53}
!209 = !DISubprogram(name: "to_short", linkageName: "_ZNK11ap_int_baseILi32ELb0EE8to_shortEv", scope: !27, file: !26, line: 596, type: !210, isLocal: false, isDefinition: false, scopeLine: 596, flags: DIFlagPrototyped, isOptimized: false)
!210 = !DISubroutineType(types: !211)
!211 = !{!81, !53}
!212 = !DISubprogram(name: "to_ushort", linkageName: "_ZNK11ap_int_baseILi32ELb0EE9to_ushortEv", scope: !27, file: !26, line: 597, type: !213, isLocal: false, isDefinition: false, scopeLine: 597, flags: DIFlagPrototyped, isOptimized: false)
!213 = !DISubroutineType(types: !214)
!214 = !{!86, !53}
!215 = !DISubprogram(name: "to_int", linkageName: "_ZNK11ap_int_baseILi32ELb0EE6to_intEv", scope: !27, file: !26, line: 598, type: !51, isLocal: false, isDefinition: false, scopeLine: 598, flags: DIFlagPrototyped, isOptimized: false)
!216 = !DISubprogram(name: "to_uint", linkageName: "_ZNK11ap_int_baseILi32ELb0EE7to_uintEv", scope: !27, file: !26, line: 599, type: !217, isLocal: false, isDefinition: false, scopeLine: 599, flags: DIFlagPrototyped, isOptimized: false)
!217 = !DISubroutineType(types: !218)
!218 = !{!34, !53}
!219 = !DISubprogram(name: "to_long", linkageName: "_ZNK11ap_int_baseILi32ELb0EE7to_longEv", scope: !27, file: !26, line: 600, type: !220, isLocal: false, isDefinition: false, scopeLine: 600, flags: DIFlagPrototyped, isOptimized: false)
!220 = !DISubroutineType(types: !221)
!221 = !{!98, !53}
!222 = !DISubprogram(name: "to_ulong", linkageName: "_ZNK11ap_int_baseILi32ELb0EE8to_ulongEv", scope: !27, file: !26, line: 601, type: !223, isLocal: false, isDefinition: false, scopeLine: 601, flags: DIFlagPrototyped, isOptimized: false)
!223 = !DISubroutineType(types: !224)
!224 = !{!103, !53}
!225 = !DISubprogram(name: "to_int64", linkageName: "_ZNK11ap_int_baseILi32ELb0EE8to_int64Ev", scope: !27, file: !26, line: 602, type: !226, isLocal: false, isDefinition: false, scopeLine: 602, flags: DIFlagPrototyped, isOptimized: false)
!226 = !DISubroutineType(types: !227)
!227 = !{!108, !53}
!228 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK11ap_int_baseILi32ELb0EE9to_uint64Ev", scope: !27, file: !26, line: 603, type: !229, isLocal: false, isDefinition: false, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: false)
!229 = !DISubroutineType(types: !230)
!230 = !{!115, !53}
!231 = !DISubprogram(name: "to_half", linkageName: "_ZNK11ap_int_baseILi32ELb0EE7to_halfEv", scope: !27, file: !26, line: 604, type: !232, isLocal: false, isDefinition: false, scopeLine: 604, flags: DIFlagPrototyped, isOptimized: false)
!232 = !DISubroutineType(types: !233)
!233 = !{!120, !53}
!234 = !DISubprogram(name: "to_float", linkageName: "_ZNK11ap_int_baseILi32ELb0EE8to_floatEv", scope: !27, file: !26, line: 605, type: !235, isLocal: false, isDefinition: false, scopeLine: 605, flags: DIFlagPrototyped, isOptimized: false)
!235 = !DISubroutineType(types: !236)
!236 = !{!13, !53}
!237 = !DISubprogram(name: "to_double", linkageName: "_ZNK11ap_int_baseILi32ELb0EE9to_doubleEv", scope: !27, file: !26, line: 606, type: !238, isLocal: false, isDefinition: false, scopeLine: 606, flags: DIFlagPrototyped, isOptimized: false)
!238 = !DISubroutineType(types: !239)
!239 = !{!128, !53}
!240 = !DISubprogram(name: "length", linkageName: "_ZNVK11ap_int_baseILi32ELb0EE6lengthEv", scope: !27, file: !26, line: 630, type: !241, isLocal: false, isDefinition: false, scopeLine: 630, flags: DIFlagPrototyped, isOptimized: false)
!241 = !DISubroutineType(types: !242)
!242 = !{!21, !243}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!244 = !DISubprogram(name: "length", linkageName: "_ZNK11ap_int_baseILi32ELb0EE6lengthEv", scope: !27, file: !26, line: 631, type: !51, isLocal: false, isDefinition: false, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: false)
!245 = !DISubprogram(name: "iszero", linkageName: "_ZNK11ap_int_baseILi32ELb0EE6iszeroEv", scope: !27, file: !26, line: 634, type: !198, isLocal: false, isDefinition: false, scopeLine: 634, flags: DIFlagPrototyped, isOptimized: false)
!246 = !DISubprogram(name: "is_zero", linkageName: "_ZNK11ap_int_baseILi32ELb0EE7is_zeroEv", scope: !27, file: !26, line: 637, type: !198, isLocal: false, isDefinition: false, scopeLine: 637, flags: DIFlagPrototyped, isOptimized: false)
!247 = !DISubprogram(name: "sign", linkageName: "_ZNK11ap_int_baseILi32ELb0EE4signEv", scope: !27, file: !26, line: 640, type: !198, isLocal: false, isDefinition: false, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: false)
!248 = !DISubprogram(name: "clear", linkageName: "_ZN11ap_int_baseILi32ELb0EE5clearEi", scope: !27, file: !26, line: 649, type: !249, isLocal: false, isDefinition: false, scopeLine: 649, flags: DIFlagPrototyped, isOptimized: false)
!249 = !DISubroutineType(types: !250)
!250 = !{null, !58, !21}
!251 = !DISubprogram(name: "invert", linkageName: "_ZN11ap_int_baseILi32ELb0EE6invertEi", scope: !27, file: !26, line: 655, type: !249, isLocal: false, isDefinition: false, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: false)
!252 = !DISubprogram(name: "test", linkageName: "_ZNK11ap_int_baseILi32ELb0EE4testEi", scope: !27, file: !26, line: 664, type: !253, isLocal: false, isDefinition: false, scopeLine: 664, flags: DIFlagPrototyped, isOptimized: false)
!253 = !DISubroutineType(types: !254)
!254 = !{!45, !53, !21}
!255 = !DISubprogram(name: "get", linkageName: "_ZN11ap_int_baseILi32ELb0EE3getEv", scope: !27, file: !26, line: 670, type: !256, isLocal: false, isDefinition: false, scopeLine: 670, flags: DIFlagPrototyped, isOptimized: false)
!256 = !DISubroutineType(types: !257)
!257 = !{!154, !58}
!258 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi32ELb0EE3setEi", scope: !27, file: !26, line: 673, type: !249, isLocal: false, isDefinition: false, scopeLine: 673, flags: DIFlagPrototyped, isOptimized: false)
!259 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi32ELb0EE3setEib", scope: !27, file: !26, line: 679, type: !260, isLocal: false, isDefinition: false, scopeLine: 679, flags: DIFlagPrototyped, isOptimized: false)
!260 = !DISubroutineType(types: !261)
!261 = !{null, !58, !21, !45}
!262 = !DISubprogram(name: "lrotate", linkageName: "_ZN11ap_int_baseILi32ELb0EE7lrotateEi", scope: !27, file: !26, line: 686, type: !177, isLocal: false, isDefinition: false, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: false)
!263 = !DISubprogram(name: "rrotate", linkageName: "_ZN11ap_int_baseILi32ELb0EE7rrotateEi", scope: !27, file: !26, line: 701, type: !177, isLocal: false, isDefinition: false, scopeLine: 701, flags: DIFlagPrototyped, isOptimized: false)
!264 = !DISubprogram(name: "reverse", linkageName: "_ZN11ap_int_baseILi32ELb0EE7reverseEv", scope: !27, file: !26, line: 716, type: !256, isLocal: false, isDefinition: false, scopeLine: 716, flags: DIFlagPrototyped, isOptimized: false)
!265 = !DISubprogram(name: "set_bit", linkageName: "_ZN11ap_int_baseILi32ELb0EE7set_bitEib", scope: !27, file: !26, line: 722, type: !260, isLocal: false, isDefinition: false, scopeLine: 722, flags: DIFlagPrototyped, isOptimized: false)
!266 = !DISubprogram(name: "get_bit", linkageName: "_ZNK11ap_int_baseILi32ELb0EE7get_bitEi", scope: !27, file: !26, line: 727, type: !253, isLocal: false, isDefinition: false, scopeLine: 727, flags: DIFlagPrototyped, isOptimized: false)
!267 = !DISubprogram(name: "b_not", linkageName: "_ZN11ap_int_baseILi32ELb0EE5b_notEv", scope: !27, file: !26, line: 732, type: !56, isLocal: false, isDefinition: false, scopeLine: 732, flags: DIFlagPrototyped, isOptimized: false)
!268 = !DISubprogram(name: "checkOverflowCsim", linkageName: "_ZNK11ap_int_baseILi32ELb0EE17checkOverflowCsimEibb", scope: !27, file: !26, line: 806, type: !269, isLocal: false, isDefinition: false, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: false)
!269 = !DISubroutineType(types: !270)
!270 = !{!45, !53, !21, !45, !45}
!271 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi32ELb0EEppEv", scope: !27, file: !26, line: 911, type: !256, isLocal: false, isDefinition: false, scopeLine: 911, flags: DIFlagPrototyped, isOptimized: false)
!272 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi32ELb0EEmmEv", scope: !27, file: !26, line: 915, type: !256, isLocal: false, isDefinition: false, scopeLine: 915, flags: DIFlagPrototyped, isOptimized: false)
!273 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi32ELb0EEppEi", scope: !27, file: !26, line: 923, type: !274, isLocal: false, isDefinition: false, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: false)
!274 = !DISubroutineType(types: !275)
!275 = !{!276, !58, !21}
!276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "arg1", scope: !278, file: !26, line: 213, baseType: !282)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<32, false>", scope: !27, file: !26, line: 180, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !279, identifier: "_ZTSN11ap_int_baseILi32ELb0EE5RTypeILi32ELb0EEE")
!279 = !{!280, !281}
!280 = !DITemplateValueParameter(name: "_AP_W2", type: !21, value: i32 32)
!281 = !DITemplateValueParameter(name: "_AP_S2", type: !45, value: i8 0)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !283, file: !26, line: 151, baseType: !284)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_int_factory<32, false>", file: !26, line: 151, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !279, identifier: "_ZTS15_ap_int_factoryILi32ELb0EE")
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_uint<32>", file: !285, line: 227, size: 32, flags: DIFlagTypePassByValue, elements: !286, templateParams: !365, identifier: "_ZTS7ap_uintILi32EE")
!285 = !DIFile(filename: "E:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\5Cap_int.h", directory: "C:\5CUsers\5CShaneWu\5COneDrive\5CDesktop\5CDocuments\5CNTU\5CHLS\5ClabB")
!286 = !{!287, !288, !292, !295, !298, !301, !304, !307, !310, !313, !316, !319, !322, !325, !328, !331, !334, !337, !340, !343, !346, !352, !358, !362}
!287 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !284, baseType: !27)
!288 = !DISubprogram(name: "ap_uint", scope: !284, file: !285, line: 230, type: !289, isLocal: false, isDefinition: false, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: false)
!289 = !DISubroutineType(types: !290)
!290 = !{null, !291}
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!292 = !DISubprogram(name: "ap_uint", scope: !284, file: !285, line: 258, type: !293, isLocal: false, isDefinition: false, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: false)
!293 = !DISubroutineType(types: !294)
!294 = !{null, !291, !34, !45}
!295 = !DISubprogram(name: "ap_uint", scope: !284, file: !285, line: 327, type: !296, isLocal: false, isDefinition: false, scopeLine: 327, flags: DIFlagPrototyped, isOptimized: false)
!296 = !DISubroutineType(types: !297)
!297 = !{null, !291, !45}
!298 = !DISubprogram(name: "ap_uint", scope: !284, file: !285, line: 328, type: !299, isLocal: false, isDefinition: false, scopeLine: 328, flags: DIFlagPrototyped, isOptimized: false)
!299 = !DISubroutineType(types: !300)
!300 = !{null, !291, !66}
!301 = !DISubprogram(name: "ap_uint", scope: !284, file: !285, line: 329, type: !302, isLocal: false, isDefinition: false, scopeLine: 329, flags: DIFlagPrototyped, isOptimized: false)
!302 = !DISubroutineType(types: !303)
!303 = !{null, !291, !71}
!304 = !DISubprogram(name: "ap_uint", scope: !284, file: !285, line: 330, type: !305, isLocal: false, isDefinition: false, scopeLine: 330, flags: DIFlagPrototyped, isOptimized: false)
!305 = !DISubroutineType(types: !306)
!306 = !{null, !291, !76}
!307 = !DISubprogram(name: "ap_uint", scope: !284, file: !285, line: 331, type: !308, isLocal: false, isDefinition: false, scopeLine: 331, flags: DIFlagPrototyped, isOptimized: false)
!308 = !DISubroutineType(types: !309)
!309 = !{null, !291, !81}
!310 = !DISubprogram(name: "ap_uint", scope: !284, file: !285, line: 332, type: !311, isLocal: false, isDefinition: false, scopeLine: 332, flags: DIFlagPrototyped, isOptimized: false)
!311 = !DISubroutineType(types: !312)
!312 = !{null, !291, !86}
!313 = !DISubprogram(name: "ap_uint", scope: !284, file: !285, line: 333, type: !314, isLocal: false, isDefinition: false, scopeLine: 333, flags: DIFlagPrototyped, isOptimized: false)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !291, !21}
!316 = !DISubprogram(name: "ap_uint", scope: !284, file: !285, line: 334, type: !317, isLocal: false, isDefinition: false, scopeLine: 334, flags: DIFlagPrototyped, isOptimized: false)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !291, !34}
!319 = !DISubprogram(name: "ap_uint", scope: !284, file: !285, line: 335, type: !320, isLocal: false, isDefinition: false, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: false)
!320 = !DISubroutineType(types: !321)
!321 = !{null, !291, !98}
!322 = !DISubprogram(name: "ap_uint", scope: !284, file: !285, line: 336, type: !323, isLocal: false, isDefinition: false, scopeLine: 336, flags: DIFlagPrototyped, isOptimized: false)
!323 = !DISubroutineType(types: !324)
!324 = !{null, !291, !103}
!325 = !DISubprogram(name: "ap_uint", scope: !284, file: !285, line: 337, type: !326, isLocal: false, isDefinition: false, scopeLine: 337, flags: DIFlagPrototyped, isOptimized: false)
!326 = !DISubroutineType(types: !327)
!327 = !{null, !291, !108}
!328 = !DISubprogram(name: "ap_uint", scope: !284, file: !285, line: 338, type: !329, isLocal: false, isDefinition: false, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: false)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !291, !115}
!331 = !DISubprogram(name: "ap_uint", scope: !284, file: !285, line: 340, type: !332, isLocal: false, isDefinition: false, scopeLine: 340, flags: DIFlagPrototyped, isOptimized: false)
!332 = !DISubroutineType(types: !333)
!333 = !{null, !291, !128}
!334 = !DISubprogram(name: "ap_uint", scope: !284, file: !285, line: 341, type: !335, isLocal: false, isDefinition: false, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: false)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !291, !13}
!337 = !DISubprogram(name: "ap_uint", scope: !284, file: !285, line: 342, type: !338, isLocal: false, isDefinition: false, scopeLine: 342, flags: DIFlagPrototyped, isOptimized: false)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !291, !120}
!340 = !DISubprogram(name: "ap_uint", scope: !284, file: !285, line: 345, type: !341, isLocal: false, isDefinition: false, scopeLine: 345, flags: DIFlagPrototyped, isOptimized: false)
!341 = !DISubroutineType(types: !342)
!342 = !{null, !291, !132}
!343 = !DISubprogram(name: "ap_uint", scope: !284, file: !285, line: 347, type: !344, isLocal: false, isDefinition: false, scopeLine: 347, flags: DIFlagPrototyped, isOptimized: false)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !291, !132, !71}
!346 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi32EEaSERKS0_", scope: !284, file: !285, line: 353, type: !347, isLocal: false, isDefinition: false, scopeLine: 353, flags: DIFlagPrototyped, isOptimized: false)
!347 = !DISubroutineType(types: !348)
!348 = !{!349, !291, !350}
!349 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !284, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !284)
!352 = !DISubprogram(name: "operator=", linkageName: "_ZN7ap_uintILi32EEaSERVKS0_", scope: !284, file: !285, line: 363, type: !353, isLocal: false, isDefinition: false, scopeLine: 363, flags: DIFlagPrototyped, isOptimized: false)
!353 = !DISubroutineType(types: !354)
!354 = !{!349, !291, !355}
!355 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !284)
!358 = !DISubprogram(name: "operator=", linkageName: "_ZNV7ap_uintILi32EEaSERKS0_", scope: !284, file: !285, line: 369, type: !359, isLocal: false, isDefinition: false, scopeLine: 369, flags: DIFlagPrototyped, isOptimized: false)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !361, !350}
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!362 = !DISubprogram(name: "operator=", linkageName: "_ZNV7ap_uintILi32EEaSERVKS0_", scope: !284, file: !285, line: 373, type: !363, isLocal: false, isDefinition: false, scopeLine: 373, flags: DIFlagPrototyped, isOptimized: false)
!363 = !DISubroutineType(types: !364)
!364 = !{null, !361, !355}
!365 = !{!366}
!366 = !DITemplateValueParameter(name: "_AP_W", type: !21, value: i32 32)
!367 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi32ELb0EEmmEi", scope: !27, file: !26, line: 928, type: !274, isLocal: false, isDefinition: false, scopeLine: 928, flags: DIFlagPrototyped, isOptimized: false)
!368 = !DISubprogram(name: "operator+", linkageName: "_ZNK11ap_int_baseILi32ELb0EEpsEv", scope: !27, file: !26, line: 937, type: !369, isLocal: false, isDefinition: false, scopeLine: 937, flags: DIFlagPrototyped, isOptimized: false)
!369 = !DISubroutineType(types: !370)
!370 = !{!277, !53}
!371 = !DISubprogram(name: "operator-", linkageName: "_ZNK11ap_int_baseILi32ELb0EEngEv", scope: !27, file: !26, line: 940, type: !372, isLocal: false, isDefinition: false, scopeLine: 940, flags: DIFlagPrototyped, isOptimized: false)
!372 = !DISubroutineType(types: !373)
!373 = !{!374, !53}
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "minus", scope: !375, file: !26, line: 209, baseType: !378)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<1, false>", scope: !27, file: !26, line: 180, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !376, identifier: "_ZTSN11ap_int_baseILi32ELb0EE5RTypeILi1ELb0EEE")
!376 = !{!377, !281}
!377 = !DITemplateValueParameter(name: "_AP_W2", type: !21, value: i32 1)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !379, file: !26, line: 149, baseType: !383)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_int_factory<33, true>", file: !26, line: 149, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !380, identifier: "_ZTS15_ap_int_factoryILi33ELb1EE")
!380 = !{!381, !382}
!381 = !DITemplateValueParameter(name: "_AP_W2", type: !21, value: i32 33)
!382 = !DITemplateValueParameter(name: "_AP_S2", type: !45, value: i8 1)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int<33>", file: !285, line: 64, size: 64, flags: DIFlagTypePassByValue, elements: !384, templateParams: !1898, identifier: "_ZTS6ap_intILi33EE")
!384 = !{!385, !1820, !1824, !1828, !1831, !1834, !1837, !1840, !1843, !1846, !1849, !1852, !1855, !1858, !1861, !1864, !1867, !1870, !1873, !1876, !1879, !1885, !1891, !1895}
!385 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !383, baseType: !386)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<33, true>", file: !26, line: 154, size: 64, flags: DIFlagTypePassByValue, elements: !387, templateParams: !1805, identifier: "_ZTS11ap_int_baseILi33ELb1EE")
!387 = !{!388, !403, !404, !405, !410, !414, !417, !420, !423, !426, !429, !432, !435, !438, !441, !444, !447, !450, !453, !456, !459, !462, !465, !470, !474, !479, !480, !484, !487, !490, !493, !496, !499, !502, !505, !508, !511, !514, !517, !520, !523, !531, !534, !537, !540, !543, !546, !549, !550, !553, !556, !559, !562, !565, !568, !571, !574, !578, !579, !580, !581, !582, !585, !586, !589, !592, !593, !596, !597, !598, !599, !600, !601, !602, !605, !606, !607, !613, !614, !617, !1698, !1699, !1700, !1704, !1707, !1710, !1713, !1714, !1715, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817}
!388 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !386, baseType: !389)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<33, true>", file: !31, line: 555, size: 64, flags: DIFlagTypePassByValue, elements: !390, templateParams: !400, identifier: "_ZTS8ssdm_intILi33ELb1EE")
!390 = !{!391, !393, !397}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !389, file: !31, line: 557, baseType: !392, size: 33, align: 64)
!392 = !DIBasicType(name: "int33", size: 33, encoding: DW_ATE_signed)
!393 = !DISubprogram(name: "ssdm_int", scope: !389, file: !31, line: 558, type: !394, isLocal: false, isDefinition: false, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: false)
!394 = !DISubroutineType(types: !395)
!395 = !{null, !396}
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!397 = !DISubprogram(name: "ssdm_int", scope: !389, file: !31, line: 559, type: !398, isLocal: false, isDefinition: false, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false)
!398 = !DISubroutineType(types: !399)
!399 = !{null, !396, !392}
!400 = !{!401, !402}
!401 = !DITemplateValueParameter(name: "_AP_N", type: !21, value: i32 33)
!402 = !DITemplateValueParameter(name: "_AP_S", type: !45, value: i8 1)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !386, file: !26, line: 176, baseType: !47, flags: DIFlagStaticMember, extraData: i32 33)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !386, file: !26, line: 177, baseType: !49, flags: DIFlagStaticMember, extraData: i1 true)
!405 = !DISubprogram(name: "countLeadingOnes", linkageName: "_ZNK11ap_int_baseILi33ELb1EE16countLeadingOnesEv", scope: !386, file: !26, line: 156, type: !406, isLocal: false, isDefinition: false, scopeLine: 156, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!406 = !DISubroutineType(types: !407)
!407 = !{!21, !408}
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !386)
!410 = !DISubprogram(name: "ap_int_base", scope: !386, file: !26, line: 221, type: !411, isLocal: false, isDefinition: false, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: false)
!411 = !DISubroutineType(types: !412)
!412 = !{null, !413}
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!414 = !DISubprogram(name: "ap_int_base", scope: !386, file: !26, line: 254, type: !415, isLocal: false, isDefinition: false, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: false)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !413, !49}
!417 = !DISubprogram(name: "ap_int_base", scope: !386, file: !26, line: 255, type: !418, isLocal: false, isDefinition: false, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: false)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !413, !65}
!420 = !DISubprogram(name: "ap_int_base", scope: !386, file: !26, line: 256, type: !421, isLocal: false, isDefinition: false, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: false)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !413, !70}
!423 = !DISubprogram(name: "ap_int_base", scope: !386, file: !26, line: 257, type: !424, isLocal: false, isDefinition: false, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: false)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !413, !75}
!426 = !DISubprogram(name: "ap_int_base", scope: !386, file: !26, line: 258, type: !427, isLocal: false, isDefinition: false, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: false)
!427 = !DISubroutineType(types: !428)
!428 = !{null, !413, !80}
!429 = !DISubprogram(name: "ap_int_base", scope: !386, file: !26, line: 259, type: !430, isLocal: false, isDefinition: false, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: false)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !413, !85}
!432 = !DISubprogram(name: "ap_int_base", scope: !386, file: !26, line: 260, type: !433, isLocal: false, isDefinition: false, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: false)
!433 = !DISubroutineType(types: !434)
!434 = !{null, !413, !47}
!435 = !DISubprogram(name: "ap_int_base", scope: !386, file: !26, line: 261, type: !436, isLocal: false, isDefinition: false, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: false)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !413, !93}
!438 = !DISubprogram(name: "ap_int_base", scope: !386, file: !26, line: 262, type: !439, isLocal: false, isDefinition: false, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: false)
!439 = !DISubroutineType(types: !440)
!440 = !{null, !413, !97}
!441 = !DISubprogram(name: "ap_int_base", scope: !386, file: !26, line: 263, type: !442, isLocal: false, isDefinition: false, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: false)
!442 = !DISubroutineType(types: !443)
!443 = !{null, !413, !102}
!444 = !DISubprogram(name: "ap_int_base", scope: !386, file: !26, line: 264, type: !445, isLocal: false, isDefinition: false, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: false)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !413, !107}
!447 = !DISubprogram(name: "ap_int_base", scope: !386, file: !26, line: 265, type: !448, isLocal: false, isDefinition: false, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: false)
!448 = !DISubroutineType(types: !449)
!449 = !{null, !413, !114}
!450 = !DISubprogram(name: "ap_int_base", scope: !386, file: !26, line: 270, type: !451, isLocal: false, isDefinition: false, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: false)
!451 = !DISubroutineType(types: !452)
!452 = !{null, !413, !120}
!453 = !DISubprogram(name: "ap_int_base", scope: !386, file: !26, line: 276, type: !454, isLocal: false, isDefinition: false, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: false)
!454 = !DISubroutineType(types: !455)
!455 = !{null, !413, !13}
!456 = !DISubprogram(name: "ap_int_base", scope: !386, file: !26, line: 335, type: !457, isLocal: false, isDefinition: false, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: false)
!457 = !DISubroutineType(types: !458)
!458 = !{null, !413, !128}
!459 = !DISubprogram(name: "ap_int_base", scope: !386, file: !26, line: 431, type: !460, isLocal: false, isDefinition: false, scopeLine: 431, flags: DIFlagPrototyped, isOptimized: false)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !413, !132}
!462 = !DISubprogram(name: "ap_int_base", scope: !386, file: !26, line: 437, type: !463, isLocal: false, isDefinition: false, scopeLine: 437, flags: DIFlagPrototyped, isOptimized: false)
!463 = !DISubroutineType(types: !464)
!464 = !{null, !413, !132, !71}
!465 = !DISubprogram(name: "read", linkageName: "_ZNV11ap_int_baseILi33ELb1EE4readEv", scope: !386, file: !26, line: 459, type: !466, isLocal: false, isDefinition: false, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: false)
!466 = !DISubroutineType(types: !467)
!467 = !{!386, !468}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!469 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !386)
!470 = !DISubprogram(name: "write", linkageName: "_ZNV11ap_int_baseILi33ELb1EE5writeERKS0_", scope: !386, file: !26, line: 466, type: !471, isLocal: false, isDefinition: false, scopeLine: 466, flags: DIFlagPrototyped, isOptimized: false)
!471 = !DISubroutineType(types: !472)
!472 = !{null, !468, !473}
!473 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !409, size: 64)
!474 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi33ELb1EEaSERVKS0_", scope: !386, file: !26, line: 478, type: !475, isLocal: false, isDefinition: false, scopeLine: 478, flags: DIFlagPrototyped, isOptimized: false)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !468, !477}
!477 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !469)
!479 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi33ELb1EEaSERKS0_", scope: !386, file: !26, line: 488, type: !471, isLocal: false, isDefinition: false, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: false)
!480 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSERVKS0_", scope: !386, file: !26, line: 505, type: !481, isLocal: false, isDefinition: false, scopeLine: 505, flags: DIFlagPrototyped, isOptimized: false)
!481 = !DISubroutineType(types: !482)
!482 = !{!483, !413, !477}
!483 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !386, size: 64)
!484 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSERKS0_", scope: !386, file: !26, line: 511, type: !485, isLocal: false, isDefinition: false, scopeLine: 511, flags: DIFlagPrototyped, isOptimized: false)
!485 = !DISubroutineType(types: !486)
!486 = !{!483, !413, !473}
!487 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSEb", scope: !386, file: !26, line: 525, type: !488, isLocal: false, isDefinition: false, scopeLine: 525, flags: DIFlagPrototyped, isOptimized: false)
!488 = !DISubroutineType(types: !489)
!489 = !{!483, !413, !45}
!490 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSEc", scope: !386, file: !26, line: 526, type: !491, isLocal: false, isDefinition: false, scopeLine: 526, flags: DIFlagPrototyped, isOptimized: false)
!491 = !DISubroutineType(types: !492)
!492 = !{!483, !413, !66}
!493 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSEa", scope: !386, file: !26, line: 527, type: !494, isLocal: false, isDefinition: false, scopeLine: 527, flags: DIFlagPrototyped, isOptimized: false)
!494 = !DISubroutineType(types: !495)
!495 = !{!483, !413, !71}
!496 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSEh", scope: !386, file: !26, line: 528, type: !497, isLocal: false, isDefinition: false, scopeLine: 528, flags: DIFlagPrototyped, isOptimized: false)
!497 = !DISubroutineType(types: !498)
!498 = !{!483, !413, !76}
!499 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSEs", scope: !386, file: !26, line: 529, type: !500, isLocal: false, isDefinition: false, scopeLine: 529, flags: DIFlagPrototyped, isOptimized: false)
!500 = !DISubroutineType(types: !501)
!501 = !{!483, !413, !81}
!502 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSEt", scope: !386, file: !26, line: 530, type: !503, isLocal: false, isDefinition: false, scopeLine: 530, flags: DIFlagPrototyped, isOptimized: false)
!503 = !DISubroutineType(types: !504)
!504 = !{!483, !413, !86}
!505 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSEi", scope: !386, file: !26, line: 531, type: !506, isLocal: false, isDefinition: false, scopeLine: 531, flags: DIFlagPrototyped, isOptimized: false)
!506 = !DISubroutineType(types: !507)
!507 = !{!483, !413, !21}
!508 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSEj", scope: !386, file: !26, line: 532, type: !509, isLocal: false, isDefinition: false, scopeLine: 532, flags: DIFlagPrototyped, isOptimized: false)
!509 = !DISubroutineType(types: !510)
!510 = !{!483, !413, !34}
!511 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSEl", scope: !386, file: !26, line: 533, type: !512, isLocal: false, isDefinition: false, scopeLine: 533, flags: DIFlagPrototyped, isOptimized: false)
!512 = !DISubroutineType(types: !513)
!513 = !{!483, !413, !98}
!514 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSEm", scope: !386, file: !26, line: 534, type: !515, isLocal: false, isDefinition: false, scopeLine: 534, flags: DIFlagPrototyped, isOptimized: false)
!515 = !DISubroutineType(types: !516)
!516 = !{!483, !413, !103}
!517 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSEx", scope: !386, file: !26, line: 535, type: !518, isLocal: false, isDefinition: false, scopeLine: 535, flags: DIFlagPrototyped, isOptimized: false)
!518 = !DISubroutineType(types: !519)
!519 = !{!483, !413, !108}
!520 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi33ELb1EEaSEy", scope: !386, file: !26, line: 536, type: !521, isLocal: false, isDefinition: false, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: false)
!521 = !DISubroutineType(types: !522)
!522 = !{!483, !413, !115}
!523 = !DISubprogram(name: "operator long long", linkageName: "_ZNK11ap_int_baseILi33ELb1EEcvxEv", scope: !386, file: !26, line: 587, type: !524, isLocal: false, isDefinition: false, scopeLine: 587, flags: DIFlagPrototyped, isOptimized: false)
!524 = !DISubroutineType(types: !525)
!525 = !{!526, !408}
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !386, file: !26, line: 174, baseType: !527)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "Type", scope: !528, file: !26, line: 92, baseType: !108)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "retval<8, true>", file: !26, line: 91, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !529, identifier: "_ZTS6retvalILi8ELb1EE")
!529 = !{!530, !402}
!530 = !DITemplateValueParameter(name: "_AP_N", type: !21, value: i32 8)
!531 = !DISubprogram(name: "to_bool", linkageName: "_ZNK11ap_int_baseILi33ELb1EE7to_boolEv", scope: !386, file: !26, line: 592, type: !532, isLocal: false, isDefinition: false, scopeLine: 592, flags: DIFlagPrototyped, isOptimized: false)
!532 = !DISubroutineType(types: !533)
!533 = !{!45, !408}
!534 = !DISubprogram(name: "to_char", linkageName: "_ZNK11ap_int_baseILi33ELb1EE7to_charEv", scope: !386, file: !26, line: 593, type: !535, isLocal: false, isDefinition: false, scopeLine: 593, flags: DIFlagPrototyped, isOptimized: false)
!535 = !DISubroutineType(types: !536)
!536 = !{!66, !408}
!537 = !DISubprogram(name: "to_schar", linkageName: "_ZNK11ap_int_baseILi33ELb1EE8to_scharEv", scope: !386, file: !26, line: 594, type: !538, isLocal: false, isDefinition: false, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: false)
!538 = !DISubroutineType(types: !539)
!539 = !{!71, !408}
!540 = !DISubprogram(name: "to_uchar", linkageName: "_ZNK11ap_int_baseILi33ELb1EE8to_ucharEv", scope: !386, file: !26, line: 595, type: !541, isLocal: false, isDefinition: false, scopeLine: 595, flags: DIFlagPrototyped, isOptimized: false)
!541 = !DISubroutineType(types: !542)
!542 = !{!76, !408}
!543 = !DISubprogram(name: "to_short", linkageName: "_ZNK11ap_int_baseILi33ELb1EE8to_shortEv", scope: !386, file: !26, line: 596, type: !544, isLocal: false, isDefinition: false, scopeLine: 596, flags: DIFlagPrototyped, isOptimized: false)
!544 = !DISubroutineType(types: !545)
!545 = !{!81, !408}
!546 = !DISubprogram(name: "to_ushort", linkageName: "_ZNK11ap_int_baseILi33ELb1EE9to_ushortEv", scope: !386, file: !26, line: 597, type: !547, isLocal: false, isDefinition: false, scopeLine: 597, flags: DIFlagPrototyped, isOptimized: false)
!547 = !DISubroutineType(types: !548)
!548 = !{!86, !408}
!549 = !DISubprogram(name: "to_int", linkageName: "_ZNK11ap_int_baseILi33ELb1EE6to_intEv", scope: !386, file: !26, line: 598, type: !406, isLocal: false, isDefinition: false, scopeLine: 598, flags: DIFlagPrototyped, isOptimized: false)
!550 = !DISubprogram(name: "to_uint", linkageName: "_ZNK11ap_int_baseILi33ELb1EE7to_uintEv", scope: !386, file: !26, line: 599, type: !551, isLocal: false, isDefinition: false, scopeLine: 599, flags: DIFlagPrototyped, isOptimized: false)
!551 = !DISubroutineType(types: !552)
!552 = !{!34, !408}
!553 = !DISubprogram(name: "to_long", linkageName: "_ZNK11ap_int_baseILi33ELb1EE7to_longEv", scope: !386, file: !26, line: 600, type: !554, isLocal: false, isDefinition: false, scopeLine: 600, flags: DIFlagPrototyped, isOptimized: false)
!554 = !DISubroutineType(types: !555)
!555 = !{!98, !408}
!556 = !DISubprogram(name: "to_ulong", linkageName: "_ZNK11ap_int_baseILi33ELb1EE8to_ulongEv", scope: !386, file: !26, line: 601, type: !557, isLocal: false, isDefinition: false, scopeLine: 601, flags: DIFlagPrototyped, isOptimized: false)
!557 = !DISubroutineType(types: !558)
!558 = !{!103, !408}
!559 = !DISubprogram(name: "to_int64", linkageName: "_ZNK11ap_int_baseILi33ELb1EE8to_int64Ev", scope: !386, file: !26, line: 602, type: !560, isLocal: false, isDefinition: false, scopeLine: 602, flags: DIFlagPrototyped, isOptimized: false)
!560 = !DISubroutineType(types: !561)
!561 = !{!108, !408}
!562 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK11ap_int_baseILi33ELb1EE9to_uint64Ev", scope: !386, file: !26, line: 603, type: !563, isLocal: false, isDefinition: false, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: false)
!563 = !DISubroutineType(types: !564)
!564 = !{!115, !408}
!565 = !DISubprogram(name: "to_half", linkageName: "_ZNK11ap_int_baseILi33ELb1EE7to_halfEv", scope: !386, file: !26, line: 604, type: !566, isLocal: false, isDefinition: false, scopeLine: 604, flags: DIFlagPrototyped, isOptimized: false)
!566 = !DISubroutineType(types: !567)
!567 = !{!120, !408}
!568 = !DISubprogram(name: "to_float", linkageName: "_ZNK11ap_int_baseILi33ELb1EE8to_floatEv", scope: !386, file: !26, line: 605, type: !569, isLocal: false, isDefinition: false, scopeLine: 605, flags: DIFlagPrototyped, isOptimized: false)
!569 = !DISubroutineType(types: !570)
!570 = !{!13, !408}
!571 = !DISubprogram(name: "to_double", linkageName: "_ZNK11ap_int_baseILi33ELb1EE9to_doubleEv", scope: !386, file: !26, line: 606, type: !572, isLocal: false, isDefinition: false, scopeLine: 606, flags: DIFlagPrototyped, isOptimized: false)
!572 = !DISubroutineType(types: !573)
!573 = !{!128, !408}
!574 = !DISubprogram(name: "length", linkageName: "_ZNVK11ap_int_baseILi33ELb1EE6lengthEv", scope: !386, file: !26, line: 630, type: !575, isLocal: false, isDefinition: false, scopeLine: 630, flags: DIFlagPrototyped, isOptimized: false)
!575 = !DISubroutineType(types: !576)
!576 = !{!21, !577}
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!578 = !DISubprogram(name: "length", linkageName: "_ZNK11ap_int_baseILi33ELb1EE6lengthEv", scope: !386, file: !26, line: 631, type: !406, isLocal: false, isDefinition: false, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: false)
!579 = !DISubprogram(name: "iszero", linkageName: "_ZNK11ap_int_baseILi33ELb1EE6iszeroEv", scope: !386, file: !26, line: 634, type: !532, isLocal: false, isDefinition: false, scopeLine: 634, flags: DIFlagPrototyped, isOptimized: false)
!580 = !DISubprogram(name: "is_zero", linkageName: "_ZNK11ap_int_baseILi33ELb1EE7is_zeroEv", scope: !386, file: !26, line: 637, type: !532, isLocal: false, isDefinition: false, scopeLine: 637, flags: DIFlagPrototyped, isOptimized: false)
!581 = !DISubprogram(name: "sign", linkageName: "_ZNK11ap_int_baseILi33ELb1EE4signEv", scope: !386, file: !26, line: 640, type: !532, isLocal: false, isDefinition: false, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: false)
!582 = !DISubprogram(name: "clear", linkageName: "_ZN11ap_int_baseILi33ELb1EE5clearEi", scope: !386, file: !26, line: 649, type: !583, isLocal: false, isDefinition: false, scopeLine: 649, flags: DIFlagPrototyped, isOptimized: false)
!583 = !DISubroutineType(types: !584)
!584 = !{null, !413, !21}
!585 = !DISubprogram(name: "invert", linkageName: "_ZN11ap_int_baseILi33ELb1EE6invertEi", scope: !386, file: !26, line: 655, type: !583, isLocal: false, isDefinition: false, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: false)
!586 = !DISubprogram(name: "test", linkageName: "_ZNK11ap_int_baseILi33ELb1EE4testEi", scope: !386, file: !26, line: 664, type: !587, isLocal: false, isDefinition: false, scopeLine: 664, flags: DIFlagPrototyped, isOptimized: false)
!587 = !DISubroutineType(types: !588)
!588 = !{!45, !408, !21}
!589 = !DISubprogram(name: "get", linkageName: "_ZN11ap_int_baseILi33ELb1EE3getEv", scope: !386, file: !26, line: 670, type: !590, isLocal: false, isDefinition: false, scopeLine: 670, flags: DIFlagPrototyped, isOptimized: false)
!590 = !DISubroutineType(types: !591)
!591 = !{!483, !413}
!592 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi33ELb1EE3setEi", scope: !386, file: !26, line: 673, type: !583, isLocal: false, isDefinition: false, scopeLine: 673, flags: DIFlagPrototyped, isOptimized: false)
!593 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi33ELb1EE3setEib", scope: !386, file: !26, line: 679, type: !594, isLocal: false, isDefinition: false, scopeLine: 679, flags: DIFlagPrototyped, isOptimized: false)
!594 = !DISubroutineType(types: !595)
!595 = !{null, !413, !21, !45}
!596 = !DISubprogram(name: "lrotate", linkageName: "_ZN11ap_int_baseILi33ELb1EE7lrotateEi", scope: !386, file: !26, line: 686, type: !506, isLocal: false, isDefinition: false, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: false)
!597 = !DISubprogram(name: "rrotate", linkageName: "_ZN11ap_int_baseILi33ELb1EE7rrotateEi", scope: !386, file: !26, line: 701, type: !506, isLocal: false, isDefinition: false, scopeLine: 701, flags: DIFlagPrototyped, isOptimized: false)
!598 = !DISubprogram(name: "reverse", linkageName: "_ZN11ap_int_baseILi33ELb1EE7reverseEv", scope: !386, file: !26, line: 716, type: !590, isLocal: false, isDefinition: false, scopeLine: 716, flags: DIFlagPrototyped, isOptimized: false)
!599 = !DISubprogram(name: "set_bit", linkageName: "_ZN11ap_int_baseILi33ELb1EE7set_bitEib", scope: !386, file: !26, line: 722, type: !594, isLocal: false, isDefinition: false, scopeLine: 722, flags: DIFlagPrototyped, isOptimized: false)
!600 = !DISubprogram(name: "get_bit", linkageName: "_ZNK11ap_int_baseILi33ELb1EE7get_bitEi", scope: !386, file: !26, line: 727, type: !587, isLocal: false, isDefinition: false, scopeLine: 727, flags: DIFlagPrototyped, isOptimized: false)
!601 = !DISubprogram(name: "b_not", linkageName: "_ZN11ap_int_baseILi33ELb1EE5b_notEv", scope: !386, file: !26, line: 732, type: !411, isLocal: false, isDefinition: false, scopeLine: 732, flags: DIFlagPrototyped, isOptimized: false)
!602 = !DISubprogram(name: "checkOverflowCsim", linkageName: "_ZNK11ap_int_baseILi33ELb1EE17checkOverflowCsimEibb", scope: !386, file: !26, line: 806, type: !603, isLocal: false, isDefinition: false, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: false)
!603 = !DISubroutineType(types: !604)
!604 = !{!45, !408, !21, !45, !45}
!605 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi33ELb1EEppEv", scope: !386, file: !26, line: 911, type: !590, isLocal: false, isDefinition: false, scopeLine: 911, flags: DIFlagPrototyped, isOptimized: false)
!606 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi33ELb1EEmmEv", scope: !386, file: !26, line: 915, type: !590, isLocal: false, isDefinition: false, scopeLine: 915, flags: DIFlagPrototyped, isOptimized: false)
!607 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi33ELb1EEppEi", scope: !386, file: !26, line: 923, type: !608, isLocal: false, isDefinition: false, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: false)
!608 = !DISubroutineType(types: !609)
!609 = !{!610, !413, !21}
!610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !611)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "arg1", scope: !612, file: !26, line: 213, baseType: !378)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<33, true>", scope: !386, file: !26, line: 180, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !380, identifier: "_ZTSN11ap_int_baseILi33ELb1EE5RTypeILi33ELb1EEE")
!613 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi33ELb1EEmmEi", scope: !386, file: !26, line: 928, type: !608, isLocal: false, isDefinition: false, scopeLine: 928, flags: DIFlagPrototyped, isOptimized: false)
!614 = !DISubprogram(name: "operator+", linkageName: "_ZNK11ap_int_baseILi33ELb1EEpsEv", scope: !386, file: !26, line: 937, type: !615, isLocal: false, isDefinition: false, scopeLine: 937, flags: DIFlagPrototyped, isOptimized: false)
!615 = !DISubroutineType(types: !616)
!616 = !{!611, !408}
!617 = !DISubprogram(name: "operator-", linkageName: "_ZNK11ap_int_baseILi33ELb1EEngEv", scope: !386, file: !26, line: 940, type: !618, isLocal: false, isDefinition: false, scopeLine: 940, flags: DIFlagPrototyped, isOptimized: false)
!618 = !DISubroutineType(types: !619)
!619 = !{!620, !408}
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "minus", scope: !621, file: !26, line: 209, baseType: !622)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<1, false>", scope: !386, file: !26, line: 180, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !376, identifier: "_ZTSN11ap_int_baseILi33ELb1EE5RTypeILi1ELb0EEE")
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !623, file: !26, line: 149, baseType: !626)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_int_factory<34, true>", file: !26, line: 149, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !624, identifier: "_ZTS15_ap_int_factoryILi34ELb1EE")
!624 = !{!625, !382}
!625 = !DITemplateValueParameter(name: "_AP_W2", type: !21, value: i32 34)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int<34>", file: !627, line: 18, size: 64, flags: DIFlagTypePassByValue, elements: !628, templateParams: !1697, identifier: "_ZTS6ap_intILi34EE")
!627 = !DIFile(filename: "r:/ci/prod/2022.1/rdi_builds/continuous/2022_04_18_3526262/src/shared/hls/clib/include/header_files\5Cap_int.h", directory: "R:\5Cci\5Cprod\5C2022.1\5Crdi_builds\5Ccontinuous\5C2022_04_18_3526262\5Csrc\5Cshared")
!628 = !{!629, !1619, !1623, !1627, !1630, !1633, !1636, !1639, !1642, !1645, !1648, !1651, !1654, !1657, !1660, !1663, !1666, !1669, !1672, !1675, !1678, !1684, !1690, !1694}
!629 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !626, baseType: !630)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<34, true>", file: !631, line: 108, size: 64, flags: DIFlagTypePassByValue, elements: !632, templateParams: !1617, identifier: "_ZTS11ap_int_baseILi34ELb1EE")
!631 = !DIFile(filename: "r:/ci/prod/2022.1/rdi_builds/continuous/2022_04_18_3526262/src/shared/hls/clib/include/header_files\5Cap_int_base.h", directory: "R:\5Cci\5Cprod\5C2022.1\5Crdi_builds\5Ccontinuous\5C2022_04_18_3526262\5Csrc\5Cshared")
!632 = !{!633, !648, !649, !650, !655, !659, !662, !665, !668, !671, !674, !677, !680, !683, !686, !689, !695, !700, !704, !707, !710, !713, !716, !721, !725, !730, !731, !735, !738, !741, !744, !747, !750, !753, !756, !759, !762, !765, !768, !771, !774, !779, !782, !785, !788, !791, !794, !797, !798, !801, !804, !807, !810, !813, !816, !819, !822, !826, !827, !828, !829, !830, !833, !834, !837, !840, !841, !844, !845, !846, !847, !848, !849, !850, !853, !854, !855, !862, !863, !866, !1583, !1584, !1585, !1589, !1592, !1595, !1598, !1599, !1600, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614}
!633 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !630, baseType: !634)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<34, true>", file: !635, line: 509, size: 64, flags: DIFlagTypePassByValue, elements: !636, templateParams: !646, identifier: "_ZTS8ssdm_intILi34ELb1EE")
!635 = !DIFile(filename: "r:/ci/prod/2022.1/rdi_builds/continuous/2022_04_18_3526262/src/shared/hls/clib/include/header_files\5Cap_common.h", directory: "R:\5Cci\5Cprod\5C2022.1\5Crdi_builds\5Ccontinuous\5C2022_04_18_3526262\5Csrc\5Cshared")
!636 = !{!637, !639, !643}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !634, file: !635, line: 511, baseType: !638, size: 34, align: 64)
!638 = !DIBasicType(name: "int34", size: 34, encoding: DW_ATE_signed)
!639 = !DISubprogram(name: "ssdm_int", scope: !634, file: !635, line: 512, type: !640, isLocal: false, isDefinition: false, scopeLine: 512, flags: DIFlagPrototyped, isOptimized: false)
!640 = !DISubroutineType(types: !641)
!641 = !{null, !642}
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!643 = !DISubprogram(name: "ssdm_int", scope: !634, file: !635, line: 513, type: !644, isLocal: false, isDefinition: false, scopeLine: 513, flags: DIFlagPrototyped, isOptimized: false)
!644 = !DISubroutineType(types: !645)
!645 = !{null, !642, !638}
!646 = !{!647, !402}
!647 = !DITemplateValueParameter(name: "_AP_N", type: !21, value: i32 34)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !630, file: !631, line: 130, baseType: !47, flags: DIFlagStaticMember, extraData: i32 34)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !630, file: !631, line: 131, baseType: !49, flags: DIFlagStaticMember, extraData: i1 true)
!650 = !DISubprogram(name: "countLeadingOnes", linkageName: "_ZNK11ap_int_baseILi34ELb1EE16countLeadingOnesEv", scope: !630, file: !631, line: 110, type: !651, isLocal: false, isDefinition: false, scopeLine: 110, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!651 = !DISubroutineType(types: !652)
!652 = !{!21, !653}
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !630)
!655 = !DISubprogram(name: "ap_int_base", scope: !630, file: !631, line: 175, type: !656, isLocal: false, isDefinition: false, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false)
!656 = !DISubroutineType(types: !657)
!657 = !{null, !658}
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!659 = !DISubprogram(name: "ap_int_base", scope: !630, file: !631, line: 208, type: !660, isLocal: false, isDefinition: false, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: false)
!660 = !DISubroutineType(types: !661)
!661 = !{null, !658, !49}
!662 = !DISubprogram(name: "ap_int_base", scope: !630, file: !631, line: 209, type: !663, isLocal: false, isDefinition: false, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: false)
!663 = !DISubroutineType(types: !664)
!664 = !{null, !658, !65}
!665 = !DISubprogram(name: "ap_int_base", scope: !630, file: !631, line: 210, type: !666, isLocal: false, isDefinition: false, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: false)
!666 = !DISubroutineType(types: !667)
!667 = !{null, !658, !70}
!668 = !DISubprogram(name: "ap_int_base", scope: !630, file: !631, line: 211, type: !669, isLocal: false, isDefinition: false, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: false)
!669 = !DISubroutineType(types: !670)
!670 = !{null, !658, !75}
!671 = !DISubprogram(name: "ap_int_base", scope: !630, file: !631, line: 212, type: !672, isLocal: false, isDefinition: false, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: false)
!672 = !DISubroutineType(types: !673)
!673 = !{null, !658, !80}
!674 = !DISubprogram(name: "ap_int_base", scope: !630, file: !631, line: 213, type: !675, isLocal: false, isDefinition: false, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: false)
!675 = !DISubroutineType(types: !676)
!676 = !{null, !658, !85}
!677 = !DISubprogram(name: "ap_int_base", scope: !630, file: !631, line: 214, type: !678, isLocal: false, isDefinition: false, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: false)
!678 = !DISubroutineType(types: !679)
!679 = !{null, !658, !47}
!680 = !DISubprogram(name: "ap_int_base", scope: !630, file: !631, line: 215, type: !681, isLocal: false, isDefinition: false, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: false)
!681 = !DISubroutineType(types: !682)
!682 = !{null, !658, !93}
!683 = !DISubprogram(name: "ap_int_base", scope: !630, file: !631, line: 216, type: !684, isLocal: false, isDefinition: false, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: false)
!684 = !DISubroutineType(types: !685)
!685 = !{null, !658, !97}
!686 = !DISubprogram(name: "ap_int_base", scope: !630, file: !631, line: 217, type: !687, isLocal: false, isDefinition: false, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: false)
!687 = !DISubroutineType(types: !688)
!688 = !{null, !658, !102}
!689 = !DISubprogram(name: "ap_int_base", scope: !630, file: !631, line: 218, type: !690, isLocal: false, isDefinition: false, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: false)
!690 = !DISubroutineType(types: !691)
!691 = !{null, !658, !692}
!692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !693)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_slong", file: !694, line: 187, baseType: !110)
!694 = !DIFile(filename: "r:/ci/prod/2022.1/rdi_builds/continuous/2022_04_18_3526262/src/shared/hls/clib/include/header_files\5Cap_decl.h", directory: "R:\5Cci\5Cprod\5C2022.1\5Crdi_builds\5Ccontinuous\5C2022_04_18_3526262\5Csrc\5Cshared")
!695 = !DISubprogram(name: "ap_int_base", scope: !630, file: !631, line: 219, type: !696, isLocal: false, isDefinition: false, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: false)
!696 = !DISubroutineType(types: !697)
!697 = !{null, !658, !698}
!698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !699)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "ap_ulong", file: !694, line: 188, baseType: !116)
!700 = !DISubprogram(name: "ap_int_base", scope: !630, file: !631, line: 224, type: !701, isLocal: false, isDefinition: false, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: false)
!701 = !DISubroutineType(types: !702)
!702 = !{null, !658, !703}
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "half", file: !635, line: 611, baseType: !121)
!704 = !DISubprogram(name: "ap_int_base", scope: !630, file: !631, line: 230, type: !705, isLocal: false, isDefinition: false, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: false)
!705 = !DISubroutineType(types: !706)
!706 = !{null, !658, !13}
!707 = !DISubprogram(name: "ap_int_base", scope: !630, file: !631, line: 289, type: !708, isLocal: false, isDefinition: false, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: false)
!708 = !DISubroutineType(types: !709)
!709 = !{null, !658, !128}
!710 = !DISubprogram(name: "ap_int_base", scope: !630, file: !631, line: 385, type: !711, isLocal: false, isDefinition: false, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: false)
!711 = !DISubroutineType(types: !712)
!712 = !{null, !658, !132}
!713 = !DISubprogram(name: "ap_int_base", scope: !630, file: !631, line: 391, type: !714, isLocal: false, isDefinition: false, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: false)
!714 = !DISubroutineType(types: !715)
!715 = !{null, !658, !132, !71}
!716 = !DISubprogram(name: "read", linkageName: "_ZNV11ap_int_baseILi34ELb1EE4readEv", scope: !630, file: !631, line: 413, type: !717, isLocal: false, isDefinition: false, scopeLine: 413, flags: DIFlagPrototyped, isOptimized: false)
!717 = !DISubroutineType(types: !718)
!718 = !{!630, !719}
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!720 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !630)
!721 = !DISubprogram(name: "write", linkageName: "_ZNV11ap_int_baseILi34ELb1EE5writeERKS0_", scope: !630, file: !631, line: 420, type: !722, isLocal: false, isDefinition: false, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: false)
!722 = !DISubroutineType(types: !723)
!723 = !{null, !719, !724}
!724 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !654, size: 64)
!725 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi34ELb1EEaSERVKS0_", scope: !630, file: !631, line: 432, type: !726, isLocal: false, isDefinition: false, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: false)
!726 = !DISubroutineType(types: !727)
!727 = !{null, !719, !728}
!728 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !720)
!730 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi34ELb1EEaSERKS0_", scope: !630, file: !631, line: 442, type: !722, isLocal: false, isDefinition: false, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: false)
!731 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSERVKS0_", scope: !630, file: !631, line: 459, type: !732, isLocal: false, isDefinition: false, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: false)
!732 = !DISubroutineType(types: !733)
!733 = !{!734, !658, !728}
!734 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !630, size: 64)
!735 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSERKS0_", scope: !630, file: !631, line: 465, type: !736, isLocal: false, isDefinition: false, scopeLine: 465, flags: DIFlagPrototyped, isOptimized: false)
!736 = !DISubroutineType(types: !737)
!737 = !{!734, !658, !724}
!738 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSEb", scope: !630, file: !631, line: 479, type: !739, isLocal: false, isDefinition: false, scopeLine: 479, flags: DIFlagPrototyped, isOptimized: false)
!739 = !DISubroutineType(types: !740)
!740 = !{!734, !658, !45}
!741 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSEc", scope: !630, file: !631, line: 480, type: !742, isLocal: false, isDefinition: false, scopeLine: 480, flags: DIFlagPrototyped, isOptimized: false)
!742 = !DISubroutineType(types: !743)
!743 = !{!734, !658, !66}
!744 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSEa", scope: !630, file: !631, line: 481, type: !745, isLocal: false, isDefinition: false, scopeLine: 481, flags: DIFlagPrototyped, isOptimized: false)
!745 = !DISubroutineType(types: !746)
!746 = !{!734, !658, !71}
!747 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSEh", scope: !630, file: !631, line: 482, type: !748, isLocal: false, isDefinition: false, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: false)
!748 = !DISubroutineType(types: !749)
!749 = !{!734, !658, !76}
!750 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSEs", scope: !630, file: !631, line: 483, type: !751, isLocal: false, isDefinition: false, scopeLine: 483, flags: DIFlagPrototyped, isOptimized: false)
!751 = !DISubroutineType(types: !752)
!752 = !{!734, !658, !81}
!753 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSEt", scope: !630, file: !631, line: 484, type: !754, isLocal: false, isDefinition: false, scopeLine: 484, flags: DIFlagPrototyped, isOptimized: false)
!754 = !DISubroutineType(types: !755)
!755 = !{!734, !658, !86}
!756 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSEi", scope: !630, file: !631, line: 485, type: !757, isLocal: false, isDefinition: false, scopeLine: 485, flags: DIFlagPrototyped, isOptimized: false)
!757 = !DISubroutineType(types: !758)
!758 = !{!734, !658, !21}
!759 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSEj", scope: !630, file: !631, line: 486, type: !760, isLocal: false, isDefinition: false, scopeLine: 486, flags: DIFlagPrototyped, isOptimized: false)
!760 = !DISubroutineType(types: !761)
!761 = !{!734, !658, !34}
!762 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSEl", scope: !630, file: !631, line: 487, type: !763, isLocal: false, isDefinition: false, scopeLine: 487, flags: DIFlagPrototyped, isOptimized: false)
!763 = !DISubroutineType(types: !764)
!764 = !{!734, !658, !98}
!765 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSEm", scope: !630, file: !631, line: 488, type: !766, isLocal: false, isDefinition: false, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: false)
!766 = !DISubroutineType(types: !767)
!767 = !{!734, !658, !103}
!768 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSEx", scope: !630, file: !631, line: 489, type: !769, isLocal: false, isDefinition: false, scopeLine: 489, flags: DIFlagPrototyped, isOptimized: false)
!769 = !DISubroutineType(types: !770)
!770 = !{!734, !658, !693}
!771 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi34ELb1EEaSEy", scope: !630, file: !631, line: 490, type: !772, isLocal: false, isDefinition: false, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: false)
!772 = !DISubroutineType(types: !773)
!773 = !{!734, !658, !699}
!774 = !DISubprogram(name: "operator long long", linkageName: "_ZNK11ap_int_baseILi34ELb1EEcvxEv", scope: !630, file: !631, line: 541, type: !775, isLocal: false, isDefinition: false, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: false)
!775 = !DISubroutineType(types: !776)
!776 = !{!777, !653}
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !630, file: !631, line: 128, baseType: !778)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "Type", scope: !528, file: !631, line: 46, baseType: !693)
!779 = !DISubprogram(name: "to_bool", linkageName: "_ZNK11ap_int_baseILi34ELb1EE7to_boolEv", scope: !630, file: !631, line: 546, type: !780, isLocal: false, isDefinition: false, scopeLine: 546, flags: DIFlagPrototyped, isOptimized: false)
!780 = !DISubroutineType(types: !781)
!781 = !{!45, !653}
!782 = !DISubprogram(name: "to_char", linkageName: "_ZNK11ap_int_baseILi34ELb1EE7to_charEv", scope: !630, file: !631, line: 547, type: !783, isLocal: false, isDefinition: false, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: false)
!783 = !DISubroutineType(types: !784)
!784 = !{!66, !653}
!785 = !DISubprogram(name: "to_schar", linkageName: "_ZNK11ap_int_baseILi34ELb1EE8to_scharEv", scope: !630, file: !631, line: 548, type: !786, isLocal: false, isDefinition: false, scopeLine: 548, flags: DIFlagPrototyped, isOptimized: false)
!786 = !DISubroutineType(types: !787)
!787 = !{!71, !653}
!788 = !DISubprogram(name: "to_uchar", linkageName: "_ZNK11ap_int_baseILi34ELb1EE8to_ucharEv", scope: !630, file: !631, line: 549, type: !789, isLocal: false, isDefinition: false, scopeLine: 549, flags: DIFlagPrototyped, isOptimized: false)
!789 = !DISubroutineType(types: !790)
!790 = !{!76, !653}
!791 = !DISubprogram(name: "to_short", linkageName: "_ZNK11ap_int_baseILi34ELb1EE8to_shortEv", scope: !630, file: !631, line: 550, type: !792, isLocal: false, isDefinition: false, scopeLine: 550, flags: DIFlagPrototyped, isOptimized: false)
!792 = !DISubroutineType(types: !793)
!793 = !{!81, !653}
!794 = !DISubprogram(name: "to_ushort", linkageName: "_ZNK11ap_int_baseILi34ELb1EE9to_ushortEv", scope: !630, file: !631, line: 551, type: !795, isLocal: false, isDefinition: false, scopeLine: 551, flags: DIFlagPrototyped, isOptimized: false)
!795 = !DISubroutineType(types: !796)
!796 = !{!86, !653}
!797 = !DISubprogram(name: "to_int", linkageName: "_ZNK11ap_int_baseILi34ELb1EE6to_intEv", scope: !630, file: !631, line: 552, type: !651, isLocal: false, isDefinition: false, scopeLine: 552, flags: DIFlagPrototyped, isOptimized: false)
!798 = !DISubprogram(name: "to_uint", linkageName: "_ZNK11ap_int_baseILi34ELb1EE7to_uintEv", scope: !630, file: !631, line: 553, type: !799, isLocal: false, isDefinition: false, scopeLine: 553, flags: DIFlagPrototyped, isOptimized: false)
!799 = !DISubroutineType(types: !800)
!800 = !{!34, !653}
!801 = !DISubprogram(name: "to_long", linkageName: "_ZNK11ap_int_baseILi34ELb1EE7to_longEv", scope: !630, file: !631, line: 554, type: !802, isLocal: false, isDefinition: false, scopeLine: 554, flags: DIFlagPrototyped, isOptimized: false)
!802 = !DISubroutineType(types: !803)
!803 = !{!98, !653}
!804 = !DISubprogram(name: "to_ulong", linkageName: "_ZNK11ap_int_baseILi34ELb1EE8to_ulongEv", scope: !630, file: !631, line: 555, type: !805, isLocal: false, isDefinition: false, scopeLine: 555, flags: DIFlagPrototyped, isOptimized: false)
!805 = !DISubroutineType(types: !806)
!806 = !{!103, !653}
!807 = !DISubprogram(name: "to_int64", linkageName: "_ZNK11ap_int_baseILi34ELb1EE8to_int64Ev", scope: !630, file: !631, line: 556, type: !808, isLocal: false, isDefinition: false, scopeLine: 556, flags: DIFlagPrototyped, isOptimized: false)
!808 = !DISubroutineType(types: !809)
!809 = !{!693, !653}
!810 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK11ap_int_baseILi34ELb1EE9to_uint64Ev", scope: !630, file: !631, line: 557, type: !811, isLocal: false, isDefinition: false, scopeLine: 557, flags: DIFlagPrototyped, isOptimized: false)
!811 = !DISubroutineType(types: !812)
!812 = !{!699, !653}
!813 = !DISubprogram(name: "to_half", linkageName: "_ZNK11ap_int_baseILi34ELb1EE7to_halfEv", scope: !630, file: !631, line: 558, type: !814, isLocal: false, isDefinition: false, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: false)
!814 = !DISubroutineType(types: !815)
!815 = !{!703, !653}
!816 = !DISubprogram(name: "to_float", linkageName: "_ZNK11ap_int_baseILi34ELb1EE8to_floatEv", scope: !630, file: !631, line: 559, type: !817, isLocal: false, isDefinition: false, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false)
!817 = !DISubroutineType(types: !818)
!818 = !{!13, !653}
!819 = !DISubprogram(name: "to_double", linkageName: "_ZNK11ap_int_baseILi34ELb1EE9to_doubleEv", scope: !630, file: !631, line: 560, type: !820, isLocal: false, isDefinition: false, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: false)
!820 = !DISubroutineType(types: !821)
!821 = !{!128, !653}
!822 = !DISubprogram(name: "length", linkageName: "_ZNVK11ap_int_baseILi34ELb1EE6lengthEv", scope: !630, file: !631, line: 584, type: !823, isLocal: false, isDefinition: false, scopeLine: 584, flags: DIFlagPrototyped, isOptimized: false)
!823 = !DISubroutineType(types: !824)
!824 = !{!21, !825}
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!826 = !DISubprogram(name: "length", linkageName: "_ZNK11ap_int_baseILi34ELb1EE6lengthEv", scope: !630, file: !631, line: 585, type: !651, isLocal: false, isDefinition: false, scopeLine: 585, flags: DIFlagPrototyped, isOptimized: false)
!827 = !DISubprogram(name: "iszero", linkageName: "_ZNK11ap_int_baseILi34ELb1EE6iszeroEv", scope: !630, file: !631, line: 588, type: !780, isLocal: false, isDefinition: false, scopeLine: 588, flags: DIFlagPrototyped, isOptimized: false)
!828 = !DISubprogram(name: "is_zero", linkageName: "_ZNK11ap_int_baseILi34ELb1EE7is_zeroEv", scope: !630, file: !631, line: 591, type: !780, isLocal: false, isDefinition: false, scopeLine: 591, flags: DIFlagPrototyped, isOptimized: false)
!829 = !DISubprogram(name: "sign", linkageName: "_ZNK11ap_int_baseILi34ELb1EE4signEv", scope: !630, file: !631, line: 594, type: !780, isLocal: false, isDefinition: false, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: false)
!830 = !DISubprogram(name: "clear", linkageName: "_ZN11ap_int_baseILi34ELb1EE5clearEi", scope: !630, file: !631, line: 603, type: !831, isLocal: false, isDefinition: false, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: false)
!831 = !DISubroutineType(types: !832)
!832 = !{null, !658, !21}
!833 = !DISubprogram(name: "invert", linkageName: "_ZN11ap_int_baseILi34ELb1EE6invertEi", scope: !630, file: !631, line: 609, type: !831, isLocal: false, isDefinition: false, scopeLine: 609, flags: DIFlagPrototyped, isOptimized: false)
!834 = !DISubprogram(name: "test", linkageName: "_ZNK11ap_int_baseILi34ELb1EE4testEi", scope: !630, file: !631, line: 618, type: !835, isLocal: false, isDefinition: false, scopeLine: 618, flags: DIFlagPrototyped, isOptimized: false)
!835 = !DISubroutineType(types: !836)
!836 = !{!45, !653, !21}
!837 = !DISubprogram(name: "get", linkageName: "_ZN11ap_int_baseILi34ELb1EE3getEv", scope: !630, file: !631, line: 624, type: !838, isLocal: false, isDefinition: false, scopeLine: 624, flags: DIFlagPrototyped, isOptimized: false)
!838 = !DISubroutineType(types: !839)
!839 = !{!734, !658}
!840 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi34ELb1EE3setEi", scope: !630, file: !631, line: 627, type: !831, isLocal: false, isDefinition: false, scopeLine: 627, flags: DIFlagPrototyped, isOptimized: false)
!841 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi34ELb1EE3setEib", scope: !630, file: !631, line: 633, type: !842, isLocal: false, isDefinition: false, scopeLine: 633, flags: DIFlagPrototyped, isOptimized: false)
!842 = !DISubroutineType(types: !843)
!843 = !{null, !658, !21, !45}
!844 = !DISubprogram(name: "lrotate", linkageName: "_ZN11ap_int_baseILi34ELb1EE7lrotateEi", scope: !630, file: !631, line: 640, type: !757, isLocal: false, isDefinition: false, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: false)
!845 = !DISubprogram(name: "rrotate", linkageName: "_ZN11ap_int_baseILi34ELb1EE7rrotateEi", scope: !630, file: !631, line: 655, type: !757, isLocal: false, isDefinition: false, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: false)
!846 = !DISubprogram(name: "reverse", linkageName: "_ZN11ap_int_baseILi34ELb1EE7reverseEv", scope: !630, file: !631, line: 670, type: !838, isLocal: false, isDefinition: false, scopeLine: 670, flags: DIFlagPrototyped, isOptimized: false)
!847 = !DISubprogram(name: "set_bit", linkageName: "_ZN11ap_int_baseILi34ELb1EE7set_bitEib", scope: !630, file: !631, line: 676, type: !842, isLocal: false, isDefinition: false, scopeLine: 676, flags: DIFlagPrototyped, isOptimized: false)
!848 = !DISubprogram(name: "get_bit", linkageName: "_ZNK11ap_int_baseILi34ELb1EE7get_bitEi", scope: !630, file: !631, line: 681, type: !835, isLocal: false, isDefinition: false, scopeLine: 681, flags: DIFlagPrototyped, isOptimized: false)
!849 = !DISubprogram(name: "b_not", linkageName: "_ZN11ap_int_baseILi34ELb1EE5b_notEv", scope: !630, file: !631, line: 686, type: !656, isLocal: false, isDefinition: false, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: false)
!850 = !DISubprogram(name: "checkOverflowCsim", linkageName: "_ZNK11ap_int_baseILi34ELb1EE17checkOverflowCsimEibb", scope: !630, file: !631, line: 760, type: !851, isLocal: false, isDefinition: false, scopeLine: 760, flags: DIFlagPrototyped, isOptimized: false)
!851 = !DISubroutineType(types: !852)
!852 = !{!45, !653, !21, !45, !45}
!853 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi34ELb1EEppEv", scope: !630, file: !631, line: 865, type: !838, isLocal: false, isDefinition: false, scopeLine: 865, flags: DIFlagPrototyped, isOptimized: false)
!854 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi34ELb1EEmmEv", scope: !630, file: !631, line: 869, type: !838, isLocal: false, isDefinition: false, scopeLine: 869, flags: DIFlagPrototyped, isOptimized: false)
!855 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi34ELb1EEppEi", scope: !630, file: !631, line: 877, type: !856, isLocal: false, isDefinition: false, scopeLine: 877, flags: DIFlagPrototyped, isOptimized: false)
!856 = !DISubroutineType(types: !857)
!857 = !{!858, !658, !21}
!858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !859)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "arg1", scope: !860, file: !631, line: 167, baseType: !861)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<34, true>", scope: !630, file: !631, line: 134, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !624, identifier: "_ZTSN11ap_int_baseILi34ELb1EE5RTypeILi34ELb1EEE")
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !623, file: !631, line: 103, baseType: !626)
!862 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi34ELb1EEmmEi", scope: !630, file: !631, line: 882, type: !856, isLocal: false, isDefinition: false, scopeLine: 882, flags: DIFlagPrototyped, isOptimized: false)
!863 = !DISubprogram(name: "operator+", linkageName: "_ZNK11ap_int_baseILi34ELb1EEpsEv", scope: !630, file: !631, line: 891, type: !864, isLocal: false, isDefinition: false, scopeLine: 891, flags: DIFlagPrototyped, isOptimized: false)
!864 = !DISubroutineType(types: !865)
!865 = !{!859, !653}
!866 = !DISubprogram(name: "operator-", linkageName: "_ZNK11ap_int_baseILi34ELb1EEngEv", scope: !630, file: !631, line: 894, type: !867, isLocal: false, isDefinition: false, scopeLine: 894, flags: DIFlagPrototyped, isOptimized: false)
!867 = !DISubroutineType(types: !868)
!868 = !{!869, !653}
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "minus", scope: !870, file: !631, line: 163, baseType: !871)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<1, false>", scope: !630, file: !631, line: 134, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !376, identifier: "_ZTSN11ap_int_baseILi34ELb1EE5RTypeILi1ELb0EEE")
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !872, file: !631, line: 103, baseType: !875)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_int_factory<35, true>", file: !631, line: 103, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !873, identifier: "_ZTS15_ap_int_factoryILi35ELb1EE")
!873 = !{!874, !382}
!874 = !DITemplateValueParameter(name: "_AP_W2", type: !21, value: i32 35)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int<35>", file: !627, line: 18, size: 64, flags: DIFlagTypePassByValue, elements: !876, templateParams: !1582, identifier: "_ZTS6ap_intILi35EE")
!876 = !{!877, !1504, !1508, !1512, !1515, !1518, !1521, !1524, !1527, !1530, !1533, !1536, !1539, !1542, !1545, !1548, !1551, !1554, !1557, !1560, !1563, !1569, !1575, !1579}
!877 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !875, baseType: !878)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<35, true>", file: !631, line: 108, size: 64, flags: DIFlagTypePassByValue, elements: !879, templateParams: !1502, identifier: "_ZTS11ap_int_baseILi35ELb1EE")
!879 = !{!880, !894, !895, !896, !901, !905, !908, !911, !914, !917, !920, !923, !926, !929, !932, !935, !938, !941, !944, !947, !950, !953, !956, !961, !965, !970, !971, !975, !978, !981, !984, !987, !990, !993, !996, !999, !1002, !1005, !1008, !1011, !1014, !1018, !1021, !1024, !1027, !1030, !1033, !1036, !1037, !1040, !1043, !1046, !1049, !1052, !1055, !1058, !1061, !1065, !1066, !1067, !1068, !1069, !1072, !1073, !1076, !1079, !1080, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1092, !1093, !1094, !1100, !1101, !1104, !1468, !1469, !1470, !1474, !1477, !1480, !1483, !1484, !1485, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499}
!880 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !878, baseType: !881)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<35, true>", file: !635, line: 509, size: 64, flags: DIFlagTypePassByValue, elements: !882, templateParams: !892, identifier: "_ZTS8ssdm_intILi35ELb1EE")
!882 = !{!883, !885, !889}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !881, file: !635, line: 511, baseType: !884, size: 35, align: 64)
!884 = !DIBasicType(name: "int35", size: 35, encoding: DW_ATE_signed)
!885 = !DISubprogram(name: "ssdm_int", scope: !881, file: !635, line: 512, type: !886, isLocal: false, isDefinition: false, scopeLine: 512, flags: DIFlagPrototyped, isOptimized: false)
!886 = !DISubroutineType(types: !887)
!887 = !{null, !888}
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!889 = !DISubprogram(name: "ssdm_int", scope: !881, file: !635, line: 513, type: !890, isLocal: false, isDefinition: false, scopeLine: 513, flags: DIFlagPrototyped, isOptimized: false)
!890 = !DISubroutineType(types: !891)
!891 = !{null, !888, !884}
!892 = !{!893, !402}
!893 = !DITemplateValueParameter(name: "_AP_N", type: !21, value: i32 35)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !878, file: !631, line: 130, baseType: !47, flags: DIFlagStaticMember, extraData: i32 35)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !878, file: !631, line: 131, baseType: !49, flags: DIFlagStaticMember, extraData: i1 true)
!896 = !DISubprogram(name: "countLeadingOnes", linkageName: "_ZNK11ap_int_baseILi35ELb1EE16countLeadingOnesEv", scope: !878, file: !631, line: 110, type: !897, isLocal: false, isDefinition: false, scopeLine: 110, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!897 = !DISubroutineType(types: !898)
!898 = !{!21, !899}
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !878)
!901 = !DISubprogram(name: "ap_int_base", scope: !878, file: !631, line: 175, type: !902, isLocal: false, isDefinition: false, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false)
!902 = !DISubroutineType(types: !903)
!903 = !{null, !904}
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!905 = !DISubprogram(name: "ap_int_base", scope: !878, file: !631, line: 208, type: !906, isLocal: false, isDefinition: false, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: false)
!906 = !DISubroutineType(types: !907)
!907 = !{null, !904, !49}
!908 = !DISubprogram(name: "ap_int_base", scope: !878, file: !631, line: 209, type: !909, isLocal: false, isDefinition: false, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: false)
!909 = !DISubroutineType(types: !910)
!910 = !{null, !904, !65}
!911 = !DISubprogram(name: "ap_int_base", scope: !878, file: !631, line: 210, type: !912, isLocal: false, isDefinition: false, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: false)
!912 = !DISubroutineType(types: !913)
!913 = !{null, !904, !70}
!914 = !DISubprogram(name: "ap_int_base", scope: !878, file: !631, line: 211, type: !915, isLocal: false, isDefinition: false, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: false)
!915 = !DISubroutineType(types: !916)
!916 = !{null, !904, !75}
!917 = !DISubprogram(name: "ap_int_base", scope: !878, file: !631, line: 212, type: !918, isLocal: false, isDefinition: false, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: false)
!918 = !DISubroutineType(types: !919)
!919 = !{null, !904, !80}
!920 = !DISubprogram(name: "ap_int_base", scope: !878, file: !631, line: 213, type: !921, isLocal: false, isDefinition: false, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: false)
!921 = !DISubroutineType(types: !922)
!922 = !{null, !904, !85}
!923 = !DISubprogram(name: "ap_int_base", scope: !878, file: !631, line: 214, type: !924, isLocal: false, isDefinition: false, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: false)
!924 = !DISubroutineType(types: !925)
!925 = !{null, !904, !47}
!926 = !DISubprogram(name: "ap_int_base", scope: !878, file: !631, line: 215, type: !927, isLocal: false, isDefinition: false, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: false)
!927 = !DISubroutineType(types: !928)
!928 = !{null, !904, !93}
!929 = !DISubprogram(name: "ap_int_base", scope: !878, file: !631, line: 216, type: !930, isLocal: false, isDefinition: false, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: false)
!930 = !DISubroutineType(types: !931)
!931 = !{null, !904, !97}
!932 = !DISubprogram(name: "ap_int_base", scope: !878, file: !631, line: 217, type: !933, isLocal: false, isDefinition: false, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: false)
!933 = !DISubroutineType(types: !934)
!934 = !{null, !904, !102}
!935 = !DISubprogram(name: "ap_int_base", scope: !878, file: !631, line: 218, type: !936, isLocal: false, isDefinition: false, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: false)
!936 = !DISubroutineType(types: !937)
!937 = !{null, !904, !692}
!938 = !DISubprogram(name: "ap_int_base", scope: !878, file: !631, line: 219, type: !939, isLocal: false, isDefinition: false, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: false)
!939 = !DISubroutineType(types: !940)
!940 = !{null, !904, !698}
!941 = !DISubprogram(name: "ap_int_base", scope: !878, file: !631, line: 224, type: !942, isLocal: false, isDefinition: false, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: false)
!942 = !DISubroutineType(types: !943)
!943 = !{null, !904, !703}
!944 = !DISubprogram(name: "ap_int_base", scope: !878, file: !631, line: 230, type: !945, isLocal: false, isDefinition: false, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: false)
!945 = !DISubroutineType(types: !946)
!946 = !{null, !904, !13}
!947 = !DISubprogram(name: "ap_int_base", scope: !878, file: !631, line: 289, type: !948, isLocal: false, isDefinition: false, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: false)
!948 = !DISubroutineType(types: !949)
!949 = !{null, !904, !128}
!950 = !DISubprogram(name: "ap_int_base", scope: !878, file: !631, line: 385, type: !951, isLocal: false, isDefinition: false, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: false)
!951 = !DISubroutineType(types: !952)
!952 = !{null, !904, !132}
!953 = !DISubprogram(name: "ap_int_base", scope: !878, file: !631, line: 391, type: !954, isLocal: false, isDefinition: false, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: false)
!954 = !DISubroutineType(types: !955)
!955 = !{null, !904, !132, !71}
!956 = !DISubprogram(name: "read", linkageName: "_ZNV11ap_int_baseILi35ELb1EE4readEv", scope: !878, file: !631, line: 413, type: !957, isLocal: false, isDefinition: false, scopeLine: 413, flags: DIFlagPrototyped, isOptimized: false)
!957 = !DISubroutineType(types: !958)
!958 = !{!878, !959}
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!960 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !878)
!961 = !DISubprogram(name: "write", linkageName: "_ZNV11ap_int_baseILi35ELb1EE5writeERKS0_", scope: !878, file: !631, line: 420, type: !962, isLocal: false, isDefinition: false, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: false)
!962 = !DISubroutineType(types: !963)
!963 = !{null, !959, !964}
!964 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !900, size: 64)
!965 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi35ELb1EEaSERVKS0_", scope: !878, file: !631, line: 432, type: !966, isLocal: false, isDefinition: false, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: false)
!966 = !DISubroutineType(types: !967)
!967 = !{null, !959, !968}
!968 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !960)
!970 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi35ELb1EEaSERKS0_", scope: !878, file: !631, line: 442, type: !962, isLocal: false, isDefinition: false, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: false)
!971 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi35ELb1EEaSERVKS0_", scope: !878, file: !631, line: 459, type: !972, isLocal: false, isDefinition: false, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: false)
!972 = !DISubroutineType(types: !973)
!973 = !{!974, !904, !968}
!974 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !878, size: 64)
!975 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi35ELb1EEaSERKS0_", scope: !878, file: !631, line: 465, type: !976, isLocal: false, isDefinition: false, scopeLine: 465, flags: DIFlagPrototyped, isOptimized: false)
!976 = !DISubroutineType(types: !977)
!977 = !{!974, !904, !964}
!978 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi35ELb1EEaSEb", scope: !878, file: !631, line: 479, type: !979, isLocal: false, isDefinition: false, scopeLine: 479, flags: DIFlagPrototyped, isOptimized: false)
!979 = !DISubroutineType(types: !980)
!980 = !{!974, !904, !45}
!981 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi35ELb1EEaSEc", scope: !878, file: !631, line: 480, type: !982, isLocal: false, isDefinition: false, scopeLine: 480, flags: DIFlagPrototyped, isOptimized: false)
!982 = !DISubroutineType(types: !983)
!983 = !{!974, !904, !66}
!984 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi35ELb1EEaSEa", scope: !878, file: !631, line: 481, type: !985, isLocal: false, isDefinition: false, scopeLine: 481, flags: DIFlagPrototyped, isOptimized: false)
!985 = !DISubroutineType(types: !986)
!986 = !{!974, !904, !71}
!987 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi35ELb1EEaSEh", scope: !878, file: !631, line: 482, type: !988, isLocal: false, isDefinition: false, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: false)
!988 = !DISubroutineType(types: !989)
!989 = !{!974, !904, !76}
!990 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi35ELb1EEaSEs", scope: !878, file: !631, line: 483, type: !991, isLocal: false, isDefinition: false, scopeLine: 483, flags: DIFlagPrototyped, isOptimized: false)
!991 = !DISubroutineType(types: !992)
!992 = !{!974, !904, !81}
!993 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi35ELb1EEaSEt", scope: !878, file: !631, line: 484, type: !994, isLocal: false, isDefinition: false, scopeLine: 484, flags: DIFlagPrototyped, isOptimized: false)
!994 = !DISubroutineType(types: !995)
!995 = !{!974, !904, !86}
!996 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi35ELb1EEaSEi", scope: !878, file: !631, line: 485, type: !997, isLocal: false, isDefinition: false, scopeLine: 485, flags: DIFlagPrototyped, isOptimized: false)
!997 = !DISubroutineType(types: !998)
!998 = !{!974, !904, !21}
!999 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi35ELb1EEaSEj", scope: !878, file: !631, line: 486, type: !1000, isLocal: false, isDefinition: false, scopeLine: 486, flags: DIFlagPrototyped, isOptimized: false)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!974, !904, !34}
!1002 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi35ELb1EEaSEl", scope: !878, file: !631, line: 487, type: !1003, isLocal: false, isDefinition: false, scopeLine: 487, flags: DIFlagPrototyped, isOptimized: false)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!974, !904, !98}
!1005 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi35ELb1EEaSEm", scope: !878, file: !631, line: 488, type: !1006, isLocal: false, isDefinition: false, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: false)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!974, !904, !103}
!1008 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi35ELb1EEaSEx", scope: !878, file: !631, line: 489, type: !1009, isLocal: false, isDefinition: false, scopeLine: 489, flags: DIFlagPrototyped, isOptimized: false)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!974, !904, !693}
!1011 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi35ELb1EEaSEy", scope: !878, file: !631, line: 490, type: !1012, isLocal: false, isDefinition: false, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: false)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!974, !904, !699}
!1014 = !DISubprogram(name: "operator long long", linkageName: "_ZNK11ap_int_baseILi35ELb1EEcvxEv", scope: !878, file: !631, line: 541, type: !1015, isLocal: false, isDefinition: false, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: false)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!1017, !899}
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !878, file: !631, line: 128, baseType: !778)
!1018 = !DISubprogram(name: "to_bool", linkageName: "_ZNK11ap_int_baseILi35ELb1EE7to_boolEv", scope: !878, file: !631, line: 546, type: !1019, isLocal: false, isDefinition: false, scopeLine: 546, flags: DIFlagPrototyped, isOptimized: false)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!45, !899}
!1021 = !DISubprogram(name: "to_char", linkageName: "_ZNK11ap_int_baseILi35ELb1EE7to_charEv", scope: !878, file: !631, line: 547, type: !1022, isLocal: false, isDefinition: false, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: false)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!66, !899}
!1024 = !DISubprogram(name: "to_schar", linkageName: "_ZNK11ap_int_baseILi35ELb1EE8to_scharEv", scope: !878, file: !631, line: 548, type: !1025, isLocal: false, isDefinition: false, scopeLine: 548, flags: DIFlagPrototyped, isOptimized: false)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!71, !899}
!1027 = !DISubprogram(name: "to_uchar", linkageName: "_ZNK11ap_int_baseILi35ELb1EE8to_ucharEv", scope: !878, file: !631, line: 549, type: !1028, isLocal: false, isDefinition: false, scopeLine: 549, flags: DIFlagPrototyped, isOptimized: false)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!76, !899}
!1030 = !DISubprogram(name: "to_short", linkageName: "_ZNK11ap_int_baseILi35ELb1EE8to_shortEv", scope: !878, file: !631, line: 550, type: !1031, isLocal: false, isDefinition: false, scopeLine: 550, flags: DIFlagPrototyped, isOptimized: false)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!81, !899}
!1033 = !DISubprogram(name: "to_ushort", linkageName: "_ZNK11ap_int_baseILi35ELb1EE9to_ushortEv", scope: !878, file: !631, line: 551, type: !1034, isLocal: false, isDefinition: false, scopeLine: 551, flags: DIFlagPrototyped, isOptimized: false)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!86, !899}
!1036 = !DISubprogram(name: "to_int", linkageName: "_ZNK11ap_int_baseILi35ELb1EE6to_intEv", scope: !878, file: !631, line: 552, type: !897, isLocal: false, isDefinition: false, scopeLine: 552, flags: DIFlagPrototyped, isOptimized: false)
!1037 = !DISubprogram(name: "to_uint", linkageName: "_ZNK11ap_int_baseILi35ELb1EE7to_uintEv", scope: !878, file: !631, line: 553, type: !1038, isLocal: false, isDefinition: false, scopeLine: 553, flags: DIFlagPrototyped, isOptimized: false)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!34, !899}
!1040 = !DISubprogram(name: "to_long", linkageName: "_ZNK11ap_int_baseILi35ELb1EE7to_longEv", scope: !878, file: !631, line: 554, type: !1041, isLocal: false, isDefinition: false, scopeLine: 554, flags: DIFlagPrototyped, isOptimized: false)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!98, !899}
!1043 = !DISubprogram(name: "to_ulong", linkageName: "_ZNK11ap_int_baseILi35ELb1EE8to_ulongEv", scope: !878, file: !631, line: 555, type: !1044, isLocal: false, isDefinition: false, scopeLine: 555, flags: DIFlagPrototyped, isOptimized: false)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!103, !899}
!1046 = !DISubprogram(name: "to_int64", linkageName: "_ZNK11ap_int_baseILi35ELb1EE8to_int64Ev", scope: !878, file: !631, line: 556, type: !1047, isLocal: false, isDefinition: false, scopeLine: 556, flags: DIFlagPrototyped, isOptimized: false)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!693, !899}
!1049 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK11ap_int_baseILi35ELb1EE9to_uint64Ev", scope: !878, file: !631, line: 557, type: !1050, isLocal: false, isDefinition: false, scopeLine: 557, flags: DIFlagPrototyped, isOptimized: false)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!699, !899}
!1052 = !DISubprogram(name: "to_half", linkageName: "_ZNK11ap_int_baseILi35ELb1EE7to_halfEv", scope: !878, file: !631, line: 558, type: !1053, isLocal: false, isDefinition: false, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: false)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!703, !899}
!1055 = !DISubprogram(name: "to_float", linkageName: "_ZNK11ap_int_baseILi35ELb1EE8to_floatEv", scope: !878, file: !631, line: 559, type: !1056, isLocal: false, isDefinition: false, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!13, !899}
!1058 = !DISubprogram(name: "to_double", linkageName: "_ZNK11ap_int_baseILi35ELb1EE9to_doubleEv", scope: !878, file: !631, line: 560, type: !1059, isLocal: false, isDefinition: false, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: false)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!128, !899}
!1061 = !DISubprogram(name: "length", linkageName: "_ZNVK11ap_int_baseILi35ELb1EE6lengthEv", scope: !878, file: !631, line: 584, type: !1062, isLocal: false, isDefinition: false, scopeLine: 584, flags: DIFlagPrototyped, isOptimized: false)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!21, !1064}
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1065 = !DISubprogram(name: "length", linkageName: "_ZNK11ap_int_baseILi35ELb1EE6lengthEv", scope: !878, file: !631, line: 585, type: !897, isLocal: false, isDefinition: false, scopeLine: 585, flags: DIFlagPrototyped, isOptimized: false)
!1066 = !DISubprogram(name: "iszero", linkageName: "_ZNK11ap_int_baseILi35ELb1EE6iszeroEv", scope: !878, file: !631, line: 588, type: !1019, isLocal: false, isDefinition: false, scopeLine: 588, flags: DIFlagPrototyped, isOptimized: false)
!1067 = !DISubprogram(name: "is_zero", linkageName: "_ZNK11ap_int_baseILi35ELb1EE7is_zeroEv", scope: !878, file: !631, line: 591, type: !1019, isLocal: false, isDefinition: false, scopeLine: 591, flags: DIFlagPrototyped, isOptimized: false)
!1068 = !DISubprogram(name: "sign", linkageName: "_ZNK11ap_int_baseILi35ELb1EE4signEv", scope: !878, file: !631, line: 594, type: !1019, isLocal: false, isDefinition: false, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: false)
!1069 = !DISubprogram(name: "clear", linkageName: "_ZN11ap_int_baseILi35ELb1EE5clearEi", scope: !878, file: !631, line: 603, type: !1070, isLocal: false, isDefinition: false, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: false)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{null, !904, !21}
!1072 = !DISubprogram(name: "invert", linkageName: "_ZN11ap_int_baseILi35ELb1EE6invertEi", scope: !878, file: !631, line: 609, type: !1070, isLocal: false, isDefinition: false, scopeLine: 609, flags: DIFlagPrototyped, isOptimized: false)
!1073 = !DISubprogram(name: "test", linkageName: "_ZNK11ap_int_baseILi35ELb1EE4testEi", scope: !878, file: !631, line: 618, type: !1074, isLocal: false, isDefinition: false, scopeLine: 618, flags: DIFlagPrototyped, isOptimized: false)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!45, !899, !21}
!1076 = !DISubprogram(name: "get", linkageName: "_ZN11ap_int_baseILi35ELb1EE3getEv", scope: !878, file: !631, line: 624, type: !1077, isLocal: false, isDefinition: false, scopeLine: 624, flags: DIFlagPrototyped, isOptimized: false)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!974, !904}
!1079 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi35ELb1EE3setEi", scope: !878, file: !631, line: 627, type: !1070, isLocal: false, isDefinition: false, scopeLine: 627, flags: DIFlagPrototyped, isOptimized: false)
!1080 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi35ELb1EE3setEib", scope: !878, file: !631, line: 633, type: !1081, isLocal: false, isDefinition: false, scopeLine: 633, flags: DIFlagPrototyped, isOptimized: false)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{null, !904, !21, !45}
!1083 = !DISubprogram(name: "lrotate", linkageName: "_ZN11ap_int_baseILi35ELb1EE7lrotateEi", scope: !878, file: !631, line: 640, type: !997, isLocal: false, isDefinition: false, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: false)
!1084 = !DISubprogram(name: "rrotate", linkageName: "_ZN11ap_int_baseILi35ELb1EE7rrotateEi", scope: !878, file: !631, line: 655, type: !997, isLocal: false, isDefinition: false, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: false)
!1085 = !DISubprogram(name: "reverse", linkageName: "_ZN11ap_int_baseILi35ELb1EE7reverseEv", scope: !878, file: !631, line: 670, type: !1077, isLocal: false, isDefinition: false, scopeLine: 670, flags: DIFlagPrototyped, isOptimized: false)
!1086 = !DISubprogram(name: "set_bit", linkageName: "_ZN11ap_int_baseILi35ELb1EE7set_bitEib", scope: !878, file: !631, line: 676, type: !1081, isLocal: false, isDefinition: false, scopeLine: 676, flags: DIFlagPrototyped, isOptimized: false)
!1087 = !DISubprogram(name: "get_bit", linkageName: "_ZNK11ap_int_baseILi35ELb1EE7get_bitEi", scope: !878, file: !631, line: 681, type: !1074, isLocal: false, isDefinition: false, scopeLine: 681, flags: DIFlagPrototyped, isOptimized: false)
!1088 = !DISubprogram(name: "b_not", linkageName: "_ZN11ap_int_baseILi35ELb1EE5b_notEv", scope: !878, file: !631, line: 686, type: !902, isLocal: false, isDefinition: false, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: false)
!1089 = !DISubprogram(name: "checkOverflowCsim", linkageName: "_ZNK11ap_int_baseILi35ELb1EE17checkOverflowCsimEibb", scope: !878, file: !631, line: 760, type: !1090, isLocal: false, isDefinition: false, scopeLine: 760, flags: DIFlagPrototyped, isOptimized: false)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!45, !899, !21, !45, !45}
!1092 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi35ELb1EEppEv", scope: !878, file: !631, line: 865, type: !1077, isLocal: false, isDefinition: false, scopeLine: 865, flags: DIFlagPrototyped, isOptimized: false)
!1093 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi35ELb1EEmmEv", scope: !878, file: !631, line: 869, type: !1077, isLocal: false, isDefinition: false, scopeLine: 869, flags: DIFlagPrototyped, isOptimized: false)
!1094 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi35ELb1EEppEi", scope: !878, file: !631, line: 877, type: !1095, isLocal: false, isDefinition: false, scopeLine: 877, flags: DIFlagPrototyped, isOptimized: false)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!1097, !904, !21}
!1097 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1098)
!1098 = !DIDerivedType(tag: DW_TAG_typedef, name: "arg1", scope: !1099, file: !631, line: 167, baseType: !871)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<35, true>", scope: !878, file: !631, line: 134, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !873, identifier: "_ZTSN11ap_int_baseILi35ELb1EE5RTypeILi35ELb1EEE")
!1100 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi35ELb1EEmmEi", scope: !878, file: !631, line: 882, type: !1095, isLocal: false, isDefinition: false, scopeLine: 882, flags: DIFlagPrototyped, isOptimized: false)
!1101 = !DISubprogram(name: "operator+", linkageName: "_ZNK11ap_int_baseILi35ELb1EEpsEv", scope: !878, file: !631, line: 891, type: !1102, isLocal: false, isDefinition: false, scopeLine: 891, flags: DIFlagPrototyped, isOptimized: false)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!1098, !899}
!1104 = !DISubprogram(name: "operator-", linkageName: "_ZNK11ap_int_baseILi35ELb1EEngEv", scope: !878, file: !631, line: 894, type: !1105, isLocal: false, isDefinition: false, scopeLine: 894, flags: DIFlagPrototyped, isOptimized: false)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!1107, !899}
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "minus", scope: !1108, file: !631, line: 163, baseType: !1109)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<1, false>", scope: !878, file: !631, line: 134, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !376, identifier: "_ZTSN11ap_int_baseILi35ELb1EE5RTypeILi1ELb0EEE")
!1109 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1110, file: !631, line: 103, baseType: !1113)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_int_factory<36, true>", file: !631, line: 103, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !1111, identifier: "_ZTS15_ap_int_factoryILi36ELb1EE")
!1111 = !{!1112, !382}
!1112 = !DITemplateValueParameter(name: "_AP_W2", type: !21, value: i32 36)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int<36>", file: !627, line: 18, size: 64, flags: DIFlagTypePassByValue, elements: !1114, templateParams: !1467, identifier: "_ZTS6ap_intILi36EE")
!1114 = !{!1115, !1389, !1393, !1397, !1400, !1403, !1406, !1409, !1412, !1415, !1418, !1421, !1424, !1427, !1430, !1433, !1436, !1439, !1442, !1445, !1448, !1454, !1460, !1464}
!1115 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1113, baseType: !1116)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<36, true>", file: !631, line: 108, size: 64, flags: DIFlagTypePassByValue, elements: !1117, templateParams: !1387, identifier: "_ZTS11ap_int_baseILi36ELb1EE")
!1117 = !{!1118, !1132, !1133, !1134, !1139, !1143, !1146, !1149, !1152, !1155, !1158, !1161, !1164, !1167, !1170, !1173, !1176, !1179, !1182, !1185, !1188, !1191, !1194, !1199, !1203, !1208, !1209, !1213, !1216, !1219, !1222, !1225, !1228, !1231, !1234, !1237, !1240, !1243, !1246, !1249, !1252, !1256, !1259, !1262, !1265, !1268, !1271, !1274, !1275, !1278, !1281, !1284, !1287, !1290, !1293, !1296, !1299, !1303, !1304, !1305, !1306, !1307, !1310, !1311, !1314, !1317, !1318, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1330, !1331, !1332, !1338, !1339, !1342, !1352, !1353, !1354, !1358, !1361, !1364, !1367, !1368, !1369, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383}
!1118 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1116, baseType: !1119)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<36, true>", file: !635, line: 509, size: 64, flags: DIFlagTypePassByValue, elements: !1120, templateParams: !1130, identifier: "_ZTS8ssdm_intILi36ELb1EE")
!1120 = !{!1121, !1123, !1127}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !1119, file: !635, line: 511, baseType: !1122, size: 36, align: 64)
!1122 = !DIBasicType(name: "int36", size: 36, encoding: DW_ATE_signed)
!1123 = !DISubprogram(name: "ssdm_int", scope: !1119, file: !635, line: 512, type: !1124, isLocal: false, isDefinition: false, scopeLine: 512, flags: DIFlagPrototyped, isOptimized: false)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{null, !1126}
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1127 = !DISubprogram(name: "ssdm_int", scope: !1119, file: !635, line: 513, type: !1128, isLocal: false, isDefinition: false, scopeLine: 513, flags: DIFlagPrototyped, isOptimized: false)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{null, !1126, !1122}
!1130 = !{!1131, !402}
!1131 = !DITemplateValueParameter(name: "_AP_N", type: !21, value: i32 36)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !1116, file: !631, line: 130, baseType: !47, flags: DIFlagStaticMember, extraData: i32 36)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !1116, file: !631, line: 131, baseType: !49, flags: DIFlagStaticMember, extraData: i1 true)
!1134 = !DISubprogram(name: "countLeadingOnes", linkageName: "_ZNK11ap_int_baseILi36ELb1EE16countLeadingOnesEv", scope: !1116, file: !631, line: 110, type: !1135, isLocal: false, isDefinition: false, scopeLine: 110, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!21, !1137}
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1116)
!1139 = !DISubprogram(name: "ap_int_base", scope: !1116, file: !631, line: 175, type: !1140, isLocal: false, isDefinition: false, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{null, !1142}
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1143 = !DISubprogram(name: "ap_int_base", scope: !1116, file: !631, line: 208, type: !1144, isLocal: false, isDefinition: false, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: false)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{null, !1142, !49}
!1146 = !DISubprogram(name: "ap_int_base", scope: !1116, file: !631, line: 209, type: !1147, isLocal: false, isDefinition: false, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: false)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{null, !1142, !65}
!1149 = !DISubprogram(name: "ap_int_base", scope: !1116, file: !631, line: 210, type: !1150, isLocal: false, isDefinition: false, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: false)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{null, !1142, !70}
!1152 = !DISubprogram(name: "ap_int_base", scope: !1116, file: !631, line: 211, type: !1153, isLocal: false, isDefinition: false, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: false)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{null, !1142, !75}
!1155 = !DISubprogram(name: "ap_int_base", scope: !1116, file: !631, line: 212, type: !1156, isLocal: false, isDefinition: false, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: false)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{null, !1142, !80}
!1158 = !DISubprogram(name: "ap_int_base", scope: !1116, file: !631, line: 213, type: !1159, isLocal: false, isDefinition: false, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: false)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{null, !1142, !85}
!1161 = !DISubprogram(name: "ap_int_base", scope: !1116, file: !631, line: 214, type: !1162, isLocal: false, isDefinition: false, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: false)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{null, !1142, !47}
!1164 = !DISubprogram(name: "ap_int_base", scope: !1116, file: !631, line: 215, type: !1165, isLocal: false, isDefinition: false, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: false)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{null, !1142, !93}
!1167 = !DISubprogram(name: "ap_int_base", scope: !1116, file: !631, line: 216, type: !1168, isLocal: false, isDefinition: false, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: false)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{null, !1142, !97}
!1170 = !DISubprogram(name: "ap_int_base", scope: !1116, file: !631, line: 217, type: !1171, isLocal: false, isDefinition: false, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: false)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{null, !1142, !102}
!1173 = !DISubprogram(name: "ap_int_base", scope: !1116, file: !631, line: 218, type: !1174, isLocal: false, isDefinition: false, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: false)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{null, !1142, !692}
!1176 = !DISubprogram(name: "ap_int_base", scope: !1116, file: !631, line: 219, type: !1177, isLocal: false, isDefinition: false, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: false)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{null, !1142, !698}
!1179 = !DISubprogram(name: "ap_int_base", scope: !1116, file: !631, line: 224, type: !1180, isLocal: false, isDefinition: false, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: false)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{null, !1142, !703}
!1182 = !DISubprogram(name: "ap_int_base", scope: !1116, file: !631, line: 230, type: !1183, isLocal: false, isDefinition: false, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: false)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{null, !1142, !13}
!1185 = !DISubprogram(name: "ap_int_base", scope: !1116, file: !631, line: 289, type: !1186, isLocal: false, isDefinition: false, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: false)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{null, !1142, !128}
!1188 = !DISubprogram(name: "ap_int_base", scope: !1116, file: !631, line: 385, type: !1189, isLocal: false, isDefinition: false, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: false)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{null, !1142, !132}
!1191 = !DISubprogram(name: "ap_int_base", scope: !1116, file: !631, line: 391, type: !1192, isLocal: false, isDefinition: false, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: false)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{null, !1142, !132, !71}
!1194 = !DISubprogram(name: "read", linkageName: "_ZNV11ap_int_baseILi36ELb1EE4readEv", scope: !1116, file: !631, line: 413, type: !1195, isLocal: false, isDefinition: false, scopeLine: 413, flags: DIFlagPrototyped, isOptimized: false)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!1116, !1197}
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1198 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1116)
!1199 = !DISubprogram(name: "write", linkageName: "_ZNV11ap_int_baseILi36ELb1EE5writeERKS0_", scope: !1116, file: !631, line: 420, type: !1200, isLocal: false, isDefinition: false, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: false)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{null, !1197, !1202}
!1202 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1138, size: 64)
!1203 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi36ELb1EEaSERVKS0_", scope: !1116, file: !631, line: 432, type: !1204, isLocal: false, isDefinition: false, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: false)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{null, !1197, !1206}
!1206 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1207, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1198)
!1208 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi36ELb1EEaSERKS0_", scope: !1116, file: !631, line: 442, type: !1200, isLocal: false, isDefinition: false, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: false)
!1209 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi36ELb1EEaSERVKS0_", scope: !1116, file: !631, line: 459, type: !1210, isLocal: false, isDefinition: false, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: false)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!1212, !1142, !1206}
!1212 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1116, size: 64)
!1213 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi36ELb1EEaSERKS0_", scope: !1116, file: !631, line: 465, type: !1214, isLocal: false, isDefinition: false, scopeLine: 465, flags: DIFlagPrototyped, isOptimized: false)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!1212, !1142, !1202}
!1216 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi36ELb1EEaSEb", scope: !1116, file: !631, line: 479, type: !1217, isLocal: false, isDefinition: false, scopeLine: 479, flags: DIFlagPrototyped, isOptimized: false)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!1212, !1142, !45}
!1219 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi36ELb1EEaSEc", scope: !1116, file: !631, line: 480, type: !1220, isLocal: false, isDefinition: false, scopeLine: 480, flags: DIFlagPrototyped, isOptimized: false)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!1212, !1142, !66}
!1222 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi36ELb1EEaSEa", scope: !1116, file: !631, line: 481, type: !1223, isLocal: false, isDefinition: false, scopeLine: 481, flags: DIFlagPrototyped, isOptimized: false)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!1212, !1142, !71}
!1225 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi36ELb1EEaSEh", scope: !1116, file: !631, line: 482, type: !1226, isLocal: false, isDefinition: false, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: false)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!1212, !1142, !76}
!1228 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi36ELb1EEaSEs", scope: !1116, file: !631, line: 483, type: !1229, isLocal: false, isDefinition: false, scopeLine: 483, flags: DIFlagPrototyped, isOptimized: false)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!1212, !1142, !81}
!1231 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi36ELb1EEaSEt", scope: !1116, file: !631, line: 484, type: !1232, isLocal: false, isDefinition: false, scopeLine: 484, flags: DIFlagPrototyped, isOptimized: false)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!1212, !1142, !86}
!1234 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi36ELb1EEaSEi", scope: !1116, file: !631, line: 485, type: !1235, isLocal: false, isDefinition: false, scopeLine: 485, flags: DIFlagPrototyped, isOptimized: false)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!1212, !1142, !21}
!1237 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi36ELb1EEaSEj", scope: !1116, file: !631, line: 486, type: !1238, isLocal: false, isDefinition: false, scopeLine: 486, flags: DIFlagPrototyped, isOptimized: false)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!1212, !1142, !34}
!1240 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi36ELb1EEaSEl", scope: !1116, file: !631, line: 487, type: !1241, isLocal: false, isDefinition: false, scopeLine: 487, flags: DIFlagPrototyped, isOptimized: false)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!1212, !1142, !98}
!1243 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi36ELb1EEaSEm", scope: !1116, file: !631, line: 488, type: !1244, isLocal: false, isDefinition: false, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: false)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!1212, !1142, !103}
!1246 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi36ELb1EEaSEx", scope: !1116, file: !631, line: 489, type: !1247, isLocal: false, isDefinition: false, scopeLine: 489, flags: DIFlagPrototyped, isOptimized: false)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!1212, !1142, !693}
!1249 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi36ELb1EEaSEy", scope: !1116, file: !631, line: 490, type: !1250, isLocal: false, isDefinition: false, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: false)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!1212, !1142, !699}
!1252 = !DISubprogram(name: "operator long long", linkageName: "_ZNK11ap_int_baseILi36ELb1EEcvxEv", scope: !1116, file: !631, line: 541, type: !1253, isLocal: false, isDefinition: false, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: false)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!1255, !1137}
!1255 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !1116, file: !631, line: 128, baseType: !778)
!1256 = !DISubprogram(name: "to_bool", linkageName: "_ZNK11ap_int_baseILi36ELb1EE7to_boolEv", scope: !1116, file: !631, line: 546, type: !1257, isLocal: false, isDefinition: false, scopeLine: 546, flags: DIFlagPrototyped, isOptimized: false)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!45, !1137}
!1259 = !DISubprogram(name: "to_char", linkageName: "_ZNK11ap_int_baseILi36ELb1EE7to_charEv", scope: !1116, file: !631, line: 547, type: !1260, isLocal: false, isDefinition: false, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: false)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!66, !1137}
!1262 = !DISubprogram(name: "to_schar", linkageName: "_ZNK11ap_int_baseILi36ELb1EE8to_scharEv", scope: !1116, file: !631, line: 548, type: !1263, isLocal: false, isDefinition: false, scopeLine: 548, flags: DIFlagPrototyped, isOptimized: false)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!71, !1137}
!1265 = !DISubprogram(name: "to_uchar", linkageName: "_ZNK11ap_int_baseILi36ELb1EE8to_ucharEv", scope: !1116, file: !631, line: 549, type: !1266, isLocal: false, isDefinition: false, scopeLine: 549, flags: DIFlagPrototyped, isOptimized: false)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{!76, !1137}
!1268 = !DISubprogram(name: "to_short", linkageName: "_ZNK11ap_int_baseILi36ELb1EE8to_shortEv", scope: !1116, file: !631, line: 550, type: !1269, isLocal: false, isDefinition: false, scopeLine: 550, flags: DIFlagPrototyped, isOptimized: false)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!81, !1137}
!1271 = !DISubprogram(name: "to_ushort", linkageName: "_ZNK11ap_int_baseILi36ELb1EE9to_ushortEv", scope: !1116, file: !631, line: 551, type: !1272, isLocal: false, isDefinition: false, scopeLine: 551, flags: DIFlagPrototyped, isOptimized: false)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!86, !1137}
!1274 = !DISubprogram(name: "to_int", linkageName: "_ZNK11ap_int_baseILi36ELb1EE6to_intEv", scope: !1116, file: !631, line: 552, type: !1135, isLocal: false, isDefinition: false, scopeLine: 552, flags: DIFlagPrototyped, isOptimized: false)
!1275 = !DISubprogram(name: "to_uint", linkageName: "_ZNK11ap_int_baseILi36ELb1EE7to_uintEv", scope: !1116, file: !631, line: 553, type: !1276, isLocal: false, isDefinition: false, scopeLine: 553, flags: DIFlagPrototyped, isOptimized: false)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!34, !1137}
!1278 = !DISubprogram(name: "to_long", linkageName: "_ZNK11ap_int_baseILi36ELb1EE7to_longEv", scope: !1116, file: !631, line: 554, type: !1279, isLocal: false, isDefinition: false, scopeLine: 554, flags: DIFlagPrototyped, isOptimized: false)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!98, !1137}
!1281 = !DISubprogram(name: "to_ulong", linkageName: "_ZNK11ap_int_baseILi36ELb1EE8to_ulongEv", scope: !1116, file: !631, line: 555, type: !1282, isLocal: false, isDefinition: false, scopeLine: 555, flags: DIFlagPrototyped, isOptimized: false)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!103, !1137}
!1284 = !DISubprogram(name: "to_int64", linkageName: "_ZNK11ap_int_baseILi36ELb1EE8to_int64Ev", scope: !1116, file: !631, line: 556, type: !1285, isLocal: false, isDefinition: false, scopeLine: 556, flags: DIFlagPrototyped, isOptimized: false)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!693, !1137}
!1287 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK11ap_int_baseILi36ELb1EE9to_uint64Ev", scope: !1116, file: !631, line: 557, type: !1288, isLocal: false, isDefinition: false, scopeLine: 557, flags: DIFlagPrototyped, isOptimized: false)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!699, !1137}
!1290 = !DISubprogram(name: "to_half", linkageName: "_ZNK11ap_int_baseILi36ELb1EE7to_halfEv", scope: !1116, file: !631, line: 558, type: !1291, isLocal: false, isDefinition: false, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: false)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{!703, !1137}
!1293 = !DISubprogram(name: "to_float", linkageName: "_ZNK11ap_int_baseILi36ELb1EE8to_floatEv", scope: !1116, file: !631, line: 559, type: !1294, isLocal: false, isDefinition: false, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!13, !1137}
!1296 = !DISubprogram(name: "to_double", linkageName: "_ZNK11ap_int_baseILi36ELb1EE9to_doubleEv", scope: !1116, file: !631, line: 560, type: !1297, isLocal: false, isDefinition: false, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: false)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{!128, !1137}
!1299 = !DISubprogram(name: "length", linkageName: "_ZNVK11ap_int_baseILi36ELb1EE6lengthEv", scope: !1116, file: !631, line: 584, type: !1300, isLocal: false, isDefinition: false, scopeLine: 584, flags: DIFlagPrototyped, isOptimized: false)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!21, !1302}
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1303 = !DISubprogram(name: "length", linkageName: "_ZNK11ap_int_baseILi36ELb1EE6lengthEv", scope: !1116, file: !631, line: 585, type: !1135, isLocal: false, isDefinition: false, scopeLine: 585, flags: DIFlagPrototyped, isOptimized: false)
!1304 = !DISubprogram(name: "iszero", linkageName: "_ZNK11ap_int_baseILi36ELb1EE6iszeroEv", scope: !1116, file: !631, line: 588, type: !1257, isLocal: false, isDefinition: false, scopeLine: 588, flags: DIFlagPrototyped, isOptimized: false)
!1305 = !DISubprogram(name: "is_zero", linkageName: "_ZNK11ap_int_baseILi36ELb1EE7is_zeroEv", scope: !1116, file: !631, line: 591, type: !1257, isLocal: false, isDefinition: false, scopeLine: 591, flags: DIFlagPrototyped, isOptimized: false)
!1306 = !DISubprogram(name: "sign", linkageName: "_ZNK11ap_int_baseILi36ELb1EE4signEv", scope: !1116, file: !631, line: 594, type: !1257, isLocal: false, isDefinition: false, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: false)
!1307 = !DISubprogram(name: "clear", linkageName: "_ZN11ap_int_baseILi36ELb1EE5clearEi", scope: !1116, file: !631, line: 603, type: !1308, isLocal: false, isDefinition: false, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: false)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{null, !1142, !21}
!1310 = !DISubprogram(name: "invert", linkageName: "_ZN11ap_int_baseILi36ELb1EE6invertEi", scope: !1116, file: !631, line: 609, type: !1308, isLocal: false, isDefinition: false, scopeLine: 609, flags: DIFlagPrototyped, isOptimized: false)
!1311 = !DISubprogram(name: "test", linkageName: "_ZNK11ap_int_baseILi36ELb1EE4testEi", scope: !1116, file: !631, line: 618, type: !1312, isLocal: false, isDefinition: false, scopeLine: 618, flags: DIFlagPrototyped, isOptimized: false)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!45, !1137, !21}
!1314 = !DISubprogram(name: "get", linkageName: "_ZN11ap_int_baseILi36ELb1EE3getEv", scope: !1116, file: !631, line: 624, type: !1315, isLocal: false, isDefinition: false, scopeLine: 624, flags: DIFlagPrototyped, isOptimized: false)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{!1212, !1142}
!1317 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi36ELb1EE3setEi", scope: !1116, file: !631, line: 627, type: !1308, isLocal: false, isDefinition: false, scopeLine: 627, flags: DIFlagPrototyped, isOptimized: false)
!1318 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi36ELb1EE3setEib", scope: !1116, file: !631, line: 633, type: !1319, isLocal: false, isDefinition: false, scopeLine: 633, flags: DIFlagPrototyped, isOptimized: false)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{null, !1142, !21, !45}
!1321 = !DISubprogram(name: "lrotate", linkageName: "_ZN11ap_int_baseILi36ELb1EE7lrotateEi", scope: !1116, file: !631, line: 640, type: !1235, isLocal: false, isDefinition: false, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: false)
!1322 = !DISubprogram(name: "rrotate", linkageName: "_ZN11ap_int_baseILi36ELb1EE7rrotateEi", scope: !1116, file: !631, line: 655, type: !1235, isLocal: false, isDefinition: false, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: false)
!1323 = !DISubprogram(name: "reverse", linkageName: "_ZN11ap_int_baseILi36ELb1EE7reverseEv", scope: !1116, file: !631, line: 670, type: !1315, isLocal: false, isDefinition: false, scopeLine: 670, flags: DIFlagPrototyped, isOptimized: false)
!1324 = !DISubprogram(name: "set_bit", linkageName: "_ZN11ap_int_baseILi36ELb1EE7set_bitEib", scope: !1116, file: !631, line: 676, type: !1319, isLocal: false, isDefinition: false, scopeLine: 676, flags: DIFlagPrototyped, isOptimized: false)
!1325 = !DISubprogram(name: "get_bit", linkageName: "_ZNK11ap_int_baseILi36ELb1EE7get_bitEi", scope: !1116, file: !631, line: 681, type: !1312, isLocal: false, isDefinition: false, scopeLine: 681, flags: DIFlagPrototyped, isOptimized: false)
!1326 = !DISubprogram(name: "b_not", linkageName: "_ZN11ap_int_baseILi36ELb1EE5b_notEv", scope: !1116, file: !631, line: 686, type: !1140, isLocal: false, isDefinition: false, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: false)
!1327 = !DISubprogram(name: "checkOverflowCsim", linkageName: "_ZNK11ap_int_baseILi36ELb1EE17checkOverflowCsimEibb", scope: !1116, file: !631, line: 760, type: !1328, isLocal: false, isDefinition: false, scopeLine: 760, flags: DIFlagPrototyped, isOptimized: false)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!45, !1137, !21, !45, !45}
!1330 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi36ELb1EEppEv", scope: !1116, file: !631, line: 865, type: !1315, isLocal: false, isDefinition: false, scopeLine: 865, flags: DIFlagPrototyped, isOptimized: false)
!1331 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi36ELb1EEmmEv", scope: !1116, file: !631, line: 869, type: !1315, isLocal: false, isDefinition: false, scopeLine: 869, flags: DIFlagPrototyped, isOptimized: false)
!1332 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi36ELb1EEppEi", scope: !1116, file: !631, line: 877, type: !1333, isLocal: false, isDefinition: false, scopeLine: 877, flags: DIFlagPrototyped, isOptimized: false)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!1335, !1142, !21}
!1335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1336)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "arg1", scope: !1337, file: !631, line: 167, baseType: !1109)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<36, true>", scope: !1116, file: !631, line: 134, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !1111, identifier: "_ZTSN11ap_int_baseILi36ELb1EE5RTypeILi36ELb1EEE")
!1338 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi36ELb1EEmmEi", scope: !1116, file: !631, line: 882, type: !1333, isLocal: false, isDefinition: false, scopeLine: 882, flags: DIFlagPrototyped, isOptimized: false)
!1339 = !DISubprogram(name: "operator+", linkageName: "_ZNK11ap_int_baseILi36ELb1EEpsEv", scope: !1116, file: !631, line: 891, type: !1340, isLocal: false, isDefinition: false, scopeLine: 891, flags: DIFlagPrototyped, isOptimized: false)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!1336, !1137}
!1342 = !DISubprogram(name: "operator-", linkageName: "_ZNK11ap_int_baseILi36ELb1EEngEv", scope: !1116, file: !631, line: 894, type: !1343, isLocal: false, isDefinition: false, scopeLine: 894, flags: DIFlagPrototyped, isOptimized: false)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!1345, !1137}
!1345 = !DIDerivedType(tag: DW_TAG_typedef, name: "minus", scope: !1346, file: !631, line: 163, baseType: !1347)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<1, false>", scope: !1116, file: !631, line: 134, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !376, identifier: "_ZTSN11ap_int_baseILi36ELb1EE5RTypeILi1ELb0EEE")
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1348, file: !631, line: 103, baseType: !1351)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_int_factory<37, true>", file: !631, line: 103, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !1349, identifier: "_ZTS15_ap_int_factoryILi37ELb1EE")
!1349 = !{!1350, !382}
!1350 = !DITemplateValueParameter(name: "_AP_W2", type: !21, value: i32 37)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int<37>", file: !694, line: 137, flags: DIFlagFwdDecl, identifier: "_ZTS6ap_intILi37EE")
!1352 = !DISubprogram(name: "operator!", linkageName: "_ZNK11ap_int_baseILi36ELb1EEntEv", scope: !1116, file: !631, line: 901, type: !1257, isLocal: false, isDefinition: false, scopeLine: 901, flags: DIFlagPrototyped, isOptimized: false)
!1353 = !DISubprogram(name: "operator~", linkageName: "_ZNK11ap_int_baseILi36ELb1EEcoEv", scope: !1116, file: !631, line: 907, type: !1340, isLocal: false, isDefinition: false, scopeLine: 907, flags: DIFlagPrototyped, isOptimized: false)
!1354 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi36ELb1EE5rangeEii", scope: !1116, file: !631, line: 1045, type: !1355, isLocal: false, isDefinition: false, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: false)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!1357, !1142, !21, !21}
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_range_ref<36, true>", file: !694, line: 143, flags: DIFlagFwdDecl, identifier: "_ZTS12ap_range_refILi36ELb1EE")
!1358 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi36ELb1EE5rangeEii", scope: !1116, file: !631, line: 1052, type: !1359, isLocal: false, isDefinition: false, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: false)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!1357, !1137, !21, !21}
!1361 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi36ELb1EE5rangeEv", scope: !1116, file: !631, line: 1076, type: !1362, isLocal: false, isDefinition: false, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: false)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!1357, !1142}
!1364 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi36ELb1EE5rangeEv", scope: !1116, file: !631, line: 1080, type: !1365, isLocal: false, isDefinition: false, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: false)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!1357, !1137}
!1367 = !DISubprogram(name: "operator()", linkageName: "_ZN11ap_int_baseILi36ELb1EEclEii", scope: !1116, file: !631, line: 1084, type: !1355, isLocal: false, isDefinition: false, scopeLine: 1084, flags: DIFlagPrototyped, isOptimized: false)
!1368 = !DISubprogram(name: "operator()", linkageName: "_ZNK11ap_int_baseILi36ELb1EEclEii", scope: !1116, file: !631, line: 1088, type: !1359, isLocal: false, isDefinition: false, scopeLine: 1088, flags: DIFlagPrototyped, isOptimized: false)
!1369 = !DISubprogram(name: "operator[]", linkageName: "_ZN11ap_int_baseILi36ELb1EEixEi", scope: !1116, file: !631, line: 1126, type: !1370, isLocal: false, isDefinition: false, scopeLine: 1126, flags: DIFlagPrototyped, isOptimized: false)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!1372, !1142, !21}
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_bit_ref<36, true>", file: !694, line: 146, flags: DIFlagFwdDecl, identifier: "_ZTS10ap_bit_refILi36ELb1EE")
!1373 = !DISubprogram(name: "operator[]", linkageName: "_ZNK11ap_int_baseILi36ELb1EEixEi", scope: !1116, file: !631, line: 1142, type: !1312, isLocal: false, isDefinition: false, scopeLine: 1142, flags: DIFlagPrototyped, isOptimized: false)
!1374 = !DISubprogram(name: "bit", linkageName: "_ZN11ap_int_baseILi36ELb1EE3bitEi", scope: !1116, file: !631, line: 1155, type: !1370, isLocal: false, isDefinition: false, scopeLine: 1155, flags: DIFlagPrototyped, isOptimized: false)
!1375 = !DISubprogram(name: "bit", linkageName: "_ZNK11ap_int_baseILi36ELb1EE3bitEi", scope: !1116, file: !631, line: 1170, type: !1312, isLocal: false, isDefinition: false, scopeLine: 1170, flags: DIFlagPrototyped, isOptimized: false)
!1376 = !DISubprogram(name: "countLeadingZeros", linkageName: "_ZNK11ap_int_baseILi36ELb1EE17countLeadingZerosEv", scope: !1116, file: !631, line: 1193, type: !1135, isLocal: false, isDefinition: false, scopeLine: 1193, flags: DIFlagPrototyped, isOptimized: false)
!1377 = !DISubprogram(name: "and_reduce", linkageName: "_ZNK11ap_int_baseILi36ELb1EE10and_reduceEv", scope: !1116, file: !631, line: 1413, type: !1257, isLocal: false, isDefinition: false, scopeLine: 1413, flags: DIFlagPrototyped, isOptimized: false)
!1378 = !DISubprogram(name: "nand_reduce", linkageName: "_ZNK11ap_int_baseILi36ELb1EE11nand_reduceEv", scope: !1116, file: !631, line: 1414, type: !1257, isLocal: false, isDefinition: false, scopeLine: 1414, flags: DIFlagPrototyped, isOptimized: false)
!1379 = !DISubprogram(name: "or_reduce", linkageName: "_ZNK11ap_int_baseILi36ELb1EE9or_reduceEv", scope: !1116, file: !631, line: 1415, type: !1257, isLocal: false, isDefinition: false, scopeLine: 1415, flags: DIFlagPrototyped, isOptimized: false)
!1380 = !DISubprogram(name: "nor_reduce", linkageName: "_ZNK11ap_int_baseILi36ELb1EE10nor_reduceEv", scope: !1116, file: !631, line: 1416, type: !1257, isLocal: false, isDefinition: false, scopeLine: 1416, flags: DIFlagPrototyped, isOptimized: false)
!1381 = !DISubprogram(name: "xor_reduce", linkageName: "_ZNK11ap_int_baseILi36ELb1EE10xor_reduceEv", scope: !1116, file: !631, line: 1417, type: !1257, isLocal: false, isDefinition: false, scopeLine: 1417, flags: DIFlagPrototyped, isOptimized: false)
!1382 = !DISubprogram(name: "xnor_reduce", linkageName: "_ZNK11ap_int_baseILi36ELb1EE11xnor_reduceEv", scope: !1116, file: !631, line: 1418, type: !1257, isLocal: false, isDefinition: false, scopeLine: 1418, flags: DIFlagPrototyped, isOptimized: false)
!1383 = !DISubprogram(name: "to_string", linkageName: "_ZNK11ap_int_baseILi36ELb1EE9to_stringEab", scope: !1116, file: !631, line: 1433, type: !1384, isLocal: false, isDefinition: false, scopeLine: 1433, flags: DIFlagPrototyped, isOptimized: false)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!1386, !1137, !71, !45}
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!1387 = !{!1388, !402}
!1388 = !DITemplateValueParameter(name: "_AP_W", type: !21, value: i32 36)
!1389 = !DISubprogram(name: "ap_int", scope: !1113, file: !627, line: 21, type: !1390, isLocal: false, isDefinition: false, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: false)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{null, !1392}
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1393 = !DISubprogram(name: "ap_int", scope: !1113, file: !627, line: 57, type: !1394, isLocal: false, isDefinition: false, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{null, !1392, !1396, !45}
!1396 = !DIBasicType(name: "uint36", size: 36, encoding: DW_ATE_unsigned)
!1397 = !DISubprogram(name: "ap_int", scope: !1113, file: !627, line: 127, type: !1398, isLocal: false, isDefinition: false, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: false)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{null, !1392, !45}
!1400 = !DISubprogram(name: "ap_int", scope: !1113, file: !627, line: 128, type: !1401, isLocal: false, isDefinition: false, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{null, !1392, !66}
!1403 = !DISubprogram(name: "ap_int", scope: !1113, file: !627, line: 129, type: !1404, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: false)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{null, !1392, !71}
!1406 = !DISubprogram(name: "ap_int", scope: !1113, file: !627, line: 130, type: !1407, isLocal: false, isDefinition: false, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: false)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{null, !1392, !76}
!1409 = !DISubprogram(name: "ap_int", scope: !1113, file: !627, line: 131, type: !1410, isLocal: false, isDefinition: false, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{null, !1392, !81}
!1412 = !DISubprogram(name: "ap_int", scope: !1113, file: !627, line: 132, type: !1413, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{null, !1392, !86}
!1415 = !DISubprogram(name: "ap_int", scope: !1113, file: !627, line: 133, type: !1416, isLocal: false, isDefinition: false, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{null, !1392, !21}
!1418 = !DISubprogram(name: "ap_int", scope: !1113, file: !627, line: 134, type: !1419, isLocal: false, isDefinition: false, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{null, !1392, !34}
!1421 = !DISubprogram(name: "ap_int", scope: !1113, file: !627, line: 135, type: !1422, isLocal: false, isDefinition: false, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{null, !1392, !98}
!1424 = !DISubprogram(name: "ap_int", scope: !1113, file: !627, line: 136, type: !1425, isLocal: false, isDefinition: false, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: false)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{null, !1392, !103}
!1427 = !DISubprogram(name: "ap_int", scope: !1113, file: !627, line: 137, type: !1428, isLocal: false, isDefinition: false, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{null, !1392, !693}
!1430 = !DISubprogram(name: "ap_int", scope: !1113, file: !627, line: 138, type: !1431, isLocal: false, isDefinition: false, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{null, !1392, !699}
!1433 = !DISubprogram(name: "ap_int", scope: !1113, file: !627, line: 140, type: !1434, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{null, !1392, !128}
!1436 = !DISubprogram(name: "ap_int", scope: !1113, file: !627, line: 141, type: !1437, isLocal: false, isDefinition: false, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{null, !1392, !13}
!1439 = !DISubprogram(name: "ap_int", scope: !1113, file: !627, line: 142, type: !1440, isLocal: false, isDefinition: false, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{null, !1392, !703}
!1442 = !DISubprogram(name: "ap_int", scope: !1113, file: !627, line: 145, type: !1443, isLocal: false, isDefinition: false, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{null, !1392, !132}
!1445 = !DISubprogram(name: "ap_int", scope: !1113, file: !627, line: 147, type: !1446, isLocal: false, isDefinition: false, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{null, !1392, !132, !71}
!1448 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi36EEaSERKS0_", scope: !1113, file: !627, line: 152, type: !1449, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: false)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!1451, !1392, !1452}
!1451 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1113, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1453, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1113)
!1454 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi36EEaSERVKS0_", scope: !1113, file: !627, line: 161, type: !1455, isLocal: false, isDefinition: false, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!1451, !1392, !1457}
!1457 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1458, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1459)
!1459 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1113)
!1460 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi36EEaSERKS0_", scope: !1113, file: !627, line: 167, type: !1461, isLocal: false, isDefinition: false, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{null, !1463, !1452}
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1464 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi36EEaSERVKS0_", scope: !1113, file: !627, line: 171, type: !1465, isLocal: false, isDefinition: false, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: false)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{null, !1463, !1457}
!1467 = !{!1388}
!1468 = !DISubprogram(name: "operator!", linkageName: "_ZNK11ap_int_baseILi35ELb1EEntEv", scope: !878, file: !631, line: 901, type: !1019, isLocal: false, isDefinition: false, scopeLine: 901, flags: DIFlagPrototyped, isOptimized: false)
!1469 = !DISubprogram(name: "operator~", linkageName: "_ZNK11ap_int_baseILi35ELb1EEcoEv", scope: !878, file: !631, line: 907, type: !1102, isLocal: false, isDefinition: false, scopeLine: 907, flags: DIFlagPrototyped, isOptimized: false)
!1470 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi35ELb1EE5rangeEii", scope: !878, file: !631, line: 1045, type: !1471, isLocal: false, isDefinition: false, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: false)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!1473, !904, !21, !21}
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_range_ref<35, true>", file: !694, line: 143, flags: DIFlagFwdDecl, identifier: "_ZTS12ap_range_refILi35ELb1EE")
!1474 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi35ELb1EE5rangeEii", scope: !878, file: !631, line: 1052, type: !1475, isLocal: false, isDefinition: false, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: false)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!1473, !899, !21, !21}
!1477 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi35ELb1EE5rangeEv", scope: !878, file: !631, line: 1076, type: !1478, isLocal: false, isDefinition: false, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: false)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!1473, !904}
!1480 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi35ELb1EE5rangeEv", scope: !878, file: !631, line: 1080, type: !1481, isLocal: false, isDefinition: false, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: false)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{!1473, !899}
!1483 = !DISubprogram(name: "operator()", linkageName: "_ZN11ap_int_baseILi35ELb1EEclEii", scope: !878, file: !631, line: 1084, type: !1471, isLocal: false, isDefinition: false, scopeLine: 1084, flags: DIFlagPrototyped, isOptimized: false)
!1484 = !DISubprogram(name: "operator()", linkageName: "_ZNK11ap_int_baseILi35ELb1EEclEii", scope: !878, file: !631, line: 1088, type: !1475, isLocal: false, isDefinition: false, scopeLine: 1088, flags: DIFlagPrototyped, isOptimized: false)
!1485 = !DISubprogram(name: "operator[]", linkageName: "_ZN11ap_int_baseILi35ELb1EEixEi", scope: !878, file: !631, line: 1126, type: !1486, isLocal: false, isDefinition: false, scopeLine: 1126, flags: DIFlagPrototyped, isOptimized: false)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!1488, !904, !21}
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_bit_ref<35, true>", file: !694, line: 146, flags: DIFlagFwdDecl, identifier: "_ZTS10ap_bit_refILi35ELb1EE")
!1489 = !DISubprogram(name: "operator[]", linkageName: "_ZNK11ap_int_baseILi35ELb1EEixEi", scope: !878, file: !631, line: 1142, type: !1074, isLocal: false, isDefinition: false, scopeLine: 1142, flags: DIFlagPrototyped, isOptimized: false)
!1490 = !DISubprogram(name: "bit", linkageName: "_ZN11ap_int_baseILi35ELb1EE3bitEi", scope: !878, file: !631, line: 1155, type: !1486, isLocal: false, isDefinition: false, scopeLine: 1155, flags: DIFlagPrototyped, isOptimized: false)
!1491 = !DISubprogram(name: "bit", linkageName: "_ZNK11ap_int_baseILi35ELb1EE3bitEi", scope: !878, file: !631, line: 1170, type: !1074, isLocal: false, isDefinition: false, scopeLine: 1170, flags: DIFlagPrototyped, isOptimized: false)
!1492 = !DISubprogram(name: "countLeadingZeros", linkageName: "_ZNK11ap_int_baseILi35ELb1EE17countLeadingZerosEv", scope: !878, file: !631, line: 1193, type: !897, isLocal: false, isDefinition: false, scopeLine: 1193, flags: DIFlagPrototyped, isOptimized: false)
!1493 = !DISubprogram(name: "and_reduce", linkageName: "_ZNK11ap_int_baseILi35ELb1EE10and_reduceEv", scope: !878, file: !631, line: 1413, type: !1019, isLocal: false, isDefinition: false, scopeLine: 1413, flags: DIFlagPrototyped, isOptimized: false)
!1494 = !DISubprogram(name: "nand_reduce", linkageName: "_ZNK11ap_int_baseILi35ELb1EE11nand_reduceEv", scope: !878, file: !631, line: 1414, type: !1019, isLocal: false, isDefinition: false, scopeLine: 1414, flags: DIFlagPrototyped, isOptimized: false)
!1495 = !DISubprogram(name: "or_reduce", linkageName: "_ZNK11ap_int_baseILi35ELb1EE9or_reduceEv", scope: !878, file: !631, line: 1415, type: !1019, isLocal: false, isDefinition: false, scopeLine: 1415, flags: DIFlagPrototyped, isOptimized: false)
!1496 = !DISubprogram(name: "nor_reduce", linkageName: "_ZNK11ap_int_baseILi35ELb1EE10nor_reduceEv", scope: !878, file: !631, line: 1416, type: !1019, isLocal: false, isDefinition: false, scopeLine: 1416, flags: DIFlagPrototyped, isOptimized: false)
!1497 = !DISubprogram(name: "xor_reduce", linkageName: "_ZNK11ap_int_baseILi35ELb1EE10xor_reduceEv", scope: !878, file: !631, line: 1417, type: !1019, isLocal: false, isDefinition: false, scopeLine: 1417, flags: DIFlagPrototyped, isOptimized: false)
!1498 = !DISubprogram(name: "xnor_reduce", linkageName: "_ZNK11ap_int_baseILi35ELb1EE11xnor_reduceEv", scope: !878, file: !631, line: 1418, type: !1019, isLocal: false, isDefinition: false, scopeLine: 1418, flags: DIFlagPrototyped, isOptimized: false)
!1499 = !DISubprogram(name: "to_string", linkageName: "_ZNK11ap_int_baseILi35ELb1EE9to_stringEab", scope: !878, file: !631, line: 1433, type: !1500, isLocal: false, isDefinition: false, scopeLine: 1433, flags: DIFlagPrototyped, isOptimized: false)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!1386, !899, !71, !45}
!1502 = !{!1503, !402}
!1503 = !DITemplateValueParameter(name: "_AP_W", type: !21, value: i32 35)
!1504 = !DISubprogram(name: "ap_int", scope: !875, file: !627, line: 21, type: !1505, isLocal: false, isDefinition: false, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: false)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{null, !1507}
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1508 = !DISubprogram(name: "ap_int", scope: !875, file: !627, line: 57, type: !1509, isLocal: false, isDefinition: false, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{null, !1507, !1511, !45}
!1511 = !DIBasicType(name: "uint35", size: 35, encoding: DW_ATE_unsigned)
!1512 = !DISubprogram(name: "ap_int", scope: !875, file: !627, line: 127, type: !1513, isLocal: false, isDefinition: false, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: false)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{null, !1507, !45}
!1515 = !DISubprogram(name: "ap_int", scope: !875, file: !627, line: 128, type: !1516, isLocal: false, isDefinition: false, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{null, !1507, !66}
!1518 = !DISubprogram(name: "ap_int", scope: !875, file: !627, line: 129, type: !1519, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: false)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{null, !1507, !71}
!1521 = !DISubprogram(name: "ap_int", scope: !875, file: !627, line: 130, type: !1522, isLocal: false, isDefinition: false, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: false)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{null, !1507, !76}
!1524 = !DISubprogram(name: "ap_int", scope: !875, file: !627, line: 131, type: !1525, isLocal: false, isDefinition: false, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{null, !1507, !81}
!1527 = !DISubprogram(name: "ap_int", scope: !875, file: !627, line: 132, type: !1528, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{null, !1507, !86}
!1530 = !DISubprogram(name: "ap_int", scope: !875, file: !627, line: 133, type: !1531, isLocal: false, isDefinition: false, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{null, !1507, !21}
!1533 = !DISubprogram(name: "ap_int", scope: !875, file: !627, line: 134, type: !1534, isLocal: false, isDefinition: false, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{null, !1507, !34}
!1536 = !DISubprogram(name: "ap_int", scope: !875, file: !627, line: 135, type: !1537, isLocal: false, isDefinition: false, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{null, !1507, !98}
!1539 = !DISubprogram(name: "ap_int", scope: !875, file: !627, line: 136, type: !1540, isLocal: false, isDefinition: false, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: false)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{null, !1507, !103}
!1542 = !DISubprogram(name: "ap_int", scope: !875, file: !627, line: 137, type: !1543, isLocal: false, isDefinition: false, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{null, !1507, !693}
!1545 = !DISubprogram(name: "ap_int", scope: !875, file: !627, line: 138, type: !1546, isLocal: false, isDefinition: false, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{null, !1507, !699}
!1548 = !DISubprogram(name: "ap_int", scope: !875, file: !627, line: 140, type: !1549, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{null, !1507, !128}
!1551 = !DISubprogram(name: "ap_int", scope: !875, file: !627, line: 141, type: !1552, isLocal: false, isDefinition: false, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{null, !1507, !13}
!1554 = !DISubprogram(name: "ap_int", scope: !875, file: !627, line: 142, type: !1555, isLocal: false, isDefinition: false, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{null, !1507, !703}
!1557 = !DISubprogram(name: "ap_int", scope: !875, file: !627, line: 145, type: !1558, isLocal: false, isDefinition: false, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{null, !1507, !132}
!1560 = !DISubprogram(name: "ap_int", scope: !875, file: !627, line: 147, type: !1561, isLocal: false, isDefinition: false, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{null, !1507, !132, !71}
!1563 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi35EEaSERKS0_", scope: !875, file: !627, line: 152, type: !1564, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: false)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!1566, !1507, !1567}
!1566 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !875, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !875)
!1569 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi35EEaSERVKS0_", scope: !875, file: !627, line: 161, type: !1570, isLocal: false, isDefinition: false, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!1566, !1507, !1572}
!1572 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1573, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1574)
!1574 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !875)
!1575 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi35EEaSERKS0_", scope: !875, file: !627, line: 167, type: !1576, isLocal: false, isDefinition: false, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{null, !1578, !1567}
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1579 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi35EEaSERVKS0_", scope: !875, file: !627, line: 171, type: !1580, isLocal: false, isDefinition: false, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: false)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{null, !1578, !1572}
!1582 = !{!1503}
!1583 = !DISubprogram(name: "operator!", linkageName: "_ZNK11ap_int_baseILi34ELb1EEntEv", scope: !630, file: !631, line: 901, type: !780, isLocal: false, isDefinition: false, scopeLine: 901, flags: DIFlagPrototyped, isOptimized: false)
!1584 = !DISubprogram(name: "operator~", linkageName: "_ZNK11ap_int_baseILi34ELb1EEcoEv", scope: !630, file: !631, line: 907, type: !864, isLocal: false, isDefinition: false, scopeLine: 907, flags: DIFlagPrototyped, isOptimized: false)
!1585 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi34ELb1EE5rangeEii", scope: !630, file: !631, line: 1045, type: !1586, isLocal: false, isDefinition: false, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: false)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!1588, !658, !21, !21}
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_range_ref<34, true>", file: !694, line: 143, flags: DIFlagFwdDecl, identifier: "_ZTS12ap_range_refILi34ELb1EE")
!1589 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi34ELb1EE5rangeEii", scope: !630, file: !631, line: 1052, type: !1590, isLocal: false, isDefinition: false, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: false)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!1588, !653, !21, !21}
!1592 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi34ELb1EE5rangeEv", scope: !630, file: !631, line: 1076, type: !1593, isLocal: false, isDefinition: false, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: false)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!1588, !658}
!1595 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi34ELb1EE5rangeEv", scope: !630, file: !631, line: 1080, type: !1596, isLocal: false, isDefinition: false, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: false)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!1588, !653}
!1598 = !DISubprogram(name: "operator()", linkageName: "_ZN11ap_int_baseILi34ELb1EEclEii", scope: !630, file: !631, line: 1084, type: !1586, isLocal: false, isDefinition: false, scopeLine: 1084, flags: DIFlagPrototyped, isOptimized: false)
!1599 = !DISubprogram(name: "operator()", linkageName: "_ZNK11ap_int_baseILi34ELb1EEclEii", scope: !630, file: !631, line: 1088, type: !1590, isLocal: false, isDefinition: false, scopeLine: 1088, flags: DIFlagPrototyped, isOptimized: false)
!1600 = !DISubprogram(name: "operator[]", linkageName: "_ZN11ap_int_baseILi34ELb1EEixEi", scope: !630, file: !631, line: 1126, type: !1601, isLocal: false, isDefinition: false, scopeLine: 1126, flags: DIFlagPrototyped, isOptimized: false)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!1603, !658, !21}
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_bit_ref<34, true>", file: !694, line: 146, flags: DIFlagFwdDecl, identifier: "_ZTS10ap_bit_refILi34ELb1EE")
!1604 = !DISubprogram(name: "operator[]", linkageName: "_ZNK11ap_int_baseILi34ELb1EEixEi", scope: !630, file: !631, line: 1142, type: !835, isLocal: false, isDefinition: false, scopeLine: 1142, flags: DIFlagPrototyped, isOptimized: false)
!1605 = !DISubprogram(name: "bit", linkageName: "_ZN11ap_int_baseILi34ELb1EE3bitEi", scope: !630, file: !631, line: 1155, type: !1601, isLocal: false, isDefinition: false, scopeLine: 1155, flags: DIFlagPrototyped, isOptimized: false)
!1606 = !DISubprogram(name: "bit", linkageName: "_ZNK11ap_int_baseILi34ELb1EE3bitEi", scope: !630, file: !631, line: 1170, type: !835, isLocal: false, isDefinition: false, scopeLine: 1170, flags: DIFlagPrototyped, isOptimized: false)
!1607 = !DISubprogram(name: "countLeadingZeros", linkageName: "_ZNK11ap_int_baseILi34ELb1EE17countLeadingZerosEv", scope: !630, file: !631, line: 1193, type: !651, isLocal: false, isDefinition: false, scopeLine: 1193, flags: DIFlagPrototyped, isOptimized: false)
!1608 = !DISubprogram(name: "and_reduce", linkageName: "_ZNK11ap_int_baseILi34ELb1EE10and_reduceEv", scope: !630, file: !631, line: 1413, type: !780, isLocal: false, isDefinition: false, scopeLine: 1413, flags: DIFlagPrototyped, isOptimized: false)
!1609 = !DISubprogram(name: "nand_reduce", linkageName: "_ZNK11ap_int_baseILi34ELb1EE11nand_reduceEv", scope: !630, file: !631, line: 1414, type: !780, isLocal: false, isDefinition: false, scopeLine: 1414, flags: DIFlagPrototyped, isOptimized: false)
!1610 = !DISubprogram(name: "or_reduce", linkageName: "_ZNK11ap_int_baseILi34ELb1EE9or_reduceEv", scope: !630, file: !631, line: 1415, type: !780, isLocal: false, isDefinition: false, scopeLine: 1415, flags: DIFlagPrototyped, isOptimized: false)
!1611 = !DISubprogram(name: "nor_reduce", linkageName: "_ZNK11ap_int_baseILi34ELb1EE10nor_reduceEv", scope: !630, file: !631, line: 1416, type: !780, isLocal: false, isDefinition: false, scopeLine: 1416, flags: DIFlagPrototyped, isOptimized: false)
!1612 = !DISubprogram(name: "xor_reduce", linkageName: "_ZNK11ap_int_baseILi34ELb1EE10xor_reduceEv", scope: !630, file: !631, line: 1417, type: !780, isLocal: false, isDefinition: false, scopeLine: 1417, flags: DIFlagPrototyped, isOptimized: false)
!1613 = !DISubprogram(name: "xnor_reduce", linkageName: "_ZNK11ap_int_baseILi34ELb1EE11xnor_reduceEv", scope: !630, file: !631, line: 1418, type: !780, isLocal: false, isDefinition: false, scopeLine: 1418, flags: DIFlagPrototyped, isOptimized: false)
!1614 = !DISubprogram(name: "to_string", linkageName: "_ZNK11ap_int_baseILi34ELb1EE9to_stringEab", scope: !630, file: !631, line: 1433, type: !1615, isLocal: false, isDefinition: false, scopeLine: 1433, flags: DIFlagPrototyped, isOptimized: false)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!1386, !653, !71, !45}
!1617 = !{!1618, !402}
!1618 = !DITemplateValueParameter(name: "_AP_W", type: !21, value: i32 34)
!1619 = !DISubprogram(name: "ap_int", scope: !626, file: !627, line: 21, type: !1620, isLocal: false, isDefinition: false, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: false)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{null, !1622}
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1623 = !DISubprogram(name: "ap_int", scope: !626, file: !627, line: 57, type: !1624, isLocal: false, isDefinition: false, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{null, !1622, !1626, !45}
!1626 = !DIBasicType(name: "uint34", size: 34, encoding: DW_ATE_unsigned)
!1627 = !DISubprogram(name: "ap_int", scope: !626, file: !627, line: 127, type: !1628, isLocal: false, isDefinition: false, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: false)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{null, !1622, !45}
!1630 = !DISubprogram(name: "ap_int", scope: !626, file: !627, line: 128, type: !1631, isLocal: false, isDefinition: false, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{null, !1622, !66}
!1633 = !DISubprogram(name: "ap_int", scope: !626, file: !627, line: 129, type: !1634, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: false)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{null, !1622, !71}
!1636 = !DISubprogram(name: "ap_int", scope: !626, file: !627, line: 130, type: !1637, isLocal: false, isDefinition: false, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: false)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{null, !1622, !76}
!1639 = !DISubprogram(name: "ap_int", scope: !626, file: !627, line: 131, type: !1640, isLocal: false, isDefinition: false, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{null, !1622, !81}
!1642 = !DISubprogram(name: "ap_int", scope: !626, file: !627, line: 132, type: !1643, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{null, !1622, !86}
!1645 = !DISubprogram(name: "ap_int", scope: !626, file: !627, line: 133, type: !1646, isLocal: false, isDefinition: false, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{null, !1622, !21}
!1648 = !DISubprogram(name: "ap_int", scope: !626, file: !627, line: 134, type: !1649, isLocal: false, isDefinition: false, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{null, !1622, !34}
!1651 = !DISubprogram(name: "ap_int", scope: !626, file: !627, line: 135, type: !1652, isLocal: false, isDefinition: false, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{null, !1622, !98}
!1654 = !DISubprogram(name: "ap_int", scope: !626, file: !627, line: 136, type: !1655, isLocal: false, isDefinition: false, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: false)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{null, !1622, !103}
!1657 = !DISubprogram(name: "ap_int", scope: !626, file: !627, line: 137, type: !1658, isLocal: false, isDefinition: false, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{null, !1622, !693}
!1660 = !DISubprogram(name: "ap_int", scope: !626, file: !627, line: 138, type: !1661, isLocal: false, isDefinition: false, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{null, !1622, !699}
!1663 = !DISubprogram(name: "ap_int", scope: !626, file: !627, line: 140, type: !1664, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{null, !1622, !128}
!1666 = !DISubprogram(name: "ap_int", scope: !626, file: !627, line: 141, type: !1667, isLocal: false, isDefinition: false, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{null, !1622, !13}
!1669 = !DISubprogram(name: "ap_int", scope: !626, file: !627, line: 142, type: !1670, isLocal: false, isDefinition: false, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{null, !1622, !703}
!1672 = !DISubprogram(name: "ap_int", scope: !626, file: !627, line: 145, type: !1673, isLocal: false, isDefinition: false, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{null, !1622, !132}
!1675 = !DISubprogram(name: "ap_int", scope: !626, file: !627, line: 147, type: !1676, isLocal: false, isDefinition: false, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{null, !1622, !132, !71}
!1678 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi34EEaSERKS0_", scope: !626, file: !627, line: 152, type: !1679, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: false)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!1681, !1622, !1682}
!1681 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !626, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1683, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !626)
!1684 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi34EEaSERVKS0_", scope: !626, file: !627, line: 161, type: !1685, isLocal: false, isDefinition: false, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!1681, !1622, !1687}
!1687 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1688, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1689)
!1689 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !626)
!1690 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi34EEaSERKS0_", scope: !626, file: !627, line: 167, type: !1691, isLocal: false, isDefinition: false, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{null, !1693, !1682}
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1694 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi34EEaSERVKS0_", scope: !626, file: !627, line: 171, type: !1695, isLocal: false, isDefinition: false, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: false)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{null, !1693, !1687}
!1697 = !{!1618}
!1698 = !DISubprogram(name: "operator!", linkageName: "_ZNK11ap_int_baseILi33ELb1EEntEv", scope: !386, file: !26, line: 947, type: !532, isLocal: false, isDefinition: false, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: false)
!1699 = !DISubprogram(name: "operator~", linkageName: "_ZNK11ap_int_baseILi33ELb1EEcoEv", scope: !386, file: !26, line: 953, type: !615, isLocal: false, isDefinition: false, scopeLine: 953, flags: DIFlagPrototyped, isOptimized: false)
!1700 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi33ELb1EE5rangeEii", scope: !386, file: !26, line: 1091, type: !1701, isLocal: false, isDefinition: false, scopeLine: 1091, flags: DIFlagPrototyped, isOptimized: false)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!1703, !413, !21, !21}
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_range_ref<33, true>", file: !109, line: 189, flags: DIFlagFwdDecl, identifier: "_ZTS12ap_range_refILi33ELb1EE")
!1704 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi33ELb1EE5rangeEii", scope: !386, file: !26, line: 1098, type: !1705, isLocal: false, isDefinition: false, scopeLine: 1098, flags: DIFlagPrototyped, isOptimized: false)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!1703, !408, !21, !21}
!1707 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi33ELb1EE5rangeEv", scope: !386, file: !26, line: 1122, type: !1708, isLocal: false, isDefinition: false, scopeLine: 1122, flags: DIFlagPrototyped, isOptimized: false)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{!1703, !413}
!1710 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi33ELb1EE5rangeEv", scope: !386, file: !26, line: 1126, type: !1711, isLocal: false, isDefinition: false, scopeLine: 1126, flags: DIFlagPrototyped, isOptimized: false)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!1703, !408}
!1713 = !DISubprogram(name: "operator()", linkageName: "_ZN11ap_int_baseILi33ELb1EEclEii", scope: !386, file: !26, line: 1130, type: !1701, isLocal: false, isDefinition: false, scopeLine: 1130, flags: DIFlagPrototyped, isOptimized: false)
!1714 = !DISubprogram(name: "operator()", linkageName: "_ZNK11ap_int_baseILi33ELb1EEclEii", scope: !386, file: !26, line: 1134, type: !1705, isLocal: false, isDefinition: false, scopeLine: 1134, flags: DIFlagPrototyped, isOptimized: false)
!1715 = !DISubprogram(name: "operator[]", linkageName: "_ZN11ap_int_baseILi33ELb1EEixEi", scope: !386, file: !26, line: 1172, type: !1716, isLocal: false, isDefinition: false, scopeLine: 1172, flags: DIFlagPrototyped, isOptimized: false)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!1718, !413, !21}
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_bit_ref<33, true>", file: !1719, line: 807, size: 128, flags: DIFlagTypePassByReference, elements: !1720, templateParams: !1805, identifier: "_ZTS10ap_bit_refILi33ELb1EE")
!1719 = !DIFile(filename: "E:/Xilinx/Vitis_HLS/2022.1/common/technology/autopilot\5Cap_int_ref.h", directory: "C:\5CUsers\5CShaneWu\5COneDrive\5CDesktop\5CDocuments\5CNTU\5CHLS\5ClabB")
!1720 = !{!1721, !1724, !1725, !1731, !1735, !1740, !1744, !1745, !1749, !1752, !1755, !1758, !1761, !1764, !1767, !1770, !1773, !1776, !1779, !1782, !1785, !1788, !1791, !1794, !1795, !1798, !1799, !1802}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "d_bv", scope: !1718, file: !1719, line: 812, baseType: !1722, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1723, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_typedef, name: "ref_type", scope: !1718, file: !1719, line: 811, baseType: !386)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "d_index", scope: !1718, file: !1719, line: 813, baseType: !21, size: 32, offset: 64)
!1725 = !DISubprogram(name: "ap_bit_ref", scope: !1718, file: !1719, line: 817, type: !1726, isLocal: false, isDefinition: false, scopeLine: 817, flags: DIFlagPrototyped, isOptimized: false)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{null, !1728, !1729}
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1729 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1730, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1718)
!1731 = !DISubprogram(name: "ap_bit_ref", scope: !1718, file: !1719, line: 820, type: !1732, isLocal: false, isDefinition: false, scopeLine: 820, flags: DIFlagPrototyped, isOptimized: false)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{null, !1728, !1734, !21}
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1735 = !DISubprogram(name: "ap_bit_ref", scope: !1718, file: !1719, line: 822, type: !1736, isLocal: false, isDefinition: false, scopeLine: 822, flags: DIFlagPrototyped, isOptimized: false)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{null, !1728, !1738, !21}
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1723)
!1740 = !DISubprogram(name: "operator bool", linkageName: "_ZNK10ap_bit_refILi33ELb1EEcvbEv", scope: !1718, file: !1719, line: 825, type: !1741, isLocal: false, isDefinition: false, scopeLine: 825, flags: DIFlagPrototyped, isOptimized: false)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!45, !1743}
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1744 = !DISubprogram(name: "to_bool", linkageName: "_ZNK10ap_bit_refILi33ELb1EE7to_boolEv", scope: !1718, file: !1719, line: 826, type: !1741, isLocal: false, isDefinition: false, scopeLine: 826, flags: DIFlagPrototyped, isOptimized: false)
!1745 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSEb", scope: !1718, file: !1719, line: 844, type: !1746, isLocal: false, isDefinition: false, scopeLine: 844, flags: DIFlagPrototyped, isOptimized: false)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!1748, !1728, !45}
!1748 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1718, size: 64)
!1749 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSEc", scope: !1718, file: !1719, line: 845, type: !1750, isLocal: false, isDefinition: false, scopeLine: 845, flags: DIFlagPrototyped, isOptimized: false)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!1748, !1728, !66}
!1752 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSEa", scope: !1718, file: !1719, line: 846, type: !1753, isLocal: false, isDefinition: false, scopeLine: 846, flags: DIFlagPrototyped, isOptimized: false)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!1748, !1728, !71}
!1755 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSEh", scope: !1718, file: !1719, line: 847, type: !1756, isLocal: false, isDefinition: false, scopeLine: 847, flags: DIFlagPrototyped, isOptimized: false)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!1748, !1728, !76}
!1758 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSEs", scope: !1718, file: !1719, line: 848, type: !1759, isLocal: false, isDefinition: false, scopeLine: 848, flags: DIFlagPrototyped, isOptimized: false)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!1748, !1728, !81}
!1761 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSEt", scope: !1718, file: !1719, line: 849, type: !1762, isLocal: false, isDefinition: false, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: false)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!1748, !1728, !86}
!1764 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSEi", scope: !1718, file: !1719, line: 850, type: !1765, isLocal: false, isDefinition: false, scopeLine: 850, flags: DIFlagPrototyped, isOptimized: false)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!1748, !1728, !21}
!1767 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSEj", scope: !1718, file: !1719, line: 851, type: !1768, isLocal: false, isDefinition: false, scopeLine: 851, flags: DIFlagPrototyped, isOptimized: false)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!1748, !1728, !34}
!1770 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSEl", scope: !1718, file: !1719, line: 852, type: !1771, isLocal: false, isDefinition: false, scopeLine: 852, flags: DIFlagPrototyped, isOptimized: false)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{!1748, !1728, !98}
!1773 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSEm", scope: !1718, file: !1719, line: 853, type: !1774, isLocal: false, isDefinition: false, scopeLine: 853, flags: DIFlagPrototyped, isOptimized: false)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!1748, !1728, !103}
!1776 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSEx", scope: !1718, file: !1719, line: 854, type: !1777, isLocal: false, isDefinition: false, scopeLine: 854, flags: DIFlagPrototyped, isOptimized: false)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!1748, !1728, !108}
!1779 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSEy", scope: !1718, file: !1719, line: 855, type: !1780, isLocal: false, isDefinition: false, scopeLine: 855, flags: DIFlagPrototyped, isOptimized: false)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{!1748, !1728, !115}
!1782 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSEDh", scope: !1718, file: !1719, line: 866, type: !1783, isLocal: false, isDefinition: false, scopeLine: 866, flags: DIFlagPrototyped, isOptimized: false)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!1748, !1728, !120}
!1785 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSEf", scope: !1718, file: !1719, line: 867, type: !1786, isLocal: false, isDefinition: false, scopeLine: 867, flags: DIFlagPrototyped, isOptimized: false)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!1748, !1728, !13}
!1788 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSEd", scope: !1718, file: !1719, line: 868, type: !1789, isLocal: false, isDefinition: false, scopeLine: 868, flags: DIFlagPrototyped, isOptimized: false)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{!1748, !1728, !128}
!1791 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi33ELb1EEaSERKS0_", scope: !1718, file: !1719, line: 885, type: !1792, isLocal: false, isDefinition: false, scopeLine: 885, flags: DIFlagPrototyped, isOptimized: false)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!1748, !1728, !1729}
!1794 = !DISubprogram(name: "get", linkageName: "_ZNK10ap_bit_refILi33ELb1EE3getEv", scope: !1718, file: !1719, line: 1005, type: !1741, isLocal: false, isDefinition: false, scopeLine: 1005, flags: DIFlagPrototyped, isOptimized: false)
!1795 = !DISubprogram(name: "get", linkageName: "_ZN10ap_bit_refILi33ELb1EE3getEv", scope: !1718, file: !1719, line: 1007, type: !1796, isLocal: false, isDefinition: false, scopeLine: 1007, flags: DIFlagPrototyped, isOptimized: false)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{!45, !1728}
!1798 = !DISubprogram(name: "operator~", linkageName: "_ZNK10ap_bit_refILi33ELb1EEcoEv", scope: !1718, file: !1719, line: 1014, type: !1741, isLocal: false, isDefinition: false, scopeLine: 1014, flags: DIFlagPrototyped, isOptimized: false)
!1799 = !DISubprogram(name: "length", linkageName: "_ZNK10ap_bit_refILi33ELb1EE6lengthEv", scope: !1718, file: !1719, line: 1019, type: !1800, isLocal: false, isDefinition: false, scopeLine: 1019, flags: DIFlagPrototyped, isOptimized: false)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{!21, !1743}
!1802 = !DISubprogram(name: "to_string", linkageName: "_ZNK10ap_bit_refILi33ELb1EE9to_stringEv", scope: !1718, file: !1719, line: 1025, type: !1803, isLocal: false, isDefinition: false, scopeLine: 1025, flags: DIFlagPrototyped, isOptimized: false)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!1386, !1743}
!1805 = !{!1806, !402}
!1806 = !DITemplateValueParameter(name: "_AP_W", type: !21, value: i32 33)
!1807 = !DISubprogram(name: "operator[]", linkageName: "_ZNK11ap_int_baseILi33ELb1EEixEi", scope: !386, file: !26, line: 1188, type: !587, isLocal: false, isDefinition: false, scopeLine: 1188, flags: DIFlagPrototyped, isOptimized: false)
!1808 = !DISubprogram(name: "bit", linkageName: "_ZN11ap_int_baseILi33ELb1EE3bitEi", scope: !386, file: !26, line: 1201, type: !1716, isLocal: false, isDefinition: false, scopeLine: 1201, flags: DIFlagPrototyped, isOptimized: false)
!1809 = !DISubprogram(name: "bit", linkageName: "_ZNK11ap_int_baseILi33ELb1EE3bitEi", scope: !386, file: !26, line: 1216, type: !587, isLocal: false, isDefinition: false, scopeLine: 1216, flags: DIFlagPrototyped, isOptimized: false)
!1810 = !DISubprogram(name: "countLeadingZeros", linkageName: "_ZNK11ap_int_baseILi33ELb1EE17countLeadingZerosEv", scope: !386, file: !26, line: 1239, type: !406, isLocal: false, isDefinition: false, scopeLine: 1239, flags: DIFlagPrototyped, isOptimized: false)
!1811 = !DISubprogram(name: "and_reduce", linkageName: "_ZNK11ap_int_baseILi33ELb1EE10and_reduceEv", scope: !386, file: !26, line: 1459, type: !532, isLocal: false, isDefinition: false, scopeLine: 1459, flags: DIFlagPrototyped, isOptimized: false)
!1812 = !DISubprogram(name: "nand_reduce", linkageName: "_ZNK11ap_int_baseILi33ELb1EE11nand_reduceEv", scope: !386, file: !26, line: 1460, type: !532, isLocal: false, isDefinition: false, scopeLine: 1460, flags: DIFlagPrototyped, isOptimized: false)
!1813 = !DISubprogram(name: "or_reduce", linkageName: "_ZNK11ap_int_baseILi33ELb1EE9or_reduceEv", scope: !386, file: !26, line: 1461, type: !532, isLocal: false, isDefinition: false, scopeLine: 1461, flags: DIFlagPrototyped, isOptimized: false)
!1814 = !DISubprogram(name: "nor_reduce", linkageName: "_ZNK11ap_int_baseILi33ELb1EE10nor_reduceEv", scope: !386, file: !26, line: 1462, type: !532, isLocal: false, isDefinition: false, scopeLine: 1462, flags: DIFlagPrototyped, isOptimized: false)
!1815 = !DISubprogram(name: "xor_reduce", linkageName: "_ZNK11ap_int_baseILi33ELb1EE10xor_reduceEv", scope: !386, file: !26, line: 1463, type: !532, isLocal: false, isDefinition: false, scopeLine: 1463, flags: DIFlagPrototyped, isOptimized: false)
!1816 = !DISubprogram(name: "xnor_reduce", linkageName: "_ZNK11ap_int_baseILi33ELb1EE11xnor_reduceEv", scope: !386, file: !26, line: 1464, type: !532, isLocal: false, isDefinition: false, scopeLine: 1464, flags: DIFlagPrototyped, isOptimized: false)
!1817 = !DISubprogram(name: "to_string", linkageName: "_ZNK11ap_int_baseILi33ELb1EE9to_stringEab", scope: !386, file: !26, line: 1479, type: !1818, isLocal: false, isDefinition: false, scopeLine: 1479, flags: DIFlagPrototyped, isOptimized: false)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{!1386, !408, !71, !45}
!1820 = !DISubprogram(name: "ap_int", scope: !383, file: !285, line: 67, type: !1821, isLocal: false, isDefinition: false, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{null, !1823}
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1824 = !DISubprogram(name: "ap_int", scope: !383, file: !285, line: 103, type: !1825, isLocal: false, isDefinition: false, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: false)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{null, !1823, !1827, !45}
!1827 = !DIBasicType(name: "uint33", size: 33, encoding: DW_ATE_unsigned)
!1828 = !DISubprogram(name: "ap_int", scope: !383, file: !285, line: 173, type: !1829, isLocal: false, isDefinition: false, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: false)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{null, !1823, !45}
!1831 = !DISubprogram(name: "ap_int", scope: !383, file: !285, line: 174, type: !1832, isLocal: false, isDefinition: false, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: false)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{null, !1823, !66}
!1834 = !DISubprogram(name: "ap_int", scope: !383, file: !285, line: 175, type: !1835, isLocal: false, isDefinition: false, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{null, !1823, !71}
!1837 = !DISubprogram(name: "ap_int", scope: !383, file: !285, line: 176, type: !1838, isLocal: false, isDefinition: false, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: false)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{null, !1823, !76}
!1840 = !DISubprogram(name: "ap_int", scope: !383, file: !285, line: 177, type: !1841, isLocal: false, isDefinition: false, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: false)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{null, !1823, !81}
!1843 = !DISubprogram(name: "ap_int", scope: !383, file: !285, line: 178, type: !1844, isLocal: false, isDefinition: false, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: false)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{null, !1823, !86}
!1846 = !DISubprogram(name: "ap_int", scope: !383, file: !285, line: 179, type: !1847, isLocal: false, isDefinition: false, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: false)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{null, !1823, !21}
!1849 = !DISubprogram(name: "ap_int", scope: !383, file: !285, line: 180, type: !1850, isLocal: false, isDefinition: false, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: false)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{null, !1823, !34}
!1852 = !DISubprogram(name: "ap_int", scope: !383, file: !285, line: 181, type: !1853, isLocal: false, isDefinition: false, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: false)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{null, !1823, !98}
!1855 = !DISubprogram(name: "ap_int", scope: !383, file: !285, line: 182, type: !1856, isLocal: false, isDefinition: false, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: false)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{null, !1823, !103}
!1858 = !DISubprogram(name: "ap_int", scope: !383, file: !285, line: 183, type: !1859, isLocal: false, isDefinition: false, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: false)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{null, !1823, !108}
!1861 = !DISubprogram(name: "ap_int", scope: !383, file: !285, line: 184, type: !1862, isLocal: false, isDefinition: false, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: false)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{null, !1823, !115}
!1864 = !DISubprogram(name: "ap_int", scope: !383, file: !285, line: 186, type: !1865, isLocal: false, isDefinition: false, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: false)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{null, !1823, !128}
!1867 = !DISubprogram(name: "ap_int", scope: !383, file: !285, line: 187, type: !1868, isLocal: false, isDefinition: false, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: false)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{null, !1823, !13}
!1870 = !DISubprogram(name: "ap_int", scope: !383, file: !285, line: 188, type: !1871, isLocal: false, isDefinition: false, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: false)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{null, !1823, !120}
!1873 = !DISubprogram(name: "ap_int", scope: !383, file: !285, line: 191, type: !1874, isLocal: false, isDefinition: false, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: false)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{null, !1823, !132}
!1876 = !DISubprogram(name: "ap_int", scope: !383, file: !285, line: 193, type: !1877, isLocal: false, isDefinition: false, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: false)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{null, !1823, !132, !71}
!1879 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi33EEaSERKS0_", scope: !383, file: !285, line: 198, type: !1880, isLocal: false, isDefinition: false, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: false)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{!1882, !1823, !1883}
!1882 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !383, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1884, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !383)
!1885 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi33EEaSERVKS0_", scope: !383, file: !285, line: 207, type: !1886, isLocal: false, isDefinition: false, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: false)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!1882, !1823, !1888}
!1888 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1889, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1890)
!1890 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !383)
!1891 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi33EEaSERKS0_", scope: !383, file: !285, line: 213, type: !1892, isLocal: false, isDefinition: false, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: false)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{null, !1894, !1883}
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1895 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi33EEaSERVKS0_", scope: !383, file: !285, line: 217, type: !1896, isLocal: false, isDefinition: false, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: false)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{null, !1894, !1888}
!1898 = !{!1806}
!1899 = !DISubprogram(name: "operator!", linkageName: "_ZNK11ap_int_baseILi32ELb0EEntEv", scope: !27, file: !26, line: 947, type: !198, isLocal: false, isDefinition: false, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: false)
!1900 = !DISubprogram(name: "operator~", linkageName: "_ZNK11ap_int_baseILi32ELb0EEcoEv", scope: !27, file: !26, line: 953, type: !369, isLocal: false, isDefinition: false, scopeLine: 953, flags: DIFlagPrototyped, isOptimized: false)
!1901 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi32ELb0EE5rangeEii", scope: !27, file: !26, line: 1091, type: !1902, isLocal: false, isDefinition: false, scopeLine: 1091, flags: DIFlagPrototyped, isOptimized: false)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!1904, !58, !21, !21}
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_range_ref<32, false>", file: !1719, line: 336, size: 128, flags: DIFlagTypePassByReference, elements: !1905, templateParams: !2019, identifier: "_ZTS12ap_range_refILi32ELb0EE")
!1905 = !{!1906, !1909, !1910, !1911, !1917, !1921, !1926, !1930, !1933, !1937, !1940, !1943, !1946, !1949, !1952, !1955, !1958, !1961, !1964, !1967, !1970, !1973, !1976, !1979, !1982, !1985, !1989, !1990, !1991, !1992, !1993, !1994, !1997, !1998, !2001, !2004, !2007, !2010, !2011, !2014, !2015, !2016}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "d_bv", scope: !1904, file: !1719, line: 341, baseType: !1907, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1908, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_typedef, name: "ref_type", scope: !1904, file: !1719, line: 340, baseType: !27)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "l_index", scope: !1904, file: !1719, line: 342, baseType: !21, size: 32, offset: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "h_index", scope: !1904, file: !1719, line: 343, baseType: !21, size: 32, offset: 96)
!1911 = !DISubprogram(name: "ap_range_ref", scope: !1904, file: !1719, line: 346, type: !1912, isLocal: false, isDefinition: false, scopeLine: 346, flags: DIFlagPrototyped, isOptimized: false)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{null, !1914, !1915}
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1915 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1916, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1904)
!1917 = !DISubprogram(name: "ap_range_ref", scope: !1904, file: !1719, line: 349, type: !1918, isLocal: false, isDefinition: false, scopeLine: 349, flags: DIFlagPrototyped, isOptimized: false)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{null, !1914, !1920, !21, !21}
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1921 = !DISubprogram(name: "ap_range_ref", scope: !1904, file: !1719, line: 352, type: !1922, isLocal: false, isDefinition: false, scopeLine: 352, flags: DIFlagPrototyped, isOptimized: false)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{null, !1914, !1924, !21, !21}
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1908)
!1926 = !DISubprogram(name: "operator ap_int_base", linkageName: "_ZNK12ap_range_refILi32ELb0EEcv11ap_int_baseILi32ELb0EEEv", scope: !1904, file: !1719, line: 355, type: !1927, isLocal: false, isDefinition: false, scopeLine: 355, flags: DIFlagPrototyped, isOptimized: false)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!27, !1929}
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!1930 = !DISubprogram(name: "operator unsigned long long", linkageName: "_ZNK12ap_range_refILi32ELb0EEcvyEv", scope: !1904, file: !1719, line: 361, type: !1931, isLocal: false, isDefinition: false, scopeLine: 361, flags: DIFlagPrototyped, isOptimized: false)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!115, !1929}
!1933 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEb", scope: !1904, file: !1719, line: 385, type: !1934, isLocal: false, isDefinition: false, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: false)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!1936, !1914, !45}
!1936 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1904, size: 64)
!1937 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEc", scope: !1904, file: !1719, line: 386, type: !1938, isLocal: false, isDefinition: false, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: false)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{!1936, !1914, !66}
!1940 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEa", scope: !1904, file: !1719, line: 387, type: !1941, isLocal: false, isDefinition: false, scopeLine: 387, flags: DIFlagPrototyped, isOptimized: false)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!1936, !1914, !71}
!1943 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEh", scope: !1904, file: !1719, line: 388, type: !1944, isLocal: false, isDefinition: false, scopeLine: 388, flags: DIFlagPrototyped, isOptimized: false)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!1936, !1914, !76}
!1946 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEs", scope: !1904, file: !1719, line: 389, type: !1947, isLocal: false, isDefinition: false, scopeLine: 389, flags: DIFlagPrototyped, isOptimized: false)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!1936, !1914, !81}
!1949 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEt", scope: !1904, file: !1719, line: 390, type: !1950, isLocal: false, isDefinition: false, scopeLine: 390, flags: DIFlagPrototyped, isOptimized: false)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!1936, !1914, !86}
!1952 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEi", scope: !1904, file: !1719, line: 391, type: !1953, isLocal: false, isDefinition: false, scopeLine: 391, flags: DIFlagPrototyped, isOptimized: false)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!1936, !1914, !21}
!1955 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEj", scope: !1904, file: !1719, line: 392, type: !1956, isLocal: false, isDefinition: false, scopeLine: 392, flags: DIFlagPrototyped, isOptimized: false)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!1936, !1914, !34}
!1958 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEl", scope: !1904, file: !1719, line: 393, type: !1959, isLocal: false, isDefinition: false, scopeLine: 393, flags: DIFlagPrototyped, isOptimized: false)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!1936, !1914, !98}
!1961 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEm", scope: !1904, file: !1719, line: 394, type: !1962, isLocal: false, isDefinition: false, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: false)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!1936, !1914, !103}
!1964 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEx", scope: !1904, file: !1719, line: 395, type: !1965, isLocal: false, isDefinition: false, scopeLine: 395, flags: DIFlagPrototyped, isOptimized: false)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!1936, !1914, !108}
!1967 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEy", scope: !1904, file: !1719, line: 396, type: !1968, isLocal: false, isDefinition: false, scopeLine: 396, flags: DIFlagPrototyped, isOptimized: false)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!1936, !1914, !115}
!1970 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEDh", scope: !1904, file: !1719, line: 397, type: !1971, isLocal: false, isDefinition: false, scopeLine: 397, flags: DIFlagPrototyped, isOptimized: false)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!1936, !1914, !120}
!1973 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEf", scope: !1904, file: !1719, line: 398, type: !1974, isLocal: false, isDefinition: false, scopeLine: 398, flags: DIFlagPrototyped, isOptimized: false)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!1936, !1914, !13}
!1976 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEd", scope: !1904, file: !1719, line: 399, type: !1977, isLocal: false, isDefinition: false, scopeLine: 399, flags: DIFlagPrototyped, isOptimized: false)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{!1936, !1914, !128}
!1979 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSEPKc", scope: !1904, file: !1719, line: 404, type: !1980, isLocal: false, isDefinition: false, scopeLine: 404, flags: DIFlagPrototyped, isOptimized: false)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!1936, !1914, !132}
!1982 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb0EEaSERKS0_", scope: !1904, file: !1719, line: 421, type: !1983, isLocal: false, isDefinition: false, scopeLine: 421, flags: DIFlagPrototyped, isOptimized: false)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!1936, !1914, !1915}
!1985 = !DISubprogram(name: "operator,", linkageName: "_ZN12ap_range_refILi32ELb0EEcmER11ap_int_baseILi32ELb0EE", scope: !1904, file: !1719, line: 489, type: !1986, isLocal: false, isDefinition: false, scopeLine: 489, flags: DIFlagPrototyped, isOptimized: false)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{!1988, !1914, !154}
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_concat_ref<32, ap_range_ref<32, false>, 32, ap_int_base<32, false> >", file: !1719, line: 74, flags: DIFlagFwdDecl, identifier: "_ZTS13ap_concat_refILi32E12ap_range_refILi32ELb0EELi32E11ap_int_baseILi32ELb0EEE")
!1989 = !DISubprogram(name: "operator~", linkageName: "_ZNK12ap_range_refILi32ELb0EEcoEv", scope: !1904, file: !1719, line: 647, type: !1927, isLocal: false, isDefinition: false, scopeLine: 647, flags: DIFlagPrototyped, isOptimized: false)
!1990 = !DISubprogram(name: "operator!", linkageName: "_ZNK12ap_range_refILi32ELb0EEntEv", scope: !1904, file: !1719, line: 653, type: !1927, isLocal: false, isDefinition: false, scopeLine: 653, flags: DIFlagPrototyped, isOptimized: false)
!1991 = !DISubprogram(name: "operator+", linkageName: "_ZNK12ap_range_refILi32ELb0EEpsEv", scope: !1904, file: !1719, line: 659, type: !1927, isLocal: false, isDefinition: false, scopeLine: 659, flags: DIFlagPrototyped, isOptimized: false)
!1992 = !DISubprogram(name: "operator-", linkageName: "_ZNK12ap_range_refILi32ELb0EEngEv", scope: !1904, file: !1719, line: 665, type: !1927, isLocal: false, isDefinition: false, scopeLine: 665, flags: DIFlagPrototyped, isOptimized: false)
!1993 = !DISubprogram(name: "get", linkageName: "_ZNK12ap_range_refILi32ELb0EE3getEv", scope: !1904, file: !1719, line: 672, type: !1927, isLocal: false, isDefinition: false, scopeLine: 672, flags: DIFlagPrototyped, isOptimized: false)
!1994 = !DISubprogram(name: "length", linkageName: "_ZNK12ap_range_refILi32ELb0EE6lengthEv", scope: !1904, file: !1719, line: 683, type: !1995, isLocal: false, isDefinition: false, scopeLine: 683, flags: DIFlagPrototyped, isOptimized: false)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!21, !1929}
!1997 = !DISubprogram(name: "to_int", linkageName: "_ZNK12ap_range_refILi32ELb0EE6to_intEv", scope: !1904, file: !1719, line: 687, type: !1995, isLocal: false, isDefinition: false, scopeLine: 687, flags: DIFlagPrototyped, isOptimized: false)
!1998 = !DISubprogram(name: "to_uint", linkageName: "_ZNK12ap_range_refILi32ELb0EE7to_uintEv", scope: !1904, file: !1719, line: 691, type: !1999, isLocal: false, isDefinition: false, scopeLine: 691, flags: DIFlagPrototyped, isOptimized: false)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{!34, !1929}
!2001 = !DISubprogram(name: "to_long", linkageName: "_ZNK12ap_range_refILi32ELb0EE7to_longEv", scope: !1904, file: !1719, line: 697, type: !2002, isLocal: false, isDefinition: false, scopeLine: 697, flags: DIFlagPrototyped, isOptimized: false)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!98, !1929}
!2004 = !DISubprogram(name: "to_ulong", linkageName: "_ZNK12ap_range_refILi32ELb0EE8to_ulongEv", scope: !1904, file: !1719, line: 701, type: !2005, isLocal: false, isDefinition: false, scopeLine: 701, flags: DIFlagPrototyped, isOptimized: false)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!103, !1929}
!2007 = !DISubprogram(name: "to_int64", linkageName: "_ZNK12ap_range_refILi32ELb0EE8to_int64Ev", scope: !1904, file: !1719, line: 707, type: !2008, isLocal: false, isDefinition: false, scopeLine: 707, flags: DIFlagPrototyped, isOptimized: false)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!108, !1929}
!2010 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK12ap_range_refILi32ELb0EE9to_uint64Ev", scope: !1904, file: !1719, line: 711, type: !1931, isLocal: false, isDefinition: false, scopeLine: 711, flags: DIFlagPrototyped, isOptimized: false)
!2011 = !DISubprogram(name: "and_reduce", linkageName: "_ZNK12ap_range_refILi32ELb0EE10and_reduceEv", scope: !1904, file: !1719, line: 717, type: !2012, isLocal: false, isDefinition: false, scopeLine: 717, flags: DIFlagPrototyped, isOptimized: false)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!45, !1929}
!2014 = !DISubprogram(name: "or_reduce", linkageName: "_ZNK12ap_range_refILi32ELb0EE9or_reduceEv", scope: !1904, file: !1719, line: 731, type: !2012, isLocal: false, isDefinition: false, scopeLine: 731, flags: DIFlagPrototyped, isOptimized: false)
!2015 = !DISubprogram(name: "xor_reduce", linkageName: "_ZNK12ap_range_refILi32ELb0EE10xor_reduceEv", scope: !1904, file: !1719, line: 745, type: !2012, isLocal: false, isDefinition: false, scopeLine: 745, flags: DIFlagPrototyped, isOptimized: false)
!2016 = !DISubprogram(name: "to_string", linkageName: "_ZNK12ap_range_refILi32ELb0EE9to_stringEa", scope: !1904, file: !1719, line: 766, type: !2017, isLocal: false, isDefinition: false, scopeLine: 766, flags: DIFlagPrototyped, isOptimized: false)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!1386, !1929, !71}
!2019 = !{!366, !44}
!2020 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi32ELb0EE5rangeEii", scope: !27, file: !26, line: 1098, type: !2021, isLocal: false, isDefinition: false, scopeLine: 1098, flags: DIFlagPrototyped, isOptimized: false)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!1904, !53, !21, !21}
!2023 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi32ELb0EE5rangeEv", scope: !27, file: !26, line: 1122, type: !2024, isLocal: false, isDefinition: false, scopeLine: 1122, flags: DIFlagPrototyped, isOptimized: false)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!1904, !58}
!2026 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi32ELb0EE5rangeEv", scope: !27, file: !26, line: 1126, type: !2027, isLocal: false, isDefinition: false, scopeLine: 1126, flags: DIFlagPrototyped, isOptimized: false)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{!1904, !53}
!2029 = !DISubprogram(name: "operator()", linkageName: "_ZN11ap_int_baseILi32ELb0EEclEii", scope: !27, file: !26, line: 1130, type: !1902, isLocal: false, isDefinition: false, scopeLine: 1130, flags: DIFlagPrototyped, isOptimized: false)
!2030 = !DISubprogram(name: "operator()", linkageName: "_ZNK11ap_int_baseILi32ELb0EEclEii", scope: !27, file: !26, line: 1134, type: !2021, isLocal: false, isDefinition: false, scopeLine: 1134, flags: DIFlagPrototyped, isOptimized: false)
!2031 = !DISubprogram(name: "operator[]", linkageName: "_ZN11ap_int_baseILi32ELb0EEixEi", scope: !27, file: !26, line: 1172, type: !2032, isLocal: false, isDefinition: false, scopeLine: 1172, flags: DIFlagPrototyped, isOptimized: false)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!2034, !58, !21}
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_bit_ref<32, false>", file: !1719, line: 807, size: 128, flags: DIFlagTypePassByReference, elements: !2035, templateParams: !2019, identifier: "_ZTS10ap_bit_refILi32ELb0EE")
!2035 = !{!2036, !2039, !2040, !2046, !2050, !2055, !2059, !2060, !2064, !2067, !2070, !2073, !2076, !2079, !2082, !2085, !2088, !2091, !2094, !2097, !2100, !2103, !2106, !2109, !2110, !2113, !2114, !2117}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "d_bv", scope: !2034, file: !1719, line: 812, baseType: !2037, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2038, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_typedef, name: "ref_type", scope: !2034, file: !1719, line: 811, baseType: !27)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "d_index", scope: !2034, file: !1719, line: 813, baseType: !21, size: 32, offset: 64)
!2040 = !DISubprogram(name: "ap_bit_ref", scope: !2034, file: !1719, line: 817, type: !2041, isLocal: false, isDefinition: false, scopeLine: 817, flags: DIFlagPrototyped, isOptimized: false)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{null, !2043, !2044}
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2044 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2045, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2034)
!2046 = !DISubprogram(name: "ap_bit_ref", scope: !2034, file: !1719, line: 820, type: !2047, isLocal: false, isDefinition: false, scopeLine: 820, flags: DIFlagPrototyped, isOptimized: false)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{null, !2043, !2049, !21}
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2050 = !DISubprogram(name: "ap_bit_ref", scope: !2034, file: !1719, line: 822, type: !2051, isLocal: false, isDefinition: false, scopeLine: 822, flags: DIFlagPrototyped, isOptimized: false)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{null, !2043, !2053, !21}
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2038)
!2055 = !DISubprogram(name: "operator bool", linkageName: "_ZNK10ap_bit_refILi32ELb0EEcvbEv", scope: !2034, file: !1719, line: 825, type: !2056, isLocal: false, isDefinition: false, scopeLine: 825, flags: DIFlagPrototyped, isOptimized: false)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!45, !2058}
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2059 = !DISubprogram(name: "to_bool", linkageName: "_ZNK10ap_bit_refILi32ELb0EE7to_boolEv", scope: !2034, file: !1719, line: 826, type: !2056, isLocal: false, isDefinition: false, scopeLine: 826, flags: DIFlagPrototyped, isOptimized: false)
!2060 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSEb", scope: !2034, file: !1719, line: 844, type: !2061, isLocal: false, isDefinition: false, scopeLine: 844, flags: DIFlagPrototyped, isOptimized: false)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!2063, !2043, !45}
!2063 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2034, size: 64)
!2064 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSEc", scope: !2034, file: !1719, line: 845, type: !2065, isLocal: false, isDefinition: false, scopeLine: 845, flags: DIFlagPrototyped, isOptimized: false)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!2063, !2043, !66}
!2067 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSEa", scope: !2034, file: !1719, line: 846, type: !2068, isLocal: false, isDefinition: false, scopeLine: 846, flags: DIFlagPrototyped, isOptimized: false)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!2063, !2043, !71}
!2070 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSEh", scope: !2034, file: !1719, line: 847, type: !2071, isLocal: false, isDefinition: false, scopeLine: 847, flags: DIFlagPrototyped, isOptimized: false)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!2063, !2043, !76}
!2073 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSEs", scope: !2034, file: !1719, line: 848, type: !2074, isLocal: false, isDefinition: false, scopeLine: 848, flags: DIFlagPrototyped, isOptimized: false)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!2063, !2043, !81}
!2076 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSEt", scope: !2034, file: !1719, line: 849, type: !2077, isLocal: false, isDefinition: false, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: false)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{!2063, !2043, !86}
!2079 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSEi", scope: !2034, file: !1719, line: 850, type: !2080, isLocal: false, isDefinition: false, scopeLine: 850, flags: DIFlagPrototyped, isOptimized: false)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!2063, !2043, !21}
!2082 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSEj", scope: !2034, file: !1719, line: 851, type: !2083, isLocal: false, isDefinition: false, scopeLine: 851, flags: DIFlagPrototyped, isOptimized: false)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!2063, !2043, !34}
!2085 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSEl", scope: !2034, file: !1719, line: 852, type: !2086, isLocal: false, isDefinition: false, scopeLine: 852, flags: DIFlagPrototyped, isOptimized: false)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!2063, !2043, !98}
!2088 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSEm", scope: !2034, file: !1719, line: 853, type: !2089, isLocal: false, isDefinition: false, scopeLine: 853, flags: DIFlagPrototyped, isOptimized: false)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{!2063, !2043, !103}
!2091 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSEx", scope: !2034, file: !1719, line: 854, type: !2092, isLocal: false, isDefinition: false, scopeLine: 854, flags: DIFlagPrototyped, isOptimized: false)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!2063, !2043, !108}
!2094 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSEy", scope: !2034, file: !1719, line: 855, type: !2095, isLocal: false, isDefinition: false, scopeLine: 855, flags: DIFlagPrototyped, isOptimized: false)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!2063, !2043, !115}
!2097 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSEDh", scope: !2034, file: !1719, line: 866, type: !2098, isLocal: false, isDefinition: false, scopeLine: 866, flags: DIFlagPrototyped, isOptimized: false)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!2063, !2043, !120}
!2100 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSEf", scope: !2034, file: !1719, line: 867, type: !2101, isLocal: false, isDefinition: false, scopeLine: 867, flags: DIFlagPrototyped, isOptimized: false)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{!2063, !2043, !13}
!2103 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSEd", scope: !2034, file: !1719, line: 868, type: !2104, isLocal: false, isDefinition: false, scopeLine: 868, flags: DIFlagPrototyped, isOptimized: false)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!2063, !2043, !128}
!2106 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb0EEaSERKS0_", scope: !2034, file: !1719, line: 885, type: !2107, isLocal: false, isDefinition: false, scopeLine: 885, flags: DIFlagPrototyped, isOptimized: false)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!2063, !2043, !2044}
!2109 = !DISubprogram(name: "get", linkageName: "_ZNK10ap_bit_refILi32ELb0EE3getEv", scope: !2034, file: !1719, line: 1005, type: !2056, isLocal: false, isDefinition: false, scopeLine: 1005, flags: DIFlagPrototyped, isOptimized: false)
!2110 = !DISubprogram(name: "get", linkageName: "_ZN10ap_bit_refILi32ELb0EE3getEv", scope: !2034, file: !1719, line: 1007, type: !2111, isLocal: false, isDefinition: false, scopeLine: 1007, flags: DIFlagPrototyped, isOptimized: false)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!45, !2043}
!2113 = !DISubprogram(name: "operator~", linkageName: "_ZNK10ap_bit_refILi32ELb0EEcoEv", scope: !2034, file: !1719, line: 1014, type: !2056, isLocal: false, isDefinition: false, scopeLine: 1014, flags: DIFlagPrototyped, isOptimized: false)
!2114 = !DISubprogram(name: "length", linkageName: "_ZNK10ap_bit_refILi32ELb0EE6lengthEv", scope: !2034, file: !1719, line: 1019, type: !2115, isLocal: false, isDefinition: false, scopeLine: 1019, flags: DIFlagPrototyped, isOptimized: false)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!21, !2058}
!2117 = !DISubprogram(name: "to_string", linkageName: "_ZNK10ap_bit_refILi32ELb0EE9to_stringEv", scope: !2034, file: !1719, line: 1025, type: !2118, isLocal: false, isDefinition: false, scopeLine: 1025, flags: DIFlagPrototyped, isOptimized: false)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!1386, !2058}
!2120 = !DISubprogram(name: "operator[]", linkageName: "_ZNK11ap_int_baseILi32ELb0EEixEi", scope: !27, file: !26, line: 1188, type: !253, isLocal: false, isDefinition: false, scopeLine: 1188, flags: DIFlagPrototyped, isOptimized: false)
!2121 = !DISubprogram(name: "bit", linkageName: "_ZN11ap_int_baseILi32ELb0EE3bitEi", scope: !27, file: !26, line: 1201, type: !2032, isLocal: false, isDefinition: false, scopeLine: 1201, flags: DIFlagPrototyped, isOptimized: false)
!2122 = !DISubprogram(name: "bit", linkageName: "_ZNK11ap_int_baseILi32ELb0EE3bitEi", scope: !27, file: !26, line: 1216, type: !253, isLocal: false, isDefinition: false, scopeLine: 1216, flags: DIFlagPrototyped, isOptimized: false)
!2123 = !DISubprogram(name: "countLeadingZeros", linkageName: "_ZNK11ap_int_baseILi32ELb0EE17countLeadingZerosEv", scope: !27, file: !26, line: 1239, type: !51, isLocal: false, isDefinition: false, scopeLine: 1239, flags: DIFlagPrototyped, isOptimized: false)
!2124 = !DISubprogram(name: "and_reduce", linkageName: "_ZNK11ap_int_baseILi32ELb0EE10and_reduceEv", scope: !27, file: !26, line: 1459, type: !198, isLocal: false, isDefinition: false, scopeLine: 1459, flags: DIFlagPrototyped, isOptimized: false)
!2125 = !DISubprogram(name: "nand_reduce", linkageName: "_ZNK11ap_int_baseILi32ELb0EE11nand_reduceEv", scope: !27, file: !26, line: 1460, type: !198, isLocal: false, isDefinition: false, scopeLine: 1460, flags: DIFlagPrototyped, isOptimized: false)
!2126 = !DISubprogram(name: "or_reduce", linkageName: "_ZNK11ap_int_baseILi32ELb0EE9or_reduceEv", scope: !27, file: !26, line: 1461, type: !198, isLocal: false, isDefinition: false, scopeLine: 1461, flags: DIFlagPrototyped, isOptimized: false)
!2127 = !DISubprogram(name: "nor_reduce", linkageName: "_ZNK11ap_int_baseILi32ELb0EE10nor_reduceEv", scope: !27, file: !26, line: 1462, type: !198, isLocal: false, isDefinition: false, scopeLine: 1462, flags: DIFlagPrototyped, isOptimized: false)
!2128 = !DISubprogram(name: "xor_reduce", linkageName: "_ZNK11ap_int_baseILi32ELb0EE10xor_reduceEv", scope: !27, file: !26, line: 1463, type: !198, isLocal: false, isDefinition: false, scopeLine: 1463, flags: DIFlagPrototyped, isOptimized: false)
!2129 = !DISubprogram(name: "xnor_reduce", linkageName: "_ZNK11ap_int_baseILi32ELb0EE11xnor_reduceEv", scope: !27, file: !26, line: 1464, type: !198, isLocal: false, isDefinition: false, scopeLine: 1464, flags: DIFlagPrototyped, isOptimized: false)
!2130 = !DISubprogram(name: "to_string", linkageName: "_ZNK11ap_int_baseILi32ELb0EE9to_stringEab", scope: !27, file: !26, line: 1479, type: !2131, isLocal: false, isDefinition: false, scopeLine: 1479, flags: DIFlagPrototyped, isOptimized: false)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!1386, !53, !71, !45}
!2133 = !DIDerivedType(tag: DW_TAG_typedef, name: "Type", scope: !2134, file: !26, line: 97, baseType: !115)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "retval<8, false>", file: !26, line: 96, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !2135, identifier: "_ZTS6retvalILi8ELb0EE")
!2135 = !{!530, !44}
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<32, true>", file: !26, line: 154, size: 32, flags: DIFlagTypePassByValue, elements: !2138, templateParams: !2570, identifier: "_ZTS11ap_int_baseILi32ELb1EE")
!2138 = !{!2139, !2151, !2152, !2153, !2158, !2162, !2165, !2168, !2171, !2174, !2177, !2180, !2183, !2186, !2189, !2192, !2195, !2198, !2201, !2204, !2207, !2210, !2213, !2218, !2222, !2227, !2228, !2232, !2235, !2238, !2241, !2244, !2247, !2250, !2253, !2256, !2259, !2262, !2265, !2268, !2271, !2275, !2278, !2281, !2284, !2287, !2290, !2293, !2294, !2297, !2300, !2303, !2306, !2309, !2312, !2315, !2318, !2322, !2323, !2324, !2325, !2326, !2329, !2330, !2333, !2336, !2337, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2349, !2350, !2351, !2440, !2441, !2444, !2449, !2450, !2451, !2571, !2574, !2577, !2580, !2581, !2582, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681}
!2139 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2137, baseType: !2140)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<32, true>", file: !31, line: 555, size: 32, flags: DIFlagTypePassByValue, elements: !2141, templateParams: !2150, identifier: "_ZTS8ssdm_intILi32ELb1EE")
!2141 = !{!2142, !2143, !2147}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !2140, file: !31, line: 557, baseType: !21, size: 32)
!2143 = !DISubprogram(name: "ssdm_int", scope: !2140, file: !31, line: 558, type: !2144, isLocal: false, isDefinition: false, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: false)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{null, !2146}
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2147 = !DISubprogram(name: "ssdm_int", scope: !2140, file: !31, line: 559, type: !2148, isLocal: false, isDefinition: false, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{null, !2146, !21}
!2150 = !{!43, !402}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !2137, file: !26, line: 176, baseType: !47, flags: DIFlagStaticMember, extraData: i32 32)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !2137, file: !26, line: 177, baseType: !49, flags: DIFlagStaticMember, extraData: i1 true)
!2153 = !DISubprogram(name: "countLeadingOnes", linkageName: "_ZNK11ap_int_baseILi32ELb1EE16countLeadingOnesEv", scope: !2137, file: !26, line: 156, type: !2154, isLocal: false, isDefinition: false, scopeLine: 156, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!21, !2156}
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2137)
!2158 = !DISubprogram(name: "ap_int_base", scope: !2137, file: !26, line: 221, type: !2159, isLocal: false, isDefinition: false, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: false)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{null, !2161}
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2162 = !DISubprogram(name: "ap_int_base", scope: !2137, file: !26, line: 254, type: !2163, isLocal: false, isDefinition: false, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: false)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{null, !2161, !49}
!2165 = !DISubprogram(name: "ap_int_base", scope: !2137, file: !26, line: 255, type: !2166, isLocal: false, isDefinition: false, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: false)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{null, !2161, !65}
!2168 = !DISubprogram(name: "ap_int_base", scope: !2137, file: !26, line: 256, type: !2169, isLocal: false, isDefinition: false, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: false)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{null, !2161, !70}
!2171 = !DISubprogram(name: "ap_int_base", scope: !2137, file: !26, line: 257, type: !2172, isLocal: false, isDefinition: false, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: false)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{null, !2161, !75}
!2174 = !DISubprogram(name: "ap_int_base", scope: !2137, file: !26, line: 258, type: !2175, isLocal: false, isDefinition: false, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: false)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{null, !2161, !80}
!2177 = !DISubprogram(name: "ap_int_base", scope: !2137, file: !26, line: 259, type: !2178, isLocal: false, isDefinition: false, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: false)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{null, !2161, !85}
!2180 = !DISubprogram(name: "ap_int_base", scope: !2137, file: !26, line: 260, type: !2181, isLocal: false, isDefinition: false, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: false)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{null, !2161, !47}
!2183 = !DISubprogram(name: "ap_int_base", scope: !2137, file: !26, line: 261, type: !2184, isLocal: false, isDefinition: false, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: false)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{null, !2161, !93}
!2186 = !DISubprogram(name: "ap_int_base", scope: !2137, file: !26, line: 262, type: !2187, isLocal: false, isDefinition: false, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: false)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{null, !2161, !97}
!2189 = !DISubprogram(name: "ap_int_base", scope: !2137, file: !26, line: 263, type: !2190, isLocal: false, isDefinition: false, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: false)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{null, !2161, !102}
!2192 = !DISubprogram(name: "ap_int_base", scope: !2137, file: !26, line: 264, type: !2193, isLocal: false, isDefinition: false, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: false)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{null, !2161, !107}
!2195 = !DISubprogram(name: "ap_int_base", scope: !2137, file: !26, line: 265, type: !2196, isLocal: false, isDefinition: false, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: false)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{null, !2161, !114}
!2198 = !DISubprogram(name: "ap_int_base", scope: !2137, file: !26, line: 270, type: !2199, isLocal: false, isDefinition: false, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: false)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{null, !2161, !120}
!2201 = !DISubprogram(name: "ap_int_base", scope: !2137, file: !26, line: 276, type: !2202, isLocal: false, isDefinition: false, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: false)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{null, !2161, !13}
!2204 = !DISubprogram(name: "ap_int_base", scope: !2137, file: !26, line: 335, type: !2205, isLocal: false, isDefinition: false, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: false)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{null, !2161, !128}
!2207 = !DISubprogram(name: "ap_int_base", scope: !2137, file: !26, line: 431, type: !2208, isLocal: false, isDefinition: false, scopeLine: 431, flags: DIFlagPrototyped, isOptimized: false)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{null, !2161, !132}
!2210 = !DISubprogram(name: "ap_int_base", scope: !2137, file: !26, line: 437, type: !2211, isLocal: false, isDefinition: false, scopeLine: 437, flags: DIFlagPrototyped, isOptimized: false)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{null, !2161, !132, !71}
!2213 = !DISubprogram(name: "read", linkageName: "_ZNV11ap_int_baseILi32ELb1EE4readEv", scope: !2137, file: !26, line: 459, type: !2214, isLocal: false, isDefinition: false, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: false)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!2137, !2216}
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2217 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !2137)
!2218 = !DISubprogram(name: "write", linkageName: "_ZNV11ap_int_baseILi32ELb1EE5writeERKS0_", scope: !2137, file: !26, line: 466, type: !2219, isLocal: false, isDefinition: false, scopeLine: 466, flags: DIFlagPrototyped, isOptimized: false)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{null, !2216, !2221}
!2221 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2157, size: 64)
!2222 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi32ELb1EEaSERVKS0_", scope: !2137, file: !26, line: 478, type: !2223, isLocal: false, isDefinition: false, scopeLine: 478, flags: DIFlagPrototyped, isOptimized: false)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{null, !2216, !2225}
!2225 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2226, size: 64)
!2226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2217)
!2227 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi32ELb1EEaSERKS0_", scope: !2137, file: !26, line: 488, type: !2219, isLocal: false, isDefinition: false, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: false)
!2228 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSERVKS0_", scope: !2137, file: !26, line: 505, type: !2229, isLocal: false, isDefinition: false, scopeLine: 505, flags: DIFlagPrototyped, isOptimized: false)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{!2231, !2161, !2225}
!2231 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2137, size: 64)
!2232 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSERKS0_", scope: !2137, file: !26, line: 511, type: !2233, isLocal: false, isDefinition: false, scopeLine: 511, flags: DIFlagPrototyped, isOptimized: false)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!2231, !2161, !2221}
!2235 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSEb", scope: !2137, file: !26, line: 525, type: !2236, isLocal: false, isDefinition: false, scopeLine: 525, flags: DIFlagPrototyped, isOptimized: false)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{!2231, !2161, !45}
!2238 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSEc", scope: !2137, file: !26, line: 526, type: !2239, isLocal: false, isDefinition: false, scopeLine: 526, flags: DIFlagPrototyped, isOptimized: false)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!2231, !2161, !66}
!2241 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSEa", scope: !2137, file: !26, line: 527, type: !2242, isLocal: false, isDefinition: false, scopeLine: 527, flags: DIFlagPrototyped, isOptimized: false)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!2231, !2161, !71}
!2244 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSEh", scope: !2137, file: !26, line: 528, type: !2245, isLocal: false, isDefinition: false, scopeLine: 528, flags: DIFlagPrototyped, isOptimized: false)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{!2231, !2161, !76}
!2247 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSEs", scope: !2137, file: !26, line: 529, type: !2248, isLocal: false, isDefinition: false, scopeLine: 529, flags: DIFlagPrototyped, isOptimized: false)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!2231, !2161, !81}
!2250 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSEt", scope: !2137, file: !26, line: 530, type: !2251, isLocal: false, isDefinition: false, scopeLine: 530, flags: DIFlagPrototyped, isOptimized: false)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!2231, !2161, !86}
!2253 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSEi", scope: !2137, file: !26, line: 531, type: !2254, isLocal: false, isDefinition: false, scopeLine: 531, flags: DIFlagPrototyped, isOptimized: false)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{!2231, !2161, !21}
!2256 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSEj", scope: !2137, file: !26, line: 532, type: !2257, isLocal: false, isDefinition: false, scopeLine: 532, flags: DIFlagPrototyped, isOptimized: false)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{!2231, !2161, !34}
!2259 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSEl", scope: !2137, file: !26, line: 533, type: !2260, isLocal: false, isDefinition: false, scopeLine: 533, flags: DIFlagPrototyped, isOptimized: false)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{!2231, !2161, !98}
!2262 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSEm", scope: !2137, file: !26, line: 534, type: !2263, isLocal: false, isDefinition: false, scopeLine: 534, flags: DIFlagPrototyped, isOptimized: false)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!2231, !2161, !103}
!2265 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSEx", scope: !2137, file: !26, line: 535, type: !2266, isLocal: false, isDefinition: false, scopeLine: 535, flags: DIFlagPrototyped, isOptimized: false)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!2231, !2161, !108}
!2268 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi32ELb1EEaSEy", scope: !2137, file: !26, line: 536, type: !2269, isLocal: false, isDefinition: false, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: false)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!2231, !2161, !115}
!2271 = !DISubprogram(name: "operator long long", linkageName: "_ZNK11ap_int_baseILi32ELb1EEcvxEv", scope: !2137, file: !26, line: 587, type: !2272, isLocal: false, isDefinition: false, scopeLine: 587, flags: DIFlagPrototyped, isOptimized: false)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{!2274, !2156}
!2274 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !2137, file: !26, line: 174, baseType: !527)
!2275 = !DISubprogram(name: "to_bool", linkageName: "_ZNK11ap_int_baseILi32ELb1EE7to_boolEv", scope: !2137, file: !26, line: 592, type: !2276, isLocal: false, isDefinition: false, scopeLine: 592, flags: DIFlagPrototyped, isOptimized: false)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!45, !2156}
!2278 = !DISubprogram(name: "to_char", linkageName: "_ZNK11ap_int_baseILi32ELb1EE7to_charEv", scope: !2137, file: !26, line: 593, type: !2279, isLocal: false, isDefinition: false, scopeLine: 593, flags: DIFlagPrototyped, isOptimized: false)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{!66, !2156}
!2281 = !DISubprogram(name: "to_schar", linkageName: "_ZNK11ap_int_baseILi32ELb1EE8to_scharEv", scope: !2137, file: !26, line: 594, type: !2282, isLocal: false, isDefinition: false, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: false)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!71, !2156}
!2284 = !DISubprogram(name: "to_uchar", linkageName: "_ZNK11ap_int_baseILi32ELb1EE8to_ucharEv", scope: !2137, file: !26, line: 595, type: !2285, isLocal: false, isDefinition: false, scopeLine: 595, flags: DIFlagPrototyped, isOptimized: false)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!76, !2156}
!2287 = !DISubprogram(name: "to_short", linkageName: "_ZNK11ap_int_baseILi32ELb1EE8to_shortEv", scope: !2137, file: !26, line: 596, type: !2288, isLocal: false, isDefinition: false, scopeLine: 596, flags: DIFlagPrototyped, isOptimized: false)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!81, !2156}
!2290 = !DISubprogram(name: "to_ushort", linkageName: "_ZNK11ap_int_baseILi32ELb1EE9to_ushortEv", scope: !2137, file: !26, line: 597, type: !2291, isLocal: false, isDefinition: false, scopeLine: 597, flags: DIFlagPrototyped, isOptimized: false)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{!86, !2156}
!2293 = !DISubprogram(name: "to_int", linkageName: "_ZNK11ap_int_baseILi32ELb1EE6to_intEv", scope: !2137, file: !26, line: 598, type: !2154, isLocal: false, isDefinition: false, scopeLine: 598, flags: DIFlagPrototyped, isOptimized: false)
!2294 = !DISubprogram(name: "to_uint", linkageName: "_ZNK11ap_int_baseILi32ELb1EE7to_uintEv", scope: !2137, file: !26, line: 599, type: !2295, isLocal: false, isDefinition: false, scopeLine: 599, flags: DIFlagPrototyped, isOptimized: false)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{!34, !2156}
!2297 = !DISubprogram(name: "to_long", linkageName: "_ZNK11ap_int_baseILi32ELb1EE7to_longEv", scope: !2137, file: !26, line: 600, type: !2298, isLocal: false, isDefinition: false, scopeLine: 600, flags: DIFlagPrototyped, isOptimized: false)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!98, !2156}
!2300 = !DISubprogram(name: "to_ulong", linkageName: "_ZNK11ap_int_baseILi32ELb1EE8to_ulongEv", scope: !2137, file: !26, line: 601, type: !2301, isLocal: false, isDefinition: false, scopeLine: 601, flags: DIFlagPrototyped, isOptimized: false)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!103, !2156}
!2303 = !DISubprogram(name: "to_int64", linkageName: "_ZNK11ap_int_baseILi32ELb1EE8to_int64Ev", scope: !2137, file: !26, line: 602, type: !2304, isLocal: false, isDefinition: false, scopeLine: 602, flags: DIFlagPrototyped, isOptimized: false)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!108, !2156}
!2306 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK11ap_int_baseILi32ELb1EE9to_uint64Ev", scope: !2137, file: !26, line: 603, type: !2307, isLocal: false, isDefinition: false, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: false)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!115, !2156}
!2309 = !DISubprogram(name: "to_half", linkageName: "_ZNK11ap_int_baseILi32ELb1EE7to_halfEv", scope: !2137, file: !26, line: 604, type: !2310, isLocal: false, isDefinition: false, scopeLine: 604, flags: DIFlagPrototyped, isOptimized: false)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!120, !2156}
!2312 = !DISubprogram(name: "to_float", linkageName: "_ZNK11ap_int_baseILi32ELb1EE8to_floatEv", scope: !2137, file: !26, line: 605, type: !2313, isLocal: false, isDefinition: false, scopeLine: 605, flags: DIFlagPrototyped, isOptimized: false)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!13, !2156}
!2315 = !DISubprogram(name: "to_double", linkageName: "_ZNK11ap_int_baseILi32ELb1EE9to_doubleEv", scope: !2137, file: !26, line: 606, type: !2316, isLocal: false, isDefinition: false, scopeLine: 606, flags: DIFlagPrototyped, isOptimized: false)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!128, !2156}
!2318 = !DISubprogram(name: "length", linkageName: "_ZNVK11ap_int_baseILi32ELb1EE6lengthEv", scope: !2137, file: !26, line: 630, type: !2319, isLocal: false, isDefinition: false, scopeLine: 630, flags: DIFlagPrototyped, isOptimized: false)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!21, !2321}
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2322 = !DISubprogram(name: "length", linkageName: "_ZNK11ap_int_baseILi32ELb1EE6lengthEv", scope: !2137, file: !26, line: 631, type: !2154, isLocal: false, isDefinition: false, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: false)
!2323 = !DISubprogram(name: "iszero", linkageName: "_ZNK11ap_int_baseILi32ELb1EE6iszeroEv", scope: !2137, file: !26, line: 634, type: !2276, isLocal: false, isDefinition: false, scopeLine: 634, flags: DIFlagPrototyped, isOptimized: false)
!2324 = !DISubprogram(name: "is_zero", linkageName: "_ZNK11ap_int_baseILi32ELb1EE7is_zeroEv", scope: !2137, file: !26, line: 637, type: !2276, isLocal: false, isDefinition: false, scopeLine: 637, flags: DIFlagPrototyped, isOptimized: false)
!2325 = !DISubprogram(name: "sign", linkageName: "_ZNK11ap_int_baseILi32ELb1EE4signEv", scope: !2137, file: !26, line: 640, type: !2276, isLocal: false, isDefinition: false, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: false)
!2326 = !DISubprogram(name: "clear", linkageName: "_ZN11ap_int_baseILi32ELb1EE5clearEi", scope: !2137, file: !26, line: 649, type: !2327, isLocal: false, isDefinition: false, scopeLine: 649, flags: DIFlagPrototyped, isOptimized: false)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{null, !2161, !21}
!2329 = !DISubprogram(name: "invert", linkageName: "_ZN11ap_int_baseILi32ELb1EE6invertEi", scope: !2137, file: !26, line: 655, type: !2327, isLocal: false, isDefinition: false, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: false)
!2330 = !DISubprogram(name: "test", linkageName: "_ZNK11ap_int_baseILi32ELb1EE4testEi", scope: !2137, file: !26, line: 664, type: !2331, isLocal: false, isDefinition: false, scopeLine: 664, flags: DIFlagPrototyped, isOptimized: false)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!45, !2156, !21}
!2333 = !DISubprogram(name: "get", linkageName: "_ZN11ap_int_baseILi32ELb1EE3getEv", scope: !2137, file: !26, line: 670, type: !2334, isLocal: false, isDefinition: false, scopeLine: 670, flags: DIFlagPrototyped, isOptimized: false)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!2231, !2161}
!2336 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi32ELb1EE3setEi", scope: !2137, file: !26, line: 673, type: !2327, isLocal: false, isDefinition: false, scopeLine: 673, flags: DIFlagPrototyped, isOptimized: false)
!2337 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi32ELb1EE3setEib", scope: !2137, file: !26, line: 679, type: !2338, isLocal: false, isDefinition: false, scopeLine: 679, flags: DIFlagPrototyped, isOptimized: false)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{null, !2161, !21, !45}
!2340 = !DISubprogram(name: "lrotate", linkageName: "_ZN11ap_int_baseILi32ELb1EE7lrotateEi", scope: !2137, file: !26, line: 686, type: !2254, isLocal: false, isDefinition: false, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: false)
!2341 = !DISubprogram(name: "rrotate", linkageName: "_ZN11ap_int_baseILi32ELb1EE7rrotateEi", scope: !2137, file: !26, line: 701, type: !2254, isLocal: false, isDefinition: false, scopeLine: 701, flags: DIFlagPrototyped, isOptimized: false)
!2342 = !DISubprogram(name: "reverse", linkageName: "_ZN11ap_int_baseILi32ELb1EE7reverseEv", scope: !2137, file: !26, line: 716, type: !2334, isLocal: false, isDefinition: false, scopeLine: 716, flags: DIFlagPrototyped, isOptimized: false)
!2343 = !DISubprogram(name: "set_bit", linkageName: "_ZN11ap_int_baseILi32ELb1EE7set_bitEib", scope: !2137, file: !26, line: 722, type: !2338, isLocal: false, isDefinition: false, scopeLine: 722, flags: DIFlagPrototyped, isOptimized: false)
!2344 = !DISubprogram(name: "get_bit", linkageName: "_ZNK11ap_int_baseILi32ELb1EE7get_bitEi", scope: !2137, file: !26, line: 727, type: !2331, isLocal: false, isDefinition: false, scopeLine: 727, flags: DIFlagPrototyped, isOptimized: false)
!2345 = !DISubprogram(name: "b_not", linkageName: "_ZN11ap_int_baseILi32ELb1EE5b_notEv", scope: !2137, file: !26, line: 732, type: !2159, isLocal: false, isDefinition: false, scopeLine: 732, flags: DIFlagPrototyped, isOptimized: false)
!2346 = !DISubprogram(name: "checkOverflowCsim", linkageName: "_ZNK11ap_int_baseILi32ELb1EE17checkOverflowCsimEibb", scope: !2137, file: !26, line: 806, type: !2347, isLocal: false, isDefinition: false, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: false)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!45, !2156, !21, !45, !45}
!2349 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi32ELb1EEppEv", scope: !2137, file: !26, line: 911, type: !2334, isLocal: false, isDefinition: false, scopeLine: 911, flags: DIFlagPrototyped, isOptimized: false)
!2350 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi32ELb1EEmmEv", scope: !2137, file: !26, line: 915, type: !2334, isLocal: false, isDefinition: false, scopeLine: 915, flags: DIFlagPrototyped, isOptimized: false)
!2351 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi32ELb1EEppEi", scope: !2137, file: !26, line: 923, type: !2352, isLocal: false, isDefinition: false, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: false)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!2354, !2161, !21}
!2354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2355)
!2355 = !DIDerivedType(tag: DW_TAG_typedef, name: "arg1", scope: !2356, file: !26, line: 213, baseType: !2358)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<32, true>", scope: !2137, file: !26, line: 180, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !2357, identifier: "_ZTSN11ap_int_baseILi32ELb1EE5RTypeILi32ELb1EEE")
!2357 = !{!280, !382}
!2358 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2359, file: !26, line: 149, baseType: !2360)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_int_factory<32, true>", file: !26, line: 149, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !2357, identifier: "_ZTS15_ap_int_factoryILi32ELb1EE")
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int<32>", file: !627, line: 18, size: 32, flags: DIFlagTypePassByValue, elements: !2361, templateParams: !365, identifier: "_ZTS6ap_intILi32EE")
!2361 = !{!2362, !2363, !2367, !2370, !2373, !2376, !2379, !2382, !2385, !2388, !2391, !2394, !2397, !2400, !2403, !2406, !2409, !2412, !2415, !2418, !2421, !2427, !2433, !2437}
!2362 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2360, baseType: !2137)
!2363 = !DISubprogram(name: "ap_int", scope: !2360, file: !627, line: 21, type: !2364, isLocal: false, isDefinition: false, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: false)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{null, !2366}
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2367 = !DISubprogram(name: "ap_int", scope: !2360, file: !627, line: 57, type: !2368, isLocal: false, isDefinition: false, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{null, !2366, !34, !45}
!2370 = !DISubprogram(name: "ap_int", scope: !2360, file: !627, line: 127, type: !2371, isLocal: false, isDefinition: false, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: false)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{null, !2366, !45}
!2373 = !DISubprogram(name: "ap_int", scope: !2360, file: !627, line: 128, type: !2374, isLocal: false, isDefinition: false, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: false)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{null, !2366, !66}
!2376 = !DISubprogram(name: "ap_int", scope: !2360, file: !627, line: 129, type: !2377, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: false)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{null, !2366, !71}
!2379 = !DISubprogram(name: "ap_int", scope: !2360, file: !627, line: 130, type: !2380, isLocal: false, isDefinition: false, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: false)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{null, !2366, !76}
!2382 = !DISubprogram(name: "ap_int", scope: !2360, file: !627, line: 131, type: !2383, isLocal: false, isDefinition: false, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{null, !2366, !81}
!2385 = !DISubprogram(name: "ap_int", scope: !2360, file: !627, line: 132, type: !2386, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{null, !2366, !86}
!2388 = !DISubprogram(name: "ap_int", scope: !2360, file: !627, line: 133, type: !2389, isLocal: false, isDefinition: false, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{null, !2366, !21}
!2391 = !DISubprogram(name: "ap_int", scope: !2360, file: !627, line: 134, type: !2392, isLocal: false, isDefinition: false, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{null, !2366, !34}
!2394 = !DISubprogram(name: "ap_int", scope: !2360, file: !627, line: 135, type: !2395, isLocal: false, isDefinition: false, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{null, !2366, !98}
!2397 = !DISubprogram(name: "ap_int", scope: !2360, file: !627, line: 136, type: !2398, isLocal: false, isDefinition: false, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: false)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{null, !2366, !103}
!2400 = !DISubprogram(name: "ap_int", scope: !2360, file: !627, line: 137, type: !2401, isLocal: false, isDefinition: false, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{null, !2366, !693}
!2403 = !DISubprogram(name: "ap_int", scope: !2360, file: !627, line: 138, type: !2404, isLocal: false, isDefinition: false, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{null, !2366, !699}
!2406 = !DISubprogram(name: "ap_int", scope: !2360, file: !627, line: 140, type: !2407, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{null, !2366, !128}
!2409 = !DISubprogram(name: "ap_int", scope: !2360, file: !627, line: 141, type: !2410, isLocal: false, isDefinition: false, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{null, !2366, !13}
!2412 = !DISubprogram(name: "ap_int", scope: !2360, file: !627, line: 142, type: !2413, isLocal: false, isDefinition: false, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{null, !2366, !703}
!2415 = !DISubprogram(name: "ap_int", scope: !2360, file: !627, line: 145, type: !2416, isLocal: false, isDefinition: false, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{null, !2366, !132}
!2418 = !DISubprogram(name: "ap_int", scope: !2360, file: !627, line: 147, type: !2419, isLocal: false, isDefinition: false, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{null, !2366, !132, !71}
!2421 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi32EEaSERKS0_", scope: !2360, file: !627, line: 152, type: !2422, isLocal: false, isDefinition: false, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: false)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!2424, !2366, !2425}
!2424 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2360, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2426, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2360)
!2427 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi32EEaSERVKS0_", scope: !2360, file: !627, line: 161, type: !2428, isLocal: false, isDefinition: false, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!2424, !2366, !2430}
!2430 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2431, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2432)
!2432 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !2360)
!2433 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi32EEaSERKS0_", scope: !2360, file: !627, line: 167, type: !2434, isLocal: false, isDefinition: false, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{null, !2436, !2425}
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2437 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi32EEaSERVKS0_", scope: !2360, file: !627, line: 171, type: !2438, isLocal: false, isDefinition: false, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: false)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{null, !2436, !2430}
!2440 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi32ELb1EEmmEi", scope: !2137, file: !26, line: 928, type: !2352, isLocal: false, isDefinition: false, scopeLine: 928, flags: DIFlagPrototyped, isOptimized: false)
!2441 = !DISubprogram(name: "operator+", linkageName: "_ZNK11ap_int_baseILi32ELb1EEpsEv", scope: !2137, file: !26, line: 937, type: !2442, isLocal: false, isDefinition: false, scopeLine: 937, flags: DIFlagPrototyped, isOptimized: false)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!2355, !2156}
!2444 = !DISubprogram(name: "operator-", linkageName: "_ZNK11ap_int_baseILi32ELb1EEngEv", scope: !2137, file: !26, line: 940, type: !2445, isLocal: false, isDefinition: false, scopeLine: 940, flags: DIFlagPrototyped, isOptimized: false)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!2447, !2156}
!2447 = !DIDerivedType(tag: DW_TAG_typedef, name: "minus", scope: !2448, file: !26, line: 209, baseType: !378)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<1, false>", scope: !2137, file: !26, line: 180, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !376, identifier: "_ZTSN11ap_int_baseILi32ELb1EE5RTypeILi1ELb0EEE")
!2449 = !DISubprogram(name: "operator!", linkageName: "_ZNK11ap_int_baseILi32ELb1EEntEv", scope: !2137, file: !26, line: 947, type: !2276, isLocal: false, isDefinition: false, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: false)
!2450 = !DISubprogram(name: "operator~", linkageName: "_ZNK11ap_int_baseILi32ELb1EEcoEv", scope: !2137, file: !26, line: 953, type: !2442, isLocal: false, isDefinition: false, scopeLine: 953, flags: DIFlagPrototyped, isOptimized: false)
!2451 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi32ELb1EE5rangeEii", scope: !2137, file: !26, line: 1091, type: !2452, isLocal: false, isDefinition: false, scopeLine: 1091, flags: DIFlagPrototyped, isOptimized: false)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!2454, !2161, !21, !21}
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_range_ref<32, true>", file: !2455, line: 290, size: 128, flags: DIFlagTypePassByReference, elements: !2456, templateParams: !2570, identifier: "_ZTS12ap_range_refILi32ELb1EE")
!2455 = !DIFile(filename: "r:/ci/prod/2022.1/rdi_builds/continuous/2022_04_18_3526262/src/shared/hls/clib/include/header_files\5Cap_int_ref.h", directory: "R:\5Cci\5Cprod\5C2022.1\5Crdi_builds\5Ccontinuous\5C2022_04_18_3526262\5Csrc\5Cshared")
!2456 = !{!2457, !2460, !2461, !2462, !2468, !2472, !2477, !2481, !2484, !2488, !2491, !2494, !2497, !2500, !2503, !2506, !2509, !2512, !2515, !2518, !2521, !2524, !2527, !2530, !2533, !2536, !2540, !2541, !2542, !2543, !2544, !2545, !2548, !2549, !2552, !2555, !2558, !2561, !2562, !2565, !2566, !2567}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "d_bv", scope: !2454, file: !2455, line: 295, baseType: !2458, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2459, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_typedef, name: "ref_type", scope: !2454, file: !2455, line: 294, baseType: !2137)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "l_index", scope: !2454, file: !2455, line: 296, baseType: !21, size: 32, offset: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "h_index", scope: !2454, file: !2455, line: 297, baseType: !21, size: 32, offset: 96)
!2462 = !DISubprogram(name: "ap_range_ref", scope: !2454, file: !2455, line: 300, type: !2463, isLocal: false, isDefinition: false, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: false)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{null, !2465, !2466}
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2466 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2467, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2454)
!2468 = !DISubprogram(name: "ap_range_ref", scope: !2454, file: !2455, line: 303, type: !2469, isLocal: false, isDefinition: false, scopeLine: 303, flags: DIFlagPrototyped, isOptimized: false)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{null, !2465, !2471, !21, !21}
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2472 = !DISubprogram(name: "ap_range_ref", scope: !2454, file: !2455, line: 306, type: !2473, isLocal: false, isDefinition: false, scopeLine: 306, flags: DIFlagPrototyped, isOptimized: false)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{null, !2465, !2475, !21, !21}
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2459)
!2477 = !DISubprogram(name: "operator ap_int_base", linkageName: "_ZNK12ap_range_refILi32ELb1EEcv11ap_int_baseILi32ELb0EEEv", scope: !2454, file: !2455, line: 309, type: !2478, isLocal: false, isDefinition: false, scopeLine: 309, flags: DIFlagPrototyped, isOptimized: false)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!27, !2480}
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2481 = !DISubprogram(name: "operator unsigned long long", linkageName: "_ZNK12ap_range_refILi32ELb1EEcvyEv", scope: !2454, file: !2455, line: 315, type: !2482, isLocal: false, isDefinition: false, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: false)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{!699, !2480}
!2484 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEb", scope: !2454, file: !2455, line: 339, type: !2485, isLocal: false, isDefinition: false, scopeLine: 339, flags: DIFlagPrototyped, isOptimized: false)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!2487, !2465, !45}
!2487 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2454, size: 64)
!2488 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEc", scope: !2454, file: !2455, line: 340, type: !2489, isLocal: false, isDefinition: false, scopeLine: 340, flags: DIFlagPrototyped, isOptimized: false)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{!2487, !2465, !66}
!2491 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEa", scope: !2454, file: !2455, line: 341, type: !2492, isLocal: false, isDefinition: false, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: false)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!2487, !2465, !71}
!2494 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEh", scope: !2454, file: !2455, line: 342, type: !2495, isLocal: false, isDefinition: false, scopeLine: 342, flags: DIFlagPrototyped, isOptimized: false)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{!2487, !2465, !76}
!2497 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEs", scope: !2454, file: !2455, line: 343, type: !2498, isLocal: false, isDefinition: false, scopeLine: 343, flags: DIFlagPrototyped, isOptimized: false)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!2487, !2465, !81}
!2500 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEt", scope: !2454, file: !2455, line: 344, type: !2501, isLocal: false, isDefinition: false, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: false)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!2487, !2465, !86}
!2503 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEi", scope: !2454, file: !2455, line: 345, type: !2504, isLocal: false, isDefinition: false, scopeLine: 345, flags: DIFlagPrototyped, isOptimized: false)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!2487, !2465, !21}
!2506 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEj", scope: !2454, file: !2455, line: 346, type: !2507, isLocal: false, isDefinition: false, scopeLine: 346, flags: DIFlagPrototyped, isOptimized: false)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!2487, !2465, !34}
!2509 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEl", scope: !2454, file: !2455, line: 347, type: !2510, isLocal: false, isDefinition: false, scopeLine: 347, flags: DIFlagPrototyped, isOptimized: false)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!2487, !2465, !98}
!2512 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEm", scope: !2454, file: !2455, line: 348, type: !2513, isLocal: false, isDefinition: false, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: false)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!2487, !2465, !103}
!2515 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEx", scope: !2454, file: !2455, line: 349, type: !2516, isLocal: false, isDefinition: false, scopeLine: 349, flags: DIFlagPrototyped, isOptimized: false)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{!2487, !2465, !693}
!2518 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEy", scope: !2454, file: !2455, line: 350, type: !2519, isLocal: false, isDefinition: false, scopeLine: 350, flags: DIFlagPrototyped, isOptimized: false)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!2487, !2465, !699}
!2521 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEDh", scope: !2454, file: !2455, line: 351, type: !2522, isLocal: false, isDefinition: false, scopeLine: 351, flags: DIFlagPrototyped, isOptimized: false)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!2487, !2465, !703}
!2524 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEf", scope: !2454, file: !2455, line: 352, type: !2525, isLocal: false, isDefinition: false, scopeLine: 352, flags: DIFlagPrototyped, isOptimized: false)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!2487, !2465, !13}
!2527 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEd", scope: !2454, file: !2455, line: 353, type: !2528, isLocal: false, isDefinition: false, scopeLine: 353, flags: DIFlagPrototyped, isOptimized: false)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!2487, !2465, !128}
!2530 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSEPKc", scope: !2454, file: !2455, line: 358, type: !2531, isLocal: false, isDefinition: false, scopeLine: 358, flags: DIFlagPrototyped, isOptimized: false)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!2487, !2465, !132}
!2533 = !DISubprogram(name: "operator=", linkageName: "_ZN12ap_range_refILi32ELb1EEaSERKS0_", scope: !2454, file: !2455, line: 375, type: !2534, isLocal: false, isDefinition: false, scopeLine: 375, flags: DIFlagPrototyped, isOptimized: false)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!2487, !2465, !2466}
!2536 = !DISubprogram(name: "operator,", linkageName: "_ZN12ap_range_refILi32ELb1EEcmER11ap_int_baseILi32ELb1EE", scope: !2454, file: !2455, line: 443, type: !2537, isLocal: false, isDefinition: false, scopeLine: 443, flags: DIFlagPrototyped, isOptimized: false)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!2539, !2465, !2231}
!2539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_concat_ref<32, ap_range_ref<32, true>, 32, ap_int_base<32, true> >", file: !2455, line: 28, flags: DIFlagFwdDecl, identifier: "_ZTS13ap_concat_refILi32E12ap_range_refILi32ELb1EELi32E11ap_int_baseILi32ELb1EEE")
!2540 = !DISubprogram(name: "operator~", linkageName: "_ZNK12ap_range_refILi32ELb1EEcoEv", scope: !2454, file: !2455, line: 601, type: !2478, isLocal: false, isDefinition: false, scopeLine: 601, flags: DIFlagPrototyped, isOptimized: false)
!2541 = !DISubprogram(name: "operator!", linkageName: "_ZNK12ap_range_refILi32ELb1EEntEv", scope: !2454, file: !2455, line: 607, type: !2478, isLocal: false, isDefinition: false, scopeLine: 607, flags: DIFlagPrototyped, isOptimized: false)
!2542 = !DISubprogram(name: "operator+", linkageName: "_ZNK12ap_range_refILi32ELb1EEpsEv", scope: !2454, file: !2455, line: 613, type: !2478, isLocal: false, isDefinition: false, scopeLine: 613, flags: DIFlagPrototyped, isOptimized: false)
!2543 = !DISubprogram(name: "operator-", linkageName: "_ZNK12ap_range_refILi32ELb1EEngEv", scope: !2454, file: !2455, line: 619, type: !2478, isLocal: false, isDefinition: false, scopeLine: 619, flags: DIFlagPrototyped, isOptimized: false)
!2544 = !DISubprogram(name: "get", linkageName: "_ZNK12ap_range_refILi32ELb1EE3getEv", scope: !2454, file: !2455, line: 626, type: !2478, isLocal: false, isDefinition: false, scopeLine: 626, flags: DIFlagPrototyped, isOptimized: false)
!2545 = !DISubprogram(name: "length", linkageName: "_ZNK12ap_range_refILi32ELb1EE6lengthEv", scope: !2454, file: !2455, line: 637, type: !2546, isLocal: false, isDefinition: false, scopeLine: 637, flags: DIFlagPrototyped, isOptimized: false)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!21, !2480}
!2548 = !DISubprogram(name: "to_int", linkageName: "_ZNK12ap_range_refILi32ELb1EE6to_intEv", scope: !2454, file: !2455, line: 641, type: !2546, isLocal: false, isDefinition: false, scopeLine: 641, flags: DIFlagPrototyped, isOptimized: false)
!2549 = !DISubprogram(name: "to_uint", linkageName: "_ZNK12ap_range_refILi32ELb1EE7to_uintEv", scope: !2454, file: !2455, line: 645, type: !2550, isLocal: false, isDefinition: false, scopeLine: 645, flags: DIFlagPrototyped, isOptimized: false)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!34, !2480}
!2552 = !DISubprogram(name: "to_long", linkageName: "_ZNK12ap_range_refILi32ELb1EE7to_longEv", scope: !2454, file: !2455, line: 651, type: !2553, isLocal: false, isDefinition: false, scopeLine: 651, flags: DIFlagPrototyped, isOptimized: false)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!98, !2480}
!2555 = !DISubprogram(name: "to_ulong", linkageName: "_ZNK12ap_range_refILi32ELb1EE8to_ulongEv", scope: !2454, file: !2455, line: 655, type: !2556, isLocal: false, isDefinition: false, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: false)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!103, !2480}
!2558 = !DISubprogram(name: "to_int64", linkageName: "_ZNK12ap_range_refILi32ELb1EE8to_int64Ev", scope: !2454, file: !2455, line: 661, type: !2559, isLocal: false, isDefinition: false, scopeLine: 661, flags: DIFlagPrototyped, isOptimized: false)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!693, !2480}
!2561 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK12ap_range_refILi32ELb1EE9to_uint64Ev", scope: !2454, file: !2455, line: 665, type: !2482, isLocal: false, isDefinition: false, scopeLine: 665, flags: DIFlagPrototyped, isOptimized: false)
!2562 = !DISubprogram(name: "and_reduce", linkageName: "_ZNK12ap_range_refILi32ELb1EE10and_reduceEv", scope: !2454, file: !2455, line: 671, type: !2563, isLocal: false, isDefinition: false, scopeLine: 671, flags: DIFlagPrototyped, isOptimized: false)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!45, !2480}
!2565 = !DISubprogram(name: "or_reduce", linkageName: "_ZNK12ap_range_refILi32ELb1EE9or_reduceEv", scope: !2454, file: !2455, line: 685, type: !2563, isLocal: false, isDefinition: false, scopeLine: 685, flags: DIFlagPrototyped, isOptimized: false)
!2566 = !DISubprogram(name: "xor_reduce", linkageName: "_ZNK12ap_range_refILi32ELb1EE10xor_reduceEv", scope: !2454, file: !2455, line: 699, type: !2563, isLocal: false, isDefinition: false, scopeLine: 699, flags: DIFlagPrototyped, isOptimized: false)
!2567 = !DISubprogram(name: "to_string", linkageName: "_ZNK12ap_range_refILi32ELb1EE9to_stringEa", scope: !2454, file: !2455, line: 720, type: !2568, isLocal: false, isDefinition: false, scopeLine: 720, flags: DIFlagPrototyped, isOptimized: false)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!1386, !2480, !71}
!2570 = !{!366, !402}
!2571 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi32ELb1EE5rangeEii", scope: !2137, file: !26, line: 1098, type: !2572, isLocal: false, isDefinition: false, scopeLine: 1098, flags: DIFlagPrototyped, isOptimized: false)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!2454, !2156, !21, !21}
!2574 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi32ELb1EE5rangeEv", scope: !2137, file: !26, line: 1122, type: !2575, isLocal: false, isDefinition: false, scopeLine: 1122, flags: DIFlagPrototyped, isOptimized: false)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!2454, !2161}
!2577 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi32ELb1EE5rangeEv", scope: !2137, file: !26, line: 1126, type: !2578, isLocal: false, isDefinition: false, scopeLine: 1126, flags: DIFlagPrototyped, isOptimized: false)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!2454, !2156}
!2580 = !DISubprogram(name: "operator()", linkageName: "_ZN11ap_int_baseILi32ELb1EEclEii", scope: !2137, file: !26, line: 1130, type: !2452, isLocal: false, isDefinition: false, scopeLine: 1130, flags: DIFlagPrototyped, isOptimized: false)
!2581 = !DISubprogram(name: "operator()", linkageName: "_ZNK11ap_int_baseILi32ELb1EEclEii", scope: !2137, file: !26, line: 1134, type: !2572, isLocal: false, isDefinition: false, scopeLine: 1134, flags: DIFlagPrototyped, isOptimized: false)
!2582 = !DISubprogram(name: "operator[]", linkageName: "_ZN11ap_int_baseILi32ELb1EEixEi", scope: !2137, file: !26, line: 1172, type: !2583, isLocal: false, isDefinition: false, scopeLine: 1172, flags: DIFlagPrototyped, isOptimized: false)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{!2585, !2161, !21}
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_bit_ref<32, true>", file: !2455, line: 761, size: 128, flags: DIFlagTypePassByReference, elements: !2586, templateParams: !2570, identifier: "_ZTS10ap_bit_refILi32ELb1EE")
!2586 = !{!2587, !2590, !2591, !2597, !2601, !2606, !2610, !2611, !2615, !2618, !2621, !2624, !2627, !2630, !2633, !2636, !2639, !2642, !2645, !2648, !2651, !2654, !2657, !2660, !2661, !2664, !2665, !2668}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "d_bv", scope: !2585, file: !2455, line: 766, baseType: !2588, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2589, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_typedef, name: "ref_type", scope: !2585, file: !2455, line: 765, baseType: !2137)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "d_index", scope: !2585, file: !2455, line: 767, baseType: !21, size: 32, offset: 64)
!2591 = !DISubprogram(name: "ap_bit_ref", scope: !2585, file: !2455, line: 771, type: !2592, isLocal: false, isDefinition: false, scopeLine: 771, flags: DIFlagPrototyped, isOptimized: false)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{null, !2594, !2595}
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2595 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2596, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2585)
!2597 = !DISubprogram(name: "ap_bit_ref", scope: !2585, file: !2455, line: 774, type: !2598, isLocal: false, isDefinition: false, scopeLine: 774, flags: DIFlagPrototyped, isOptimized: false)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{null, !2594, !2600, !21}
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2601 = !DISubprogram(name: "ap_bit_ref", scope: !2585, file: !2455, line: 776, type: !2602, isLocal: false, isDefinition: false, scopeLine: 776, flags: DIFlagPrototyped, isOptimized: false)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{null, !2594, !2604, !21}
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2589)
!2606 = !DISubprogram(name: "operator bool", linkageName: "_ZNK10ap_bit_refILi32ELb1EEcvbEv", scope: !2585, file: !2455, line: 779, type: !2607, isLocal: false, isDefinition: false, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: false)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{!45, !2609}
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2610 = !DISubprogram(name: "to_bool", linkageName: "_ZNK10ap_bit_refILi32ELb1EE7to_boolEv", scope: !2585, file: !2455, line: 780, type: !2607, isLocal: false, isDefinition: false, scopeLine: 780, flags: DIFlagPrototyped, isOptimized: false)
!2611 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSEb", scope: !2585, file: !2455, line: 798, type: !2612, isLocal: false, isDefinition: false, scopeLine: 798, flags: DIFlagPrototyped, isOptimized: false)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{!2614, !2594, !45}
!2614 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2585, size: 64)
!2615 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSEc", scope: !2585, file: !2455, line: 799, type: !2616, isLocal: false, isDefinition: false, scopeLine: 799, flags: DIFlagPrototyped, isOptimized: false)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!2614, !2594, !66}
!2618 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSEa", scope: !2585, file: !2455, line: 800, type: !2619, isLocal: false, isDefinition: false, scopeLine: 800, flags: DIFlagPrototyped, isOptimized: false)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!2614, !2594, !71}
!2621 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSEh", scope: !2585, file: !2455, line: 801, type: !2622, isLocal: false, isDefinition: false, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: false)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{!2614, !2594, !76}
!2624 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSEs", scope: !2585, file: !2455, line: 802, type: !2625, isLocal: false, isDefinition: false, scopeLine: 802, flags: DIFlagPrototyped, isOptimized: false)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!2614, !2594, !81}
!2627 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSEt", scope: !2585, file: !2455, line: 803, type: !2628, isLocal: false, isDefinition: false, scopeLine: 803, flags: DIFlagPrototyped, isOptimized: false)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!2614, !2594, !86}
!2630 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSEi", scope: !2585, file: !2455, line: 804, type: !2631, isLocal: false, isDefinition: false, scopeLine: 804, flags: DIFlagPrototyped, isOptimized: false)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!2614, !2594, !21}
!2633 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSEj", scope: !2585, file: !2455, line: 805, type: !2634, isLocal: false, isDefinition: false, scopeLine: 805, flags: DIFlagPrototyped, isOptimized: false)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{!2614, !2594, !34}
!2636 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSEl", scope: !2585, file: !2455, line: 806, type: !2637, isLocal: false, isDefinition: false, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: false)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{!2614, !2594, !98}
!2639 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSEm", scope: !2585, file: !2455, line: 807, type: !2640, isLocal: false, isDefinition: false, scopeLine: 807, flags: DIFlagPrototyped, isOptimized: false)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{!2614, !2594, !103}
!2642 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSEx", scope: !2585, file: !2455, line: 808, type: !2643, isLocal: false, isDefinition: false, scopeLine: 808, flags: DIFlagPrototyped, isOptimized: false)
!2643 = !DISubroutineType(types: !2644)
!2644 = !{!2614, !2594, !693}
!2645 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSEy", scope: !2585, file: !2455, line: 809, type: !2646, isLocal: false, isDefinition: false, scopeLine: 809, flags: DIFlagPrototyped, isOptimized: false)
!2646 = !DISubroutineType(types: !2647)
!2647 = !{!2614, !2594, !699}
!2648 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSEDh", scope: !2585, file: !2455, line: 820, type: !2649, isLocal: false, isDefinition: false, scopeLine: 820, flags: DIFlagPrototyped, isOptimized: false)
!2649 = !DISubroutineType(types: !2650)
!2650 = !{!2614, !2594, !703}
!2651 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSEf", scope: !2585, file: !2455, line: 821, type: !2652, isLocal: false, isDefinition: false, scopeLine: 821, flags: DIFlagPrototyped, isOptimized: false)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{!2614, !2594, !13}
!2654 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSEd", scope: !2585, file: !2455, line: 822, type: !2655, isLocal: false, isDefinition: false, scopeLine: 822, flags: DIFlagPrototyped, isOptimized: false)
!2655 = !DISubroutineType(types: !2656)
!2656 = !{!2614, !2594, !128}
!2657 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi32ELb1EEaSERKS0_", scope: !2585, file: !2455, line: 839, type: !2658, isLocal: false, isDefinition: false, scopeLine: 839, flags: DIFlagPrototyped, isOptimized: false)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!2614, !2594, !2595}
!2660 = !DISubprogram(name: "get", linkageName: "_ZNK10ap_bit_refILi32ELb1EE3getEv", scope: !2585, file: !2455, line: 959, type: !2607, isLocal: false, isDefinition: false, scopeLine: 959, flags: DIFlagPrototyped, isOptimized: false)
!2661 = !DISubprogram(name: "get", linkageName: "_ZN10ap_bit_refILi32ELb1EE3getEv", scope: !2585, file: !2455, line: 961, type: !2662, isLocal: false, isDefinition: false, scopeLine: 961, flags: DIFlagPrototyped, isOptimized: false)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{!45, !2594}
!2664 = !DISubprogram(name: "operator~", linkageName: "_ZNK10ap_bit_refILi32ELb1EEcoEv", scope: !2585, file: !2455, line: 968, type: !2607, isLocal: false, isDefinition: false, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: false)
!2665 = !DISubprogram(name: "length", linkageName: "_ZNK10ap_bit_refILi32ELb1EE6lengthEv", scope: !2585, file: !2455, line: 973, type: !2666, isLocal: false, isDefinition: false, scopeLine: 973, flags: DIFlagPrototyped, isOptimized: false)
!2666 = !DISubroutineType(types: !2667)
!2667 = !{!21, !2609}
!2668 = !DISubprogram(name: "to_string", linkageName: "_ZNK10ap_bit_refILi32ELb1EE9to_stringEv", scope: !2585, file: !2455, line: 979, type: !2669, isLocal: false, isDefinition: false, scopeLine: 979, flags: DIFlagPrototyped, isOptimized: false)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{!1386, !2609}
!2671 = !DISubprogram(name: "operator[]", linkageName: "_ZNK11ap_int_baseILi32ELb1EEixEi", scope: !2137, file: !26, line: 1188, type: !2331, isLocal: false, isDefinition: false, scopeLine: 1188, flags: DIFlagPrototyped, isOptimized: false)
!2672 = !DISubprogram(name: "bit", linkageName: "_ZN11ap_int_baseILi32ELb1EE3bitEi", scope: !2137, file: !26, line: 1201, type: !2583, isLocal: false, isDefinition: false, scopeLine: 1201, flags: DIFlagPrototyped, isOptimized: false)
!2673 = !DISubprogram(name: "bit", linkageName: "_ZNK11ap_int_baseILi32ELb1EE3bitEi", scope: !2137, file: !26, line: 1216, type: !2331, isLocal: false, isDefinition: false, scopeLine: 1216, flags: DIFlagPrototyped, isOptimized: false)
!2674 = !DISubprogram(name: "countLeadingZeros", linkageName: "_ZNK11ap_int_baseILi32ELb1EE17countLeadingZerosEv", scope: !2137, file: !26, line: 1239, type: !2154, isLocal: false, isDefinition: false, scopeLine: 1239, flags: DIFlagPrototyped, isOptimized: false)
!2675 = !DISubprogram(name: "and_reduce", linkageName: "_ZNK11ap_int_baseILi32ELb1EE10and_reduceEv", scope: !2137, file: !26, line: 1459, type: !2276, isLocal: false, isDefinition: false, scopeLine: 1459, flags: DIFlagPrototyped, isOptimized: false)
!2676 = !DISubprogram(name: "nand_reduce", linkageName: "_ZNK11ap_int_baseILi32ELb1EE11nand_reduceEv", scope: !2137, file: !26, line: 1460, type: !2276, isLocal: false, isDefinition: false, scopeLine: 1460, flags: DIFlagPrototyped, isOptimized: false)
!2677 = !DISubprogram(name: "or_reduce", linkageName: "_ZNK11ap_int_baseILi32ELb1EE9or_reduceEv", scope: !2137, file: !26, line: 1461, type: !2276, isLocal: false, isDefinition: false, scopeLine: 1461, flags: DIFlagPrototyped, isOptimized: false)
!2678 = !DISubprogram(name: "nor_reduce", linkageName: "_ZNK11ap_int_baseILi32ELb1EE10nor_reduceEv", scope: !2137, file: !26, line: 1462, type: !2276, isLocal: false, isDefinition: false, scopeLine: 1462, flags: DIFlagPrototyped, isOptimized: false)
!2679 = !DISubprogram(name: "xor_reduce", linkageName: "_ZNK11ap_int_baseILi32ELb1EE10xor_reduceEv", scope: !2137, file: !26, line: 1463, type: !2276, isLocal: false, isDefinition: false, scopeLine: 1463, flags: DIFlagPrototyped, isOptimized: false)
!2680 = !DISubprogram(name: "xnor_reduce", linkageName: "_ZNK11ap_int_baseILi32ELb1EE11xnor_reduceEv", scope: !2137, file: !26, line: 1464, type: !2276, isLocal: false, isDefinition: false, scopeLine: 1464, flags: DIFlagPrototyped, isOptimized: false)
!2681 = !DISubprogram(name: "to_string", linkageName: "_ZNK11ap_int_baseILi32ELb1EE9to_stringEab", scope: !2137, file: !26, line: 1479, type: !2682, isLocal: false, isDefinition: false, scopeLine: 1479, flags: DIFlagPrototyped, isOptimized: false)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{!1386, !2156, !71, !45}
!2684 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !2685, file: !26, line: 174, baseType: !527)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<64, true>", file: !26, line: 154, size: 64, flags: DIFlagTypePassByValue, elements: !2686, templateParams: !3553, identifier: "_ZTS11ap_int_baseILi64ELb1EE")
!2686 = !{!2687, !2700, !2701, !2702, !2707, !2711, !2714, !2717, !2720, !2723, !2726, !2729, !2732, !2735, !2738, !2741, !2744, !2747, !2750, !2753, !2756, !2759, !2762, !2767, !2771, !2776, !2777, !2781, !2784, !2787, !2790, !2793, !2796, !2799, !2802, !2805, !2808, !2811, !2814, !2817, !2820, !2823, !2826, !2829, !2832, !2835, !2838, !2841, !2842, !2845, !2848, !2851, !2854, !2857, !2860, !2863, !2866, !2870, !2871, !2872, !2873, !2874, !2877, !2878, !2881, !2884, !2885, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2897, !2898, !2899, !2991, !2992, !2995, !3447, !3448, !3449, !3453, !3456, !3459, !3462, !3463, !3464, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564}
!2687 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2685, baseType: !2688)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<64, true>", file: !31, line: 555, size: 64, flags: DIFlagTypePassByValue, elements: !2689, templateParams: !2698, identifier: "_ZTS8ssdm_intILi64ELb1EE")
!2689 = !{!2690, !2691, !2695}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !2688, file: !31, line: 557, baseType: !98, size: 64)
!2691 = !DISubprogram(name: "ssdm_int", scope: !2688, file: !31, line: 558, type: !2692, isLocal: false, isDefinition: false, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: false)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{null, !2694}
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2695 = !DISubprogram(name: "ssdm_int", scope: !2688, file: !31, line: 559, type: !2696, isLocal: false, isDefinition: false, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{null, !2694, !98}
!2698 = !{!2699, !402}
!2699 = !DITemplateValueParameter(name: "_AP_N", type: !21, value: i32 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !2685, file: !26, line: 176, baseType: !47, flags: DIFlagStaticMember, extraData: i32 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !2685, file: !26, line: 177, baseType: !49, flags: DIFlagStaticMember, extraData: i1 true)
!2702 = !DISubprogram(name: "countLeadingOnes", linkageName: "_ZNK11ap_int_baseILi64ELb1EE16countLeadingOnesEv", scope: !2685, file: !26, line: 156, type: !2703, isLocal: false, isDefinition: false, scopeLine: 156, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!21, !2705}
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2685)
!2707 = !DISubprogram(name: "ap_int_base", scope: !2685, file: !26, line: 221, type: !2708, isLocal: false, isDefinition: false, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: false)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{null, !2710}
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2711 = !DISubprogram(name: "ap_int_base", scope: !2685, file: !26, line: 254, type: !2712, isLocal: false, isDefinition: false, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: false)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{null, !2710, !49}
!2714 = !DISubprogram(name: "ap_int_base", scope: !2685, file: !26, line: 255, type: !2715, isLocal: false, isDefinition: false, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: false)
!2715 = !DISubroutineType(types: !2716)
!2716 = !{null, !2710, !65}
!2717 = !DISubprogram(name: "ap_int_base", scope: !2685, file: !26, line: 256, type: !2718, isLocal: false, isDefinition: false, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: false)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{null, !2710, !70}
!2720 = !DISubprogram(name: "ap_int_base", scope: !2685, file: !26, line: 257, type: !2721, isLocal: false, isDefinition: false, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: false)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{null, !2710, !75}
!2723 = !DISubprogram(name: "ap_int_base", scope: !2685, file: !26, line: 258, type: !2724, isLocal: false, isDefinition: false, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: false)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{null, !2710, !80}
!2726 = !DISubprogram(name: "ap_int_base", scope: !2685, file: !26, line: 259, type: !2727, isLocal: false, isDefinition: false, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: false)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{null, !2710, !85}
!2729 = !DISubprogram(name: "ap_int_base", scope: !2685, file: !26, line: 260, type: !2730, isLocal: false, isDefinition: false, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: false)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{null, !2710, !47}
!2732 = !DISubprogram(name: "ap_int_base", scope: !2685, file: !26, line: 261, type: !2733, isLocal: false, isDefinition: false, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: false)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{null, !2710, !93}
!2735 = !DISubprogram(name: "ap_int_base", scope: !2685, file: !26, line: 262, type: !2736, isLocal: false, isDefinition: false, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: false)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{null, !2710, !97}
!2738 = !DISubprogram(name: "ap_int_base", scope: !2685, file: !26, line: 263, type: !2739, isLocal: false, isDefinition: false, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: false)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{null, !2710, !102}
!2741 = !DISubprogram(name: "ap_int_base", scope: !2685, file: !26, line: 264, type: !2742, isLocal: false, isDefinition: false, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: false)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{null, !2710, !107}
!2744 = !DISubprogram(name: "ap_int_base", scope: !2685, file: !26, line: 265, type: !2745, isLocal: false, isDefinition: false, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: false)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{null, !2710, !114}
!2747 = !DISubprogram(name: "ap_int_base", scope: !2685, file: !26, line: 270, type: !2748, isLocal: false, isDefinition: false, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: false)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{null, !2710, !120}
!2750 = !DISubprogram(name: "ap_int_base", scope: !2685, file: !26, line: 276, type: !2751, isLocal: false, isDefinition: false, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: false)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{null, !2710, !13}
!2753 = !DISubprogram(name: "ap_int_base", scope: !2685, file: !26, line: 335, type: !2754, isLocal: false, isDefinition: false, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: false)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{null, !2710, !128}
!2756 = !DISubprogram(name: "ap_int_base", scope: !2685, file: !26, line: 431, type: !2757, isLocal: false, isDefinition: false, scopeLine: 431, flags: DIFlagPrototyped, isOptimized: false)
!2757 = !DISubroutineType(types: !2758)
!2758 = !{null, !2710, !132}
!2759 = !DISubprogram(name: "ap_int_base", scope: !2685, file: !26, line: 437, type: !2760, isLocal: false, isDefinition: false, scopeLine: 437, flags: DIFlagPrototyped, isOptimized: false)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{null, !2710, !132, !71}
!2762 = !DISubprogram(name: "read", linkageName: "_ZNV11ap_int_baseILi64ELb1EE4readEv", scope: !2685, file: !26, line: 459, type: !2763, isLocal: false, isDefinition: false, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: false)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!2685, !2765}
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2766 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !2685)
!2767 = !DISubprogram(name: "write", linkageName: "_ZNV11ap_int_baseILi64ELb1EE5writeERKS0_", scope: !2685, file: !26, line: 466, type: !2768, isLocal: false, isDefinition: false, scopeLine: 466, flags: DIFlagPrototyped, isOptimized: false)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{null, !2765, !2770}
!2770 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2706, size: 64)
!2771 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi64ELb1EEaSERVKS0_", scope: !2685, file: !26, line: 478, type: !2772, isLocal: false, isDefinition: false, scopeLine: 478, flags: DIFlagPrototyped, isOptimized: false)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{null, !2765, !2774}
!2774 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2775, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2766)
!2776 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi64ELb1EEaSERKS0_", scope: !2685, file: !26, line: 488, type: !2768, isLocal: false, isDefinition: false, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: false)
!2777 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi64ELb1EEaSERVKS0_", scope: !2685, file: !26, line: 505, type: !2778, isLocal: false, isDefinition: false, scopeLine: 505, flags: DIFlagPrototyped, isOptimized: false)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!2780, !2710, !2774}
!2780 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2685, size: 64)
!2781 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi64ELb1EEaSERKS0_", scope: !2685, file: !26, line: 511, type: !2782, isLocal: false, isDefinition: false, scopeLine: 511, flags: DIFlagPrototyped, isOptimized: false)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!2780, !2710, !2770}
!2784 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi64ELb1EEaSEb", scope: !2685, file: !26, line: 525, type: !2785, isLocal: false, isDefinition: false, scopeLine: 525, flags: DIFlagPrototyped, isOptimized: false)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{!2780, !2710, !45}
!2787 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi64ELb1EEaSEc", scope: !2685, file: !26, line: 526, type: !2788, isLocal: false, isDefinition: false, scopeLine: 526, flags: DIFlagPrototyped, isOptimized: false)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!2780, !2710, !66}
!2790 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi64ELb1EEaSEa", scope: !2685, file: !26, line: 527, type: !2791, isLocal: false, isDefinition: false, scopeLine: 527, flags: DIFlagPrototyped, isOptimized: false)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{!2780, !2710, !71}
!2793 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi64ELb1EEaSEh", scope: !2685, file: !26, line: 528, type: !2794, isLocal: false, isDefinition: false, scopeLine: 528, flags: DIFlagPrototyped, isOptimized: false)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{!2780, !2710, !76}
!2796 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi64ELb1EEaSEs", scope: !2685, file: !26, line: 529, type: !2797, isLocal: false, isDefinition: false, scopeLine: 529, flags: DIFlagPrototyped, isOptimized: false)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!2780, !2710, !81}
!2799 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi64ELb1EEaSEt", scope: !2685, file: !26, line: 530, type: !2800, isLocal: false, isDefinition: false, scopeLine: 530, flags: DIFlagPrototyped, isOptimized: false)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{!2780, !2710, !86}
!2802 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi64ELb1EEaSEi", scope: !2685, file: !26, line: 531, type: !2803, isLocal: false, isDefinition: false, scopeLine: 531, flags: DIFlagPrototyped, isOptimized: false)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!2780, !2710, !21}
!2805 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi64ELb1EEaSEj", scope: !2685, file: !26, line: 532, type: !2806, isLocal: false, isDefinition: false, scopeLine: 532, flags: DIFlagPrototyped, isOptimized: false)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!2780, !2710, !34}
!2808 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi64ELb1EEaSEl", scope: !2685, file: !26, line: 533, type: !2809, isLocal: false, isDefinition: false, scopeLine: 533, flags: DIFlagPrototyped, isOptimized: false)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!2780, !2710, !98}
!2811 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi64ELb1EEaSEm", scope: !2685, file: !26, line: 534, type: !2812, isLocal: false, isDefinition: false, scopeLine: 534, flags: DIFlagPrototyped, isOptimized: false)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!2780, !2710, !103}
!2814 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi64ELb1EEaSEx", scope: !2685, file: !26, line: 535, type: !2815, isLocal: false, isDefinition: false, scopeLine: 535, flags: DIFlagPrototyped, isOptimized: false)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!2780, !2710, !108}
!2817 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi64ELb1EEaSEy", scope: !2685, file: !26, line: 536, type: !2818, isLocal: false, isDefinition: false, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: false)
!2818 = !DISubroutineType(types: !2819)
!2819 = !{!2780, !2710, !115}
!2820 = !DISubprogram(name: "operator long long", linkageName: "_ZNK11ap_int_baseILi64ELb1EEcvxEv", scope: !2685, file: !26, line: 587, type: !2821, isLocal: false, isDefinition: false, scopeLine: 587, flags: DIFlagPrototyped, isOptimized: false)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!2684, !2705}
!2823 = !DISubprogram(name: "to_bool", linkageName: "_ZNK11ap_int_baseILi64ELb1EE7to_boolEv", scope: !2685, file: !26, line: 592, type: !2824, isLocal: false, isDefinition: false, scopeLine: 592, flags: DIFlagPrototyped, isOptimized: false)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!45, !2705}
!2826 = !DISubprogram(name: "to_char", linkageName: "_ZNK11ap_int_baseILi64ELb1EE7to_charEv", scope: !2685, file: !26, line: 593, type: !2827, isLocal: false, isDefinition: false, scopeLine: 593, flags: DIFlagPrototyped, isOptimized: false)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!66, !2705}
!2829 = !DISubprogram(name: "to_schar", linkageName: "_ZNK11ap_int_baseILi64ELb1EE8to_scharEv", scope: !2685, file: !26, line: 594, type: !2830, isLocal: false, isDefinition: false, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: false)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!71, !2705}
!2832 = !DISubprogram(name: "to_uchar", linkageName: "_ZNK11ap_int_baseILi64ELb1EE8to_ucharEv", scope: !2685, file: !26, line: 595, type: !2833, isLocal: false, isDefinition: false, scopeLine: 595, flags: DIFlagPrototyped, isOptimized: false)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{!76, !2705}
!2835 = !DISubprogram(name: "to_short", linkageName: "_ZNK11ap_int_baseILi64ELb1EE8to_shortEv", scope: !2685, file: !26, line: 596, type: !2836, isLocal: false, isDefinition: false, scopeLine: 596, flags: DIFlagPrototyped, isOptimized: false)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{!81, !2705}
!2838 = !DISubprogram(name: "to_ushort", linkageName: "_ZNK11ap_int_baseILi64ELb1EE9to_ushortEv", scope: !2685, file: !26, line: 597, type: !2839, isLocal: false, isDefinition: false, scopeLine: 597, flags: DIFlagPrototyped, isOptimized: false)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{!86, !2705}
!2841 = !DISubprogram(name: "to_int", linkageName: "_ZNK11ap_int_baseILi64ELb1EE6to_intEv", scope: !2685, file: !26, line: 598, type: !2703, isLocal: false, isDefinition: false, scopeLine: 598, flags: DIFlagPrototyped, isOptimized: false)
!2842 = !DISubprogram(name: "to_uint", linkageName: "_ZNK11ap_int_baseILi64ELb1EE7to_uintEv", scope: !2685, file: !26, line: 599, type: !2843, isLocal: false, isDefinition: false, scopeLine: 599, flags: DIFlagPrototyped, isOptimized: false)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{!34, !2705}
!2845 = !DISubprogram(name: "to_long", linkageName: "_ZNK11ap_int_baseILi64ELb1EE7to_longEv", scope: !2685, file: !26, line: 600, type: !2846, isLocal: false, isDefinition: false, scopeLine: 600, flags: DIFlagPrototyped, isOptimized: false)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!98, !2705}
!2848 = !DISubprogram(name: "to_ulong", linkageName: "_ZNK11ap_int_baseILi64ELb1EE8to_ulongEv", scope: !2685, file: !26, line: 601, type: !2849, isLocal: false, isDefinition: false, scopeLine: 601, flags: DIFlagPrototyped, isOptimized: false)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!103, !2705}
!2851 = !DISubprogram(name: "to_int64", linkageName: "_ZNK11ap_int_baseILi64ELb1EE8to_int64Ev", scope: !2685, file: !26, line: 602, type: !2852, isLocal: false, isDefinition: false, scopeLine: 602, flags: DIFlagPrototyped, isOptimized: false)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!108, !2705}
!2854 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK11ap_int_baseILi64ELb1EE9to_uint64Ev", scope: !2685, file: !26, line: 603, type: !2855, isLocal: false, isDefinition: false, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: false)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{!115, !2705}
!2857 = !DISubprogram(name: "to_half", linkageName: "_ZNK11ap_int_baseILi64ELb1EE7to_halfEv", scope: !2685, file: !26, line: 604, type: !2858, isLocal: false, isDefinition: false, scopeLine: 604, flags: DIFlagPrototyped, isOptimized: false)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{!120, !2705}
!2860 = !DISubprogram(name: "to_float", linkageName: "_ZNK11ap_int_baseILi64ELb1EE8to_floatEv", scope: !2685, file: !26, line: 605, type: !2861, isLocal: false, isDefinition: false, scopeLine: 605, flags: DIFlagPrototyped, isOptimized: false)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{!13, !2705}
!2863 = !DISubprogram(name: "to_double", linkageName: "_ZNK11ap_int_baseILi64ELb1EE9to_doubleEv", scope: !2685, file: !26, line: 606, type: !2864, isLocal: false, isDefinition: false, scopeLine: 606, flags: DIFlagPrototyped, isOptimized: false)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!128, !2705}
!2866 = !DISubprogram(name: "length", linkageName: "_ZNVK11ap_int_baseILi64ELb1EE6lengthEv", scope: !2685, file: !26, line: 630, type: !2867, isLocal: false, isDefinition: false, scopeLine: 630, flags: DIFlagPrototyped, isOptimized: false)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{!21, !2869}
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2870 = !DISubprogram(name: "length", linkageName: "_ZNK11ap_int_baseILi64ELb1EE6lengthEv", scope: !2685, file: !26, line: 631, type: !2703, isLocal: false, isDefinition: false, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: false)
!2871 = !DISubprogram(name: "iszero", linkageName: "_ZNK11ap_int_baseILi64ELb1EE6iszeroEv", scope: !2685, file: !26, line: 634, type: !2824, isLocal: false, isDefinition: false, scopeLine: 634, flags: DIFlagPrototyped, isOptimized: false)
!2872 = !DISubprogram(name: "is_zero", linkageName: "_ZNK11ap_int_baseILi64ELb1EE7is_zeroEv", scope: !2685, file: !26, line: 637, type: !2824, isLocal: false, isDefinition: false, scopeLine: 637, flags: DIFlagPrototyped, isOptimized: false)
!2873 = !DISubprogram(name: "sign", linkageName: "_ZNK11ap_int_baseILi64ELb1EE4signEv", scope: !2685, file: !26, line: 640, type: !2824, isLocal: false, isDefinition: false, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: false)
!2874 = !DISubprogram(name: "clear", linkageName: "_ZN11ap_int_baseILi64ELb1EE5clearEi", scope: !2685, file: !26, line: 649, type: !2875, isLocal: false, isDefinition: false, scopeLine: 649, flags: DIFlagPrototyped, isOptimized: false)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{null, !2710, !21}
!2877 = !DISubprogram(name: "invert", linkageName: "_ZN11ap_int_baseILi64ELb1EE6invertEi", scope: !2685, file: !26, line: 655, type: !2875, isLocal: false, isDefinition: false, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: false)
!2878 = !DISubprogram(name: "test", linkageName: "_ZNK11ap_int_baseILi64ELb1EE4testEi", scope: !2685, file: !26, line: 664, type: !2879, isLocal: false, isDefinition: false, scopeLine: 664, flags: DIFlagPrototyped, isOptimized: false)
!2879 = !DISubroutineType(types: !2880)
!2880 = !{!45, !2705, !21}
!2881 = !DISubprogram(name: "get", linkageName: "_ZN11ap_int_baseILi64ELb1EE3getEv", scope: !2685, file: !26, line: 670, type: !2882, isLocal: false, isDefinition: false, scopeLine: 670, flags: DIFlagPrototyped, isOptimized: false)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!2780, !2710}
!2884 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi64ELb1EE3setEi", scope: !2685, file: !26, line: 673, type: !2875, isLocal: false, isDefinition: false, scopeLine: 673, flags: DIFlagPrototyped, isOptimized: false)
!2885 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi64ELb1EE3setEib", scope: !2685, file: !26, line: 679, type: !2886, isLocal: false, isDefinition: false, scopeLine: 679, flags: DIFlagPrototyped, isOptimized: false)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{null, !2710, !21, !45}
!2888 = !DISubprogram(name: "lrotate", linkageName: "_ZN11ap_int_baseILi64ELb1EE7lrotateEi", scope: !2685, file: !26, line: 686, type: !2803, isLocal: false, isDefinition: false, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: false)
!2889 = !DISubprogram(name: "rrotate", linkageName: "_ZN11ap_int_baseILi64ELb1EE7rrotateEi", scope: !2685, file: !26, line: 701, type: !2803, isLocal: false, isDefinition: false, scopeLine: 701, flags: DIFlagPrototyped, isOptimized: false)
!2890 = !DISubprogram(name: "reverse", linkageName: "_ZN11ap_int_baseILi64ELb1EE7reverseEv", scope: !2685, file: !26, line: 716, type: !2882, isLocal: false, isDefinition: false, scopeLine: 716, flags: DIFlagPrototyped, isOptimized: false)
!2891 = !DISubprogram(name: "set_bit", linkageName: "_ZN11ap_int_baseILi64ELb1EE7set_bitEib", scope: !2685, file: !26, line: 722, type: !2886, isLocal: false, isDefinition: false, scopeLine: 722, flags: DIFlagPrototyped, isOptimized: false)
!2892 = !DISubprogram(name: "get_bit", linkageName: "_ZNK11ap_int_baseILi64ELb1EE7get_bitEi", scope: !2685, file: !26, line: 727, type: !2879, isLocal: false, isDefinition: false, scopeLine: 727, flags: DIFlagPrototyped, isOptimized: false)
!2893 = !DISubprogram(name: "b_not", linkageName: "_ZN11ap_int_baseILi64ELb1EE5b_notEv", scope: !2685, file: !26, line: 732, type: !2708, isLocal: false, isDefinition: false, scopeLine: 732, flags: DIFlagPrototyped, isOptimized: false)
!2894 = !DISubprogram(name: "checkOverflowCsim", linkageName: "_ZNK11ap_int_baseILi64ELb1EE17checkOverflowCsimEibb", scope: !2685, file: !26, line: 806, type: !2895, isLocal: false, isDefinition: false, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: false)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!45, !2705, !21, !45, !45}
!2897 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi64ELb1EEppEv", scope: !2685, file: !26, line: 911, type: !2882, isLocal: false, isDefinition: false, scopeLine: 911, flags: DIFlagPrototyped, isOptimized: false)
!2898 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi64ELb1EEmmEv", scope: !2685, file: !26, line: 915, type: !2882, isLocal: false, isDefinition: false, scopeLine: 915, flags: DIFlagPrototyped, isOptimized: false)
!2899 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi64ELb1EEppEi", scope: !2685, file: !26, line: 923, type: !2900, isLocal: false, isDefinition: false, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: false)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!2902, !2710, !21}
!2902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2903)
!2903 = !DIDerivedType(tag: DW_TAG_typedef, name: "arg1", scope: !2904, file: !26, line: 213, baseType: !2907)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<64, true>", scope: !2685, file: !26, line: 180, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !2905, identifier: "_ZTSN11ap_int_baseILi64ELb1EE5RTypeILi64ELb1EEE")
!2905 = !{!2906, !382}
!2906 = !DITemplateValueParameter(name: "_AP_W2", type: !21, value: i32 64)
!2907 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !2908, file: !26, line: 149, baseType: !2909)
!2908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_int_factory<64, true>", file: !26, line: 149, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !2905, identifier: "_ZTS15_ap_int_factoryILi64ELb1EE")
!2909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int<64>", file: !285, line: 64, size: 64, flags: DIFlagTypePassByValue, elements: !2910, templateParams: !2989, identifier: "_ZTS6ap_intILi64EE")
!2910 = !{!2911, !2912, !2916, !2919, !2922, !2925, !2928, !2931, !2934, !2937, !2940, !2943, !2946, !2949, !2952, !2955, !2958, !2961, !2964, !2967, !2970, !2976, !2982, !2986}
!2911 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !2909, baseType: !2685)
!2912 = !DISubprogram(name: "ap_int", scope: !2909, file: !285, line: 67, type: !2913, isLocal: false, isDefinition: false, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{null, !2915}
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2916 = !DISubprogram(name: "ap_int", scope: !2909, file: !285, line: 103, type: !2917, isLocal: false, isDefinition: false, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: false)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{null, !2915, !103, !45}
!2919 = !DISubprogram(name: "ap_int", scope: !2909, file: !285, line: 173, type: !2920, isLocal: false, isDefinition: false, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: false)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{null, !2915, !45}
!2922 = !DISubprogram(name: "ap_int", scope: !2909, file: !285, line: 174, type: !2923, isLocal: false, isDefinition: false, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: false)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{null, !2915, !66}
!2925 = !DISubprogram(name: "ap_int", scope: !2909, file: !285, line: 175, type: !2926, isLocal: false, isDefinition: false, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{null, !2915, !71}
!2928 = !DISubprogram(name: "ap_int", scope: !2909, file: !285, line: 176, type: !2929, isLocal: false, isDefinition: false, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: false)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{null, !2915, !76}
!2931 = !DISubprogram(name: "ap_int", scope: !2909, file: !285, line: 177, type: !2932, isLocal: false, isDefinition: false, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: false)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{null, !2915, !81}
!2934 = !DISubprogram(name: "ap_int", scope: !2909, file: !285, line: 178, type: !2935, isLocal: false, isDefinition: false, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: false)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{null, !2915, !86}
!2937 = !DISubprogram(name: "ap_int", scope: !2909, file: !285, line: 179, type: !2938, isLocal: false, isDefinition: false, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: false)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{null, !2915, !21}
!2940 = !DISubprogram(name: "ap_int", scope: !2909, file: !285, line: 180, type: !2941, isLocal: false, isDefinition: false, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: false)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{null, !2915, !34}
!2943 = !DISubprogram(name: "ap_int", scope: !2909, file: !285, line: 181, type: !2944, isLocal: false, isDefinition: false, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: false)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{null, !2915, !98}
!2946 = !DISubprogram(name: "ap_int", scope: !2909, file: !285, line: 182, type: !2947, isLocal: false, isDefinition: false, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: false)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{null, !2915, !103}
!2949 = !DISubprogram(name: "ap_int", scope: !2909, file: !285, line: 183, type: !2950, isLocal: false, isDefinition: false, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: false)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{null, !2915, !108}
!2952 = !DISubprogram(name: "ap_int", scope: !2909, file: !285, line: 184, type: !2953, isLocal: false, isDefinition: false, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: false)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{null, !2915, !115}
!2955 = !DISubprogram(name: "ap_int", scope: !2909, file: !285, line: 186, type: !2956, isLocal: false, isDefinition: false, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: false)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{null, !2915, !128}
!2958 = !DISubprogram(name: "ap_int", scope: !2909, file: !285, line: 187, type: !2959, isLocal: false, isDefinition: false, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: false)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{null, !2915, !13}
!2961 = !DISubprogram(name: "ap_int", scope: !2909, file: !285, line: 188, type: !2962, isLocal: false, isDefinition: false, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: false)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{null, !2915, !120}
!2964 = !DISubprogram(name: "ap_int", scope: !2909, file: !285, line: 191, type: !2965, isLocal: false, isDefinition: false, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: false)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{null, !2915, !132}
!2967 = !DISubprogram(name: "ap_int", scope: !2909, file: !285, line: 193, type: !2968, isLocal: false, isDefinition: false, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: false)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{null, !2915, !132, !71}
!2970 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi64EEaSERKS0_", scope: !2909, file: !285, line: 198, type: !2971, isLocal: false, isDefinition: false, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: false)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!2973, !2915, !2974}
!2973 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2909, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2975, size: 64)
!2975 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2909)
!2976 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi64EEaSERVKS0_", scope: !2909, file: !285, line: 207, type: !2977, isLocal: false, isDefinition: false, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: false)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!2973, !2915, !2979}
!2979 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !2980, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2981)
!2981 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !2909)
!2982 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi64EEaSERKS0_", scope: !2909, file: !285, line: 213, type: !2983, isLocal: false, isDefinition: false, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: false)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{null, !2985, !2974}
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!2986 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi64EEaSERVKS0_", scope: !2909, file: !285, line: 217, type: !2987, isLocal: false, isDefinition: false, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: false)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{null, !2985, !2979}
!2989 = !{!2990}
!2990 = !DITemplateValueParameter(name: "_AP_W", type: !21, value: i32 64)
!2991 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi64ELb1EEmmEi", scope: !2685, file: !26, line: 928, type: !2900, isLocal: false, isDefinition: false, scopeLine: 928, flags: DIFlagPrototyped, isOptimized: false)
!2992 = !DISubprogram(name: "operator+", linkageName: "_ZNK11ap_int_baseILi64ELb1EEpsEv", scope: !2685, file: !26, line: 937, type: !2993, isLocal: false, isDefinition: false, scopeLine: 937, flags: DIFlagPrototyped, isOptimized: false)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!2903, !2705}
!2995 = !DISubprogram(name: "operator-", linkageName: "_ZNK11ap_int_baseILi64ELb1EEngEv", scope: !2685, file: !26, line: 940, type: !2996, isLocal: false, isDefinition: false, scopeLine: 940, flags: DIFlagPrototyped, isOptimized: false)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!2998, !2705}
!2998 = !DIDerivedType(tag: DW_TAG_typedef, name: "minus", scope: !2999, file: !26, line: 209, baseType: !3000)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<1, false>", scope: !2685, file: !26, line: 180, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !376, identifier: "_ZTSN11ap_int_baseILi64ELb1EE5RTypeILi1ELb0EEE")
!3000 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !3001, file: !26, line: 149, baseType: !3004)
!3001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_int_factory<65, true>", file: !26, line: 149, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !3002, identifier: "_ZTS15_ap_int_factoryILi65ELb1EE")
!3002 = !{!3003, !382}
!3003 = !DITemplateValueParameter(name: "_AP_W2", type: !21, value: i32 65)
!3004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int<65>", file: !285, line: 64, size: 128, flags: DIFlagTypePassByValue, elements: !3005, templateParams: !3446, identifier: "_ZTS6ap_intILi65EE")
!3005 = !{!3006, !3368, !3372, !3376, !3379, !3382, !3385, !3388, !3391, !3394, !3397, !3400, !3403, !3406, !3409, !3412, !3415, !3418, !3421, !3424, !3427, !3433, !3439, !3443}
!3006 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3004, baseType: !3007)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int_base<65, true>", file: !26, line: 154, size: 128, flags: DIFlagTypePassByValue, elements: !3008, templateParams: !3353, identifier: "_ZTS11ap_int_baseILi65ELb1EE")
!3008 = !{!3009, !3023, !3024, !3025, !3030, !3034, !3037, !3040, !3043, !3046, !3049, !3052, !3055, !3058, !3061, !3064, !3067, !3070, !3073, !3076, !3079, !3082, !3085, !3090, !3094, !3099, !3100, !3104, !3107, !3110, !3113, !3116, !3119, !3122, !3125, !3128, !3131, !3134, !3137, !3140, !3143, !3151, !3154, !3157, !3160, !3163, !3166, !3169, !3170, !3173, !3176, !3179, !3182, !3185, !3188, !3191, !3194, !3198, !3199, !3200, !3201, !3202, !3205, !3206, !3209, !3212, !3213, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3225, !3226, !3227, !3233, !3234, !3237, !3247, !3248, !3249, !3253, !3256, !3259, !3262, !3263, !3264, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365}
!3009 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !3007, baseType: !3010)
!3010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssdm_int<65, true>", file: !31, line: 555, size: 128, flags: DIFlagTypePassByValue, elements: !3011, templateParams: !3021, identifier: "_ZTS8ssdm_intILi65ELb1EE")
!3011 = !{!3012, !3014, !3018}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "V", scope: !3010, file: !31, line: 557, baseType: !3013, size: 65, align: 128)
!3013 = !DIBasicType(name: "int65", size: 65, encoding: DW_ATE_signed)
!3014 = !DISubprogram(name: "ssdm_int", scope: !3010, file: !31, line: 558, type: !3015, isLocal: false, isDefinition: false, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: false)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{null, !3017}
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3018 = !DISubprogram(name: "ssdm_int", scope: !3010, file: !31, line: 559, type: !3019, isLocal: false, isDefinition: false, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{null, !3017, !3013}
!3021 = !{!3022, !402}
!3022 = !DITemplateValueParameter(name: "_AP_N", type: !21, value: i32 65)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !3007, file: !26, line: 176, baseType: !47, flags: DIFlagStaticMember, extraData: i32 65)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "sign_flag", scope: !3007, file: !26, line: 177, baseType: !49, flags: DIFlagStaticMember, extraData: i1 true)
!3025 = !DISubprogram(name: "countLeadingOnes", linkageName: "_ZNK11ap_int_baseILi65ELb1EE16countLeadingOnesEv", scope: !3007, file: !26, line: 156, type: !3026, isLocal: false, isDefinition: false, scopeLine: 156, flags: DIFlagPrivate | DIFlagPrototyped, isOptimized: false)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{!21, !3028}
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3007)
!3030 = !DISubprogram(name: "ap_int_base", scope: !3007, file: !26, line: 221, type: !3031, isLocal: false, isDefinition: false, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: false)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{null, !3033}
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3034 = !DISubprogram(name: "ap_int_base", scope: !3007, file: !26, line: 254, type: !3035, isLocal: false, isDefinition: false, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: false)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{null, !3033, !49}
!3037 = !DISubprogram(name: "ap_int_base", scope: !3007, file: !26, line: 255, type: !3038, isLocal: false, isDefinition: false, scopeLine: 255, flags: DIFlagPrototyped, isOptimized: false)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{null, !3033, !65}
!3040 = !DISubprogram(name: "ap_int_base", scope: !3007, file: !26, line: 256, type: !3041, isLocal: false, isDefinition: false, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: false)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{null, !3033, !70}
!3043 = !DISubprogram(name: "ap_int_base", scope: !3007, file: !26, line: 257, type: !3044, isLocal: false, isDefinition: false, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: false)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{null, !3033, !75}
!3046 = !DISubprogram(name: "ap_int_base", scope: !3007, file: !26, line: 258, type: !3047, isLocal: false, isDefinition: false, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: false)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{null, !3033, !80}
!3049 = !DISubprogram(name: "ap_int_base", scope: !3007, file: !26, line: 259, type: !3050, isLocal: false, isDefinition: false, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: false)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{null, !3033, !85}
!3052 = !DISubprogram(name: "ap_int_base", scope: !3007, file: !26, line: 260, type: !3053, isLocal: false, isDefinition: false, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: false)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{null, !3033, !47}
!3055 = !DISubprogram(name: "ap_int_base", scope: !3007, file: !26, line: 261, type: !3056, isLocal: false, isDefinition: false, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: false)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{null, !3033, !93}
!3058 = !DISubprogram(name: "ap_int_base", scope: !3007, file: !26, line: 262, type: !3059, isLocal: false, isDefinition: false, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: false)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{null, !3033, !97}
!3061 = !DISubprogram(name: "ap_int_base", scope: !3007, file: !26, line: 263, type: !3062, isLocal: false, isDefinition: false, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: false)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{null, !3033, !102}
!3064 = !DISubprogram(name: "ap_int_base", scope: !3007, file: !26, line: 264, type: !3065, isLocal: false, isDefinition: false, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: false)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{null, !3033, !107}
!3067 = !DISubprogram(name: "ap_int_base", scope: !3007, file: !26, line: 265, type: !3068, isLocal: false, isDefinition: false, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: false)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{null, !3033, !114}
!3070 = !DISubprogram(name: "ap_int_base", scope: !3007, file: !26, line: 270, type: !3071, isLocal: false, isDefinition: false, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: false)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{null, !3033, !120}
!3073 = !DISubprogram(name: "ap_int_base", scope: !3007, file: !26, line: 276, type: !3074, isLocal: false, isDefinition: false, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: false)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{null, !3033, !13}
!3076 = !DISubprogram(name: "ap_int_base", scope: !3007, file: !26, line: 335, type: !3077, isLocal: false, isDefinition: false, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: false)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{null, !3033, !128}
!3079 = !DISubprogram(name: "ap_int_base", scope: !3007, file: !26, line: 431, type: !3080, isLocal: false, isDefinition: false, scopeLine: 431, flags: DIFlagPrototyped, isOptimized: false)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{null, !3033, !132}
!3082 = !DISubprogram(name: "ap_int_base", scope: !3007, file: !26, line: 437, type: !3083, isLocal: false, isDefinition: false, scopeLine: 437, flags: DIFlagPrototyped, isOptimized: false)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{null, !3033, !132, !71}
!3085 = !DISubprogram(name: "read", linkageName: "_ZNV11ap_int_baseILi65ELb1EE4readEv", scope: !3007, file: !26, line: 459, type: !3086, isLocal: false, isDefinition: false, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: false)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!3007, !3088}
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3089 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !3007)
!3090 = !DISubprogram(name: "write", linkageName: "_ZNV11ap_int_baseILi65ELb1EE5writeERKS0_", scope: !3007, file: !26, line: 466, type: !3091, isLocal: false, isDefinition: false, scopeLine: 466, flags: DIFlagPrototyped, isOptimized: false)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{null, !3088, !3093}
!3093 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3029, size: 64)
!3094 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi65ELb1EEaSERVKS0_", scope: !3007, file: !26, line: 478, type: !3095, isLocal: false, isDefinition: false, scopeLine: 478, flags: DIFlagPrototyped, isOptimized: false)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{null, !3088, !3097}
!3097 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3098, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3089)
!3099 = !DISubprogram(name: "operator=", linkageName: "_ZNV11ap_int_baseILi65ELb1EEaSERKS0_", scope: !3007, file: !26, line: 488, type: !3091, isLocal: false, isDefinition: false, scopeLine: 488, flags: DIFlagPrototyped, isOptimized: false)
!3100 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi65ELb1EEaSERVKS0_", scope: !3007, file: !26, line: 505, type: !3101, isLocal: false, isDefinition: false, scopeLine: 505, flags: DIFlagPrototyped, isOptimized: false)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!3103, !3033, !3097}
!3103 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3007, size: 64)
!3104 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi65ELb1EEaSERKS0_", scope: !3007, file: !26, line: 511, type: !3105, isLocal: false, isDefinition: false, scopeLine: 511, flags: DIFlagPrototyped, isOptimized: false)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!3103, !3033, !3093}
!3107 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi65ELb1EEaSEb", scope: !3007, file: !26, line: 525, type: !3108, isLocal: false, isDefinition: false, scopeLine: 525, flags: DIFlagPrototyped, isOptimized: false)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!3103, !3033, !45}
!3110 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi65ELb1EEaSEc", scope: !3007, file: !26, line: 526, type: !3111, isLocal: false, isDefinition: false, scopeLine: 526, flags: DIFlagPrototyped, isOptimized: false)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!3103, !3033, !66}
!3113 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi65ELb1EEaSEa", scope: !3007, file: !26, line: 527, type: !3114, isLocal: false, isDefinition: false, scopeLine: 527, flags: DIFlagPrototyped, isOptimized: false)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!3103, !3033, !71}
!3116 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi65ELb1EEaSEh", scope: !3007, file: !26, line: 528, type: !3117, isLocal: false, isDefinition: false, scopeLine: 528, flags: DIFlagPrototyped, isOptimized: false)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!3103, !3033, !76}
!3119 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi65ELb1EEaSEs", scope: !3007, file: !26, line: 529, type: !3120, isLocal: false, isDefinition: false, scopeLine: 529, flags: DIFlagPrototyped, isOptimized: false)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!3103, !3033, !81}
!3122 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi65ELb1EEaSEt", scope: !3007, file: !26, line: 530, type: !3123, isLocal: false, isDefinition: false, scopeLine: 530, flags: DIFlagPrototyped, isOptimized: false)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!3103, !3033, !86}
!3125 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi65ELb1EEaSEi", scope: !3007, file: !26, line: 531, type: !3126, isLocal: false, isDefinition: false, scopeLine: 531, flags: DIFlagPrototyped, isOptimized: false)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!3103, !3033, !21}
!3128 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi65ELb1EEaSEj", scope: !3007, file: !26, line: 532, type: !3129, isLocal: false, isDefinition: false, scopeLine: 532, flags: DIFlagPrototyped, isOptimized: false)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{!3103, !3033, !34}
!3131 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi65ELb1EEaSEl", scope: !3007, file: !26, line: 533, type: !3132, isLocal: false, isDefinition: false, scopeLine: 533, flags: DIFlagPrototyped, isOptimized: false)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{!3103, !3033, !98}
!3134 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi65ELb1EEaSEm", scope: !3007, file: !26, line: 534, type: !3135, isLocal: false, isDefinition: false, scopeLine: 534, flags: DIFlagPrototyped, isOptimized: false)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!3103, !3033, !103}
!3137 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi65ELb1EEaSEx", scope: !3007, file: !26, line: 535, type: !3138, isLocal: false, isDefinition: false, scopeLine: 535, flags: DIFlagPrototyped, isOptimized: false)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!3103, !3033, !108}
!3140 = !DISubprogram(name: "operator=", linkageName: "_ZN11ap_int_baseILi65ELb1EEaSEy", scope: !3007, file: !26, line: 536, type: !3141, isLocal: false, isDefinition: false, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: false)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!3103, !3033, !115}
!3143 = !DISubprogram(name: "operator long long", linkageName: "_ZNK11ap_int_baseILi65ELb1EEcvxEv", scope: !3007, file: !26, line: 587, type: !3144, isLocal: false, isDefinition: false, scopeLine: 587, flags: DIFlagPrototyped, isOptimized: false)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!3146, !3028}
!3146 = !DIDerivedType(tag: DW_TAG_typedef, name: "RetType", scope: !3007, file: !26, line: 174, baseType: !3147)
!3147 = !DIDerivedType(tag: DW_TAG_typedef, name: "Type", scope: !3148, file: !26, line: 92, baseType: !108)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "retval<9, true>", file: !26, line: 91, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !3149, identifier: "_ZTS6retvalILi9ELb1EE")
!3149 = !{!3150, !402}
!3150 = !DITemplateValueParameter(name: "_AP_N", type: !21, value: i32 9)
!3151 = !DISubprogram(name: "to_bool", linkageName: "_ZNK11ap_int_baseILi65ELb1EE7to_boolEv", scope: !3007, file: !26, line: 592, type: !3152, isLocal: false, isDefinition: false, scopeLine: 592, flags: DIFlagPrototyped, isOptimized: false)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!45, !3028}
!3154 = !DISubprogram(name: "to_char", linkageName: "_ZNK11ap_int_baseILi65ELb1EE7to_charEv", scope: !3007, file: !26, line: 593, type: !3155, isLocal: false, isDefinition: false, scopeLine: 593, flags: DIFlagPrototyped, isOptimized: false)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!66, !3028}
!3157 = !DISubprogram(name: "to_schar", linkageName: "_ZNK11ap_int_baseILi65ELb1EE8to_scharEv", scope: !3007, file: !26, line: 594, type: !3158, isLocal: false, isDefinition: false, scopeLine: 594, flags: DIFlagPrototyped, isOptimized: false)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{!71, !3028}
!3160 = !DISubprogram(name: "to_uchar", linkageName: "_ZNK11ap_int_baseILi65ELb1EE8to_ucharEv", scope: !3007, file: !26, line: 595, type: !3161, isLocal: false, isDefinition: false, scopeLine: 595, flags: DIFlagPrototyped, isOptimized: false)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{!76, !3028}
!3163 = !DISubprogram(name: "to_short", linkageName: "_ZNK11ap_int_baseILi65ELb1EE8to_shortEv", scope: !3007, file: !26, line: 596, type: !3164, isLocal: false, isDefinition: false, scopeLine: 596, flags: DIFlagPrototyped, isOptimized: false)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!81, !3028}
!3166 = !DISubprogram(name: "to_ushort", linkageName: "_ZNK11ap_int_baseILi65ELb1EE9to_ushortEv", scope: !3007, file: !26, line: 597, type: !3167, isLocal: false, isDefinition: false, scopeLine: 597, flags: DIFlagPrototyped, isOptimized: false)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!86, !3028}
!3169 = !DISubprogram(name: "to_int", linkageName: "_ZNK11ap_int_baseILi65ELb1EE6to_intEv", scope: !3007, file: !26, line: 598, type: !3026, isLocal: false, isDefinition: false, scopeLine: 598, flags: DIFlagPrototyped, isOptimized: false)
!3170 = !DISubprogram(name: "to_uint", linkageName: "_ZNK11ap_int_baseILi65ELb1EE7to_uintEv", scope: !3007, file: !26, line: 599, type: !3171, isLocal: false, isDefinition: false, scopeLine: 599, flags: DIFlagPrototyped, isOptimized: false)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{!34, !3028}
!3173 = !DISubprogram(name: "to_long", linkageName: "_ZNK11ap_int_baseILi65ELb1EE7to_longEv", scope: !3007, file: !26, line: 600, type: !3174, isLocal: false, isDefinition: false, scopeLine: 600, flags: DIFlagPrototyped, isOptimized: false)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!98, !3028}
!3176 = !DISubprogram(name: "to_ulong", linkageName: "_ZNK11ap_int_baseILi65ELb1EE8to_ulongEv", scope: !3007, file: !26, line: 601, type: !3177, isLocal: false, isDefinition: false, scopeLine: 601, flags: DIFlagPrototyped, isOptimized: false)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{!103, !3028}
!3179 = !DISubprogram(name: "to_int64", linkageName: "_ZNK11ap_int_baseILi65ELb1EE8to_int64Ev", scope: !3007, file: !26, line: 602, type: !3180, isLocal: false, isDefinition: false, scopeLine: 602, flags: DIFlagPrototyped, isOptimized: false)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{!108, !3028}
!3182 = !DISubprogram(name: "to_uint64", linkageName: "_ZNK11ap_int_baseILi65ELb1EE9to_uint64Ev", scope: !3007, file: !26, line: 603, type: !3183, isLocal: false, isDefinition: false, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: false)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!115, !3028}
!3185 = !DISubprogram(name: "to_half", linkageName: "_ZNK11ap_int_baseILi65ELb1EE7to_halfEv", scope: !3007, file: !26, line: 604, type: !3186, isLocal: false, isDefinition: false, scopeLine: 604, flags: DIFlagPrototyped, isOptimized: false)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!120, !3028}
!3188 = !DISubprogram(name: "to_float", linkageName: "_ZNK11ap_int_baseILi65ELb1EE8to_floatEv", scope: !3007, file: !26, line: 605, type: !3189, isLocal: false, isDefinition: false, scopeLine: 605, flags: DIFlagPrototyped, isOptimized: false)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!13, !3028}
!3191 = !DISubprogram(name: "to_double", linkageName: "_ZNK11ap_int_baseILi65ELb1EE9to_doubleEv", scope: !3007, file: !26, line: 606, type: !3192, isLocal: false, isDefinition: false, scopeLine: 606, flags: DIFlagPrototyped, isOptimized: false)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!128, !3028}
!3194 = !DISubprogram(name: "length", linkageName: "_ZNVK11ap_int_baseILi65ELb1EE6lengthEv", scope: !3007, file: !26, line: 630, type: !3195, isLocal: false, isDefinition: false, scopeLine: 630, flags: DIFlagPrototyped, isOptimized: false)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{!21, !3197}
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3198 = !DISubprogram(name: "length", linkageName: "_ZNK11ap_int_baseILi65ELb1EE6lengthEv", scope: !3007, file: !26, line: 631, type: !3026, isLocal: false, isDefinition: false, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: false)
!3199 = !DISubprogram(name: "iszero", linkageName: "_ZNK11ap_int_baseILi65ELb1EE6iszeroEv", scope: !3007, file: !26, line: 634, type: !3152, isLocal: false, isDefinition: false, scopeLine: 634, flags: DIFlagPrototyped, isOptimized: false)
!3200 = !DISubprogram(name: "is_zero", linkageName: "_ZNK11ap_int_baseILi65ELb1EE7is_zeroEv", scope: !3007, file: !26, line: 637, type: !3152, isLocal: false, isDefinition: false, scopeLine: 637, flags: DIFlagPrototyped, isOptimized: false)
!3201 = !DISubprogram(name: "sign", linkageName: "_ZNK11ap_int_baseILi65ELb1EE4signEv", scope: !3007, file: !26, line: 640, type: !3152, isLocal: false, isDefinition: false, scopeLine: 640, flags: DIFlagPrototyped, isOptimized: false)
!3202 = !DISubprogram(name: "clear", linkageName: "_ZN11ap_int_baseILi65ELb1EE5clearEi", scope: !3007, file: !26, line: 649, type: !3203, isLocal: false, isDefinition: false, scopeLine: 649, flags: DIFlagPrototyped, isOptimized: false)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{null, !3033, !21}
!3205 = !DISubprogram(name: "invert", linkageName: "_ZN11ap_int_baseILi65ELb1EE6invertEi", scope: !3007, file: !26, line: 655, type: !3203, isLocal: false, isDefinition: false, scopeLine: 655, flags: DIFlagPrototyped, isOptimized: false)
!3206 = !DISubprogram(name: "test", linkageName: "_ZNK11ap_int_baseILi65ELb1EE4testEi", scope: !3007, file: !26, line: 664, type: !3207, isLocal: false, isDefinition: false, scopeLine: 664, flags: DIFlagPrototyped, isOptimized: false)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!45, !3028, !21}
!3209 = !DISubprogram(name: "get", linkageName: "_ZN11ap_int_baseILi65ELb1EE3getEv", scope: !3007, file: !26, line: 670, type: !3210, isLocal: false, isDefinition: false, scopeLine: 670, flags: DIFlagPrototyped, isOptimized: false)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!3103, !3033}
!3212 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi65ELb1EE3setEi", scope: !3007, file: !26, line: 673, type: !3203, isLocal: false, isDefinition: false, scopeLine: 673, flags: DIFlagPrototyped, isOptimized: false)
!3213 = !DISubprogram(name: "set", linkageName: "_ZN11ap_int_baseILi65ELb1EE3setEib", scope: !3007, file: !26, line: 679, type: !3214, isLocal: false, isDefinition: false, scopeLine: 679, flags: DIFlagPrototyped, isOptimized: false)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{null, !3033, !21, !45}
!3216 = !DISubprogram(name: "lrotate", linkageName: "_ZN11ap_int_baseILi65ELb1EE7lrotateEi", scope: !3007, file: !26, line: 686, type: !3126, isLocal: false, isDefinition: false, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: false)
!3217 = !DISubprogram(name: "rrotate", linkageName: "_ZN11ap_int_baseILi65ELb1EE7rrotateEi", scope: !3007, file: !26, line: 701, type: !3126, isLocal: false, isDefinition: false, scopeLine: 701, flags: DIFlagPrototyped, isOptimized: false)
!3218 = !DISubprogram(name: "reverse", linkageName: "_ZN11ap_int_baseILi65ELb1EE7reverseEv", scope: !3007, file: !26, line: 716, type: !3210, isLocal: false, isDefinition: false, scopeLine: 716, flags: DIFlagPrototyped, isOptimized: false)
!3219 = !DISubprogram(name: "set_bit", linkageName: "_ZN11ap_int_baseILi65ELb1EE7set_bitEib", scope: !3007, file: !26, line: 722, type: !3214, isLocal: false, isDefinition: false, scopeLine: 722, flags: DIFlagPrototyped, isOptimized: false)
!3220 = !DISubprogram(name: "get_bit", linkageName: "_ZNK11ap_int_baseILi65ELb1EE7get_bitEi", scope: !3007, file: !26, line: 727, type: !3207, isLocal: false, isDefinition: false, scopeLine: 727, flags: DIFlagPrototyped, isOptimized: false)
!3221 = !DISubprogram(name: "b_not", linkageName: "_ZN11ap_int_baseILi65ELb1EE5b_notEv", scope: !3007, file: !26, line: 732, type: !3031, isLocal: false, isDefinition: false, scopeLine: 732, flags: DIFlagPrototyped, isOptimized: false)
!3222 = !DISubprogram(name: "checkOverflowCsim", linkageName: "_ZNK11ap_int_baseILi65ELb1EE17checkOverflowCsimEibb", scope: !3007, file: !26, line: 806, type: !3223, isLocal: false, isDefinition: false, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: false)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!45, !3028, !21, !45, !45}
!3225 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi65ELb1EEppEv", scope: !3007, file: !26, line: 911, type: !3210, isLocal: false, isDefinition: false, scopeLine: 911, flags: DIFlagPrototyped, isOptimized: false)
!3226 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi65ELb1EEmmEv", scope: !3007, file: !26, line: 915, type: !3210, isLocal: false, isDefinition: false, scopeLine: 915, flags: DIFlagPrototyped, isOptimized: false)
!3227 = !DISubprogram(name: "operator++", linkageName: "_ZN11ap_int_baseILi65ELb1EEppEi", scope: !3007, file: !26, line: 923, type: !3228, isLocal: false, isDefinition: false, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: false)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{!3230, !3033, !21}
!3230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3231)
!3231 = !DIDerivedType(tag: DW_TAG_typedef, name: "arg1", scope: !3232, file: !26, line: 213, baseType: !3000)
!3232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<65, true>", scope: !3007, file: !26, line: 180, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !3002, identifier: "_ZTSN11ap_int_baseILi65ELb1EE5RTypeILi65ELb1EEE")
!3233 = !DISubprogram(name: "operator--", linkageName: "_ZN11ap_int_baseILi65ELb1EEmmEi", scope: !3007, file: !26, line: 928, type: !3228, isLocal: false, isDefinition: false, scopeLine: 928, flags: DIFlagPrototyped, isOptimized: false)
!3234 = !DISubprogram(name: "operator+", linkageName: "_ZNK11ap_int_baseILi65ELb1EEpsEv", scope: !3007, file: !26, line: 937, type: !3235, isLocal: false, isDefinition: false, scopeLine: 937, flags: DIFlagPrototyped, isOptimized: false)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!3231, !3028}
!3237 = !DISubprogram(name: "operator-", linkageName: "_ZNK11ap_int_baseILi65ELb1EEngEv", scope: !3007, file: !26, line: 940, type: !3238, isLocal: false, isDefinition: false, scopeLine: 940, flags: DIFlagPrototyped, isOptimized: false)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!3240, !3028}
!3240 = !DIDerivedType(tag: DW_TAG_typedef, name: "minus", scope: !3241, file: !26, line: 209, baseType: !3242)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "RType<1, false>", scope: !3007, file: !26, line: 180, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !376, identifier: "_ZTSN11ap_int_baseILi65ELb1EE5RTypeILi1ELb0EEE")
!3242 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !3243, file: !26, line: 149, baseType: !3246)
!3243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ap_int_factory<66, true>", file: !26, line: 149, size: 8, flags: DIFlagTypePassByValue, elements: !4, templateParams: !3244, identifier: "_ZTS15_ap_int_factoryILi66ELb1EE")
!3244 = !{!3245, !382}
!3245 = !DITemplateValueParameter(name: "_AP_W2", type: !21, value: i32 66)
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_int<66>", file: !109, line: 183, flags: DIFlagFwdDecl, identifier: "_ZTS6ap_intILi66EE")
!3247 = !DISubprogram(name: "operator!", linkageName: "_ZNK11ap_int_baseILi65ELb1EEntEv", scope: !3007, file: !26, line: 947, type: !3152, isLocal: false, isDefinition: false, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: false)
!3248 = !DISubprogram(name: "operator~", linkageName: "_ZNK11ap_int_baseILi65ELb1EEcoEv", scope: !3007, file: !26, line: 953, type: !3235, isLocal: false, isDefinition: false, scopeLine: 953, flags: DIFlagPrototyped, isOptimized: false)
!3249 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi65ELb1EE5rangeEii", scope: !3007, file: !26, line: 1091, type: !3250, isLocal: false, isDefinition: false, scopeLine: 1091, flags: DIFlagPrototyped, isOptimized: false)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!3252, !3033, !21, !21}
!3252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_range_ref<65, true>", file: !109, line: 189, flags: DIFlagFwdDecl, identifier: "_ZTS12ap_range_refILi65ELb1EE")
!3253 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi65ELb1EE5rangeEii", scope: !3007, file: !26, line: 1098, type: !3254, isLocal: false, isDefinition: false, scopeLine: 1098, flags: DIFlagPrototyped, isOptimized: false)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!3252, !3028, !21, !21}
!3256 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi65ELb1EE5rangeEv", scope: !3007, file: !26, line: 1122, type: !3257, isLocal: false, isDefinition: false, scopeLine: 1122, flags: DIFlagPrototyped, isOptimized: false)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!3252, !3033}
!3259 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi65ELb1EE5rangeEv", scope: !3007, file: !26, line: 1126, type: !3260, isLocal: false, isDefinition: false, scopeLine: 1126, flags: DIFlagPrototyped, isOptimized: false)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!3252, !3028}
!3262 = !DISubprogram(name: "operator()", linkageName: "_ZN11ap_int_baseILi65ELb1EEclEii", scope: !3007, file: !26, line: 1130, type: !3250, isLocal: false, isDefinition: false, scopeLine: 1130, flags: DIFlagPrototyped, isOptimized: false)
!3263 = !DISubprogram(name: "operator()", linkageName: "_ZNK11ap_int_baseILi65ELb1EEclEii", scope: !3007, file: !26, line: 1134, type: !3254, isLocal: false, isDefinition: false, scopeLine: 1134, flags: DIFlagPrototyped, isOptimized: false)
!3264 = !DISubprogram(name: "operator[]", linkageName: "_ZN11ap_int_baseILi65ELb1EEixEi", scope: !3007, file: !26, line: 1172, type: !3265, isLocal: false, isDefinition: false, scopeLine: 1172, flags: DIFlagPrototyped, isOptimized: false)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!3267, !3033, !21}
!3267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_bit_ref<65, true>", file: !1719, line: 807, size: 128, flags: DIFlagTypePassByReference, elements: !3268, templateParams: !3353, identifier: "_ZTS10ap_bit_refILi65ELb1EE")
!3268 = !{!3269, !3272, !3273, !3279, !3283, !3288, !3292, !3293, !3297, !3300, !3303, !3306, !3309, !3312, !3315, !3318, !3321, !3324, !3327, !3330, !3333, !3336, !3339, !3342, !3343, !3346, !3347, !3350}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "d_bv", scope: !3267, file: !1719, line: 812, baseType: !3270, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3271, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_typedef, name: "ref_type", scope: !3267, file: !1719, line: 811, baseType: !3007)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "d_index", scope: !3267, file: !1719, line: 813, baseType: !21, size: 32, offset: 64)
!3273 = !DISubprogram(name: "ap_bit_ref", scope: !3267, file: !1719, line: 817, type: !3274, isLocal: false, isDefinition: false, scopeLine: 817, flags: DIFlagPrototyped, isOptimized: false)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{null, !3276, !3277}
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3277 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3278, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3267)
!3279 = !DISubprogram(name: "ap_bit_ref", scope: !3267, file: !1719, line: 820, type: !3280, isLocal: false, isDefinition: false, scopeLine: 820, flags: DIFlagPrototyped, isOptimized: false)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{null, !3276, !3282, !21}
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3283 = !DISubprogram(name: "ap_bit_ref", scope: !3267, file: !1719, line: 822, type: !3284, isLocal: false, isDefinition: false, scopeLine: 822, flags: DIFlagPrototyped, isOptimized: false)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{null, !3276, !3286, !21}
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3271)
!3288 = !DISubprogram(name: "operator bool", linkageName: "_ZNK10ap_bit_refILi65ELb1EEcvbEv", scope: !3267, file: !1719, line: 825, type: !3289, isLocal: false, isDefinition: false, scopeLine: 825, flags: DIFlagPrototyped, isOptimized: false)
!3289 = !DISubroutineType(types: !3290)
!3290 = !{!45, !3291}
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3292 = !DISubprogram(name: "to_bool", linkageName: "_ZNK10ap_bit_refILi65ELb1EE7to_boolEv", scope: !3267, file: !1719, line: 826, type: !3289, isLocal: false, isDefinition: false, scopeLine: 826, flags: DIFlagPrototyped, isOptimized: false)
!3293 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi65ELb1EEaSEb", scope: !3267, file: !1719, line: 844, type: !3294, isLocal: false, isDefinition: false, scopeLine: 844, flags: DIFlagPrototyped, isOptimized: false)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!3296, !3276, !45}
!3296 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3267, size: 64)
!3297 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi65ELb1EEaSEc", scope: !3267, file: !1719, line: 845, type: !3298, isLocal: false, isDefinition: false, scopeLine: 845, flags: DIFlagPrototyped, isOptimized: false)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!3296, !3276, !66}
!3300 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi65ELb1EEaSEa", scope: !3267, file: !1719, line: 846, type: !3301, isLocal: false, isDefinition: false, scopeLine: 846, flags: DIFlagPrototyped, isOptimized: false)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!3296, !3276, !71}
!3303 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi65ELb1EEaSEh", scope: !3267, file: !1719, line: 847, type: !3304, isLocal: false, isDefinition: false, scopeLine: 847, flags: DIFlagPrototyped, isOptimized: false)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!3296, !3276, !76}
!3306 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi65ELb1EEaSEs", scope: !3267, file: !1719, line: 848, type: !3307, isLocal: false, isDefinition: false, scopeLine: 848, flags: DIFlagPrototyped, isOptimized: false)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!3296, !3276, !81}
!3309 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi65ELb1EEaSEt", scope: !3267, file: !1719, line: 849, type: !3310, isLocal: false, isDefinition: false, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: false)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{!3296, !3276, !86}
!3312 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi65ELb1EEaSEi", scope: !3267, file: !1719, line: 850, type: !3313, isLocal: false, isDefinition: false, scopeLine: 850, flags: DIFlagPrototyped, isOptimized: false)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{!3296, !3276, !21}
!3315 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi65ELb1EEaSEj", scope: !3267, file: !1719, line: 851, type: !3316, isLocal: false, isDefinition: false, scopeLine: 851, flags: DIFlagPrototyped, isOptimized: false)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!3296, !3276, !34}
!3318 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi65ELb1EEaSEl", scope: !3267, file: !1719, line: 852, type: !3319, isLocal: false, isDefinition: false, scopeLine: 852, flags: DIFlagPrototyped, isOptimized: false)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!3296, !3276, !98}
!3321 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi65ELb1EEaSEm", scope: !3267, file: !1719, line: 853, type: !3322, isLocal: false, isDefinition: false, scopeLine: 853, flags: DIFlagPrototyped, isOptimized: false)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!3296, !3276, !103}
!3324 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi65ELb1EEaSEx", scope: !3267, file: !1719, line: 854, type: !3325, isLocal: false, isDefinition: false, scopeLine: 854, flags: DIFlagPrototyped, isOptimized: false)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!3296, !3276, !108}
!3327 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi65ELb1EEaSEy", scope: !3267, file: !1719, line: 855, type: !3328, isLocal: false, isDefinition: false, scopeLine: 855, flags: DIFlagPrototyped, isOptimized: false)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{!3296, !3276, !115}
!3330 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi65ELb1EEaSEDh", scope: !3267, file: !1719, line: 866, type: !3331, isLocal: false, isDefinition: false, scopeLine: 866, flags: DIFlagPrototyped, isOptimized: false)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!3296, !3276, !120}
!3333 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi65ELb1EEaSEf", scope: !3267, file: !1719, line: 867, type: !3334, isLocal: false, isDefinition: false, scopeLine: 867, flags: DIFlagPrototyped, isOptimized: false)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{!3296, !3276, !13}
!3336 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi65ELb1EEaSEd", scope: !3267, file: !1719, line: 868, type: !3337, isLocal: false, isDefinition: false, scopeLine: 868, flags: DIFlagPrototyped, isOptimized: false)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!3296, !3276, !128}
!3339 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi65ELb1EEaSERKS0_", scope: !3267, file: !1719, line: 885, type: !3340, isLocal: false, isDefinition: false, scopeLine: 885, flags: DIFlagPrototyped, isOptimized: false)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!3296, !3276, !3277}
!3342 = !DISubprogram(name: "get", linkageName: "_ZNK10ap_bit_refILi65ELb1EE3getEv", scope: !3267, file: !1719, line: 1005, type: !3289, isLocal: false, isDefinition: false, scopeLine: 1005, flags: DIFlagPrototyped, isOptimized: false)
!3343 = !DISubprogram(name: "get", linkageName: "_ZN10ap_bit_refILi65ELb1EE3getEv", scope: !3267, file: !1719, line: 1007, type: !3344, isLocal: false, isDefinition: false, scopeLine: 1007, flags: DIFlagPrototyped, isOptimized: false)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!45, !3276}
!3346 = !DISubprogram(name: "operator~", linkageName: "_ZNK10ap_bit_refILi65ELb1EEcoEv", scope: !3267, file: !1719, line: 1014, type: !3289, isLocal: false, isDefinition: false, scopeLine: 1014, flags: DIFlagPrototyped, isOptimized: false)
!3347 = !DISubprogram(name: "length", linkageName: "_ZNK10ap_bit_refILi65ELb1EE6lengthEv", scope: !3267, file: !1719, line: 1019, type: !3348, isLocal: false, isDefinition: false, scopeLine: 1019, flags: DIFlagPrototyped, isOptimized: false)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!21, !3291}
!3350 = !DISubprogram(name: "to_string", linkageName: "_ZNK10ap_bit_refILi65ELb1EE9to_stringEv", scope: !3267, file: !1719, line: 1025, type: !3351, isLocal: false, isDefinition: false, scopeLine: 1025, flags: DIFlagPrototyped, isOptimized: false)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!1386, !3291}
!3353 = !{!3354, !402}
!3354 = !DITemplateValueParameter(name: "_AP_W", type: !21, value: i32 65)
!3355 = !DISubprogram(name: "operator[]", linkageName: "_ZNK11ap_int_baseILi65ELb1EEixEi", scope: !3007, file: !26, line: 1188, type: !3207, isLocal: false, isDefinition: false, scopeLine: 1188, flags: DIFlagPrototyped, isOptimized: false)
!3356 = !DISubprogram(name: "bit", linkageName: "_ZN11ap_int_baseILi65ELb1EE3bitEi", scope: !3007, file: !26, line: 1201, type: !3265, isLocal: false, isDefinition: false, scopeLine: 1201, flags: DIFlagPrototyped, isOptimized: false)
!3357 = !DISubprogram(name: "bit", linkageName: "_ZNK11ap_int_baseILi65ELb1EE3bitEi", scope: !3007, file: !26, line: 1216, type: !3207, isLocal: false, isDefinition: false, scopeLine: 1216, flags: DIFlagPrototyped, isOptimized: false)
!3358 = !DISubprogram(name: "countLeadingZeros", linkageName: "_ZNK11ap_int_baseILi65ELb1EE17countLeadingZerosEv", scope: !3007, file: !26, line: 1239, type: !3026, isLocal: false, isDefinition: false, scopeLine: 1239, flags: DIFlagPrototyped, isOptimized: false)
!3359 = !DISubprogram(name: "and_reduce", linkageName: "_ZNK11ap_int_baseILi65ELb1EE10and_reduceEv", scope: !3007, file: !26, line: 1459, type: !3152, isLocal: false, isDefinition: false, scopeLine: 1459, flags: DIFlagPrototyped, isOptimized: false)
!3360 = !DISubprogram(name: "nand_reduce", linkageName: "_ZNK11ap_int_baseILi65ELb1EE11nand_reduceEv", scope: !3007, file: !26, line: 1460, type: !3152, isLocal: false, isDefinition: false, scopeLine: 1460, flags: DIFlagPrototyped, isOptimized: false)
!3361 = !DISubprogram(name: "or_reduce", linkageName: "_ZNK11ap_int_baseILi65ELb1EE9or_reduceEv", scope: !3007, file: !26, line: 1461, type: !3152, isLocal: false, isDefinition: false, scopeLine: 1461, flags: DIFlagPrototyped, isOptimized: false)
!3362 = !DISubprogram(name: "nor_reduce", linkageName: "_ZNK11ap_int_baseILi65ELb1EE10nor_reduceEv", scope: !3007, file: !26, line: 1462, type: !3152, isLocal: false, isDefinition: false, scopeLine: 1462, flags: DIFlagPrototyped, isOptimized: false)
!3363 = !DISubprogram(name: "xor_reduce", linkageName: "_ZNK11ap_int_baseILi65ELb1EE10xor_reduceEv", scope: !3007, file: !26, line: 1463, type: !3152, isLocal: false, isDefinition: false, scopeLine: 1463, flags: DIFlagPrototyped, isOptimized: false)
!3364 = !DISubprogram(name: "xnor_reduce", linkageName: "_ZNK11ap_int_baseILi65ELb1EE11xnor_reduceEv", scope: !3007, file: !26, line: 1464, type: !3152, isLocal: false, isDefinition: false, scopeLine: 1464, flags: DIFlagPrototyped, isOptimized: false)
!3365 = !DISubprogram(name: "to_string", linkageName: "_ZNK11ap_int_baseILi65ELb1EE9to_stringEab", scope: !3007, file: !26, line: 1479, type: !3366, isLocal: false, isDefinition: false, scopeLine: 1479, flags: DIFlagPrototyped, isOptimized: false)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!1386, !3028, !71, !45}
!3368 = !DISubprogram(name: "ap_int", scope: !3004, file: !285, line: 67, type: !3369, isLocal: false, isDefinition: false, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{null, !3371}
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3372 = !DISubprogram(name: "ap_int", scope: !3004, file: !285, line: 103, type: !3373, isLocal: false, isDefinition: false, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: false)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{null, !3371, !3375, !45}
!3375 = !DIBasicType(name: "uint65", size: 65, encoding: DW_ATE_unsigned)
!3376 = !DISubprogram(name: "ap_int", scope: !3004, file: !285, line: 173, type: !3377, isLocal: false, isDefinition: false, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: false)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{null, !3371, !45}
!3379 = !DISubprogram(name: "ap_int", scope: !3004, file: !285, line: 174, type: !3380, isLocal: false, isDefinition: false, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: false)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{null, !3371, !66}
!3382 = !DISubprogram(name: "ap_int", scope: !3004, file: !285, line: 175, type: !3383, isLocal: false, isDefinition: false, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{null, !3371, !71}
!3385 = !DISubprogram(name: "ap_int", scope: !3004, file: !285, line: 176, type: !3386, isLocal: false, isDefinition: false, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: false)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{null, !3371, !76}
!3388 = !DISubprogram(name: "ap_int", scope: !3004, file: !285, line: 177, type: !3389, isLocal: false, isDefinition: false, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: false)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{null, !3371, !81}
!3391 = !DISubprogram(name: "ap_int", scope: !3004, file: !285, line: 178, type: !3392, isLocal: false, isDefinition: false, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: false)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{null, !3371, !86}
!3394 = !DISubprogram(name: "ap_int", scope: !3004, file: !285, line: 179, type: !3395, isLocal: false, isDefinition: false, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: false)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{null, !3371, !21}
!3397 = !DISubprogram(name: "ap_int", scope: !3004, file: !285, line: 180, type: !3398, isLocal: false, isDefinition: false, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: false)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{null, !3371, !34}
!3400 = !DISubprogram(name: "ap_int", scope: !3004, file: !285, line: 181, type: !3401, isLocal: false, isDefinition: false, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: false)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{null, !3371, !98}
!3403 = !DISubprogram(name: "ap_int", scope: !3004, file: !285, line: 182, type: !3404, isLocal: false, isDefinition: false, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: false)
!3404 = !DISubroutineType(types: !3405)
!3405 = !{null, !3371, !103}
!3406 = !DISubprogram(name: "ap_int", scope: !3004, file: !285, line: 183, type: !3407, isLocal: false, isDefinition: false, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: false)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{null, !3371, !108}
!3409 = !DISubprogram(name: "ap_int", scope: !3004, file: !285, line: 184, type: !3410, isLocal: false, isDefinition: false, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: false)
!3410 = !DISubroutineType(types: !3411)
!3411 = !{null, !3371, !115}
!3412 = !DISubprogram(name: "ap_int", scope: !3004, file: !285, line: 186, type: !3413, isLocal: false, isDefinition: false, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: false)
!3413 = !DISubroutineType(types: !3414)
!3414 = !{null, !3371, !128}
!3415 = !DISubprogram(name: "ap_int", scope: !3004, file: !285, line: 187, type: !3416, isLocal: false, isDefinition: false, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: false)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{null, !3371, !13}
!3418 = !DISubprogram(name: "ap_int", scope: !3004, file: !285, line: 188, type: !3419, isLocal: false, isDefinition: false, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: false)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{null, !3371, !120}
!3421 = !DISubprogram(name: "ap_int", scope: !3004, file: !285, line: 191, type: !3422, isLocal: false, isDefinition: false, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: false)
!3422 = !DISubroutineType(types: !3423)
!3423 = !{null, !3371, !132}
!3424 = !DISubprogram(name: "ap_int", scope: !3004, file: !285, line: 193, type: !3425, isLocal: false, isDefinition: false, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: false)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{null, !3371, !132, !71}
!3427 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi65EEaSERKS0_", scope: !3004, file: !285, line: 198, type: !3428, isLocal: false, isDefinition: false, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: false)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{!3430, !3371, !3431}
!3430 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3004, size: 64)
!3431 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3432, size: 64)
!3432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3004)
!3433 = !DISubprogram(name: "operator=", linkageName: "_ZN6ap_intILi65EEaSERVKS0_", scope: !3004, file: !285, line: 207, type: !3434, isLocal: false, isDefinition: false, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: false)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{!3430, !3371, !3436}
!3436 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3437, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3438)
!3438 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !3004)
!3439 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi65EEaSERKS0_", scope: !3004, file: !285, line: 213, type: !3440, isLocal: false, isDefinition: false, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: false)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{null, !3442, !3431}
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3443 = !DISubprogram(name: "operator=", linkageName: "_ZNV6ap_intILi65EEaSERVKS0_", scope: !3004, file: !285, line: 217, type: !3444, isLocal: false, isDefinition: false, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: false)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{null, !3442, !3436}
!3446 = !{!3354}
!3447 = !DISubprogram(name: "operator!", linkageName: "_ZNK11ap_int_baseILi64ELb1EEntEv", scope: !2685, file: !26, line: 947, type: !2824, isLocal: false, isDefinition: false, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: false)
!3448 = !DISubprogram(name: "operator~", linkageName: "_ZNK11ap_int_baseILi64ELb1EEcoEv", scope: !2685, file: !26, line: 953, type: !2993, isLocal: false, isDefinition: false, scopeLine: 953, flags: DIFlagPrototyped, isOptimized: false)
!3449 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi64ELb1EE5rangeEii", scope: !2685, file: !26, line: 1091, type: !3450, isLocal: false, isDefinition: false, scopeLine: 1091, flags: DIFlagPrototyped, isOptimized: false)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{!3452, !2710, !21, !21}
!3452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_range_ref<64, true>", file: !109, line: 189, flags: DIFlagFwdDecl, identifier: "_ZTS12ap_range_refILi64ELb1EE")
!3453 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi64ELb1EE5rangeEii", scope: !2685, file: !26, line: 1098, type: !3454, isLocal: false, isDefinition: false, scopeLine: 1098, flags: DIFlagPrototyped, isOptimized: false)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{!3452, !2705, !21, !21}
!3456 = !DISubprogram(name: "range", linkageName: "_ZN11ap_int_baseILi64ELb1EE5rangeEv", scope: !2685, file: !26, line: 1122, type: !3457, isLocal: false, isDefinition: false, scopeLine: 1122, flags: DIFlagPrototyped, isOptimized: false)
!3457 = !DISubroutineType(types: !3458)
!3458 = !{!3452, !2710}
!3459 = !DISubprogram(name: "range", linkageName: "_ZNK11ap_int_baseILi64ELb1EE5rangeEv", scope: !2685, file: !26, line: 1126, type: !3460, isLocal: false, isDefinition: false, scopeLine: 1126, flags: DIFlagPrototyped, isOptimized: false)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{!3452, !2705}
!3462 = !DISubprogram(name: "operator()", linkageName: "_ZN11ap_int_baseILi64ELb1EEclEii", scope: !2685, file: !26, line: 1130, type: !3450, isLocal: false, isDefinition: false, scopeLine: 1130, flags: DIFlagPrototyped, isOptimized: false)
!3463 = !DISubprogram(name: "operator()", linkageName: "_ZNK11ap_int_baseILi64ELb1EEclEii", scope: !2685, file: !26, line: 1134, type: !3454, isLocal: false, isDefinition: false, scopeLine: 1134, flags: DIFlagPrototyped, isOptimized: false)
!3464 = !DISubprogram(name: "operator[]", linkageName: "_ZN11ap_int_baseILi64ELb1EEixEi", scope: !2685, file: !26, line: 1172, type: !3465, isLocal: false, isDefinition: false, scopeLine: 1172, flags: DIFlagPrototyped, isOptimized: false)
!3465 = !DISubroutineType(types: !3466)
!3466 = !{!3467, !2710, !21}
!3467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ap_bit_ref<64, true>", file: !2455, line: 761, size: 128, flags: DIFlagTypePassByReference, elements: !3468, templateParams: !3553, identifier: "_ZTS10ap_bit_refILi64ELb1EE")
!3468 = !{!3469, !3472, !3473, !3479, !3483, !3488, !3492, !3493, !3497, !3500, !3503, !3506, !3509, !3512, !3515, !3518, !3521, !3524, !3527, !3530, !3533, !3536, !3539, !3542, !3543, !3546, !3547, !3550}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "d_bv", scope: !3467, file: !2455, line: 766, baseType: !3470, size: 64)
!3470 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3471, size: 64)
!3471 = !DIDerivedType(tag: DW_TAG_typedef, name: "ref_type", scope: !3467, file: !2455, line: 765, baseType: !2685)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "d_index", scope: !3467, file: !2455, line: 767, baseType: !21, size: 32, offset: 64)
!3473 = !DISubprogram(name: "ap_bit_ref", scope: !3467, file: !2455, line: 771, type: !3474, isLocal: false, isDefinition: false, scopeLine: 771, flags: DIFlagPrototyped, isOptimized: false)
!3474 = !DISubroutineType(types: !3475)
!3475 = !{null, !3476, !3477}
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3477 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3478, size: 64)
!3478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3467)
!3479 = !DISubprogram(name: "ap_bit_ref", scope: !3467, file: !2455, line: 774, type: !3480, isLocal: false, isDefinition: false, scopeLine: 774, flags: DIFlagPrototyped, isOptimized: false)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{null, !3476, !3482, !21}
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3483 = !DISubprogram(name: "ap_bit_ref", scope: !3467, file: !2455, line: 776, type: !3484, isLocal: false, isDefinition: false, scopeLine: 776, flags: DIFlagPrototyped, isOptimized: false)
!3484 = !DISubroutineType(types: !3485)
!3485 = !{null, !3476, !3486, !21}
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3471)
!3488 = !DISubprogram(name: "operator bool", linkageName: "_ZNK10ap_bit_refILi64ELb1EEcvbEv", scope: !3467, file: !2455, line: 779, type: !3489, isLocal: false, isDefinition: false, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: false)
!3489 = !DISubroutineType(types: !3490)
!3490 = !{!45, !3491}
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!3492 = !DISubprogram(name: "to_bool", linkageName: "_ZNK10ap_bit_refILi64ELb1EE7to_boolEv", scope: !3467, file: !2455, line: 780, type: !3489, isLocal: false, isDefinition: false, scopeLine: 780, flags: DIFlagPrototyped, isOptimized: false)
!3493 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi64ELb1EEaSEb", scope: !3467, file: !2455, line: 798, type: !3494, isLocal: false, isDefinition: false, scopeLine: 798, flags: DIFlagPrototyped, isOptimized: false)
!3494 = !DISubroutineType(types: !3495)
!3495 = !{!3496, !3476, !45}
!3496 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !3467, size: 64)
!3497 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi64ELb1EEaSEc", scope: !3467, file: !2455, line: 799, type: !3498, isLocal: false, isDefinition: false, scopeLine: 799, flags: DIFlagPrototyped, isOptimized: false)
!3498 = !DISubroutineType(types: !3499)
!3499 = !{!3496, !3476, !66}
!3500 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi64ELb1EEaSEa", scope: !3467, file: !2455, line: 800, type: !3501, isLocal: false, isDefinition: false, scopeLine: 800, flags: DIFlagPrototyped, isOptimized: false)
!3501 = !DISubroutineType(types: !3502)
!3502 = !{!3496, !3476, !71}
!3503 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi64ELb1EEaSEh", scope: !3467, file: !2455, line: 801, type: !3504, isLocal: false, isDefinition: false, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: false)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!3496, !3476, !76}
!3506 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi64ELb1EEaSEs", scope: !3467, file: !2455, line: 802, type: !3507, isLocal: false, isDefinition: false, scopeLine: 802, flags: DIFlagPrototyped, isOptimized: false)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!3496, !3476, !81}
!3509 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi64ELb1EEaSEt", scope: !3467, file: !2455, line: 803, type: !3510, isLocal: false, isDefinition: false, scopeLine: 803, flags: DIFlagPrototyped, isOptimized: false)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{!3496, !3476, !86}
!3512 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi64ELb1EEaSEi", scope: !3467, file: !2455, line: 804, type: !3513, isLocal: false, isDefinition: false, scopeLine: 804, flags: DIFlagPrototyped, isOptimized: false)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!3496, !3476, !21}
!3515 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi64ELb1EEaSEj", scope: !3467, file: !2455, line: 805, type: !3516, isLocal: false, isDefinition: false, scopeLine: 805, flags: DIFlagPrototyped, isOptimized: false)
!3516 = !DISubroutineType(types: !3517)
!3517 = !{!3496, !3476, !34}
!3518 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi64ELb1EEaSEl", scope: !3467, file: !2455, line: 806, type: !3519, isLocal: false, isDefinition: false, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: false)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{!3496, !3476, !98}
!3521 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi64ELb1EEaSEm", scope: !3467, file: !2455, line: 807, type: !3522, isLocal: false, isDefinition: false, scopeLine: 807, flags: DIFlagPrototyped, isOptimized: false)
!3522 = !DISubroutineType(types: !3523)
!3523 = !{!3496, !3476, !103}
!3524 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi64ELb1EEaSEx", scope: !3467, file: !2455, line: 808, type: !3525, isLocal: false, isDefinition: false, scopeLine: 808, flags: DIFlagPrototyped, isOptimized: false)
!3525 = !DISubroutineType(types: !3526)
!3526 = !{!3496, !3476, !693}
!3527 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi64ELb1EEaSEy", scope: !3467, file: !2455, line: 809, type: !3528, isLocal: false, isDefinition: false, scopeLine: 809, flags: DIFlagPrototyped, isOptimized: false)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!3496, !3476, !699}
!3530 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi64ELb1EEaSEDh", scope: !3467, file: !2455, line: 820, type: !3531, isLocal: false, isDefinition: false, scopeLine: 820, flags: DIFlagPrototyped, isOptimized: false)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{!3496, !3476, !703}
!3533 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi64ELb1EEaSEf", scope: !3467, file: !2455, line: 821, type: !3534, isLocal: false, isDefinition: false, scopeLine: 821, flags: DIFlagPrototyped, isOptimized: false)
!3534 = !DISubroutineType(types: !3535)
!3535 = !{!3496, !3476, !13}
!3536 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi64ELb1EEaSEd", scope: !3467, file: !2455, line: 822, type: !3537, isLocal: false, isDefinition: false, scopeLine: 822, flags: DIFlagPrototyped, isOptimized: false)
!3537 = !DISubroutineType(types: !3538)
!3538 = !{!3496, !3476, !128}
!3539 = !DISubprogram(name: "operator=", linkageName: "_ZN10ap_bit_refILi64ELb1EEaSERKS0_", scope: !3467, file: !2455, line: 839, type: !3540, isLocal: false, isDefinition: false, scopeLine: 839, flags: DIFlagPrototyped, isOptimized: false)
!3540 = !DISubroutineType(types: !3541)
!3541 = !{!3496, !3476, !3477}
!3542 = !DISubprogram(name: "get", linkageName: "_ZNK10ap_bit_refILi64ELb1EE3getEv", scope: !3467, file: !2455, line: 959, type: !3489, isLocal: false, isDefinition: false, scopeLine: 959, flags: DIFlagPrototyped, isOptimized: false)
!3543 = !DISubprogram(name: "get", linkageName: "_ZN10ap_bit_refILi64ELb1EE3getEv", scope: !3467, file: !2455, line: 961, type: !3544, isLocal: false, isDefinition: false, scopeLine: 961, flags: DIFlagPrototyped, isOptimized: false)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{!45, !3476}
!3546 = !DISubprogram(name: "operator~", linkageName: "_ZNK10ap_bit_refILi64ELb1EEcoEv", scope: !3467, file: !2455, line: 968, type: !3489, isLocal: false, isDefinition: false, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: false)
!3547 = !DISubprogram(name: "length", linkageName: "_ZNK10ap_bit_refILi64ELb1EE6lengthEv", scope: !3467, file: !2455, line: 973, type: !3548, isLocal: false, isDefinition: false, scopeLine: 973, flags: DIFlagPrototyped, isOptimized: false)
!3548 = !DISubroutineType(types: !3549)
!3549 = !{!21, !3491}
!3550 = !DISubprogram(name: "to_string", linkageName: "_ZNK10ap_bit_refILi64ELb1EE9to_stringEv", scope: !3467, file: !2455, line: 979, type: !3551, isLocal: false, isDefinition: false, scopeLine: 979, flags: DIFlagPrototyped, isOptimized: false)
!3551 = !DISubroutineType(types: !3552)
!3552 = !{!1386, !3491}
!3553 = !{!2990, !402}
!3554 = !DISubprogram(name: "operator[]", linkageName: "_ZNK11ap_int_baseILi64ELb1EEixEi", scope: !2685, file: !26, line: 1188, type: !2879, isLocal: false, isDefinition: false, scopeLine: 1188, flags: DIFlagPrototyped, isOptimized: false)
!3555 = !DISubprogram(name: "bit", linkageName: "_ZN11ap_int_baseILi64ELb1EE3bitEi", scope: !2685, file: !26, line: 1201, type: !3465, isLocal: false, isDefinition: false, scopeLine: 1201, flags: DIFlagPrototyped, isOptimized: false)
!3556 = !DISubprogram(name: "bit", linkageName: "_ZNK11ap_int_baseILi64ELb1EE3bitEi", scope: !2685, file: !26, line: 1216, type: !2879, isLocal: false, isDefinition: false, scopeLine: 1216, flags: DIFlagPrototyped, isOptimized: false)
!3557 = !DISubprogram(name: "countLeadingZeros", linkageName: "_ZNK11ap_int_baseILi64ELb1EE17countLeadingZerosEv", scope: !2685, file: !26, line: 1239, type: !2703, isLocal: false, isDefinition: false, scopeLine: 1239, flags: DIFlagPrototyped, isOptimized: false)
!3558 = !DISubprogram(name: "and_reduce", linkageName: "_ZNK11ap_int_baseILi64ELb1EE10and_reduceEv", scope: !2685, file: !26, line: 1459, type: !2824, isLocal: false, isDefinition: false, scopeLine: 1459, flags: DIFlagPrototyped, isOptimized: false)
!3559 = !DISubprogram(name: "nand_reduce", linkageName: "_ZNK11ap_int_baseILi64ELb1EE11nand_reduceEv", scope: !2685, file: !26, line: 1460, type: !2824, isLocal: false, isDefinition: false, scopeLine: 1460, flags: DIFlagPrototyped, isOptimized: false)
!3560 = !DISubprogram(name: "or_reduce", linkageName: "_ZNK11ap_int_baseILi64ELb1EE9or_reduceEv", scope: !2685, file: !26, line: 1461, type: !2824, isLocal: false, isDefinition: false, scopeLine: 1461, flags: DIFlagPrototyped, isOptimized: false)
!3561 = !DISubprogram(name: "nor_reduce", linkageName: "_ZNK11ap_int_baseILi64ELb1EE10nor_reduceEv", scope: !2685, file: !26, line: 1462, type: !2824, isLocal: false, isDefinition: false, scopeLine: 1462, flags: DIFlagPrototyped, isOptimized: false)
!3562 = !DISubprogram(name: "xor_reduce", linkageName: "_ZNK11ap_int_baseILi64ELb1EE10xor_reduceEv", scope: !2685, file: !26, line: 1463, type: !2824, isLocal: false, isDefinition: false, scopeLine: 1463, flags: DIFlagPrototyped, isOptimized: false)
!3563 = !DISubprogram(name: "xnor_reduce", linkageName: "_ZNK11ap_int_baseILi64ELb1EE11xnor_reduceEv", scope: !2685, file: !26, line: 1464, type: !2824, isLocal: false, isDefinition: false, scopeLine: 1464, flags: DIFlagPrototyped, isOptimized: false)
!3564 = !DISubprogram(name: "to_string", linkageName: "_ZNK11ap_int_baseILi64ELb1EE9to_stringEab", scope: !2685, file: !26, line: 1479, type: !3565, isLocal: false, isDefinition: false, scopeLine: 1479, flags: DIFlagPrototyped, isOptimized: false)
!3565 = !DISubroutineType(types: !3566)
!3566 = !{!1386, !2705, !71, !45}
!3567 = !{!3568, !3574}
!3568 = !DIGlobalVariableExpression(var: !3569, expr: !DIExpression())
!3569 = distinct !DIGlobalVariable(name: "W_real", linkageName: "_ZL6W_real", scope: !14, file: !12, line: 15, type: !3570, isLocal: true, isDefinition: true)
!3570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3571, size: 16384, elements: !3572)
!3571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!3572 = !{!3573}
!3573 = !DISubrange(count: 512)
!3574 = !DIGlobalVariableExpression(var: !3575, expr: !DIExpression())
!3575 = distinct !DIGlobalVariable(name: "W_imag", linkageName: "_ZL6W_imag", scope: !14, file: !12, line: 78, type: !3570, isLocal: true, isDefinition: true)
!3576 = !DILocation(line: 85, column: 9, scope: !6)
!3577 = !DILocation(line: 83, column: 9, scope: !6)
!3578 = !DILocation(line: 84, column: 9, scope: !6)
