; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr43438.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr43438.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_2 = internal global i8 1, align 1
@l_8 = internal global i32* @g_9, align 8
@g_9 = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  store i32 0, i32* %1, align 4
  store i8 -2, i8* %2, align 1
  %3 = load i8, i8* @g_2, align 1
  %4 = zext i8 %3 to i32
  %5 = load i32*, i32** @l_8, align 8
  %6 = load i32, i32* %5, align 4
  %7 = or i32 %6, %4
  store i32 %7, i32* %5, align 4
  %8 = load i32*, i32** @l_8, align 8
  %9 = load i32, i32* %8, align 4
  %10 = load i8, i8* %2, align 1
  %11 = zext i8 %10 to i32
  %12 = or i32 %11, %9
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %2, align 1
  %14 = load i8, i8* %2, align 1
  %15 = zext i8 %14 to i32
  call void @func_12(i32 noundef %15)
  %16 = load i32, i32* @g_9, align 4
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %0
  call void @abort() #2
  unreachable

19:                                               ; preds = %0
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @func_12(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  store i32* @g_9, i32** %3, align 8
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 0, %4
  %6 = zext i1 %5 to i32
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, %6
  store i32 %9, i32* %7, align 4
  ret void
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
