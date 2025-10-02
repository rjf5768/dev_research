; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/array.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"i=%u: %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @my_test() #0 {
  %1 = alloca [8 x i32], align 16
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 0, i32* %2, align 4
  store i32 0, i32* %2, align 4
  br label %6

6:                                                ; preds = %13, %0
  %7 = load i32, i32* %2, align 4
  %8 = icmp ult i32 %7, 8
  %9 = zext i1 %8 to i32
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  br label %30

13:                                               ; preds = %6
  %14 = load i32, i32* %2, align 4
  %15 = add i32 %14, 1
  %16 = sub i32 0, %15
  %17 = load i32, i32* %2, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 %18
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* %2, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %3, align 8
  %25 = load i32, i32* %2, align 4
  %26 = load i64, i64* %3, align 8
  %27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef %25, i64 noundef %26)
  %28 = load i32, i32* %2, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %2, align 4
  br label %6

30:                                               ; preds = %12
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 7
  store i32* %31, i32** %5, align 8
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 0
  %35 = load i32, i32* %34, align 16
  %36 = srem i32 %33, %35
  %37 = load i32*, i32** %5, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %3, align 8
  %41 = load i64, i64* %3, align 8
  %42 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 noundef %41)
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @my_test()
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
