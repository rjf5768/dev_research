; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr56250.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr56250.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 2, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = udiv i32 %4, 2
  %6 = sub i32 0, %5
  %7 = udiv i32 %6, 2
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %2, align 4
  %9 = udiv i32 -1, %8
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  call void @abort() #2
  unreachable

13:                                               ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
