; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/SignlessTypes/div.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/SignlessTypes/div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"uDivTest1(42,3) = %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"uDivTest2(42,3) = %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"uDivTest3(42,3) = %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"uDivTest4(42,3) = %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"uDivTest5(42,3) = %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"uDivTest6(42,3) = %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"uDivTest7(42,3) = %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"uDivTest8(42,3) = %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"uDivTest9(42,3) = %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"uDivTest10(42,3) = %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"uDivTest11(42,3) = %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"uDivTest12(42,3) = %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"uDivTest13(42,3) = %u\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"uDivTest14(42,3) = %u\0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"uDivTest15(42,3) = %u\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"uDivTest16(42,3) = %u\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"uDivTest17(42,3) = %u\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @uDivTest1(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = udiv i32 0, %5
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @uDivTest2(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = udiv i32 %5, 1
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @uDivTest3(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = udiv i32 %5, -1
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @uDivTest4(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %11

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  br label %11

11:                                               ; preds = %9, %8
  %12 = phi i32 [ 0, %8 ], [ %10, %9 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @uDivTest5(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %11

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  br label %11

11:                                               ; preds = %9, %8
  %12 = phi i32 [ 0, %8 ], [ %10, %9 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @uDivTest6(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  br label %11

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %10, %8
  %12 = phi i32 [ %9, %8 ], [ 0, %10 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @uDivTest7(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  br label %11

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %10, %8
  %12 = phi i32 [ %9, %8 ], [ 0, %10 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @uDivTest8(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = udiv i32 %5, 2
  %7 = udiv i32 %6, 4
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @uDivTest9(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = udiv i32 %5, 2
  %7 = udiv i32 %6, 4
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @uDivTest10(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = udiv i32 %5, 4
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @uDivTest11(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = udiv i32 %5, 4
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @uDivTest12(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = shl i32 4, %6
  %8 = udiv i32 %5, %7
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @uDivTest13(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = shl i32 4, %6
  %8 = udiv i32 %5, %7
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @uDivTest14(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %6, %7
  %9 = zext i1 %8 to i32
  %10 = udiv i32 %5, 4
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @uDivTest15(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %6, %7
  %9 = zext i1 %8 to i32
  %10 = udiv i32 %5, 4
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @uDivTest16(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = sub i32 0, %5
  %7 = udiv i32 %6, 2
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @uDivTest17(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = sub i32 0, %5
  %7 = udiv i32 %6, 2
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i32 @uDivTest1(i32 noundef 42, i32 noundef 3)
  %7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef %6)
  %8 = call i32 @uDivTest2(i32 noundef 42, i32 noundef 3)
  %9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 noundef %8)
  %10 = call i32 @uDivTest3(i32 noundef 42, i32 noundef 3)
  %11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 noundef %10)
  %12 = call i32 @uDivTest4(i32 noundef 42, i32 noundef 3)
  %13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 noundef %12)
  %14 = call i32 @uDivTest5(i32 noundef 42, i32 noundef 3)
  %15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 noundef %14)
  %16 = call i32 @uDivTest6(i32 noundef 42, i32 noundef 3)
  %17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 noundef %16)
  %18 = call i32 @uDivTest7(i32 noundef 42, i32 noundef 3)
  %19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 noundef %18)
  %20 = call i32 @uDivTest8(i32 noundef 42, i32 noundef 3)
  %21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 noundef %20)
  %22 = call i32 @uDivTest9(i32 noundef 42, i32 noundef 3)
  %23 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 noundef %22)
  %24 = call i32 @uDivTest10(i32 noundef 42, i32 noundef 3)
  %25 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 noundef %24)
  %26 = call i32 @uDivTest11(i32 noundef 42, i32 noundef 3)
  %27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 noundef %26)
  %28 = call i32 @uDivTest12(i32 noundef 42, i32 noundef 3)
  %29 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 noundef %28)
  %30 = call i32 @uDivTest13(i32 noundef 42, i32 noundef 3)
  %31 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 noundef %30)
  %32 = call i32 @uDivTest14(i32 noundef 42, i32 noundef 3)
  %33 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i32 noundef %32)
  %34 = call i32 @uDivTest15(i32 noundef 42, i32 noundef 3)
  %35 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 noundef %34)
  %36 = call i32 @uDivTest16(i32 noundef 42, i32 noundef 3)
  %37 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 noundef %36)
  %38 = call i32 @uDivTest17(i32 noundef 42, i32 noundef 3)
  %39 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef %38)
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
