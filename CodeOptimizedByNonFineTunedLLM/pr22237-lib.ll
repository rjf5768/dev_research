; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/pr22237-lib.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/pr22237-lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %5, align 8
  store i8* %9, i8** %7, align 8
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ult i8* %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load i8*, i8** %4, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr i8, i8* %15, i64 %16
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ugt i8* %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  call void @abort() #2
  unreachable

21:                                               ; preds = %14
  br label %30

22:                                               ; preds = %3
  %23 = load i8*, i8** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr i8, i8* %23, i64 %24
  %26 = load i8*, i8** %4, align 8
  %27 = icmp ugt i8* %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  call void @abort() #2
  unreachable

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %21
  br label %31

31:                                               ; preds = %35, %30
  %32 = load i64, i64* %6, align 8
  %33 = add i64 %32, -1
  store i64 %33, i64* %6, align 8
  %34 = icmp ne i64 %32, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %7, align 8
  %38 = load i8, i8* %36, align 1
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %8, align 8
  store i8 %38, i8* %39, align 1
  br label %31, !llvm.loop !4

41:                                               ; preds = %31
  %42 = load i8*, i8** %4, align 8
  ret i8* %42
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
