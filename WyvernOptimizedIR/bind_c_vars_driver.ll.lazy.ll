; ModuleID = './bind_c_vars_driver.ll'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/bind_c_vars_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@myf90int = external dso_local global i32, align 4
@myF90Real = dso_local global float 0.000000e+00, align 4
@myVariable = dso_local global i32 0, align 4
@c3 = dso_local global i32 0, align 4
@c4 = dso_local global i32 0, align 4
@myF90Array3D = dso_local global [10 x [5 x [18 x i32]]] zeroinitializer, align 16
@myF90Array2D = dso_local global [2 x [3 x i32]] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  store i32 1, i32* @myf90int, align 4
  store float 1.000000e+00, float* @myF90Real, align 4
  store i32 2, i32* @myVariable, align 4
  store i32 3, i32* @c3, align 4
  store i32 4, i32* @c4, align 4
  store i32 1, i32* getelementptr inbounds ([10 x [5 x [18 x i32]]], [10 x [5 x [18 x i32]]]* @myF90Array3D, i64 0, i64 2, i64 3, i64 4), align 8
  store i32 2, i32* getelementptr inbounds ([2 x [3 x i32]], [2 x [3 x i32]]* @myF90Array2D, i64 0, i64 1, i64 2), align 4
  call void @changeF90Globals() #4
  %3 = load i32, i32* @myf90int, align 4
  %.not = icmp eq i32 %3, 2
  br i1 %.not, label %5, label %4

4:                                                ; preds = %2
  call void @abort() #5
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %2
  %6 = load float, float* @myF90Real, align 4
  %7 = fpext float %6 to double
  %8 = fadd double %7, -3.000000e+00
  %9 = fcmp ueq double %8, 0.000000e+00
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  call void @abort() #5
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %5
  %12 = load i32, i32* @myVariable, align 4
  %.not1 = icmp eq i32 %12, 4
  br i1 %.not1, label %14, label %13

13:                                               ; preds = %11
  call void @abort() #5
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %11
  %15 = load i32, i32* @c3, align 4
  %.not2 = icmp eq i32 %15, 6
  br i1 %.not2, label %17, label %16

16:                                               ; preds = %14
  call void @abort() #5
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %14
  %18 = load i32, i32* @c4, align 4
  %.not3 = icmp eq i32 %18, 2
  br i1 %.not3, label %20, label %19

19:                                               ; preds = %17
  call void @abort() #5
  br label %UnifiedUnreachableBlock

20:                                               ; preds = %17
  %21 = load i32, i32* getelementptr inbounds ([10 x [5 x [18 x i32]]], [10 x [5 x [18 x i32]]]* @myF90Array3D, i64 0, i64 2, i64 3, i64 4), align 8
  %.not4 = icmp eq i32 %21, 2
  br i1 %.not4, label %23, label %22

22:                                               ; preds = %20
  call void @abort() #5
  br label %UnifiedUnreachableBlock

23:                                               ; preds = %20
  %24 = load i32, i32* getelementptr inbounds ([2 x [3 x i32]], [2 x [3 x i32]]* @myF90Array2D, i64 0, i64 1, i64 2), align 4
  %.not5 = icmp eq i32 %24, 3
  br i1 %.not5, label %26, label %25

25:                                               ; preds = %23
  call void @abort() #5
  br label %UnifiedUnreachableBlock

26:                                               ; preds = %23
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %25, %22, %19, %16, %13, %10, %4
  unreachable
}

declare dso_local void @changeF90Globals() #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
