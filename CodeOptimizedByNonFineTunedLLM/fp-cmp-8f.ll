; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/fp-cmp-8f.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/fp-cmp-8f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.try = type { float, float, [6 x i32] }
%struct.test = type { float (float, float, float, float)*, float (float, float, float, float)* }

@main.data = internal constant [14 x %struct.try] [%struct.try { float 0x7FF8000000000000, float 0x7FF8000000000000, [6 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.try { float 0.000000e+00, float 0x7FF8000000000000, [6 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.try { float 0x7FF8000000000000, float 0.000000e+00, [6 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.try { float 0.000000e+00, float 0.000000e+00, [6 x i32] [i32 0, i32 0, i32 1, i32 0, i32 1, i32 0] }, %struct.try { float 1.000000e+00, float 2.000000e+00, [6 x i32] [i32 0, i32 1, i32 1, i32 0, i32 0, i32 1] }, %struct.try { float 2.000000e+00, float 1.000000e+00, [6 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 1] }, %struct.try { float 0x7FF0000000000000, float 0.000000e+00, [6 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 1] }, %struct.try { float 1.000000e+00, float 0x7FF0000000000000, [6 x i32] [i32 0, i32 1, i32 1, i32 0, i32 0, i32 1] }, %struct.try { float 0x7FF0000000000000, float 0x7FF0000000000000, [6 x i32] [i32 0, i32 0, i32 1, i32 0, i32 1, i32 0] }, %struct.try { float 0.000000e+00, float 0xFFF0000000000000, [6 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 1] }, %struct.try { float 0xFFF0000000000000, float 1.000000e+00, [6 x i32] [i32 0, i32 1, i32 1, i32 0, i32 0, i32 1] }, %struct.try { float 0xFFF0000000000000, float 0xFFF0000000000000, [6 x i32] [i32 0, i32 0, i32 1, i32 0, i32 1, i32 0] }, %struct.try { float 0x7FF0000000000000, float 0xFFF0000000000000, [6 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 1] }, %struct.try { float 0xFFF0000000000000, float 0x7FF0000000000000, [6 x i32] [i32 0, i32 1, i32 1, i32 0, i32 0, i32 1] }], align 16
@main.tests = internal constant [6 x %struct.test] [%struct.test { float (float, float, float, float)* @test_isunordered, float (float, float, float, float)* @test_not_isunordered }, %struct.test { float (float, float, float, float)* @test_isless, float (float, float, float, float)* @test_not_isless }, %struct.test { float (float, float, float, float)* @test_islessequal, float (float, float, float, float)* @test_not_islessequal }, %struct.test { float (float, float, float, float)* @test_isgreater, float (float, float, float, float)* @test_not_isgreater }, %struct.test { float (float, float, float, float)* @test_isgreaterequal, float (float, float, float, float)* @test_not_isgreaterequal }, %struct.test { float (float, float, float, float)* @test_islessgreater, float (float, float, float, float)* @test_not_islessgreater }], align 16

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
  %17 = load float, float* %16, align 16
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [14 x %struct.try], [14 x %struct.try]* @main.data, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.try, %struct.try* %20, i32 0, i32 1
  %22 = load float, float* %21, align 4
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
  %35 = load float (float, float, float, float)*, float (float, float, float, float)** %34, align 16
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [6 x %struct.test], [6 x %struct.test]* @main.tests, i64 0, i64 %37
  %39 = getelementptr inbounds %struct.test, %struct.test* %38, i32 0, i32 1
  %40 = load float (float, float, float, float)*, float (float, float, float, float)** %39, align 8
  call void @one_test(float noundef %17, float noundef %22, i32 noundef %30, float (float, float, float, float)* noundef %35, float (float, float, float, float)* noundef %40)
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
define internal float @test_isunordered(float noundef %0, float noundef %1, float noundef %2, float noundef %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %9 = load float, float* %5, align 4
  %10 = load float, float* %6, align 4
  %11 = fcmp uno float %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load float, float* %7, align 4
  br label %16

14:                                               ; preds = %4
  %15 = load float, float* %8, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi float [ %13, %12 ], [ %15, %14 ]
  ret float %17
}

; Function Attrs: noinline nounwind uwtable
define internal float @test_not_isunordered(float noundef %0, float noundef %1, float noundef %2, float noundef %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %9 = load float, float* %5, align 4
  %10 = load float, float* %6, align 4
  %11 = fcmp uno float %9, %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = load float, float* %7, align 4
  br label %16

14:                                               ; preds = %4
  %15 = load float, float* %8, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi float [ %13, %12 ], [ %15, %14 ]
  ret float %17
}

; Function Attrs: noinline nounwind uwtable
define internal float @test_isless(float noundef %0, float noundef %1, float noundef %2, float noundef %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %9 = load float, float* %5, align 4
  %10 = load float, float* %6, align 4
  %11 = fcmp olt float %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load float, float* %7, align 4
  br label %16

14:                                               ; preds = %4
  %15 = load float, float* %8, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi float [ %13, %12 ], [ %15, %14 ]
  ret float %17
}

; Function Attrs: noinline nounwind uwtable
define internal float @test_not_isless(float noundef %0, float noundef %1, float noundef %2, float noundef %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %9 = load float, float* %5, align 4
  %10 = load float, float* %6, align 4
  %11 = fcmp olt float %9, %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = load float, float* %7, align 4
  br label %16

14:                                               ; preds = %4
  %15 = load float, float* %8, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi float [ %13, %12 ], [ %15, %14 ]
  ret float %17
}

; Function Attrs: noinline nounwind uwtable
define internal float @test_islessequal(float noundef %0, float noundef %1, float noundef %2, float noundef %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %9 = load float, float* %5, align 4
  %10 = load float, float* %6, align 4
  %11 = fcmp ole float %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load float, float* %7, align 4
  br label %16

14:                                               ; preds = %4
  %15 = load float, float* %8, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi float [ %13, %12 ], [ %15, %14 ]
  ret float %17
}

; Function Attrs: noinline nounwind uwtable
define internal float @test_not_islessequal(float noundef %0, float noundef %1, float noundef %2, float noundef %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %9 = load float, float* %5, align 4
  %10 = load float, float* %6, align 4
  %11 = fcmp ole float %9, %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = load float, float* %7, align 4
  br label %16

14:                                               ; preds = %4
  %15 = load float, float* %8, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi float [ %13, %12 ], [ %15, %14 ]
  ret float %17
}

; Function Attrs: noinline nounwind uwtable
define internal float @test_isgreater(float noundef %0, float noundef %1, float noundef %2, float noundef %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %9 = load float, float* %5, align 4
  %10 = load float, float* %6, align 4
  %11 = fcmp ogt float %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load float, float* %7, align 4
  br label %16

14:                                               ; preds = %4
  %15 = load float, float* %8, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi float [ %13, %12 ], [ %15, %14 ]
  ret float %17
}

; Function Attrs: noinline nounwind uwtable
define internal float @test_not_isgreater(float noundef %0, float noundef %1, float noundef %2, float noundef %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %9 = load float, float* %5, align 4
  %10 = load float, float* %6, align 4
  %11 = fcmp ogt float %9, %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = load float, float* %7, align 4
  br label %16

14:                                               ; preds = %4
  %15 = load float, float* %8, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi float [ %13, %12 ], [ %15, %14 ]
  ret float %17
}

; Function Attrs: noinline nounwind uwtable
define internal float @test_isgreaterequal(float noundef %0, float noundef %1, float noundef %2, float noundef %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %9 = load float, float* %5, align 4
  %10 = load float, float* %6, align 4
  %11 = fcmp oge float %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load float, float* %7, align 4
  br label %16

14:                                               ; preds = %4
  %15 = load float, float* %8, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi float [ %13, %12 ], [ %15, %14 ]
  ret float %17
}

; Function Attrs: noinline nounwind uwtable
define internal float @test_not_isgreaterequal(float noundef %0, float noundef %1, float noundef %2, float noundef %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %9 = load float, float* %5, align 4
  %10 = load float, float* %6, align 4
  %11 = fcmp oge float %9, %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = load float, float* %7, align 4
  br label %16

14:                                               ; preds = %4
  %15 = load float, float* %8, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi float [ %13, %12 ], [ %15, %14 ]
  ret float %17
}

; Function Attrs: noinline nounwind uwtable
define internal float @test_islessgreater(float noundef %0, float noundef %1, float noundef %2, float noundef %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %9 = load float, float* %5, align 4
  %10 = load float, float* %6, align 4
  %11 = fcmp one float %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load float, float* %7, align 4
  br label %16

14:                                               ; preds = %4
  %15 = load float, float* %8, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi float [ %13, %12 ], [ %15, %14 ]
  ret float %17
}

; Function Attrs: noinline nounwind uwtable
define internal float @test_not_islessgreater(float noundef %0, float noundef %1, float noundef %2, float noundef %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %9 = load float, float* %5, align 4
  %10 = load float, float* %6, align 4
  %11 = fcmp one float %9, %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = load float, float* %7, align 4
  br label %16

14:                                               ; preds = %4
  %15 = load float, float* %8, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi float [ %13, %12 ], [ %15, %14 ]
  ret float %17
}

; Function Attrs: noinline nounwind uwtable
define internal void @one_test(float noundef %0, float noundef %1, i32 noundef %2, float (float, float, float, float)* noundef %3, float (float, float, float, float)* noundef %4) #0 {
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca float (float, float, float, float)*, align 8
  %10 = alloca float (float, float, float, float)*, align 8
  store float %0, float* %6, align 4
  store float %1, float* %7, align 4
  store i32 %2, i32* %8, align 4
  store float (float, float, float, float)* %3, float (float, float, float, float)** %9, align 8
  store float (float, float, float, float)* %4, float (float, float, float, float)** %10, align 8
  %11 = load float (float, float, float, float)*, float (float, float, float, float)** %9, align 8
  %12 = load float, float* %6, align 4
  %13 = load float, float* %7, align 4
  %14 = call float %11(float noundef %12, float noundef %13, float noundef 1.000000e+00, float noundef 2.000000e+00)
  %15 = fpext float %14 to double
  %16 = fcmp oeq double %15, 1.000000e+00
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  call void @abort() #2
  unreachable

21:                                               ; preds = %5
  %22 = load float (float, float, float, float)*, float (float, float, float, float)** %10, align 8
  %23 = load float, float* %6, align 4
  %24 = load float, float* %7, align 4
  %25 = call float %22(float noundef %23, float noundef %24, float noundef 3.000000e+00, float noundef 4.000000e+00)
  %26 = fpext float %25 to double
  %27 = fcmp oeq double %26, 4.000000e+00
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  call void @abort() #2
  unreachable

32:                                               ; preds = %21
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
