; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/loop-13.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/loop-13.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale(i64* noundef %0, i64* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i64*, i64** %4, align 8
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 1
  br i1 %13, label %14, label %54

14:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %48, %14
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %53

19:                                               ; preds = %15
  %20 = load i64*, i64** %4, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load i64*, i64** %5, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = mul nsw i64 %21, %26
  store i64 %27, i64* %9, align 8
  %28 = load i64*, i64** %4, align 8
  %29 = load i64, i64* %28, align 8
  %30 = load i64*, i64** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %30, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = mul nsw i64 %29, %35
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64*, i64** %5, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  store i64 %37, i64* %41, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64*, i64** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %43, i64 %46
  store i64 %42, i64* %47, align 8
  br label %48

48:                                               ; preds = %19
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 2
  store i32 %52, i32* %8, align 4
  br label %15, !llvm.loop !4

53:                                               ; preds = %15
  br label %54

54:                                               ; preds = %53, %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [10 x i64], align 16
  %4 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i64 2, i64* %4, align 8
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %14, %0
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 10
  br i1 %7, label %8, label %17

8:                                                ; preds = %5
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [10 x i64], [10 x i64]* %3, i64 0, i64 %12
  store i64 %10, i64* %13, align 8
  br label %14

14:                                               ; preds = %8
  %15 = load i32, i32* %2, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %2, align 4
  br label %5, !llvm.loop !6

17:                                               ; preds = %5
  %18 = getelementptr inbounds [10 x i64], [10 x i64]* %3, i64 0, i64 0
  call void @scale(i64* noundef %4, i64* noundef %18, i32 noundef 5)
  %19 = getelementptr inbounds [10 x i64], [10 x i64]* %3, i64 0, i64 9
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 18
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  call void @abort() #2
  unreachable

23:                                               ; preds = %17
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

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
