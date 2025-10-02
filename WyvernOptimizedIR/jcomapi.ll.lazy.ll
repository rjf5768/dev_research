; ModuleID = './jcomapi.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jcomapi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32 }
%struct.jpeg_error_mgr = type { {}*, void (%struct.jpeg_common_struct*, i32)*, {}*, void (%struct.jpeg_common_struct*, i8*)*, {}*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.jpeg_progress_mgr = type { {}*, i64, i64, i32, i32 }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_abort(%struct.jpeg_common_struct* noundef %0) #0 {
  br label %2

2:                                                ; preds = %9, %1
  %.0 = phi i32 [ 1, %1 ], [ %10, %9 ]
  %3 = icmp sgt i32 %.0, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %0, i64 0, i32 1
  %6 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %5, align 8
  %7 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %6, i64 0, i32 9
  %8 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %7, align 8
  call void %8(%struct.jpeg_common_struct* noundef %0, i32 noundef %.0) #1
  br label %9

9:                                                ; preds = %4
  %10 = add nsw i32 %.0, -1
  br label %2, !llvm.loop !4

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %0, i64 0, i32 3
  %13 = load i32, i32* %12, align 8
  %.not = icmp eq i32 %13, 0
  %14 = select i1 %.not, i32 100, i32 200
  %15 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %0, i64 0, i32 4
  store i32 %14, i32* %15, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_destroy(%struct.jpeg_common_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %0, i64 0, i32 1
  %3 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %2, align 8
  %.not = icmp eq %struct.jpeg_memory_mgr* %3, null
  br i1 %.not, label %10, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %0, i64 0, i32 1
  %6 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %5, align 8
  %7 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %6, i64 0, i32 10
  %8 = bitcast {}** %7 to void (%struct.jpeg_common_struct*)**
  %9 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %8, align 8
  call void %9(%struct.jpeg_common_struct* noundef %0) #1
  br label %10

10:                                               ; preds = %4, %1
  %11 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %0, i64 0, i32 1
  store %struct.jpeg_memory_mgr* null, %struct.jpeg_memory_mgr** %11, align 8
  %12 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %0, i64 0, i32 4
  store i32 0, i32* %12, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.JQUANT_TBL* @jpeg_alloc_quant_table(%struct.jpeg_common_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %0, i64 0, i32 1
  %3 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %2, align 8
  %4 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %3, i64 0, i32 0
  %5 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %4, align 8
  %6 = call i8* %5(%struct.jpeg_common_struct* noundef %0, i32 noundef 0, i64 noundef 132) #1
  %7 = bitcast i8* %6 to %struct.JQUANT_TBL*
  %8 = getelementptr inbounds i8, i8* %6, i64 128
  %9 = bitcast i8* %8 to i32*
  store i32 0, i32* %9, align 4
  ret %struct.JQUANT_TBL* %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.JHUFF_TBL* @jpeg_alloc_huff_table(%struct.jpeg_common_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %0, i64 0, i32 1
  %3 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %2, align 8
  %4 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %3, i64 0, i32 0
  %5 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %4, align 8
  %6 = call i8* %5(%struct.jpeg_common_struct* noundef %0, i32 noundef 0, i64 noundef 280) #1
  %7 = bitcast i8* %6 to %struct.JHUFF_TBL*
  %8 = getelementptr inbounds i8, i8* %6, i64 276
  %9 = bitcast i8* %8 to i32*
  store i32 0, i32* %9, align 4
  ret %struct.JHUFF_TBL* %7
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
