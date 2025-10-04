; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/2003-07-08-BitOpsTest.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2003-07-08-BitOpsTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"%d %d %d %d %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = xor i32 %14, %15
  %17 = load i32, i32* %7, align 4
  %18 = xor i32 %16, %17
  %19 = load i32, i32* %8, align 4
  %20 = xor i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %8, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = xor i32 %38, %42
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = xor i32 %45, -1
  %47 = or i32 %44, %46
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = xor i32 %49, -1
  %51 = or i32 %48, %50
  %52 = xor i32 %47, %51
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %13, align 4
  %58 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 noundef %53, i32 noundef %54, i32 noundef %55, i32 noundef %56, i32 noundef %57)
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @test(i32 noundef 7, i32 noundef 8, i32 noundef -5, i32 noundef 5)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
