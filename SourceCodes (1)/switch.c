; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/switch.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zero = dso_local constant i32 256, align 4
@seven = internal global i32 15, align 4
@.str = private unnamed_addr constant [7 x i8] c"error\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"error: i=%hhd, c=%hhd\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %29 [
    i32 0, label %5
    i32 1, label %8
    i32 2, label %11
    i32 3, label %15
    i32 4, label %18
    i32 5, label %21
    i32 6, label %24
    i32 7, label %27
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @seven, align 4
  %7 = lshr i32 %6, 3
  store i32 %7, i32* %2, align 4
  br label %31

8:                                                ; preds = %1
  %9 = load i32, i32* @seven, align 4
  %10 = lshr i32 %9, 2
  store i32 %10, i32* %2, align 4
  br label %31

11:                                               ; preds = %1
  %12 = load i32, i32* @seven, align 4
  %13 = lshr i32 %12, 1
  %14 = and i32 %13, 2
  store i32 %14, i32* %2, align 4
  br label %31

15:                                               ; preds = %1
  %16 = load i32, i32* @seven, align 4
  %17 = lshr i32 %16, 1
  store i32 %17, i32* %2, align 4
  br label %31

18:                                               ; preds = %1
  %19 = load i32, i32* @seven, align 4
  %20 = and i32 %19, 4
  store i32 %20, i32* %2, align 4
  br label %31

21:                                               ; preds = %1
  %22 = load i32, i32* @seven, align 4
  %23 = and i32 %22, 5
  store i32 %23, i32* %2, align 4
  br label %31

24:                                               ; preds = %1
  %25 = load i32, i32* @seven, align 4
  %26 = and i32 %25, 6
  store i32 %26, i32* %2, align 4
  br label %31

27:                                               ; preds = %1
  %28 = load i32, i32* @seven, align 4
  store i32 %28, i32* %2, align 4
  br label %31

29:                                               ; preds = %1
  %30 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %27, %24, %21, %18, %15, %11, %8, %5
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  store i32 0, i32* %1, align 4
  store i8 0, i8* %3, align 1
  br label %4

4:                                                ; preds = %25, %0
  %5 = load i8, i8* %3, align 1
  %6 = zext i8 %5 to i32
  %7 = icmp slt i32 %6, 8
  br i1 %7, label %8, label %28

8:                                                ; preds = %4
  %9 = load i8, i8* %3, align 1
  %10 = zext i8 %9 to i32
  %11 = call i32 @test(i32 noundef %10)
  %12 = trunc i32 %11 to i8
  store i8 %12, i8* %2, align 1
  %13 = load i8, i8* %2, align 1
  %14 = zext i8 %13 to i32
  %15 = load i8, i8* %3, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp ne i32 %14, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %8
  %19 = load i8, i8* %3, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* %2, align 1
  %22 = zext i8 %21 to i32
  %23 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef %20, i32 noundef %22)
  br label %24

24:                                               ; preds = %18, %8
  br label %25

25:                                               ; preds = %24
  %26 = load i8, i8* %3, align 1
  %27 = add i8 %26, 1
  store i8 %27, i8* %3, align 1
  br label %4, !llvm.loop !4

28:                                               ; preds = %4
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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
