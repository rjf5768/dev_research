; ModuleID = './930614-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/930614-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca [8 x [2 x [8 x [2 x float]]]], align 16
  br label %2

2:                                                ; preds = %48, %0
  %.01 = phi i32 [ 0, %0 ], [ %49, %48 ]
  %3 = icmp ult i32 %.01, 8
  br i1 %3, label %4, label %50

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %45, %4
  %.02 = phi i32 [ %.01, %4 ], [ %46, %45 ]
  %6 = icmp ult i32 %.02, 8
  br i1 %6, label %7, label %47

7:                                                ; preds = %5
  br label %8

8:                                                ; preds = %42, %7
  %.03 = phi i32 [ 0, %7 ], [ %43, %42 ]
  %9 = icmp ult i32 %.03, 2
  br i1 %9, label %10, label %44

10:                                               ; preds = %8
  br label %11

11:                                               ; preds = %39, %10
  %.0 = phi i32 [ 0, %10 ], [ %40, %39 ]
  %12 = icmp ult i32 %.0, 2
  br i1 %12, label %13, label %41

13:                                               ; preds = %11
  %14 = icmp eq i32 %.01, %.02
  br i1 %14, label %15, label %23

15:                                               ; preds = %13
  %16 = icmp eq i32 %.03, %.0
  br i1 %16, label %17, label %23

17:                                               ; preds = %15
  %18 = zext i32 %.01 to i64
  %19 = zext i32 %.03 to i64
  %20 = zext i32 %.02 to i64
  %21 = zext i32 %.0 to i64
  %22 = getelementptr inbounds [8 x [2 x [8 x [2 x float]]]], [8 x [2 x [8 x [2 x float]]]]* %1, i64 0, i64 %18, i64 %19, i64 %20, i64 %21
  store float 0x3FE99999A0000000, float* %22, align 4
  br label %29

23:                                               ; preds = %15, %13
  %24 = zext i32 %.01 to i64
  %25 = zext i32 %.03 to i64
  %26 = zext i32 %.02 to i64
  %27 = zext i32 %.0 to i64
  %28 = getelementptr inbounds [8 x [2 x [8 x [2 x float]]]], [8 x [2 x [8 x [2 x float]]]]* %1, i64 0, i64 %24, i64 %25, i64 %26, i64 %27
  store float 0x3FE99999A0000000, float* %28, align 4
  br label %29

29:                                               ; preds = %23, %17
  %30 = zext i32 %.01 to i64
  %31 = zext i32 %.03 to i64
  %32 = zext i32 %.02 to i64
  %33 = zext i32 %.0 to i64
  %34 = getelementptr inbounds [8 x [2 x [8 x [2 x float]]]], [8 x [2 x [8 x [2 x float]]]]* %1, i64 0, i64 %30, i64 %31, i64 %32, i64 %33
  %35 = load float, float* %34, align 4
  %36 = fcmp olt float %35, 0.000000e+00
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  call void @abort() #2
  br label %UnifiedUnreachableBlock

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38
  %40 = add nuw nsw i32 %.0, 1
  br label %11, !llvm.loop !4

41:                                               ; preds = %11
  br label %42

42:                                               ; preds = %41
  %43 = add nuw nsw i32 %.03, 1
  br label %8, !llvm.loop !6

44:                                               ; preds = %8
  br label %45

45:                                               ; preds = %44
  %46 = add nuw nsw i32 %.02, 1
  br label %5, !llvm.loop !7

47:                                               ; preds = %5
  br label %48

48:                                               ; preds = %47
  %49 = add nuw nsw i32 %.01, 1
  br label %2, !llvm.loop !8

50:                                               ; preds = %2
  call void @exit(i32 noundef 0) #2
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %50, %37
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
