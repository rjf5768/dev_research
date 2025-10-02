; ModuleID = './eval.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = external dso_local global [19 x [19 x i8]], align 16
@lib = external dso_local global i32, align 4
@l = external dso_local global [19 x [19 x i8]], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @eval(i32 noundef %0) #0 {
  br label %2

2:                                                ; preds = %24, %1
  %.01 = phi i32 [ 0, %1 ], [ %25, %24 ]
  %3 = icmp ult i32 %.01, 19
  br i1 %3, label %4, label %26

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %21, %4
  %.0 = phi i32 [ 0, %4 ], [ %22, %21 ]
  %6 = icmp ult i32 %.0, 19
  br i1 %6, label %7, label %23

7:                                                ; preds = %5
  %8 = zext i32 %.01 to i64
  %9 = zext i32 %.0 to i64
  %10 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %8, i64 %9
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp eq i32 %12, %0
  br i1 %13, label %14, label %20

14:                                               ; preds = %7
  store i32 0, i32* @lib, align 4
  call void @countlib(i32 noundef %.01, i32 noundef %.0, i32 noundef %0) #2
  %15 = load i32, i32* @lib, align 4
  %16 = trunc i32 %15 to i8
  %17 = zext i32 %.01 to i64
  %18 = zext i32 %.0 to i64
  %19 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @l, i64 0, i64 %17, i64 %18
  store i8 %16, i8* %19, align 1
  br label %20

20:                                               ; preds = %14, %7
  br label %21

21:                                               ; preds = %20
  %22 = add nuw nsw i32 %.0, 1
  br label %5, !llvm.loop !4

23:                                               ; preds = %5
  br label %24

24:                                               ; preds = %23
  %25 = add nuw nsw i32 %.01, 1
  br label %2, !llvm.loop !6

26:                                               ; preds = %2
  ret void
}

declare dso_local void @countlib(i32 noundef, i32 noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
