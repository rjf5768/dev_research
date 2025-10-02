; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/static.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/static.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test.x = internal global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"error\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test(i32 noundef %0, i32* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* @test.x, align 4
  %6 = load i32*, i32** %4, align 8
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* %3, align 4
  store i32 %7, i32* @test.x, align 4
  %8 = load i32, i32* @test.x, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = call i32 @test(i32 noundef 1, i32* noundef %3)
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %7, %0
  %11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %7
  %13 = call i32 @test(i32 noundef -1, i32* noundef %3)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 1
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %2, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %16, %12
  %20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %16
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
