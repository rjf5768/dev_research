; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/2020-01-06-coverage-010.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2020-01-06-coverage-010.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@v = dso_local global i32 0, align 4
@w = dso_local global i32 0, align 4
@z = dso_local global i32 0, align 4
@y = dso_local global i32 0, align 4
@p = dso_local global i8* null, align 8
@x = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4
@c = dso_local global i8 0, align 1
@f = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@a = dso_local global i32* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"b = %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"c = %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"d = %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"x = %i\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"e = %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"y = %i\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"z = %i\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"v = %i\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"f = %i\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"w = %i\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @k() #0 {
  %1 = call i32 @j()
  store i32 %1, i32* @v, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i8 0, i8* %10, align 1
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i8 5, i8* %6, align 1
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %2, align 4
  %16 = load i32, i32* %14, align 4
  store i32 %16, i32* %15, align 4
  %17 = load i8, i8* %6, align 1
  store i8 %17, i8* %7, align 1
  %18 = load i32, i32* %2, align 4
  store i32 %18, i32* @v, align 4
  %19 = load i32, i32* %3, align 4
  store i32 %19, i32* @w, align 4
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* @z, align 4
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* @y, align 4
  store i8* %7, i8** @p, align 8
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* @x, align 4
  %23 = load i32, i32* %9, align 4
  store volatile i32 %23, i32* @e, align 4
  %24 = load i8, i8* %10, align 1
  store i8 %24, i8* @c, align 1
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* @f, align 4
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* @d, align 4
  %27 = load i32, i32* %13, align 4
  store i32 %27, i32* @b, align 4
  store i32* %15, i32** @a, align 8
  call void @k()
  %28 = load i32, i32* @b, align 4
  %29 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 noundef %28)
  %30 = load i8, i8* @c, align 1
  %31 = sext i8 %30 to i32
  %32 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef %31)
  %33 = load i32, i32* @d, align 4
  %34 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 noundef %33)
  %35 = load i32, i32* @x, align 4
  %36 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 noundef %35)
  %37 = load volatile i32, i32* @e, align 4
  %38 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 noundef %37)
  %39 = load i32, i32* @y, align 4
  %40 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 noundef %39)
  %41 = load i32, i32* @z, align 4
  %42 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 noundef %41)
  %43 = load i32, i32* @v, align 4
  %44 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 noundef %43)
  %45 = load i32, i32* @f, align 4
  %46 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 noundef %45)
  %47 = load i32, i32* @w, align 4
  %48 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 noundef %47)
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @j() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  store i32 5, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  store i32 %4, i32* @x, align 4
  br label %5

5:                                                ; preds = %27, %0
  %6 = load i32, i32* @b, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %5
  store i32 0, i32* @f, align 4
  br label %9

9:                                                ; preds = %24, %8
  %10 = load i32, i32* @f, align 4
  %11 = icmp sle i32 %10, 9
  br i1 %11, label %12, label %27

12:                                               ; preds = %9
  store i32* %1, i32** %2, align 8
  store i8* @c, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  store i8* %13, i8** @p, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  %17 = icmp ne i32 %15, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i8*, i8** %3, align 8
  store i8 0, i8* %19, align 1
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi i1 [ false, %12 ], [ false, %18 ]
  %22 = zext i1 %21 to i32
  store i32 %22, i32* @y, align 4
  %23 = load volatile i32, i32* @e, align 4
  store i32 %23, i32* @z, align 4
  br label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @f, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @f, align 4
  br label %9, !llvm.loop !4

27:                                               ; preds = %9
  %28 = load i32*, i32** @a, align 8
  store i32 0, i32* %28, align 4
  br label %5, !llvm.loop !6

29:                                               ; preds = %5
  %30 = load i32, i32* @d, align 4
  store i32 %30, i32* @w, align 4
  %31 = load i32, i32* @w, align 4
  ret i32 %31
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
!6 = distinct !{!6, !5}
