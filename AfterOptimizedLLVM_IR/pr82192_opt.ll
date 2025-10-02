; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr82192.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr82192.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i16, [2 x i8] }

@a = dso_local global i64 -7647888931715538206, align 8
@b = dso_local global %struct.S zeroinitializer, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo() #0 {
  %1 = load i64, i64* @a, align 8
  %2 = trunc i64 %1 to i32
  %3 = load i64, i64* @a, align 8
  %4 = and i64 %3, 555582727
  %5 = or i64 7227976781724269559, %4
  %6 = sub i64 %5, 7227976781724531672
  %7 = trunc i64 %6 to i32
  %8 = lshr i32 %2, %7
  %9 = trunc i32 %8 to i16
  %10 = load i16, i16* getelementptr inbounds (%struct.S, %struct.S* @b, i32 0, i32 0), align 4
  %11 = and i16 %9, 8191
  %12 = and i16 %10, -8192
  %13 = or i16 %12, %11
  store i16 %13, i16* getelementptr inbounds (%struct.S, %struct.S* @b, i32 0, i32 0), align 4
  %14 = zext i16 %11 to i32
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @foo()
  %2 = load i16, i16* getelementptr inbounds (%struct.S, %struct.S* @b, i32 0, i32 0), align 4
  %3 = and i16 %2, 8191
  %4 = zext i16 %3 to i32
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  call void @abort() #2
  unreachable

7:                                                ; preds = %0
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
