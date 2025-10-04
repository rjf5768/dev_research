; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/2020-01-06-coverage-004.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2020-01-06-coverage-004.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.u = type { i16 }

@a = dso_local global i32 0, align 4
@x = dso_local global i64 0, align 8
@d = dso_local global %union.u zeroinitializer, align 2
@g = internal global i64** @f, align 8
@e = internal global i32* @b, align 8
@y = dso_local global i64 0, align 8
@h_call_argument_1 = dso_local global i32 0, align 4
@f = dso_local global i64* null, align 8
@b = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"a = %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"b = %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"d.c = %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"y = %li\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"h_call_argument_1 = %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"x = %li\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @h(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load i32, i32* @a, align 4
  %7 = sext i32 %6 to i64
  %8 = sdiv i64 2036854775807, %7
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = load i32, i32* %2, align 4
  %12 = icmp ne i32 %11, 0
  br label %13

13:                                               ; preds = %10, %5, %1
  %14 = phi i1 [ false, %5 ], [ false, %1 ], [ %12, %10 ]
  %15 = zext i1 %14 to i32
  %16 = sext i32 %15 to i64
  store i64 %16, i64* @x, align 8
  %17 = load i64, i64* @x, align 8
  ret i64 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @j() #0 {
  br label %1

1:                                                ; preds = %12, %0
  %2 = load i16, i16* getelementptr inbounds (%union.u, %union.u* @d, i32 0, i32 0), align 2
  %3 = icmp ne i16 %2, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %1
  %5 = load i64**, i64*** @g, align 8
  %6 = load i64*, i64** %5, align 8
  %7 = load i64, i64* %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = call i64 @h(i32 noundef %8)
  %10 = trunc i64 %9 to i32
  %11 = load i32*, i32** @e, align 8
  store i32 %10, i32* %11, align 4
  br label %12

12:                                               ; preds = %4
  %13 = load i16, i16* getelementptr inbounds (%union.u, %union.u* @d, i32 0, i32 0), align 2
  %14 = add i16 %13, 1
  store i16 %14, i16* getelementptr inbounds (%union.u, %union.u* @d, i32 0, i32 0), align 2
  br label %1, !llvm.loop !4

15:                                               ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 251, i32* %9, align 4
  store i32 -2113601536, i32* %8, align 4
  store i16 12027, i16* %7, align 2
  store i64 0, i64* %5, align 8
  store i64 70651297207679744, i64* %4, align 8
  store i32 -7, i32* %3, align 4
  store i64 2089739496336261183, i64* %2, align 8
  %10 = load i64, i64* %5, align 8
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %2, align 8
  store i64 %11, i64* @y, align 8
  %12 = load i32, i32* %3, align 4
  store i32 %12, i32* @h_call_argument_1, align 4
  %13 = load i64, i64* %4, align 8
  store i64 %13, i64* @x, align 8
  store i64* %6, i64** @f, align 8
  %14 = load i16, i16* %7, align 2
  store i16 %14, i16* getelementptr inbounds (%union.u, %union.u* @d, i32 0, i32 0), align 2
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* @b, align 4
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* @a, align 4
  call void @j()
  %17 = load i32, i32* @h_call_argument_1, align 4
  %18 = call i64 @h(i32 noundef %17)
  store i64 %18, i64* @y, align 8
  %19 = load i32, i32* @a, align 4
  %20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 noundef %19)
  %21 = load i32, i32* @b, align 4
  %22 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef %21)
  %23 = load i16, i16* getelementptr inbounds (%union.u, %union.u* @d, i32 0, i32 0), align 2
  %24 = zext i16 %23 to i32
  %25 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 noundef %24)
  %26 = load i64, i64* @y, align 8
  %27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i64 noundef %26)
  %28 = load i32, i32* @h_call_argument_1, align 4
  %29 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 noundef %28)
  %30 = load i64, i64* @x, align 8
  %31 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i64 noundef %30)
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
