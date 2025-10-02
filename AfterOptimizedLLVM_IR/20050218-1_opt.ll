; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050218-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050218-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"bc\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"de\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"fgh\00", align 1
@a = dso_local global <{ i8*, i8*, i8*, i8*, [12 x i8*] }> <{ i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), [12 x i8*] zeroinitializer }>, align 16
@.str.4 = private unnamed_addr constant [6 x i8] c"abcde\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i8* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %10

10:                                               ; preds = %43, %3
  %11 = load i64, i64* %8, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %46

14:                                               ; preds = %10
  %15 = load i8*, i8** %5, align 8
  %16 = load i64, i64* %9, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  %18 = load i64, i64* %8, align 8
  %19 = getelementptr inbounds [16 x i8*], [16 x i8*]* bitcast (<{ i8*, i8*, i8*, i8*, [12 x i8*] }>* @a to [16 x i8*]*), i64 0, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds [16 x i8*], [16 x i8*]* bitcast (<{ i8*, i8*, i8*, i8*, [12 x i8*] }>* @a to [16 x i8*]*), i64 0, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @strlen(i8* noundef %23)
  %25 = call i32 @strncmp(i8* noundef %17, i8* noundef %20, i64 noundef %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  store i32 2, i32* %4, align 4
  br label %47

28:                                               ; preds = %14
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds [16 x i8*], [16 x i8*]* bitcast (<{ i8*, i8*, i8*, i8*, [12 x i8*] }>* @a to [16 x i8*]*), i64 0, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @strlen(i8* noundef %31)
  %33 = load i64, i64* %9, align 8
  %34 = add i64 %33, %32
  store i64 %34, i64* %9, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %28
  %38 = load i8*, i8** %6, align 8
  %39 = call i64 @strlen(i8* noundef %38)
  %40 = load i64, i64* %9, align 8
  %41 = add i64 %40, %39
  store i64 %41, i64* %9, align 8
  br label %42

42:                                               ; preds = %37, %28
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %8, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %8, align 8
  br label %10, !llvm.loop !4

46:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %27
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #1

declare dso_local i64 @strlen(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @foo(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* noundef null, i64 noundef 3)
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #3
  unreachable

5:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
