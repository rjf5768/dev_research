; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_regex_strlcpy.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/ClamAV/libclamav_regex_strlcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @cli_strlcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %8, align 8
  %12 = load i64, i64* %6, align 8
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %29, %15
  %17 = load i64, i64* %9, align 8
  %18 = add i64 %17, -1
  store i64 %18, i64* %9, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %8, align 8
  %23 = load i8, i8* %21, align 1
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %7, align 8
  store i8 %23, i8* %24, align 1
  %26 = sext i8 %23 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %30

29:                                               ; preds = %20
  br label %16, !llvm.loop !4

30:                                               ; preds = %28, %16
  br label %31

31:                                               ; preds = %30, %3
  %32 = load i64, i64* %9, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %31
  %35 = load i64, i64* %6, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i8*, i8** %7, align 8
  store i8 0, i8* %38, align 1
  br label %39

39:                                               ; preds = %37, %34
  br label %40

40:                                               ; preds = %45, %39
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %8, align 8
  %43 = load i8, i8* %41, align 1
  %44 = icmp ne i8 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %40, !llvm.loop !6

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46, %31
  %48 = load i8*, i8** %8, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = ptrtoint i8* %48 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sub nsw i64 %52, 1
  ret i64 %53
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
