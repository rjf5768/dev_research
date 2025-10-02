; ModuleID = './990404-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/990404-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %24, %0
  %.02 = phi i32 [ undef, %0 ], [ %.13, %24 ]
  %.01 = phi i32 [ 0, %0 ], [ %25, %24 ]
  br label %2

2:                                                ; preds = %14, %1
  %.04 = phi i32 [ 0, %1 ], [ %15, %14 ]
  %.13 = phi i32 [ %.02, %1 ], [ %.2, %14 ]
  %.0 = phi i32 [ 0, %1 ], [ %.1, %14 ]
  %3 = icmp ult i32 %.04, 10
  br i1 %3, label %4, label %16

4:                                                ; preds = %2
  %5 = zext i32 %.04 to i64
  %6 = getelementptr inbounds [10 x i32], [10 x i32]* @x, i64 0, i64 %5
  %7 = load i32, i32* %6, align 4
  %8 = icmp sgt i32 %7, %.0
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = zext i32 %.04 to i64
  %11 = getelementptr inbounds [10 x i32], [10 x i32]* @x, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4
  br label %13

13:                                               ; preds = %9, %4
  %.2 = phi i32 [ %.04, %9 ], [ %.13, %4 ]
  %.1 = phi i32 [ %12, %9 ], [ %.0, %4 ]
  br label %14

14:                                               ; preds = %13
  %15 = add nuw nsw i32 %.04, 1
  br label %2, !llvm.loop !4

16:                                               ; preds = %2
  %17 = icmp eq i32 %.0, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  br label %26

19:                                               ; preds = %16
  %20 = sext i32 %.13 to i64
  %21 = getelementptr inbounds [10 x i32], [10 x i32]* @x, i64 0, i64 %20
  store i32 0, i32* %21, align 4
  %22 = icmp ugt i32 %.01, 9
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  call void @abort() #2
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %19
  %25 = add nuw nsw i32 %.01, 1
  br label %1

26:                                               ; preds = %18
  call void @exit(i32 noundef 0) #2
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %26, %23
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
