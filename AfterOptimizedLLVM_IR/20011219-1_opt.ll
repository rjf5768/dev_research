; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20011219-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20011219-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"bar\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i8* noundef %0, i32 noundef %1, i8* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @foo(i32 noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %27 [
    i32 10, label %7
    i32 11, label %11
    i32 12, label %15
    i32 13, label %19
    i32 14, label %23
  ]

7:                                                ; preds = %2
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %5, align 8
  br label %28

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to i64*
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  br label %28

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to i64*
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %5, align 8
  br label %28

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = bitcast i8* %20 to i64*
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %5, align 8
  br label %28

23:                                               ; preds = %2
  %24 = load i8*, i8** %4, align 8
  %25 = bitcast i8* %24 to i64*
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %5, align 8
  br label %28

27:                                               ; preds = %2
  call void @bar(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %27, %23, %19, %15, %11, %7
  %29 = load i64, i64* %5, align 8
  ret i64 %29
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i64 24, i64* %2, align 8
  %3 = bitcast i64* %2 to i8*
  %4 = call i64 @foo(i32 noundef 13, i8* noundef %3)
  %5 = icmp ne i64 %4, 24
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  call void @abort() #2
  unreachable

7:                                                ; preds = %0
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
