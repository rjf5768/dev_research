; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/2020-01-06-coverage-001.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2020-01-06-coverage-001.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global i8 7, align 1
@c = internal global i32** @a, align 8
@p = dso_local global i8* null, align 8
@a = dso_local global i32* null, align 8
@x = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"b = %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"x = %i\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @d() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32**, i32*** @c, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* %3, align 4
  %5 = and i32 %4, 8
  store i32 %5, i32* %3, align 4
  store i8* @b, i8** %1, align 8
  %6 = load i8*, i8** %1, align 8
  store i8* %6, i8** @p, align 8
  %7 = load i8*, i8** %1, align 8
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i32
  %10 = and i32 %9, 1
  %11 = trunc i32 %10 to i8
  store i8 %11, i8* %7, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %0
  %15 = load i32*, i32** @a, align 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i8*, i8** %1, align 8
  store i8 0, i8* %19, align 1
  br label %20

20:                                               ; preds = %18, %14, %0
  %21 = phi i1 [ false, %14 ], [ false, %0 ], [ false, %18 ]
  %22 = zext i1 %21 to i32
  store i32 %22, i32* @x, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 1149798655, i32* %5, align 4
  store i8 -125, i8* %3, align 1
  store i32 -67108864, i32* %2, align 4
  %7 = load i32, i32* %5, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i8, i8* %3, align 1
  store i8 %8, i8* %4, align 1
  %9 = load i32, i32* %2, align 4
  store i32 %9, i32* @x, align 4
  store i8* %4, i8** @p, align 8
  store i32* %6, i32** @a, align 8
  call void @d()
  %10 = load i8, i8* @b, align 1
  %11 = zext i8 %10 to i32
  %12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 noundef %11)
  %13 = load i32, i32* @x, align 4
  %14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef %13)
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
