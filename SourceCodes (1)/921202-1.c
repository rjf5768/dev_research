; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/921202-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/921202-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [2056 x i64], align 16
  %3 = alloca [2056 x i64], align 16
  %4 = alloca [2055 x i64], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %56, %0
  store i64 2055, i64* %8, align 8
  %10 = getelementptr inbounds [2055 x i64], [2055 x i64]* %4, i64 0, i64 0
  %11 = load i64, i64* %8, align 8
  %12 = call i32 @mpn_random2()
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %17, %9
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %16
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %7, align 4
  br label %13, !llvm.loop !4

20:                                               ; preds = %13
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds [2056 x i64], [2056 x i64]* %3, i64 0, i64 %21
  store i64 305419896, i64* %22, align 8
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %31, %20
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = getelementptr inbounds [2056 x i64], [2056 x i64]* %3, i64 0, i64 0
  %28 = getelementptr inbounds [2055 x i64], [2055 x i64]* %4, i64 0, i64 0
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @mpn_mul_1()
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %23, !llvm.loop !6

34:                                               ; preds = %23
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %50, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds [2056 x i64], [2056 x i64]* %2, i64 0, i64 0
  %40 = getelementptr inbounds [2056 x i64], [2056 x i64]* %3, i64 0, i64 0
  %41 = load i64, i64* %8, align 8
  %42 = add nsw i64 %41, 1
  %43 = call i32 @mpn_cmp()
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %38
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds [2056 x i64], [2056 x i64]* %2, i64 0, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 305419896
  br i1 %49, label %50, label %56

50:                                               ; preds = %45, %38, %34
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @foo()
  %53 = getelementptr inbounds [2056 x i64], [2056 x i64]* %3, i64 0, i64 0
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @mpn_print()
  br label %56

56:                                               ; preds = %50, %45
  %57 = call i32 @exxit()
  br label %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* %1, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mpn_mul_1() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* %1, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mpn_print() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* %1, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mpn_random2() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* %1, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mpn_cmp() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* %1, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @exxit() #0 {
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
