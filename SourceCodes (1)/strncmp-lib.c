; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strncmp-lib.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strncmp-lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @strncmp(i8* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %9, align 8
  br label %14

14:                                               ; preds = %39, %3
  %15 = load i64, i64* %7, align 8
  %16 = icmp ugt i64 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %14
  %18 = load i8*, i8** %8, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %8, align 8
  %20 = load i8, i8* %18, align 1
  store i8 %20, i8* %10, align 1
  %21 = load i8*, i8** %9, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %9, align 8
  %23 = load i8, i8* %21, align 1
  store i8 %23, i8* %11, align 1
  %24 = load i8, i8* %10, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %17
  %28 = load i8, i8* %10, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, i8* %11, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %27, %17
  %34 = load i8, i8* %10, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* %11, align 1
  %37 = zext i8 %36 to i32
  %38 = sub nsw i32 %35, %37
  store i32 %38, i32* %4, align 4
  br label %48

39:                                               ; preds = %27
  %40 = load i64, i64* %7, align 8
  %41 = add i64 %40, -1
  store i64 %41, i64* %7, align 8
  br label %14, !llvm.loop !4

42:                                               ; preds = %14
  %43 = load i8, i8* %10, align 1
  %44 = zext i8 %43 to i32
  %45 = load i8, i8* %11, align 1
  %46 = zext i8 %45 to i32
  %47 = sub nsw i32 %44, %46
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %42, %33
  %49 = load i32, i32* %4, align 4
  ret i32 %49
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
