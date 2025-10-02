; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr38422.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr38422.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32 }

@s = dso_local global %struct.S zeroinitializer, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.S, %struct.S* @s, i32 0, i32 0), align 4
  %2 = shl i32 %1, 2
  %3 = ashr i32 %2, 2
  %4 = mul nsw i32 %3, 2
  %5 = load i32, i32* getelementptr inbounds (%struct.S, %struct.S* @s, i32 0, i32 0), align 4
  %6 = and i32 %4, 1073741823
  %7 = and i32 %5, -1073741824
  %8 = or i32 %7, %6
  store i32 %8, i32* getelementptr inbounds (%struct.S, %struct.S* @s, i32 0, i32 0), align 4
  %9 = shl i32 %6, 2
  %10 = ashr i32 %9, 2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.S, %struct.S* @s, i32 0, i32 0), align 4
  %3 = and i32 %2, -1073741824
  %4 = or i32 %3, 24
  store i32 %4, i32* getelementptr inbounds (%struct.S, %struct.S* @s, i32 0, i32 0), align 4
  call void @foo()
  %5 = load i32, i32* getelementptr inbounds (%struct.S, %struct.S* @s, i32 0, i32 0), align 4
  %6 = shl i32 %5, 2
  %7 = ashr i32 %6, 2
  %8 = icmp ne i32 %7, 48
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  call void @abort() #2
  unreachable

10:                                               ; preds = %0
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
