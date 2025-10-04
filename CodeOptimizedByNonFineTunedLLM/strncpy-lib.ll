; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strncpy-lib.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strncpy-lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @strncpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %4, align 8
  store i8* %8, i8** %7, align 8
  br label %9

9:                                                ; preds = %25, %3
  %10 = load i8*, i8** %5, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %14, %9
  %18 = phi i1 [ false, %9 ], [ %16, %14 ]
  br i1 %18, label %19, label %28

19:                                               ; preds = %17
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %5, align 8
  %22 = load i8, i8* %20, align 1
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %4, align 8
  store i8 %22, i8* %23, align 1
  br label %25

25:                                               ; preds = %19
  %26 = load i64, i64* %6, align 8
  %27 = add i64 %26, -1
  store i64 %27, i64* %6, align 8
  br label %9, !llvm.loop !4

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %33, %28
  %30 = load i64, i64* %6, align 8
  %31 = add i64 %30, -1
  store i64 %31, i64* %6, align 8
  %32 = icmp ne i64 %30, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %4, align 8
  store i8 0, i8* %34, align 1
  br label %29, !llvm.loop !6

36:                                               ; preds = %29
  %37 = load i8*, i8** %7, align 8
  ret i8* %37
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
!6 = distinct !{!6, !5}
