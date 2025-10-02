; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr20527-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr20527-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global [4 x i64] [i64 1, i64 5, i64 11, i64 23], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @f(i64* noundef %0, i64* noundef %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %10, align 8
  %11 = load i64, i64* %7, align 8
  store i64 %11, i64* %9, align 8
  br label %12

12:                                               ; preds = %34, %4
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp sle i64 %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %12
  %17 = load i64*, i64** %6, align 8
  %18 = load i64, i64* %9, align 8
  %19 = add nsw i64 %18, 1
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = load i64*, i64** %6, align 8
  %23 = load i64, i64* %9, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %21, %25
  %27 = load i64, i64* %10, align 8
  %28 = add nsw i64 %27, %26
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = sub nsw i64 %29, 1
  %31 = load i64*, i64** %5, align 8
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  store i64 %30, i64* %33, align 8
  br label %34

34:                                               ; preds = %16
  %35 = load i64, i64* %9, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %9, align 8
  br label %12, !llvm.loop !4

37:                                               ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [3 x i64], align 16
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds [3 x i64], [3 x i64]* %2, i64 0, i64 0
  call void @f(i64* noundef %3, i64* noundef getelementptr inbounds ([4 x i64], [4 x i64]* @b, i64 0, i64 0), i64 noundef 0, i64 noundef 2)
  %4 = getelementptr inbounds [3 x i64], [3 x i64]* %2, i64 0, i64 0
  %5 = load i64, i64* %4, align 16
  %6 = icmp ne i64 %5, 3
  br i1 %6, label %15, label %7

7:                                                ; preds = %0
  %8 = getelementptr inbounds [3 x i64], [3 x i64]* %2, i64 0, i64 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 9
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds [3 x i64], [3 x i64]* %2, i64 0, i64 2
  %13 = load i64, i64* %12, align 16
  %14 = icmp ne i64 %13, 21
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %7, %0
  call void @abort() #2
  unreachable

16:                                               ; preds = %11
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

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
