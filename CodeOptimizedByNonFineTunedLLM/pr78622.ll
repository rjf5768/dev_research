; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr78622.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr78622.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%hhd\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"\22%hhd\22 => %i\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [5 x i8], align 1
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 4104
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp sge i32 %9, 4360
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %1
  store i32 -1, i32* %2, align 4
  br label %22

12:                                               ; preds = %8
  %13 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %14, 1
  %16 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef %13, i64 noundef 5, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 noundef %15) #4
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 1
  %19 = load i32, i32* %5, align 4
  %20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 noundef %18, i32 noundef %19)
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %12, %11
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #1

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @foo(i32 noundef 4104)
  %3 = icmp ne i32 %2, 1
  br i1 %3, label %25, label %4

4:                                                ; preds = %0
  %5 = call i32 @foo(i32 noundef 4127)
  %6 = icmp ne i32 %5, 2
  br i1 %6, label %25, label %7

7:                                                ; preds = %4
  %8 = call i32 @foo(i32 noundef 4222)
  %9 = icmp ne i32 %8, 3
  br i1 %9, label %25, label %10

10:                                               ; preds = %7
  %11 = call i32 @foo(i32 noundef 4223)
  %12 = icmp ne i32 %11, 4
  br i1 %12, label %25, label %13

13:                                               ; preds = %10
  %14 = call i32 @foo(i32 noundef 4335)
  %15 = icmp ne i32 %14, 3
  br i1 %15, label %25, label %16

16:                                               ; preds = %13
  %17 = call i32 @foo(i32 noundef 4343)
  %18 = icmp ne i32 %17, 2
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = call i32 @foo(i32 noundef 4350)
  %21 = icmp ne i32 %20, 2
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = call i32 @foo(i32 noundef 4351)
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %19, %16, %13, %10, %7, %4, %0
  call void @abort() #5
  unreachable

26:                                               ; preds = %22
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
