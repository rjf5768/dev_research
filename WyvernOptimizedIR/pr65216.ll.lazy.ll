; ModuleID = './pr65216.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr65216.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global i32 62, align 4
@a = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %18, %0
  %storemerge = phi i32 [ 0, %0 ], [ %20, %18 ]
  %.0 = phi i32 [ 0, %0 ], [ %.1, %18 ]
  store i32 %storemerge, i32* @a, align 4
  %2 = icmp slt i32 %storemerge, 2
  br i1 %2, label %3, label %21

3:                                                ; preds = %1
  %4 = and i32 %.0, 1
  %5 = load i32, i32* @b, align 4
  %6 = and i32 %5, %4
  store i32 %6, i32* @b, align 4
  br label %7

7:                                                ; preds = %14, %3
  %storemerge1 = phi i32 [ 0, %3 ], [ %16, %14 ]
  %.1 = phi i32 [ %.0, %3 ], [ %.2, %14 ]
  store i32 %storemerge1, i32* @e, align 4
  %8 = icmp slt i32 %storemerge1, 6
  br i1 %8, label %9, label %17

9:                                                ; preds = %7
  %10 = load volatile i32, i32* @c, align 4
  %.not2 = icmp eq i32 %10, 0
  br i1 %.not2, label %13, label %11

11:                                               ; preds = %9
  %12 = load volatile i32, i32* @d, align 4
  br label %13

13:                                               ; preds = %11, %9
  %.2 = phi i32 [ %12, %11 ], [ %.1, %9 ]
  br label %14

14:                                               ; preds = %13
  %15 = load i32, i32* @e, align 4
  %16 = add nsw i32 %15, 1
  br label %7, !llvm.loop !4

17:                                               ; preds = %7
  br label %18

18:                                               ; preds = %17
  %19 = load i32, i32* @a, align 4
  %20 = add nsw i32 %19, 1
  br label %1, !llvm.loop !6

21:                                               ; preds = %1
  %22 = load i32, i32* @b, align 4
  %.not = icmp eq i32 %22, 0
  br i1 %.not, label %24, label %23

23:                                               ; preds = %21
  call void @abort() #2
  unreachable

24:                                               ; preds = %21
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
