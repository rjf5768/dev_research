; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/2007-04-25-weak.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2007-04-25-weak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32 (...)*, align 8
  store i32 0, i32* %1, align 4
  store i32 (...)* @test_weak, i32 (...)** %2, align 8
  %3 = load i32 (...)*, i32 (...)** %2, align 8
  %4 = icmp ne i32 (...)* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32 (...)*, i32 (...)** %2, align 8
  %7 = call i32 (...) %6()
  store i32 1, i32* %1, align 4
  br label %9

8:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %8, %5
  %10 = load i32, i32* %1, align 4
  ret i32 %10
}

declare extern_weak dso_local i32 @test_weak(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
