; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/950704-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/950704-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errflag = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @f(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* @errflag, align 4
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = add nsw i64 %7, %8
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp sge i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8
  %17 = icmp sge i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %12
  %19 = load i64, i64* %6, align 8
  store i64 %19, i64* %3, align 8
  br label %31

20:                                               ; preds = %15
  br label %30

21:                                               ; preds = %2
  %22 = load i64, i64* %5, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* %6, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24, %21
  %28 = load i64, i64* %6, align 8
  store i64 %28, i64* %3, align 8
  br label %31

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %29, %20
  store i32 1, i32* @errflag, align 4
  store i64 0, i64* %3, align 8
  br label %31

31:                                               ; preds = %30, %27, %18
  %32 = load i64, i64* %3, align 8
  ret i64 %32
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i64 @f(i64 noundef 0, i64 noundef 0)
  %3 = load i32, i32* @errflag, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  call void @abort() #2
  unreachable

6:                                                ; preds = %0
  %7 = call i64 @f(i64 noundef 1, i64 noundef -1)
  %8 = load i32, i32* @errflag, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  call void @abort() #2
  unreachable

11:                                               ; preds = %6
  %12 = call i64 @f(i64 noundef -1, i64 noundef 1)
  %13 = load i32, i32* @errflag, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  call void @abort() #2
  unreachable

16:                                               ; preds = %11
  %17 = call i64 @f(i64 noundef -9223372036854775808, i64 noundef -9223372036854775808)
  %18 = load i32, i32* @errflag, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  call void @abort() #2
  unreachable

21:                                               ; preds = %16
  %22 = call i64 @f(i64 noundef -9223372036854775808, i64 noundef -1)
  %23 = load i32, i32* @errflag, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  call void @abort() #2
  unreachable

26:                                               ; preds = %21
  %27 = call i64 @f(i64 noundef 9223372036854775807, i64 noundef 9223372036854775807)
  %28 = load i32, i32* @errflag, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  call void @abort() #2
  unreachable

31:                                               ; preds = %26
  %32 = call i64 @f(i64 noundef 9223372036854775807, i64 noundef 1)
  %33 = load i32, i32* @errflag, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  call void @abort() #2
  unreachable

36:                                               ; preds = %31
  %37 = call i64 @f(i64 noundef 9223372036854775807, i64 noundef -9223372036854775808)
  %38 = load i32, i32* @errflag, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  call void @abort() #2
  unreachable

41:                                               ; preds = %36
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
