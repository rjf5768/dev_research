; ModuleID = './pr61682.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr61682.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 0, align 4
@c = internal global i32* @b, align 8
@b = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %9, %0
  %storemerge = phi i32 [ 0, %0 ], [ %11, %9 ]
  store i32 %storemerge, i32* @a, align 4
  %2 = icmp slt i32 %storemerge, 12
  br i1 %2, label %3, label %12

3:                                                ; preds = %1
  %4 = load i32, i32* @a, align 4
  %5 = sdiv i32 %4, 9
  %6 = load i32*, i32** @c, align 8
  %7 = load i32, i32* %6, align 4
  %8 = or i32 %7, %5
  store i32 %8, i32* %6, align 4
  br label %9

9:                                                ; preds = %3
  %10 = load i32, i32* @a, align 4
  %11 = add nsw i32 %10, 1
  br label %1, !llvm.loop !4

12:                                               ; preds = %1
  %13 = load i32, i32* @b, align 4
  %.not = icmp eq i32 %13, 1
  br i1 %.not, label %15, label %14

14:                                               ; preds = %12
  call void @abort() #2
  unreachable

15:                                               ; preds = %12
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
