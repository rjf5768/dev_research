; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/vrp-7.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/vrp-7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.T = type { i8, [3 x i8] }

@t = dso_local global %struct.T zeroinitializer, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, 16
  %5 = icmp ne i32 %4, 0
  %6 = zext i1 %5 to i64
  %7 = select i1 %5, i32 1, i32 0
  %8 = trunc i32 %7 to i8
  %9 = load i8, i8* getelementptr inbounds (%struct.T, %struct.T* @t, i32 0, i32 0), align 4
  %10 = and i8 %8, 1
  %11 = and i8 %9, -2
  %12 = or i8 %11, %10
  store i8 %12, i8* getelementptr inbounds (%struct.T, %struct.T* @t, i32 0, i32 0), align 4
  %13 = shl i8 %10, 7
  %14 = ashr i8 %13, 7
  %15 = sext i8 %14 to i32
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @foo(i32 noundef 16)
  %2 = load i8, i8* getelementptr inbounds (%struct.T, %struct.T* @t, i32 0, i32 0), align 4
  %3 = shl i8 %2, 7
  %4 = ashr i8 %3, 7
  %5 = sext i8 %4 to i32
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  call void @abort() #2
  unreachable

8:                                                ; preds = %0
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
