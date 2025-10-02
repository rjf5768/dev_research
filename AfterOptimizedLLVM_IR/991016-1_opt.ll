; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/991016-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/991016-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @doit(i32 noundef %0, i32 noundef %1, i8* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %8, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to i64*
  store i64* %14, i64** %9, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to i64*
  store i64* %16, i64** %10, align 8
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %66 [
    i32 0, label %18
    i32 1, label %34
    i32 2, label %50
  ]

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %25, %18
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, %21
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %19, label %29, !llvm.loop !4

29:                                               ; preds = %25
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %4, align 4
  br label %67

34:                                               ; preds = %3
  br label %35

35:                                               ; preds = %41, %34
  %36 = load i64*, i64** %9, align 8
  %37 = load i64, i64* %36, align 8
  %38 = load i64*, i64** %9, align 8
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, %37
  store i64 %40, i64* %38, align 8
  br label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %35, label %45, !llvm.loop !6

45:                                               ; preds = %41
  %46 = load i64*, i64** %9, align 8
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %4, align 4
  br label %67

50:                                               ; preds = %3
  br label %51

51:                                               ; preds = %57, %50
  %52 = load i64*, i64** %10, align 8
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %10, align 8
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, %53
  store i64 %56, i64* %54, align 8
  br label %57

57:                                               ; preds = %51
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %51, label %61, !llvm.loop !7

61:                                               ; preds = %57
  %62 = load i64*, i64** %10, align 8
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %4, align 4
  br label %67

66:                                               ; preds = %3
  call void @abort() #2
  unreachable

67:                                               ; preds = %61, %45, %29
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i32 1, i32* %2, align 4
  %5 = bitcast i32* %2 to i8*
  %6 = call i32 @doit(i32 noundef 0, i32 noundef 5, i8* noundef %5)
  store i64 1, i64* %3, align 8
  %7 = bitcast i64* %3 to i8*
  %8 = call i32 @doit(i32 noundef 1, i32 noundef 5, i8* noundef %7)
  store i64 1, i64* %4, align 8
  %9 = bitcast i64* %4 to i8*
  %10 = call i32 @doit(i32 noundef 2, i32 noundef 5, i8* noundef %9)
  %11 = load i32, i32* %2, align 4
  %12 = icmp ne i32 %11, 32
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  call void @abort() #2
  unreachable

14:                                               ; preds = %0
  %15 = load i64, i64* %3, align 8
  %16 = icmp ne i64 %15, 32
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  call void @abort() #2
  unreachable

18:                                               ; preds = %14
  %19 = load i64, i64* %4, align 8
  %20 = icmp ne i64 %19, 32
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  call void @abort() #2
  unreachable

22:                                               ; preds = %18
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
!7 = distinct !{!7, !5}
