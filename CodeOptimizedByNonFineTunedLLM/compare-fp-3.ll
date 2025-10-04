; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/compare-fp-3.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/compare-fp-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @test1(float noundef %0, float noundef %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %5 = load float, float* %3, align 4
  %6 = load float, float* %4, align 4
  %7 = fcmp oeq float %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load float, float* %3, align 4
  %10 = load float, float* %4, align 4
  %11 = fcmp une float %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  call void @link_error0()
  br label %13

13:                                               ; preds = %12, %8, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test2(float noundef %0, float noundef %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %5 = load float, float* %3, align 4
  %6 = load float, float* %4, align 4
  %7 = fcmp olt float %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load float, float* %3, align 4
  %10 = load float, float* %4, align 4
  %11 = fcmp ogt float %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  call void @link_error0()
  br label %13

13:                                               ; preds = %12, %8, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test3(float noundef %0, float noundef %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %5 = load float, float* %3, align 4
  %6 = load float, float* %4, align 4
  %7 = fcmp olt float %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load float, float* %4, align 4
  %10 = load float, float* %3, align 4
  %11 = fcmp olt float %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  call void @link_error0()
  br label %13

13:                                               ; preds = %12, %8, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test4(float noundef %0, float noundef %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %5 = load float, float* %3, align 4
  %6 = load float, float* %4, align 4
  %7 = fcmp oeq float %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load float, float* %3, align 4
  %10 = load float, float* %4, align 4
  %11 = fcmp une float %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %2
  br label %14

13:                                               ; preds = %8
  call void @link_error1()
  br label %14

14:                                               ; preds = %13, %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test5(float noundef %0, float noundef %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %5 = load float, float* %3, align 4
  %6 = load float, float* %4, align 4
  %7 = fcmp uno float %5, %6
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = load float, float* %3, align 4
  %10 = load float, float* %4, align 4
  %11 = fcmp oge float %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = load float, float* %3, align 4
  %14 = load float, float* %4, align 4
  %15 = fcmp olt float %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %8, %2
  br label %18

17:                                               ; preds = %12
  call void @link_error1()
  br label %18

18:                                               ; preds = %17, %16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test6(float noundef %0, float noundef %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %5 = load float, float* %4, align 4
  %6 = load float, float* %3, align 4
  %7 = fcmp uno float %5, %6
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = load float, float* %3, align 4
  %10 = load float, float* %4, align 4
  %11 = fcmp ole float %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = load float, float* %4, align 4
  %14 = load float, float* %3, align 4
  %15 = fcmp olt float %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %8, %2
  br label %18

17:                                               ; preds = %12
  call void @link_error1()
  br label %18

18:                                               ; preds = %17, %16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test7(float noundef %0, float noundef %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %5 = load float, float* %3, align 4
  %6 = load float, float* %4, align 4
  %7 = fcmp uno float %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load float, float* %3, align 4
  %10 = load float, float* %4, align 4
  %11 = fcmp uno float %9, %10
  br i1 %11, label %13, label %12

12:                                               ; preds = %8, %2
  br label %14

13:                                               ; preds = %8
  call void @link_error1()
  br label %14

14:                                               ; preds = %13, %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @all_tests(float noundef %0, float noundef %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %5 = load float, float* %3, align 4
  %6 = load float, float* %4, align 4
  call void @test1(float noundef %5, float noundef %6)
  %7 = load float, float* %3, align 4
  %8 = load float, float* %4, align 4
  call void @test2(float noundef %7, float noundef %8)
  %9 = load float, float* %3, align 4
  %10 = load float, float* %4, align 4
  call void @test3(float noundef %9, float noundef %10)
  %11 = load float, float* %3, align 4
  %12 = load float, float* %4, align 4
  call void @test4(float noundef %11, float noundef %12)
  %13 = load float, float* %3, align 4
  %14 = load float, float* %4, align 4
  call void @test5(float noundef %13, float noundef %14)
  %15 = load float, float* %3, align 4
  %16 = load float, float* %4, align 4
  call void @test6(float noundef %15, float noundef %16)
  %17 = load float, float* %3, align 4
  %18 = load float, float* %4, align 4
  call void @test7(float noundef %17, float noundef %18)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @all_tests(float noundef 0.000000e+00, float noundef 0.000000e+00)
  call void @all_tests(float noundef 1.000000e+00, float noundef 2.000000e+00)
  call void @all_tests(float noundef 4.000000e+00, float noundef 3.000000e+00)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @link_error0() #0 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @link_error1() #0 {
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
