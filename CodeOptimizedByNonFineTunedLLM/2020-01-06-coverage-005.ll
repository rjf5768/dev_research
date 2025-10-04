; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/2020-01-06-coverage-005.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2020-01-06-coverage-005.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global i64 0, align 8
@r = dso_local global i64* null, align 8
@s = dso_local global i64* null, align 8
@p = dso_local global i64* null, align 8
@e = dso_local global i16 0, align 2
@t = dso_local global i16* null, align 8
@q = dso_local global i16* null, align 8
@c = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@a = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"a = %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"b = %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"c = %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"d = %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"e = %i\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @h() #0 {
  %1 = alloca i64*, align 8
  store i64* @b, i64** %1, align 8
  %2 = load i64*, i64** %1, align 8
  store i64* %2, i64** @r, align 8
  %3 = load i64*, i64** %1, align 8
  store i64 6, i64* %3, align 8
  call void @g()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @g() #0 {
  %1 = alloca i64*, align 8
  %2 = alloca i16*, align 8
  br label %3

3:                                                ; preds = %22, %0
  store i64* @b, i64** %1, align 8
  %4 = load i64*, i64** %1, align 8
  store i64* %4, i64** @s, align 8
  %5 = load i64*, i64** %1, align 8
  store i64* %5, i64** @p, align 8
  store i16* @e, i16** %2, align 8
  %6 = load i16*, i16** %2, align 8
  store i16* %6, i16** @t, align 8
  %7 = load i16*, i16** %2, align 8
  store i16* %7, i16** @q, align 8
  %8 = load i16*, i16** %2, align 8
  %9 = load i16, i16* %8, align 2
  %10 = add i16 %9, -1
  store i16 %10, i16* %8, align 2
  %11 = load i32, i32* @c, align 4
  %12 = zext i32 %11 to i64
  %13 = load i64*, i64** %1, align 8
  %14 = load i64, i64* %13, align 8
  %15 = and i64 %14, %12
  store i64 %15, i64* %13, align 8
  br label %16

16:                                               ; preds = %24, %3
  %17 = load i32, i32* @d, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load i16, i16* @e, align 2
  %21 = icmp ne i16 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %3

23:                                               ; preds = %19
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* @d, align 4
  store i32 %25, i32* @a, align 4
  br label %16, !llvm.loop !4

26:                                               ; preds = %16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i16, align 2
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 16777101, i32* %16, align 4
  store i32 -6, i32* %15, align 4
  store i32 0, i32* %14, align 4
  store i64 256, i64* %13, align 8
  store i16 -7, i16* %12, align 2
  store i64 -9223372032559808512, i64* %10, align 8
  store i16 0, i16* %8, align 2
  store i64 -72318388763361280, i64* %6, align 8
  store i64 0, i64* %4, align 8
  store i16 0, i16* %2, align 2
  %17 = load i64, i64* %10, align 8
  store i64 %17, i64* %11, align 8
  %18 = load i16, i16* %8, align 2
  store i16 %18, i16* %9, align 2
  %19 = load i64, i64* %6, align 8
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %4, align 8
  store i64 %20, i64* %5, align 8
  %21 = load i16, i16* %2, align 2
  store i16 %21, i16* %3, align 2
  store i16* %3, i16** @t, align 8
  store i64* %5, i64** @s, align 8
  store i64* %7, i64** @r, align 8
  store i16* %9, i16** @q, align 8
  store i64* %11, i64** @p, align 8
  %22 = load i16, i16* %12, align 2
  store i16 %22, i16* @e, align 2
  %23 = load i64, i64* %13, align 8
  store i64 %23, i64* @b, align 8
  %24 = load i32, i32* %14, align 4
  store i32 %24, i32* @d, align 4
  %25 = load i32, i32* %15, align 4
  store i32 %25, i32* @c, align 4
  %26 = load i32, i32* %16, align 4
  store i32 %26, i32* @a, align 4
  call void @h()
  call void @g()
  %27 = load i32, i32* @a, align 4
  %28 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 noundef %27)
  %29 = load i64, i64* @b, align 8
  %30 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 noundef %29)
  %31 = load i32, i32* @c, align 4
  %32 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef %31)
  %33 = load i32, i32* @d, align 4
  %34 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 noundef %33)
  %35 = load i16, i16* @e, align 2
  %36 = sext i16 %35 to i32
  %37 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 noundef %36)
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
