; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jcomapi.c'
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
  %2 = alloca %struct.jpeg_common_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.jpeg_common_struct* %0, %struct.jpeg_common_struct** %2, align 8
  store i32 1, i32* %3, align 4
  br label %4

4:                                                ; preds = %15, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %4
  %8 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %2, align 8
  %9 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %8, i32 0, i32 1
  %10 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %9, align 8
  %11 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %10, i32 0, i32 9
  %12 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %11, align 8
  %13 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %2, align 8
  %14 = load i32, i32* %3, align 4
  call void %12(%struct.jpeg_common_struct* noundef %13, i32 noundef %14)
  br label %15

15:                                               ; preds = %7
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %3, align 4
  br label %4, !llvm.loop !4

18:                                               ; preds = %4
  %19 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %2, align 8
  %20 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 200, i32 100
  %25 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %2, align 8
  %26 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_destroy(%struct.jpeg_common_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_common_struct*, align 8
  store %struct.jpeg_common_struct* %0, %struct.jpeg_common_struct** %2, align 8
  %3 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %2, align 8
  %4 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %3, i32 0, i32 1
  %5 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %4, align 8
  %6 = icmp ne %struct.jpeg_memory_mgr* %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %2, align 8
  %9 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %8, i32 0, i32 1
  %10 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %9, align 8
  %11 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %10, i32 0, i32 10
  %12 = bitcast {}** %11 to void (%struct.jpeg_common_struct*)**
  %13 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %12, align 8
  %14 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %2, align 8
  call void %13(%struct.jpeg_common_struct* noundef %14)
  br label %15

15:                                               ; preds = %7, %1
  %16 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %2, align 8
  %17 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %16, i32 0, i32 1
  store %struct.jpeg_memory_mgr* null, %struct.jpeg_memory_mgr** %17, align 8
  %18 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %2, align 8
  %19 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %18, i32 0, i32 4
  store i32 0, i32* %19, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.JQUANT_TBL* @jpeg_alloc_quant_table(%struct.jpeg_common_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_common_struct*, align 8
  %3 = alloca %struct.JQUANT_TBL*, align 8
  store %struct.jpeg_common_struct* %0, %struct.jpeg_common_struct** %2, align 8
  %4 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %2, align 8
  %5 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %4, i32 0, i32 1
  %6 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %5, align 8
  %7 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %6, i32 0, i32 0
  %8 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %7, align 8
  %9 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %2, align 8
  %10 = call i8* %8(%struct.jpeg_common_struct* noundef %9, i32 noundef 0, i64 noundef 132)
  %11 = bitcast i8* %10 to %struct.JQUANT_TBL*
  store %struct.JQUANT_TBL* %11, %struct.JQUANT_TBL** %3, align 8
  %12 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %3, align 8
  %13 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %12, i32 0, i32 1
  store i32 0, i32* %13, align 4
  %14 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %3, align 8
  ret %struct.JQUANT_TBL* %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.JHUFF_TBL* @jpeg_alloc_huff_table(%struct.jpeg_common_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_common_struct*, align 8
  %3 = alloca %struct.JHUFF_TBL*, align 8
  store %struct.jpeg_common_struct* %0, %struct.jpeg_common_struct** %2, align 8
  %4 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %2, align 8
  %5 = getelementptr inbounds %struct.jpeg_common_struct, %struct.jpeg_common_struct* %4, i32 0, i32 1
  %6 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %5, align 8
  %7 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %6, i32 0, i32 0
  %8 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %7, align 8
  %9 = load %struct.jpeg_common_struct*, %struct.jpeg_common_struct** %2, align 8
  %10 = call i8* %8(%struct.jpeg_common_struct* noundef %9, i32 noundef 0, i64 noundef 280)
  %11 = bitcast i8* %10 to %struct.JHUFF_TBL*
  store %struct.JHUFF_TBL* %11, %struct.JHUFF_TBL** %3, align 8
  %12 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %3, align 8
  %13 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %12, i32 0, i32 2
  store i32 0, i32* %13, align 4
  %14 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %3, align 8
  ret %struct.JHUFF_TBL* %14
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
