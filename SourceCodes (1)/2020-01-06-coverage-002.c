; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/2020-01-06-coverage-002.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2020-01-06-coverage-002.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global i32 0, align 4
@a = dso_local global i32 0, align 4
@d = dso_local global i16 0, align 2
@e = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4
@b = dso_local global i8 0, align 1
@y = dso_local global i64 0, align 8
@z = dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"a = %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"b = %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"c = %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"d = %i\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"x = %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"e = %i\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"z = %li\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"y = %li\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @f() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  store i32 %4, i32* @x, align 4
  br label %5

5:                                                ; preds = %9, %0
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 5
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  br label %9

9:                                                ; preds = %8
  %10 = load i32, i32* %2, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %2, align 4
  br label %5, !llvm.loop !4

12:                                               ; preds = %5
  br label %13

13:                                               ; preds = %21, %12
  %14 = load i32, i32* %2, align 4
  %15 = icmp slt i32 %14, 3
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %27, %16
  br label %18

18:                                               ; preds = %19, %17
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* @a, align 4
  br label %18

21:                                               ; No predecessors!
  %22 = load i32, i32* %2, align 4
  br label %13, !llvm.loop !6

23:                                               ; preds = %13
  br label %24

24:                                               ; preds = %41, %23
  %25 = load i32, i32* @a, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %17

28:                                               ; preds = %24
  %29 = load i16, i16* @d, align 2
  %30 = icmp ne i16 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i32, i32* @e, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i64 0, i64* %1, align 8
  br label %45

35:                                               ; preds = %31
  br label %43

36:                                               ; preds = %28
  %37 = load i32, i32* @c, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %41

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %40, %39
  %42 = load i8, i8* @b, align 1
  br label %24

43:                                               ; preds = %35
  store i64 0, i64* @y, align 8
  %44 = load i64, i64* @y, align 8
  store i64 %44, i64* %1, align 8
  br label %45

45:                                               ; preds = %43, %34
  %46 = load i64, i64* %1, align 8
  ret i64 %46
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %9, align 4
  store i32 -2, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i8 0, i8* %6, align 1
  store i16 10, i16* %5, align 2
  store i32 4, i32* %4, align 4
  store i64 0, i64* %3, align 8
  store i64 0, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  store i64 %10, i64* @z, align 8
  %11 = load i64, i64* %3, align 8
  store i64 %11, i64* @y, align 8
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* @x, align 4
  %13 = load i16, i16* %5, align 2
  store i16 %13, i16* @d, align 2
  %14 = load i8, i8* %6, align 1
  store i8 %14, i8* @b, align 1
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* @e, align 4
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* @c, align 4
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* @a, align 4
  %18 = call i64 @f()
  store i64 %18, i64* @z, align 8
  %19 = load i32, i32* @a, align 4
  %20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 noundef %19)
  %21 = load i8, i8* @b, align 1
  %22 = sext i8 %21 to i32
  %23 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef %22)
  %24 = load i32, i32* @c, align 4
  %25 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef %24)
  %26 = load i16, i16* @d, align 2
  %27 = sext i16 %26 to i32
  %28 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 noundef %27)
  %29 = load i32, i32* @x, align 4
  %30 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 noundef %29)
  %31 = load i32, i32* @e, align 4
  %32 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 noundef %31)
  %33 = load i64, i64* @z, align 8
  %34 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i64 noundef %33)
  %35 = load i64, i64* @y, align 8
  %36 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i64 noundef %35)
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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
