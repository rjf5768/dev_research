; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr59388.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr59388.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i8, [3 x i8] }

@b = dso_local global %struct.S zeroinitializer, align 4
@a = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i8, i8* getelementptr inbounds (%struct.S, %struct.S* @b, i32 0, i32 0), align 4
  %3 = and i8 %2, 1
  %4 = zext i8 %3 to i32
  %5 = icmp slt i32 0, %4
  %6 = zext i1 %5 to i32
  %7 = load i8, i8* getelementptr inbounds (%struct.S, %struct.S* @b, i32 0, i32 0), align 4
  %8 = and i8 %7, 1
  %9 = zext i8 %8 to i32
  %10 = or i32 %6, %9
  store i32 %10, i32* @a, align 4
  %11 = load i32, i32* @a, align 4
  ret i32 %11
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
