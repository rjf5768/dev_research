; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/sign2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/sign2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"rand() = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"ux = %u, x = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"uz = %u, z = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"uy = %u, y = %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = call i32 (...) @rand()
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 noundef %17)
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef %19, i32 noundef %20)
  %22 = load i32, i32* %8, align 4
  %23 = sdiv i32 %22, 4321
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = udiv i32 %24, 4321
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 noundef %26, i32 noundef %27)
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 8388608
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  %32 = add i32 %31, 8388608
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 noundef %33, i32 noundef %34)
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = sdiv i32 %36, %37
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %11, align 4
  %41 = udiv i32 %39, %40
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef %42, i32 noundef %43)
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = sdiv i32 %45, %46
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %12, align 4
  %50 = udiv i32 %48, %49
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 noundef %51, i32 noundef %52)
  ret i32 0
}

declare dso_local i32 @rand(...) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
