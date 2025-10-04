; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/931017-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/931017-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@v = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @f()
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @h1() #0 {
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @h2(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = icmp ne i32* %3, @v
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  call void @abort() #2
  unreachable

6:                                                ; preds = %1
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @g(i8* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  br label %6

6:                                                ; preds = %18, %1
  %7 = call i32 @h1()
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %34

11:                                               ; preds = %6
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 @h1()
  br label %16

16:                                               ; preds = %14, %11
  br label %17

17:                                               ; preds = %16
  br label %18

18:                                               ; preds = %17
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %6, label %21, !llvm.loop !4

21:                                               ; preds = %18
  br label %22

22:                                               ; preds = %24, %21
  %23 = call i32 @h2(i32* noundef @v)
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %22
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 5
  br i1 %26, label %22, label %27, !llvm.loop !6

27:                                               ; preds = %24
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 2
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %34

32:                                               ; preds = %27
  %33 = load i8*, i8** %3, align 8
  store i8 97, i8* %33, align 1
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %30, %10
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = call i32 @g(i8* noundef %2)
  %4 = load i32, i32* %1, align 4
  ret i32 %4
}

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
