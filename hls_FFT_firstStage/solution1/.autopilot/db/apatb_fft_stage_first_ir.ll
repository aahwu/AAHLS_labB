; ModuleID = 'C:/Users/ShaneWu/OneDrive/Desktop/Documents/NTU/HLS/labB/hls_FFT_firstStage/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_fft_stage_first_ir(float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1024" %X_R, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1024" %X_I, float* noalias nocapture nonnull "fpga.decayed.dim.hint"="1024" %OUT_R, float* noalias nocapture nonnull "fpga.decayed.dim.hint"="1024" %OUT_I) local_unnamed_addr #1 {
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
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_04, i32 0, i32 1, i32 0, i1 false) ], !dbg !27
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_15, i32 0, i32 1, i32 0, i1 false) ], !dbg !27
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_26, i32 0, i32 1, i32 0, i1 false) ], !dbg !27
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_37, i32 0, i32 1, i32 0, i1 false) ], !dbg !27
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_08, i32 0, i32 1, i32 0, i1 false) ], !dbg !28
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_19, i32 0, i32 1, i32 0, i1 false) ], !dbg !28
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_210, i32 0, i32 1, i32 0, i1 false) ], !dbg !28
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_311, i32 0, i32 1, i32 0, i1 false) ], !dbg !28
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_012, i32 0, i32 1, i32 0, i1 false) ], !dbg !29
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_113, i32 0, i32 1, i32 0, i1 false) ], !dbg !29
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_214, i32 0, i32 1, i32 0, i1 false) ], !dbg !29
  call void @llvm.sideeffect() #0 [ "xlx_array_partition"(float* %_315, i32 0, i32 1, i32 0, i1 false) ], !dbg !29
  call void @apatb_fft_stage_first_hw([256 x float]* %X_R_copy_0, [256 x float]* %X_R_copy_1, [256 x float]* %X_R_copy_2, [256 x float]* %X_R_copy_3, [256 x float]* %X_I_copy_0, [256 x float]* %X_I_copy_1, [256 x float]* %X_I_copy_2, [256 x float]* %X_I_copy_3, [256 x float]* %OUT_R_copy_0, [256 x float]* %OUT_R_copy_1, [256 x float]* %OUT_R_copy_2, [256 x float]* %OUT_R_copy_3, [256 x float]* %OUT_I_copy_0, [256 x float]* %OUT_I_copy_1, [256 x float]* %OUT_I_copy_2, [256 x float]* %OUT_I_copy_3)
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
  call void @onebyonecpy_hls.p0a1024f32.3.4([256 x float]* %_05, [256 x float]* %_16, [256 x float]* %_27, [256 x float]* %_38, [1024 x float]* %2)
  call void @onebyonecpy_hls.p0a1024f32.3.4([256 x float]* %_09, [256 x float]* %_110, [256 x float]* %_211, [256 x float]* %_312, [1024 x float]* %3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a1024f32.9.10([1024 x float]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3) #2 {
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
  call void @onebyonecpy_hls.p0a1024f32.9.10([1024 x float]* %0, [256 x float]* %_0, [256 x float]* %_1, [256 x float]* %_2, [256 x float]* %_3)
  call void @onebyonecpy_hls.p0a1024f32.9.10([1024 x float]* %1, [256 x float]* %_01, [256 x float]* %_12, [256 x float]* %_23, [256 x float]* %_34)
  call void @onebyonecpy_hls.p0a1024f32.9.10([1024 x float]* %2, [256 x float]* %_05, [256 x float]* %_16, [256 x float]* %_27, [256 x float]* %_38)
  call void @onebyonecpy_hls.p0a1024f32.9.10([1024 x float]* %3, [256 x float]* %_09, [256 x float]* %_110, [256 x float]* %_211, [256 x float]* %_312)
  ret void
}

declare void @apatb_fft_stage_first_hw([256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*)

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_back([1024 x float]* noalias "orig.arg.no"="0", [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_1, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_2, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_3, [1024 x float]* noalias "orig.arg.no"="2", [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_12, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_23, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_34, [1024 x float]* noalias "orig.arg.no"="4", [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_05, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_16, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_27, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" %_38, [1024 x float]* noalias "orig.arg.no"="6", [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_09, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_110, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_211, [256 x float]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" %_312) #4 {
entry:
  call void @onebyonecpy_hls.p0a1024f32.9.10([1024 x float]* %2, [256 x float]* %_05, [256 x float]* %_16, [256 x float]* %_27, [256 x float]* %_38)
  call void @onebyonecpy_hls.p0a1024f32.9.10([1024 x float]* %3, [256 x float]* %_09, [256 x float]* %_110, [256 x float]* %_211, [256 x float]* %_312)
  ret void
}

define void @fft_stage_first_hw_stub_wrapper([256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*, [256 x float]*) #5 {
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
  call void @fft_stage_first_hw_stub(float* %20, float* %21, float* %22, float* %23)
  call void @copy_in([1024 x float]* %16, [256 x float]* %0, [256 x float]* %1, [256 x float]* %2, [256 x float]* %3, [1024 x float]* %17, [256 x float]* %4, [256 x float]* %5, [256 x float]* %6, [256 x float]* %7, [1024 x float]* %18, [256 x float]* %8, [256 x float]* %9, [256 x float]* %10, [256 x float]* %11, [1024 x float]* %19, [256 x float]* %12, [256 x float]* %13, [256 x float]* %14, [256 x float]* %15)
  ret void
}

declare void @fft_stage_first_hw_stub(float*, float*, float*, float*)

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
!5 = !DILocation(line: 9, column: 9, scope: !6)
!6 = !DILexicalBlockFile(scope: !8, file: !7, discriminator: 0)
!7 = !DIFile(filename: "C:/Users/ShaneWu/OneDrive/Desktop/Documents/NTU/HLS/labB/hls_FFT_firstStage/solution1/directives.tcl", directory: "C:\5CUsers\5CShaneWu\5COneDrive\5CDesktop\5CDocuments\5CNTU\5CHLS\5ClabB")
!8 = distinct !DISubprogram(name: "fft_stage_first", linkageName: "_Z15fft_stage_firstPfS_S_S_", scope: !9, file: !9, line: 13, type: !10, isLocal: false, isDefinition: true, scopeLine: 14, flags: DIFlagPrototyped, isOptimized: false, unit: !16, variables: !4)
!9 = !DIFile(filename: "../FFT/FFT/HLS/1_Subcomponents/fft_stage_first/fft_stage_first.cpp", directory: "C:\5CUsers\5CShaneWu\5COneDrive\5CDesktop\5CDocuments\5CNTU\5CHLS\5ClabB")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !12, !12, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "DTYPE", file: !14, line: 4, baseType: !15)
!14 = !DIFile(filename: "../FFT/FFT/HLS/1_Subcomponents/fft_stage_first/fft_stage_first.h", directory: "C:\5CUsers\5CShaneWu\5COneDrive\5CDesktop\5CDocuments\5CNTU\5CHLS\5ClabB")
!15 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!16 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !17, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !18)
!17 = !DIFile(filename: "C:/Users/ShaneWu/OneDrive/Desktop/Documents/NTU/HLS/labB/hls_FFT_firstStage/solution1/.autopilot/db\5Cfft_stage_first.pp.0.cpp", directory: "C:\5CUsers\5CShaneWu\5COneDrive\5CDesktop\5CDocuments\5CNTU\5CHLS\5ClabB")
!18 = !{!19, !25}
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "W_real", linkageName: "_ZL6W_real", scope: !16, file: !14, line: 16, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 16384, elements: !23)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!23 = !{!24}
!24 = !DISubrange(count: 512)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "W_imag", linkageName: "_ZL6W_imag", scope: !16, file: !14, line: 79, type: !21, isLocal: true, isDefinition: true)
!27 = !DILocation(line: 8, column: 9, scope: !6)
!28 = !DILocation(line: 10, column: 9, scope: !6)
!29 = !DILocation(line: 11, column: 9, scope: !6)
