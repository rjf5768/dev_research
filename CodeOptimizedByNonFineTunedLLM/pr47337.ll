; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr47337.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr47337.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"2\00", align 1
@w = dso_local global i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@a = internal global [256 x i32] zeroinitializer, align 16
@c = internal global i8 0, align 1
@d = internal global i32 0, align 4
@e = internal global i64 0, align 8
@f = internal global i32* @d, align 8
@b = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [8 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %7 = load volatile i8*, i8** @w, align 8
  %8 = call i32 @strcmp(i8* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  store i32 1, i32* %2, align 4
  br label %11

11:                                               ; preds = %10, %0
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %28, %11
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 256
  br i1 %14, label %15, label %31

15:                                               ; preds = %12
  store i32 8, i32* %6, align 4
  br label %16

16:                                               ; preds = %20, %15
  %17 = load i32, i32* %6, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %6, align 4
  br label %16, !llvm.loop !4

23:                                               ; preds = %16
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [256 x i32], [256 x i32]* @a, i64 0, i64 %26
  store i32 %24, i32* %27, align 4
  br label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %12, !llvm.loop !6

31:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %39, %31
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 8
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 %37
  store i32 0, i32* %38, align 4
  br label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %32, !llvm.loop !7

42:                                               ; preds = %32
  %43 = load i8, i8* @c, align 1
  %44 = load i8, i8* @c, align 1
  %45 = call signext i8 @bar(i8 noundef signext %43, i8 noundef signext %44)
  %46 = sext i8 %45 to i32
  store i32 %46, i32* @d, align 4
  %47 = load i8, i8* @c, align 1
  %48 = sext i8 %47 to i32
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %50 = load i32, i32* %49, align 16
  %51 = sext i32 %50 to i64
  %52 = call signext i16 @foo(i64 noundef %51, i64 noundef 10)
  %53 = sext i16 %52 to i32
  %54 = or i32 1, %53
  %55 = call i32 @baz(i32 noundef %48, i32 noundef %54)
  store i32 %55, i32* @d, align 4
  %56 = load i32, i32* @d, align 4
  %57 = sext i32 %56 to i64
  %58 = load i32, i32* %2, align 4
  call void @fnx(i64 noundef %57, i32 noundef %58)
  %59 = load i64, i64* @e, align 8
  %60 = load i32, i32* %2, align 4
  call void @fnx(i64 noundef %59, i32 noundef %60)
  %61 = load i32, i32* @d, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %42
  call void @abort() #4
  unreachable

64:                                               ; preds = %42
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal signext i8 @bar(i8 noundef signext %0, i8 noundef signext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %3, align 1
  %6 = sext i8 %5 to i32
  %7 = load i8, i8* %4, align 1
  %8 = sext i8 %7 to i32
  %9 = sub nsw i32 %6, %8
  %10 = trunc i32 %9 to i8
  ret i8 %10
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @baz(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = mul nsw i32 %7, 3
  %9 = trunc i32 %8 to i16
  %10 = sext i16 %9 to i32
  %11 = icmp ne i32 %6, %10
  %12 = zext i1 %11 to i32
  %13 = load i32*, i32** @f, align 8
  store i32 %12, i32* %13, align 4
  store i8 0, i8* @c, align 1
  br label %14

14:                                               ; preds = %31, %2
  %15 = load i8, i8* @c, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %34

18:                                               ; preds = %14
  br label %19

19:                                               ; preds = %29, %18
  %20 = load i32, i32* @d, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i64, i64* @e, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i64 1, i64* @e, align 8
  br label %28

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %3, align 4
  br label %36

28:                                               ; preds = %25
  br label %30

29:                                               ; preds = %19
  store i32 1, i32* @d, align 4
  br label %19

30:                                               ; preds = %28
  store i32* @d, i32** @f, align 8
  br label %31

31:                                               ; preds = %30
  %32 = load i8, i8* @c, align 1
  %33 = add i8 %32, 1
  store i8 %33, i8* @c, align 1
  br label %14, !llvm.loop !8

34:                                               ; preds = %14
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %26
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

; Function Attrs: noinline nounwind uwtable
define internal signext i16 @foo(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = sdiv i64 %5, %6
  %8 = trunc i64 %7 to i16
  ret i16 %8
}

; Function Attrs: noinline nounwind uwtable
define internal void @fnx(i64 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %34, label %7

7:                                                ; preds = %2
  %8 = load i32, i32* @b, align 4
  %9 = and i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [256 x i32], [256 x i32]* @a, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* @b, align 4
  %13 = load i32, i32* @b, align 4
  %14 = and i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [256 x i32], [256 x i32]* @a, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* @b, align 4
  %18 = load i32, i32* @b, align 4
  %19 = zext i32 %18 to i64
  %20 = load i64, i64* %3, align 8
  %21 = and i64 %20, 1
  %22 = xor i64 %19, %21
  %23 = and i64 %22, 1
  %24 = getelementptr inbounds [256 x i32], [256 x i32]* @a, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* @b, align 4
  %26 = load i32, i32* @b, align 4
  %27 = zext i32 %26 to i64
  %28 = load i64, i64* %3, align 8
  %29 = and i64 %28, 1
  %30 = xor i64 %27, %29
  %31 = and i64 %30, 1
  %32 = getelementptr inbounds [256 x i32], [256 x i32]* @a, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* @b, align 4
  br label %34

34:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
