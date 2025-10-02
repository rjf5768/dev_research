; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/memchr-lib.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/memchr-lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memchr(i8* noundef %0, i32 noundef %1, i64 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = trunc i32 %10 to i8
  store i8 %11, i8* %8, align 1
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %9, align 8
  br label %13

13:                                               ; preds = %26, %3
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* %8, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i8*, i8** %9, align 8
  store i8* %24, i8** %4, align 8
  br label %32

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25
  %27 = load i8*, i8** %9, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %9, align 8
  %29 = load i64, i64* %7, align 8
  %30 = add i64 %29, -1
  store i64 %30, i64* %7, align 8
  br label %13, !llvm.loop !4

31:                                               ; preds = %13
  store i8* null, i8** %4, align 8
  br label %32

32:                                               ; preds = %31, %23
  %33 = load i8*, i8** %4, align 8
  ret i8* %33
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
