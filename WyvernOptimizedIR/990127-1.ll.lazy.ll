; ModuleID = './990127-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/990127-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 10, i32* %1, align 4
  store i32 20, i32* %2, align 4
  br label %3

3:                                                ; preds = %21, %0
  %.02 = phi i32* [ %1, %0 ], [ %2, %21 ]
  %.01 = phi i32 [ 0, %0 ], [ %23, %21 ]
  %.0 = phi i32 [ 0, %0 ], [ %22, %21 ]
  %4 = icmp ult i32 %.01, 10
  br i1 %4, label %5, label %24

5:                                                ; preds = %3
  %6 = icmp eq i32* %.02, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  br label %9

8:                                                ; preds = %5
  br label %9

9:                                                ; preds = %8, %7
  %.13 = phi i32* [ %2, %7 ], [ %1, %8 ]
  br label %10

10:                                               ; preds = %19, %9
  %.24 = phi i32* [ %.13, %9 ], [ %2, %19 ]
  %.1 = phi i32 [ %.0, %9 ], [ %14, %19 ]
  %11 = load i32, i32* %.24, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %.24, align 4
  %.not8 = icmp eq i32 %11, 0
  br i1 %.not8, label %.loopexit, label %13

13:                                               ; preds = %10
  %14 = add nsw i32 %.1, 1
  %15 = load i32, i32* %.24, align 4
  %16 = icmp slt i32 %15, 3
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %20

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %18
  br label %10, !llvm.loop !4

.loopexit:                                        ; preds = %10
  br label %20

20:                                               ; preds = %.loopexit, %17
  %.2 = phi i32 [ %14, %17 ], [ %.1, %.loopexit ]
  br label %21

21:                                               ; preds = %20
  %22 = add nsw i32 %.2, 1
  %23 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !6

24:                                               ; preds = %3
  %25 = load i32, i32* %.02, align 4
  %.not = icmp eq i32 %25, -5
  br i1 %.not, label %26, label %29

26:                                               ; preds = %24
  %27 = load i32, i32* %2, align 4
  %.not6 = icmp eq i32 %27, -5
  br i1 %.not6, label %28, label %29

28:                                               ; preds = %26
  %.not7 = icmp eq i32 %.0, 43
  br i1 %.not7, label %30, label %29

29:                                               ; preds = %28, %26, %24
  call void @abort() #2
  br label %UnifiedUnreachableBlock

30:                                               ; preds = %28
  call void @exit(i32 noundef 0) #2
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %30, %29
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
