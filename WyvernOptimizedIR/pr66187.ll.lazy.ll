; ModuleID = './pr66187.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr66187.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 1, align 4
@e = dso_local global i32 -1, align 4
@f = dso_local global i16 0, align 2
@b = dso_local global i16 0, align 2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = load i32, i32* @e, align 4
  %2 = trunc i32 %1 to i16
  store i16 %2, i16* @f, align 2
  %3 = load i16, i16* @b, align 2
  %4 = icmp slt i16 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %12

6:                                                ; preds = %0
  %7 = load i16, i16* @f, align 2
  %8 = sext i16 %7 to i32
  %9 = load i16, i16* @b, align 2
  %10 = sext i16 %9 to i32
  %11 = add nsw i32 %8, %10
  %phi.cmp = icmp slt i32 %11, 0
  br label %12

12:                                               ; preds = %6, %5
  %13 = phi i1 [ false, %5 ], [ %phi.cmp, %6 ]
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  store i32 0, i32* @a, align 4
  br label %15

15:                                               ; preds = %14, %12
  %16 = load i32, i32* @a, align 4
  %.not = icmp eq i32 %16, 0
  br i1 %.not, label %18, label %17

17:                                               ; preds = %15
  call void @abort() #2
  unreachable

18:                                               ; preds = %15
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
