; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr86231.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr86231.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@v = dso_local global [8 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i8*, i8** %4, align 8
  %7 = icmp eq i8* %6, inttoptr (i64 1 to i8*)
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %22

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* inttoptr (i64 2 to i8*), i8* inttoptr (i64 1 to i8*)
  store i8* %16, i8** %4, align 8
  br label %17

17:                                               ; preds = %12, %9
  %18 = load i8*, i8** %4, align 8
  %19 = icmp eq i8* %18, inttoptr (i64 1 to i8*)
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 0, i32 1
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %17, %8
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @foo(i8* noundef null, i32 noundef 0)
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %25, label %4

4:                                                ; preds = %0
  %5 = call i32 @foo(i8* noundef null, i32 noundef 1)
  %6 = icmp ne i32 %5, 1
  br i1 %6, label %25, label %7

7:                                                ; preds = %4
  %8 = call i32 @foo(i8* noundef inttoptr (i64 1 to i8*), i32 noundef 0)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %7
  %11 = call i32 @foo(i8* noundef inttoptr (i64 1 to i8*), i32 noundef 1)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %10
  %14 = call i32 @foo(i8* noundef inttoptr (i64 2 to i8*), i32 noundef 0)
  %15 = icmp ne i32 %14, 1
  br i1 %15, label %25, label %16

16:                                               ; preds = %13
  %17 = call i32 @foo(i8* noundef inttoptr (i64 2 to i8*), i32 noundef 1)
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = call i32 @foo(i8* noundef bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @v, i64 0, i64 7) to i8*), i32 noundef 0)
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = call i32 @foo(i8* noundef bitcast (i32* getelementptr inbounds ([8 x i32], [8 x i32]* @v, i64 0, i64 7) to i8*), i32 noundef 1)
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %19, %16, %13, %10, %7, %4, %0
  call void @abort() #2
  unreachable

26:                                               ; preds = %22
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
