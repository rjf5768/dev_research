; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/pr38016.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/pr38016.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.try = type { double, double, [6 x i32] }
%struct.test = type { double (double, double, double, double)*, double (double, double, double, double)* }

@main.data = internal constant [14 x %struct.try] [%struct.try { double 0x7FF8000000000000, double 0x7FF8000000000000, [6 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.try { double 0.000000e+00, double 0x7FF8000000000000, [6 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.try { double 0x7FF8000000000000, double 0.000000e+00, [6 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.try { double 0.000000e+00, double 0.000000e+00, [6 x i32] [i32 0, i32 0, i32 1, i32 0, i32 1, i32 0] }, %struct.try { double 1.000000e+00, double 2.000000e+00, [6 x i32] [i32 0, i32 1, i32 1, i32 0, i32 0, i32 1] }, %struct.try { double 2.000000e+00, double 1.000000e+00, [6 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 1] }, %struct.try { double 0x7FF0000000000000, double 0.000000e+00, [6 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 1] }, %struct.try { double 1.000000e+00, double 0x7FF0000000000000, [6 x i32] [i32 0, i32 1, i32 1, i32 0, i32 0, i32 1] }, %struct.try { double 0x7FF0000000000000, double 0x7FF0000000000000, [6 x i32] [i32 0, i32 0, i32 1, i32 0, i32 1, i32 0] }, %struct.try { double 0.000000e+00, double 0xFFF0000000000000, [6 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 1] }, %struct.try { double 0xFFF0000000000000, double 1.000000e+00, [6 x i32] [i32 0, i32 1, i32 1, i32 0, i32 0, i32 1] }, %struct.try { double 0xFFF0000000000000, double 0xFFF0000000000000, [6 x i32] [i32 0, i32 0, i32 1, i32 0, i32 1, i32 0] }, %struct.try { double 0x7FF0000000000000, double 0xFFF0000000000000, [6 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 1] }, %struct.try { double 0xFFF0000000000000, double 0x7FF0000000000000, [6 x i32] [i32 0, i32 1, i32 1, i32 0, i32 0, i32 1] }], align 16
@main.tests = internal constant [6 x %struct.test] [%struct.test { double (double, double, double, double)* @test_isunordered, double (double, double, double, double)* @test_not_isunordered }, %struct.test { double (double, double, double, double)* @test_isless, double (double, double, double, double)* @test_not_isless }, %struct.test { double (double, double, double, double)* @test_islessequal, double (double, double, double, double)* @test_not_islessequal }, %struct.test { double (double, double, double, double)* @test_isgreater, double (double, double, double, double)* @test_not_isgreater }, %struct.test { double (double, double, double, double)* @test_isgreaterequal, double (double, double, double, double)* @test_not_isgreaterequal }, %struct.test { double (double, double, double, double)* @test_islessgreater, double (double, double, double, double)* @test_not_islessgreater }], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 14, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %45, %0
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 14
  br i1 %7, label %8, label %48

8:                                                ; preds = %5
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %41, %8
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 6
  br i1 %11, label %12, label %44

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [14 x %struct.try], [14 x %struct.try]* @main.data, i64 0, i64 %14
  %16 = getelementptr inbounds %struct.try, %struct.try* %15, i32 0, i32 0
  %17 = load double, double* %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [14 x %struct.try], [14 x %struct.try]* @main.data, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.try, %struct.try* %20, i32 0, i32 1
  %22 = load double, double* %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [14 x %struct.try], [14 x %struct.try]* @main.data, i64 0, i64 %24
  %26 = getelementptr inbounds %struct.try, %struct.try* %25, i32 0, i32 2
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [6 x i32], [6 x i32]* %26, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [6 x %struct.test], [6 x %struct.test]* @main.tests, i64 0, i64 %32
  %34 = getelementptr inbounds %struct.test, %struct.test* %33, i32 0, i32 0
  %35 = load double (double, double, double, double)*, double (double, double, double, double)** %34, align 16
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [6 x %struct.test], [6 x %struct.test]* @main.tests, i64 0, i64 %37
  %39 = getelementptr inbounds %struct.test, %struct.test* %38, i32 0, i32 1
  %40 = load double (double, double, double, double)*, double (double, double, double, double)** %39, align 8
  call void @one_test(double noundef %17, double noundef %22, i32 noundef %30, double (double, double, double, double)* noundef %35, double (double, double, double, double)* noundef %40)
  br label %41

41:                                               ; preds = %12
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %9, !llvm.loop !4

44:                                               ; preds = %9
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %5, !llvm.loop !6

48:                                               ; preds = %5
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal double @test_isunordered(double noundef %0, double noundef %1, double noundef %2, double noundef %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  %9 = load double, double* %5, align 8
  %10 = load double, double* %6, align 8
  %11 = fcmp uno double %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load double, double* %7, align 8
  br label %16

14:                                               ; preds = %4
  %15 = load double, double* %8, align 8
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi double [ %13, %12 ], [ %15, %14 ]
  ret double %17
}

; Function Attrs: noinline nounwind uwtable
define internal double @test_not_isunordered(double noundef %0, double noundef %1, double noundef %2, double noundef %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  %9 = load double, double* %5, align 8
  %10 = load double, double* %6, align 8
  %11 = fcmp uno double %9, %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = load double, double* %7, align 8
  br label %16

14:                                               ; preds = %4
  %15 = load double, double* %8, align 8
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi double [ %13, %12 ], [ %15, %14 ]
  ret double %17
}

; Function Attrs: noinline nounwind uwtable
define internal double @test_isless(double noundef %0, double noundef %1, double noundef %2, double noundef %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  %9 = load double, double* %5, align 8
  %10 = load double, double* %6, align 8
  %11 = fcmp olt double %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load double, double* %7, align 8
  br label %16

14:                                               ; preds = %4
  %15 = load double, double* %8, align 8
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi double [ %13, %12 ], [ %15, %14 ]
  ret double %17
}

; Function Attrs: noinline nounwind uwtable
define internal double @test_not_isless(double noundef %0, double noundef %1, double noundef %2, double noundef %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  %9 = load double, double* %5, align 8
  %10 = load double, double* %6, align 8
  %11 = fcmp olt double %9, %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = load double, double* %7, align 8
  br label %16

14:                                               ; preds = %4
  %15 = load double, double* %8, align 8
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi double [ %13, %12 ], [ %15, %14 ]
  ret double %17
}

; Function Attrs: noinline nounwind uwtable
define internal double @test_islessequal(double noundef %0, double noundef %1, double noundef %2, double noundef %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  %9 = load double, double* %5, align 8
  %10 = load double, double* %6, align 8
  %11 = fcmp ole double %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load double, double* %7, align 8
  br label %16

14:                                               ; preds = %4
  %15 = load double, double* %8, align 8
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi double [ %13, %12 ], [ %15, %14 ]
  ret double %17
}

; Function Attrs: noinline nounwind uwtable
define internal double @test_not_islessequal(double noundef %0, double noundef %1, double noundef %2, double noundef %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  %9 = load double, double* %5, align 8
  %10 = load double, double* %6, align 8
  %11 = fcmp ole double %9, %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = load double, double* %7, align 8
  br label %16

14:                                               ; preds = %4
  %15 = load double, double* %8, align 8
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi double [ %13, %12 ], [ %15, %14 ]
  ret double %17
}

; Function Attrs: noinline nounwind uwtable
define internal double @test_isgreater(double noundef %0, double noundef %1, double noundef %2, double noundef %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  %9 = load double, double* %5, align 8
  %10 = load double, double* %6, align 8
  %11 = fcmp ogt double %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load double, double* %7, align 8
  br label %16

14:                                               ; preds = %4
  %15 = load double, double* %8, align 8
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi double [ %13, %12 ], [ %15, %14 ]
  ret double %17
}

; Function Attrs: noinline nounwind uwtable
define internal double @test_not_isgreater(double noundef %0, double noundef %1, double noundef %2, double noundef %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  %9 = load double, double* %5, align 8
  %10 = load double, double* %6, align 8
  %11 = fcmp ogt double %9, %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = load double, double* %7, align 8
  br label %16

14:                                               ; preds = %4
  %15 = load double, double* %8, align 8
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi double [ %13, %12 ], [ %15, %14 ]
  ret double %17
}

; Function Attrs: noinline nounwind uwtable
define internal double @test_isgreaterequal(double noundef %0, double noundef %1, double noundef %2, double noundef %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  %9 = load double, double* %5, align 8
  %10 = load double, double* %6, align 8
  %11 = fcmp oge double %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load double, double* %7, align 8
  br label %16

14:                                               ; preds = %4
  %15 = load double, double* %8, align 8
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi double [ %13, %12 ], [ %15, %14 ]
  ret double %17
}

; Function Attrs: noinline nounwind uwtable
define internal double @test_not_isgreaterequal(double noundef %0, double noundef %1, double noundef %2, double noundef %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  %9 = load double, double* %5, align 8
  %10 = load double, double* %6, align 8
  %11 = fcmp oge double %9, %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = load double, double* %7, align 8
  br label %16

14:                                               ; preds = %4
  %15 = load double, double* %8, align 8
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi double [ %13, %12 ], [ %15, %14 ]
  ret double %17
}

; Function Attrs: noinline nounwind uwtable
define internal double @test_islessgreater(double noundef %0, double noundef %1, double noundef %2, double noundef %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  %9 = load double, double* %5, align 8
  %10 = load double, double* %6, align 8
  %11 = fcmp one double %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load double, double* %7, align 8
  br label %16

14:                                               ; preds = %4
  %15 = load double, double* %8, align 8
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi double [ %13, %12 ], [ %15, %14 ]
  ret double %17
}

; Function Attrs: noinline nounwind uwtable
define internal double @test_not_islessgreater(double noundef %0, double noundef %1, double noundef %2, double noundef %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  %9 = load double, double* %5, align 8
  %10 = load double, double* %6, align 8
  %11 = fcmp one double %9, %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = load double, double* %7, align 8
  br label %16

14:                                               ; preds = %4
  %15 = load double, double* %8, align 8
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi double [ %13, %12 ], [ %15, %14 ]
  ret double %17
}

; Function Attrs: noinline nounwind uwtable
define internal void @one_test(double noundef %0, double noundef %1, i32 noundef %2, double (double, double, double, double)* noundef %3, double (double, double, double, double)* noundef %4) #0 {
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca double (double, double, double, double)*, align 8
  %10 = alloca double (double, double, double, double)*, align 8
  store double %0, double* %6, align 8
  store double %1, double* %7, align 8
  store i32 %2, i32* %8, align 4
  store double (double, double, double, double)* %3, double (double, double, double, double)** %9, align 8
  store double (double, double, double, double)* %4, double (double, double, double, double)** %10, align 8
  %11 = load double (double, double, double, double)*, double (double, double, double, double)** %9, align 8
  %12 = load double, double* %6, align 8
  %13 = load double, double* %7, align 8
  %14 = call double %11(double noundef %12, double noundef %13, double noundef 1.000000e+00, double noundef 2.000000e+00)
  %15 = fcmp oeq double %14, 1.000000e+00
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  call void @abort() #2
  unreachable

20:                                               ; preds = %5
  %21 = load double (double, double, double, double)*, double (double, double, double, double)** %10, align 8
  %22 = load double, double* %6, align 8
  %23 = load double, double* %7, align 8
  %24 = call double %21(double noundef %22, double noundef %23, double noundef 3.000000e+00, double noundef 4.000000e+00)
  %25 = fcmp oeq double %24, 4.000000e+00
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  call void @abort() #2
  unreachable

30:                                               ; preds = %20
  ret void
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #1

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
