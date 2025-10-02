; ModuleID = './bind_c_usage_10_c.ll'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/bind_c_usage_10_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  store i32 -1, i32* %1, align 4
  store float -3.000000e+00, float* %2, align 4
  call void @mySub1(i32* noundef nonnull %1) #3
  %3 = load i32, i32* %1, align 4
  %.not = icmp eq i32 %3, 5
  br i1 %.not, label %5, label %4

4:                                                ; preds = %0
  call void @abort() #4
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %0
  call void @mySub3(i32* noundef nonnull %1) #3
  %6 = load i32, i32* %1, align 4
  %.not1 = icmp eq i32 %6, 7
  br i1 %.not1, label %8, label %7

7:                                                ; preds = %5
  call void @abort() #4
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %5
  call void @mySubEnt2(float* noundef nonnull %2) #3
  %9 = load float, float* %2, align 4
  %10 = fcmp une float %9, 6.600000e+01
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  call void @abort() #4
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %8
  call void @mySubEnt3(float* noundef nonnull %2) #3
  %13 = load float, float* %2, align 4
  %14 = fcmp une float %13, 7.700000e+01
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void @abort() #4
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %12
  call void @sub4ent(float* noundef nonnull %2) #3
  %17 = load float, float* %2, align 4
  %18 = fcmp une float %17, 8.800000e+01
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  call void @abort() #4
  br label %UnifiedUnreachableBlock

20:                                               ; preds = %16
  %21 = call i32 @myFunc1() #3
  store i32 %21, i32* %1, align 4
  %.not2 = icmp eq i32 %21, -5
  br i1 %.not2, label %23, label %22

22:                                               ; preds = %20
  call void @abort() #4
  br label %UnifiedUnreachableBlock

23:                                               ; preds = %20
  %24 = call i32 @myFunc3() #3
  store i32 %24, i32* %1, align 4
  %.not3 = icmp eq i32 %24, -7
  br i1 %.not3, label %26, label %25

25:                                               ; preds = %23
  call void @abort() #4
  br label %UnifiedUnreachableBlock

26:                                               ; preds = %23
  %27 = call float @myFuncEnt2() #3
  store float %27, float* %2, align 4
  %28 = fcmp une float %27, -6.600000e+01
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  call void @abort() #4
  br label %UnifiedUnreachableBlock

30:                                               ; preds = %26
  %31 = call float @myFuncEnt3() #3
  store float %31, float* %2, align 4
  %32 = fcmp une float %31, -7.700000e+01
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  call void @abort() #4
  br label %UnifiedUnreachableBlock

34:                                               ; preds = %30
  %35 = call float @func4ent() #3
  store float %35, float* %2, align 4
  %36 = fcmp une float %35, -8.800000e+01
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  call void @abort() #4
  br label %UnifiedUnreachableBlock

38:                                               ; preds = %34
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %37, %33, %29, %25, %22, %19, %15, %11, %7, %4
  unreachable
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
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
