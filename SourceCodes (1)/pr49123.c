; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr49123.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr49123.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i8, [3 x i8] }

@v = internal global i32 -1, align 4
@s = internal global %struct.S zeroinitializer, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @v, align 4
  %3 = icmp slt i32 %2, 0
  %4 = zext i1 %3 to i32
  %5 = trunc i32 %4 to i8
  %6 = load i8, i8* getelementptr inbounds (%struct.S, %struct.S* @s, i32 0, i32 0), align 4
  %7 = and i8 %5, 1
  %8 = and i8 %6, -2
  %9 = or i8 %8, %7
  store i8 %9, i8* getelementptr inbounds (%struct.S, %struct.S* @s, i32 0, i32 0), align 4
  %10 = shl i8 %7, 7
  %11 = ashr i8 %10, 7
  %12 = sext i8 %11 to i32
  %13 = load i8, i8* getelementptr inbounds (%struct.S, %struct.S* @s, i32 0, i32 0), align 4
  %14 = shl i8 %13, 7
  %15 = ashr i8 %14, 7
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %19

18:                                               ; preds = %0
  call void @abort() #2
  unreachable

19:                                               ; preds = %0
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
