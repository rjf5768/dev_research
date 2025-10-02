; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/2002-05-03-NotTest.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2002-05-03-NotTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"Bitwise Not: %d %d %d %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Boolean Not: %d %d %d %d %d %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @testBitWiseNot(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %6, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %7, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %8, align 4
  %16 = xor i32 %15, -1
  %17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16)
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @testBooleanNot(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %4
  %12 = load i32, i32* %6, align 4
  %13 = icmp sgt i32 %12, 0
  br label %14

14:                                               ; preds = %11, %4
  %15 = phi i1 [ false, %4 ], [ %13, %11 ]
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %5, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* %7, align 4
  %22 = icmp sgt i32 %21, 0
  br label %23

23:                                               ; preds = %20, %14
  %24 = phi i1 [ false, %14 ], [ %22, %20 ]
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %5, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* %8, align 4
  %31 = icmp sgt i32 %30, 0
  br label %32

32:                                               ; preds = %29, %23
  %33 = phi i1 [ false, %23 ], [ %31, %29 ]
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* %6, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* %7, align 4
  %40 = icmp sgt i32 %39, 0
  br label %41

41:                                               ; preds = %38, %32
  %42 = phi i1 [ false, %32 ], [ %40, %38 ]
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %6, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* %8, align 4
  %49 = icmp sgt i32 %48, 0
  br label %50

50:                                               ; preds = %47, %41
  %51 = phi i1 [ false, %41 ], [ %49, %47 ]
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = load i32, i32* %7, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* %8, align 4
  %58 = icmp sgt i32 %57, 0
  br label %59

59:                                               ; preds = %56, %50
  %60 = phi i1 [ false, %50 ], [ %58, %56 ]
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 noundef %17, i32 noundef %26, i32 noundef %35, i32 noundef %44, i32 noundef %53, i32 noundef %62)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @testBitWiseNot(i32 noundef 1, i32 noundef 2, i32 noundef -3, i32 noundef 5)
  call void @testBooleanNot(i32 noundef 1, i32 noundef 2, i32 noundef -3, i32 noundef 5)
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
