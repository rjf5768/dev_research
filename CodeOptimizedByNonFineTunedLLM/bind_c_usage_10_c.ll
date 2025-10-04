; ModuleID = '/project/test/llvm-test-suite/Fortran/gfortran/regression/bind_c_usage_10_c.c'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/bind_c_usage_10_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca float, align 4
  store i32 0, i32* %1, align 4
  store i32 -1, i32* %2, align 4
  store float -3.000000e+00, float* %3, align 4
  call void @mySub1(i32* noundef %2)
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 5
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  call void @abort() #3
  unreachable

7:                                                ; preds = %0
  call void @mySub3(i32* noundef %2)
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 7
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  call void @abort() #3
  unreachable

11:                                               ; preds = %7
  call void @mySubEnt2(float* noundef %3)
  %12 = load float, float* %3, align 4
  %13 = fcmp une float %12, 6.600000e+01
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  call void @abort() #3
  unreachable

15:                                               ; preds = %11
  call void @mySubEnt3(float* noundef %3)
  %16 = load float, float* %3, align 4
  %17 = fcmp une float %16, 7.700000e+01
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  call void @abort() #3
  unreachable

19:                                               ; preds = %15
  call void @sub4ent(float* noundef %3)
  %20 = load float, float* %3, align 4
  %21 = fcmp une float %20, 8.800000e+01
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  call void @abort() #3
  unreachable

23:                                               ; preds = %19
  %24 = call i32 @myFunc1()
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = icmp ne i32 %25, -5
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  call void @abort() #3
  unreachable

28:                                               ; preds = %23
  %29 = call i32 @myFunc3()
  store i32 %29, i32* %2, align 4
  %30 = load i32, i32* %2, align 4
  %31 = icmp ne i32 %30, -7
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  call void @abort() #3
  unreachable

33:                                               ; preds = %28
  %34 = call float @myFuncEnt2()
  store float %34, float* %3, align 4
  %35 = load float, float* %3, align 4
  %36 = fcmp une float %35, -6.600000e+01
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  call void @abort() #3
  unreachable

38:                                               ; preds = %33
  %39 = call float @myFuncEnt3()
  store float %39, float* %3, align 4
  %40 = load float, float* %3, align 4
  %41 = fcmp une float %40, -7.700000e+01
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  call void @abort() #3
  unreachable

43:                                               ; preds = %38
  %44 = call float @func4ent()
  store float %44, float* %3, align 4
  %45 = load float, float* %3, align 4
  %46 = fcmp une float %45, -8.800000e+01
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  call void @abort() #3
  unreachable

48:                                               ; preds = %43
  ret i32 0
}

declare dso_local void @mySub1(i32* noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

declare dso_local void @mySub3(i32* noundef) #1

declare dso_local void @mySubEnt2(float* noundef) #1

declare dso_local void @mySubEnt3(float* noundef) #1

declare dso_local void @sub4ent(float* noundef) #1

declare dso_local i32 @myFunc1() #1

declare dso_local i32 @myFunc3() #1

declare dso_local float @myFuncEnt2() #1

declare dso_local float @myFuncEnt3() #1

declare dso_local float @func4ent() #1

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
