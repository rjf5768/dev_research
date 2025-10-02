; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strcmp.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/strcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global i32 7, align 4
@.str = private unnamed_addr constant [9 x i8] c"hi world\00", align 1
@bar = dso_local global i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @main_test() #0 {
  %1 = alloca i8*, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  %2 = load i8*, i8** @bar, align 8
  %3 = call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %4 = icmp sle i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  call void @abort() #3
  unreachable

6:                                                ; preds = %0
  %7 = load i8*, i8** @bar, align 8
  %8 = call i32 @strcmp(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* noundef %7)
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  call void @abort() #3
  unreachable

11:                                               ; preds = %6
  %12 = load i8*, i8** @bar, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 8
  %14 = call i32 @strcmp(i8* noundef %13, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  call void @abort() #3
  unreachable

17:                                               ; preds = %11
  %18 = load i8*, i8** @bar, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 8
  %20 = call i32 @strcmp(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* noundef %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  call void @abort() #3
  unreachable

23:                                               ; preds = %17
  %24 = load i8*, i8** @bar, align 8
  %25 = load i32, i32* @x, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* @x, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  %29 = call i32 @strcmp(i8* noundef %28, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* @x, align 4
  %33 = icmp ne i32 %32, 6
  br i1 %33, label %34, label %35

34:                                               ; preds = %31, %23
  call void @abort() #3
  unreachable

35:                                               ; preds = %31
  %36 = load i8*, i8** @bar, align 8
  %37 = load i32, i32* @x, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @x, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  %41 = call i32 @strcmp(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* noundef %40)
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* @x, align 4
  %45 = icmp ne i32 %44, 7
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %35
  call void @abort() #3
  unreachable

47:                                               ; preds = %43
  ret void
}

declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #1

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
