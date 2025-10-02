; ModuleID = './20000422-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000422-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ops = dso_local global [13 x i32] [i32 11, i32 12, i32 46, i32 3, i32 2, i32 2, i32 3, i32 2, i32 1, i32 3, i32 2, i32 1, i32 2], align 16
@correct = dso_local global [13 x i32] [i32 46, i32 12, i32 11, i32 3, i32 3, i32 3, i32 2, i32 2, i32 2, i32 2, i32 2, i32 1, i32 1], align 16
@num = dso_local global i32 13, align 4

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %33, %0
  %.01 = phi i32 [ 0, %0 ], [ %34, %33 ]
  %2 = load i32, i32* @num, align 4
  %3 = icmp slt i32 %.01, %2
  br i1 %3, label %4, label %35

4:                                                ; preds = %1
  %5 = load i32, i32* @num, align 4
  br label %6

6:                                                ; preds = %31, %4
  %.0.in = phi i32 [ %5, %4 ], [ %.0, %31 ]
  %.0 = add nsw i32 %.0.in, -1
  %7 = icmp sgt i32 %.0, %.01
  br i1 %7, label %8, label %32

8:                                                ; preds = %6
  %9 = add nsw i32 %.0.in, -2
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [13 x i32], [13 x i32]* @ops, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %.0 to i64
  %14 = getelementptr inbounds [13 x i32], [13 x i32]* @ops, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %8
  %18 = sext i32 %.0 to i64
  %19 = getelementptr inbounds [13 x i32], [13 x i32]* @ops, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %.0.in, -2
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [13 x i32], [13 x i32]* @ops, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %.0 to i64
  %26 = getelementptr inbounds [13 x i32], [13 x i32]* @ops, i64 0, i64 %25
  store i32 %24, i32* %26, align 4
  %27 = add nsw i32 %.0.in, -2
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [13 x i32], [13 x i32]* @ops, i64 0, i64 %28
  store i32 %20, i32* %29, align 4
  br label %30

30:                                               ; preds = %17, %8
  br label %31

31:                                               ; preds = %30
  br label %6, !llvm.loop !4

32:                                               ; preds = %6
  br label %33

33:                                               ; preds = %32
  %34 = add nuw nsw i32 %.01, 1
  br label %1, !llvm.loop !6

35:                                               ; preds = %1
  br label %36

36:                                               ; preds = %48, %35
  %.1 = phi i32 [ 0, %35 ], [ %49, %48 ]
  %37 = load i32, i32* @num, align 4
  %38 = icmp slt i32 %.1, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = zext i32 %.1 to i64
  %41 = getelementptr inbounds [13 x i32], [13 x i32]* @ops, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = zext i32 %.1 to i64
  %44 = getelementptr inbounds [13 x i32], [13 x i32]* @correct, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %.not = icmp eq i32 %42, %45
  br i1 %.not, label %47, label %46

46:                                               ; preds = %39
  call void @abort() #2
  br label %UnifiedUnreachableBlock

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47
  %49 = add nuw nsw i32 %.1, 1
  br label %36, !llvm.loop !7

50:                                               ; preds = %36
  call void @exit(i32 noundef 0) #2
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %50, %46
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
