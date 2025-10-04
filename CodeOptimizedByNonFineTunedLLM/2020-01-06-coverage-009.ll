; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/2020-01-06-coverage-009.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2020-01-06-coverage-009.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local global i8 8, align 1
@e = dso_local constant i8* @d, align 8
@c = dso_local global i16 0, align 2
@g = dso_local global i16 0, align 2
@b = dso_local global i32 0, align 4
@a = dso_local global i32 0, align 4
@h = dso_local global i32 0, align 4
@f = dso_local global i32* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"a = %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"b = %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"c = %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"d = %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"g = %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"h = %u\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @i() #0 {
  br label %1

1:                                                ; preds = %34, %0
  %2 = load i16, i16* @c, align 2
  %3 = icmp ne i16 %2, 0
  br i1 %3, label %4, label %37

4:                                                ; preds = %1
  store i16 0, i16* @g, align 2
  br label %5

5:                                                ; preds = %30, %4
  %6 = load i16, i16* @g, align 2
  %7 = sext i16 %6 to i32
  %8 = icmp sle i32 %7, 8
  br i1 %8, label %9, label %33

9:                                                ; preds = %5
  %10 = load i32, i32* @b, align 4
  %11 = load i32, i32* @a, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @a, align 4
  %14 = xor i32 %12, %13
  %15 = load i32, i32* @b, align 4
  %16 = load i32, i32* @a, align 4
  %17 = and i32 %15, %16
  %18 = xor i32 %14, %17
  %19 = load i32, i32* @b, align 4
  %20 = xor i32 %18, %19
  %21 = load i32, i32* @b, align 4
  %22 = icmp ult i32 %20, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* @h, align 4
  %24 = load i32, i32* @h, align 4
  %25 = load i8, i8* @d, align 1
  %26 = zext i8 %25 to i32
  %27 = xor i32 %26, %24
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* @d, align 1
  %29 = load i32*, i32** @f, align 8
  store i32 0, i32* %29, align 4
  br label %30

30:                                               ; preds = %9
  %31 = load i16, i16* @g, align 2
  %32 = add i16 %31, 1
  store i16 %32, i16* @g, align 2
  br label %5, !llvm.loop !4

33:                                               ; preds = %5
  br label %34

34:                                               ; preds = %33
  %35 = load i16, i16* @c, align 2
  %36 = add i16 %35, -1
  store i16 %36, i16* @c, align 2
  br label %1, !llvm.loop !6

37:                                               ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %7, align 4
  store i32 -1, i32* %6, align 4
  store i16 -32767, i16* %5, align 2
  store i16 -32767, i16* %4, align 2
  store i32 -2130706432, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  store i32 %9, i32* %3, align 4
  store i32* %3, i32** @f, align 8
  %10 = load i16, i16* %4, align 2
  store i16 %10, i16* @g, align 2
  %11 = load i16, i16* %5, align 2
  store i16 %11, i16* @c, align 2
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* @h, align 4
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* @b, align 4
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* @a, align 4
  call void @i()
  %15 = load i32, i32* @a, align 4
  %16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 noundef %15)
  %17 = load i32, i32* @b, align 4
  %18 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef %17)
  %19 = load i16, i16* @c, align 2
  %20 = sext i16 %19 to i32
  %21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef %20)
  %22 = load i8, i8* @d, align 1
  %23 = zext i8 %22 to i32
  %24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 noundef %23)
  %25 = load i16, i16* @g, align 2
  %26 = sext i16 %25 to i32
  %27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 noundef %26)
  %28 = load i32, i32* @h, align 4
  %29 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 noundef %28)
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
