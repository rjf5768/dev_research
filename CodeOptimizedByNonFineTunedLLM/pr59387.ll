; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr59387.c'
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

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 -19, i32* @a, align 4
  br label %2

2:                                                ; preds = %21, %0
  %3 = load i32, i32* @a, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %24

5:                                                ; preds = %2
  store i32 0, i32* getelementptr inbounds (%struct.S, %struct.S* @b, i32 0, i32 0), align 4
  br label %6

6:                                                ; preds = %12, %5
  %7 = load i32, i32* getelementptr inbounds (%struct.S, %struct.S* @b, i32 0, i32 0), align 4
  %8 = icmp slt i32 %7, 24
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = load i8, i8* @c, align 1
  %11 = add i8 %10, -1
  store i8 %11, i8* @c, align 1
  br label %12

12:                                               ; preds = %9
  %13 = load i32, i32* getelementptr inbounds (%struct.S, %struct.S* @b, i32 0, i32 0), align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* getelementptr inbounds (%struct.S, %struct.S* @b, i32 0, i32 0), align 4
  br label %6, !llvm.loop !4

15:                                               ; preds = %6
  %16 = load i32**, i32*** @e, align 8
  store i32* @f, i32** %16, align 8
  %17 = load i32*, i32** @d, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store i32 0, i32* %1, align 4
  br label %25

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* @a, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @a, align 4
  br label %2, !llvm.loop !6

24:                                               ; preds = %2
  store i32 0, i32* %1, align 4
  br label %25

25:                                               ; preds = %24, %19
  %26 = load i32, i32* %1, align 4
  ret i32 %26
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
!6 = distinct !{!6, !5}
