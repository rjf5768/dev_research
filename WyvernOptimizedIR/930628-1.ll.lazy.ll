; ModuleID = './930628-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/930628-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { [3 x i32], [1 x [2 x double]] }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(double* noundef readnone %0, double* noundef readnone %1) #0 {
  %3 = icmp eq double* %0, %1
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  call void @abort() #3
  unreachable

5:                                                ; preds = %2
  ret i32 undef
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca [4 x [2 x %struct.anon]], align 16
  br label %2

2:                                                ; preds = %50, %0
  %.01 = phi i32 [ 0, %0 ], [ %51, %50 ]
  %3 = icmp ult i32 %.01, 4
  br i1 %3, label %4, label %52

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %47, %4
  %.02 = phi i32 [ %.01, %4 ], [ %48, %47 ]
  %6 = icmp ult i32 %.02, 4
  br i1 %6, label %7, label %49

7:                                                ; preds = %5
  br label %8

8:                                                ; preds = %44, %7
  %.03 = phi i32 [ 0, %7 ], [ %45, %44 ]
  %9 = icmp ult i32 %.03, 2
  br i1 %9, label %10, label %46

10:                                               ; preds = %8
  br label %11

11:                                               ; preds = %41, %10
  %.04 = phi i32 [ 0, %10 ], [ %42, %41 ]
  %12 = icmp ult i32 %.04, 2
  br i1 %12, label %13, label %43

13:                                               ; preds = %11
  %14 = icmp eq i32 %.02, %.01
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  %16 = icmp eq i32 %.03, %.04
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  br label %40

18:                                               ; preds = %15, %13
  br label %19

19:                                               ; preds = %37, %18
  %.05 = phi i32 [ 0, %18 ], [ %38, %37 ]
  %20 = icmp eq i32 %.05, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %19
  br label %22

22:                                               ; preds = %34, %21
  %.0 = phi i32 [ 0, %21 ], [ %35, %34 ]
  %23 = icmp eq i32 %.0, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %22
  %25 = zext i32 %.01 to i64
  %26 = zext i32 %.03 to i64
  %27 = zext i32 %.05 to i64
  %28 = getelementptr inbounds [4 x [2 x %struct.anon]], [4 x [2 x %struct.anon]]* %1, i64 0, i64 %25, i64 %26, i32 1, i64 %27, i64 0
  %29 = zext i32 %.02 to i64
  %30 = zext i32 %.04 to i64
  %31 = zext i32 %.0 to i64
  %32 = getelementptr inbounds [4 x [2 x %struct.anon]], [4 x [2 x %struct.anon]]* %1, i64 0, i64 %29, i64 %30, i32 1, i64 %31, i64 0
  %33 = call i32 @f(double* noundef nonnull %28, double* noundef nonnull %32)
  br label %34

34:                                               ; preds = %24
  %35 = add nuw nsw i32 %.0, 1
  br label %22, !llvm.loop !4

36:                                               ; preds = %22
  br label %37

37:                                               ; preds = %36
  %38 = add nuw nsw i32 %.05, 1
  br label %19, !llvm.loop !6

39:                                               ; preds = %19
  br label %40

40:                                               ; preds = %39, %17
  br label %41

41:                                               ; preds = %40
  %42 = add nuw nsw i32 %.04, 1
  br label %11, !llvm.loop !7

43:                                               ; preds = %11
  br label %44

44:                                               ; preds = %43
  %45 = add nuw nsw i32 %.03, 1
  br label %8, !llvm.loop !8

46:                                               ; preds = %8
  br label %47

47:                                               ; preds = %46
  %48 = add nuw nsw i32 %.02, 1
  br label %5, !llvm.loop !9

49:                                               ; preds = %5
  br label %50

50:                                               ; preds = %49
  %51 = add nuw nsw i32 %.01, 1
  br label %2, !llvm.loop !10

52:                                               ; preds = %2
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

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
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
