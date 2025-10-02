; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr31136.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr31136.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i16, [2 x i8] }

@s = dso_local global %struct.S zeroinitializer, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i16, i16* getelementptr inbounds (%struct.S, %struct.S* @s, i32 0, i32 0), align 4
  %3 = and i16 %2, -1009
  %4 = or i16 %3, 496
  store i16 %4, i16* getelementptr inbounds (%struct.S, %struct.S* @s, i32 0, i32 0), align 4
  %5 = load i16, i16* getelementptr inbounds (%struct.S, %struct.S* @s, i32 0, i32 0), align 4
  %6 = lshr i16 %5, 4
  %7 = and i16 %6, 63
  %8 = zext i16 %7 to i32
  %9 = trunc i32 %8 to i16
  %10 = load i16, i16* getelementptr inbounds (%struct.S, %struct.S* @s, i32 0, i32 0), align 4
  %11 = and i16 %9, 15
  %12 = and i16 %10, -16
  %13 = or i16 %12, %11
  store i16 %13, i16* getelementptr inbounds (%struct.S, %struct.S* @s, i32 0, i32 0), align 4
  %14 = zext i16 %11 to i32
  %15 = load i16, i16* getelementptr inbounds (%struct.S, %struct.S* @s, i32 0, i32 0), align 4
  %16 = and i16 %15, 15
  %17 = zext i16 %16 to i32
  %18 = trunc i32 %17 to i16
  %19 = load i16, i16* getelementptr inbounds (%struct.S, %struct.S* @s, i32 0, i32 0), align 4
  %20 = and i16 %18, 63
  %21 = shl i16 %20, 4
  %22 = and i16 %19, -1009
  %23 = or i16 %22, %21
  store i16 %23, i16* getelementptr inbounds (%struct.S, %struct.S* @s, i32 0, i32 0), align 4
  %24 = zext i16 %20 to i32
  %25 = load i16, i16* getelementptr inbounds (%struct.S, %struct.S* @s, i32 0, i32 0), align 4
  %26 = lshr i16 %25, 4
  %27 = and i16 %26, 63
  %28 = zext i16 %27 to i32
  %29 = icmp ne i32 %28, 15
  br i1 %29, label %30, label %31

30:                                               ; preds = %0
  call void @abort() #2
  unreachable

31:                                               ; preds = %0
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
