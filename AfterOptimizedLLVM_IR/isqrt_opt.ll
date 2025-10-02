; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/automotive-basicmath/isqrt.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/automotive-basicmath/isqrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.int_sqrt = type { i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @usqrt(i32 noundef %0, %struct.int_sqrt* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.int_sqrt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.int_sqrt* %1, %struct.int_sqrt** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %36, %2
  %10 = load i32, i32* %8, align 4
  %11 = icmp slt i32 %10, 32
  br i1 %11, label %12, label %39

12:                                               ; preds = %9
  %13 = load i32, i32* %6, align 4
  %14 = shl i32 %13, 2
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, -1073741824
  %17 = lshr i32 %16, 30
  %18 = add i32 %14, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %3, align 4
  %20 = shl i32 %19, 2
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %5, align 4
  %22 = shl i32 %21, 1
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = shl i32 %23, 1
  %25 = add i32 %24, 1
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp uge i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %12
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sub i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %5, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %29, %12
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %9, !llvm.loop !4

39:                                               ; preds = %9
  %40 = load %struct.int_sqrt*, %struct.int_sqrt** %4, align 8
  %41 = bitcast %struct.int_sqrt* %40 to i8*
  %42 = bitcast i32* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
