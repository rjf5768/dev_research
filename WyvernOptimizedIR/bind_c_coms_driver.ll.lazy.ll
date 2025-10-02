; ModuleID = './bind_c_coms_driver.ll'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/bind_c_coms_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { double, double }
%struct.anon.0 = type { i32, i32 }

@com = dso_local global %struct.anon zeroinitializer, align 8
@single = dso_local global double 0.000000e+00, align 8
@mycom = dso_local global i64 0, align 8
@mycom2 = dso_local global i64 0, align 8
@f03_com2 = dso_local global %struct.anon.0 zeroinitializer, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  store double 1.000000e+00, double* getelementptr inbounds (%struct.anon, %struct.anon* @com, i64 0, i32 0), align 8
  store double 2.000000e+00, double* getelementptr inbounds (%struct.anon, %struct.anon* @com, i64 0, i32 1), align 8
  store double 1.000000e+00, double* @single, align 8
  store i64 1, i64* @mycom, align 8
  store i64 2, i64* @mycom2, align 8
  store i32 1, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @f03_com2, i64 0, i32 0), align 4
  store i32 2, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @f03_com2, i64 0, i32 1), align 4
  call void @test_coms() #4
  %3 = load double, double* getelementptr inbounds (%struct.anon, %struct.anon* @com, i64 0, i32 0), align 8
  %4 = fadd double %3, -1.100000e+00
  %5 = fcmp ueq double %4, 0.000000e+00
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  call void @abort() #5
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %2
  %8 = load double, double* getelementptr inbounds (%struct.anon, %struct.anon* @com, i64 0, i32 1), align 8
  %9 = fadd double %8, -2.100000e+00
  %10 = fcmp ueq double %9, 0.000000e+00
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  call void @abort() #5
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %7
  %13 = load double, double* @single, align 8
  %14 = fadd double %13, -1.100000e+00
  %15 = fcmp ueq double %14, 0.000000e+00
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  call void @abort() #5
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %12
  %18 = load i64, i64* @mycom, align 8
  %.not = icmp eq i64 %18, 2
  br i1 %.not, label %20, label %19

19:                                               ; preds = %17
  call void @abort() #5
  br label %UnifiedUnreachableBlock

20:                                               ; preds = %17
  %21 = load i64, i64* @mycom2, align 8
  %.not1 = icmp eq i64 %21, 3
  br i1 %.not1, label %23, label %22

22:                                               ; preds = %20
  call void @abort() #5
  br label %UnifiedUnreachableBlock

23:                                               ; preds = %20
  %24 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @f03_com2, i64 0, i32 0), align 4
  %.not2 = icmp eq i32 %24, 2
  br i1 %.not2, label %26, label %25

25:                                               ; preds = %23
  call void @abort() #5
  br label %UnifiedUnreachableBlock

26:                                               ; preds = %23
  %27 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @f03_com2, i64 0, i32 1), align 4
  %.not3 = icmp eq i32 %27, 3
  br i1 %.not3, label %29, label %28

28:                                               ; preds = %26
  call void @abort() #5
  br label %UnifiedUnreachableBlock

29:                                               ; preds = %26
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %28, %25, %22, %19, %16, %11, %6
  unreachable
}

declare dso_local void @test_coms() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
