; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr78436.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr78436.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32, [4 x i8] }

@s = dso_local global %struct.S zeroinitializer, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.S, %struct.S* @s, i32 0, i32 0), align 8
  %2 = and i32 %1, 16777215
  %3 = or i32 %2, 0
  store i32 %3, i32* getelementptr inbounds (%struct.S, %struct.S* @s, i32 0, i32 0), align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.S, %struct.S* @s, i32 0, i32 0), align 8
  %5 = and i32 %4, -16777216
  %6 = or i32 %5, 15584051
  store i32 %6, i32* getelementptr inbounds (%struct.S, %struct.S* @s, i32 0, i32 0), align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @foo()
  %2 = load i32, i32* getelementptr inbounds (%struct.S, %struct.S* @s, i32 0, i32 0), align 8
  %3 = ashr i32 %2, 24
  %4 = trunc i32 %3 to i8
  %5 = sext i8 %4 to i32
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  call void @abort() #2
  unreachable

8:                                                ; preds = %0
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
