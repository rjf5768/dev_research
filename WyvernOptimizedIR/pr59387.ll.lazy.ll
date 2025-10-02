; ModuleID = './pr59387.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr59387.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32 }

@d = dso_local global i32* null, align 8
@e = dso_local global i32** @d, align 8
@a = dso_local global i32 0, align 4
@b = dso_local global %struct.S zeroinitializer, align 4
@c = dso_local global i8 0, align 1
@f = dso_local global i32 0, align 4

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %16, %0
  %storemerge = phi i32 [ -19, %0 ], [ %18, %16 ]
  store i32 %storemerge, i32* @a, align 4
  %.not = icmp eq i32 %storemerge, 0
  br i1 %.not, label %19, label %2

2:                                                ; preds = %1
  br label %3

3:                                                ; preds = %8, %2
  %storemerge1 = phi i32 [ 0, %2 ], [ %10, %8 ]
  store i32 %storemerge1, i32* getelementptr inbounds (%struct.S, %struct.S* @b, i64 0, i32 0), align 4
  %4 = icmp slt i32 %storemerge1, 24
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  %6 = load i8, i8* @c, align 1
  %7 = add i8 %6, -1
  store i8 %7, i8* @c, align 1
  br label %8

8:                                                ; preds = %5
  %9 = load i32, i32* getelementptr inbounds (%struct.S, %struct.S* @b, i64 0, i32 0), align 4
  %10 = add nsw i32 %9, 1
  br label %3, !llvm.loop !4

11:                                               ; preds = %3
  %12 = load i32**, i32*** @e, align 8
  store i32* @f, i32** %12, align 8
  %13 = load i32*, i32** @d, align 8
  %.not2 = icmp eq i32* %13, null
  br i1 %.not2, label %14, label %15

14:                                               ; preds = %11
  br label %20

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %15
  %17 = load i32, i32* @a, align 4
  %18 = add nsw i32 %17, 1
  br label %1, !llvm.loop !6

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %19, %14
  ret i32 0
}

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
