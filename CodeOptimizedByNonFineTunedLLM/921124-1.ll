; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/921124-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/921124-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %0, double noundef %1, double noundef %2, double noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  %9 = load i32, i32* %5, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @g(i8* noundef %0, i8* noundef %1, double noundef %2, double noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store double %2, double* %10, align 8
  store double %3, double* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %14 = load double, double* %10, align 8
  %15 = fcmp une double %14, 1.000000e+00
  br i1 %15, label %25, label %16

16:                                               ; preds = %6
  %17 = load double, double* %11, align 8
  %18 = fcmp une double %17, 2.000000e+00
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 3
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 4
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %19, %16, %6
  call void @abort() #2
  unreachable

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  ret i32 %27
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @f(i32 noundef 3, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00)
  %3 = call i32 @f(i32 noundef 4, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00)
  %4 = call i32 @g(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), double noundef 1.000000e+00, double noundef 2.000000e+00, i32 noundef %2, i32 noundef %3)
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
