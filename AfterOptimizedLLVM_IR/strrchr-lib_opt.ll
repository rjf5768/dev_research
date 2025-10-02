; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strrchr-lib.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strrchr-lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @strrchr(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %14, %2
  %8 = load i8*, i8** %4, align 8
  %9 = load i64, i64* %6, align 8
  %10 = getelementptr inbounds i8, i8* %8, i64 %9
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = load i64, i64* %6, align 8
  %16 = add i64 %15, 1
  store i64 %16, i64* %6, align 8
  br label %7, !llvm.loop !4

17:                                               ; preds = %7
  br label %18

18:                                               ; preds = %31, %17
  %19 = load i8*, i8** %4, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load i8*, i8** %4, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8* %29, i8** %3, align 8
  br label %36

30:                                               ; preds = %18
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %6, align 8
  %33 = add i64 %32, -1
  store i64 %33, i64* %6, align 8
  %34 = icmp ne i64 %32, 0
  br i1 %34, label %18, label %35, !llvm.loop !6

35:                                               ; preds = %31
  store i8* null, i8** %3, align 8
  br label %36

36:                                               ; preds = %35, %26
  %37 = load i8*, i8** %3, align 8
  ret i8* %37
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @rindex(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i8*, i8** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i8* @strrchr(i8* noundef %5, i32 noundef %6)
  ret i8* %7
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
