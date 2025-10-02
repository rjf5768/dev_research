; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/990524-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/990524-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global [6 x i8] c"12345\00", align 1
@b = dso_local global [6 x i8] c"12345\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @loop(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  br label %5

5:                                                ; preds = %21, %2
  %6 = load i8*, i8** %4, align 8
  %7 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %7, i8** %4, align 8
  %8 = load i8, i8* %6, align 1
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %10, i8** %3, align 8
  store i8 %8, i8* %9, align 1
  %11 = sext i8 %8 to i32
  switch i32 %11, label %21 [
    i32 0, label %12
    i32 34, label %13
    i32 92, label %13
  ]

12:                                               ; preds = %5
  br label %22

13:                                               ; preds = %5, %5
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 -1
  store i8 92, i8* %15, align 1
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 -1
  %18 = load i8, i8* %17, align 1
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %3, align 8
  store i8 %18, i8* %19, align 1
  br label %21

21:                                               ; preds = %13, %5
  br label %5

22:                                               ; preds = %12
  %23 = load i8*, i8** %3, align 8
  %24 = ptrtoint i8* %23 to i64
  %25 = sub i64 ptrtoint ([6 x i8]* @a to i64), %24
  %26 = load i8*, i8** %4, align 8
  %27 = ptrtoint i8* %26 to i64
  %28 = sub i64 ptrtoint ([6 x i8]* @b to i64), %27
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  call void @abort() #2
  unreachable

31:                                               ; preds = %22
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @loop(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @a, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @b, i64 0, i64 0))
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
