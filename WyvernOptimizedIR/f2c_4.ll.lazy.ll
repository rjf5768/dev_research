; ModuleID = './f2c_4.ll'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/f2c_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @f2c_4a__() #0 {
  %1 = alloca double, align 8
  store double 1.023000e+03, double* %1, align 8
  %2 = call double @f2c_4b__(double* noundef nonnull %1) #5
  %3 = load double, double* %1, align 8
  %4 = fcmp une double %3, %2
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  call void @abort() #6
  unreachable

6:                                                ; preds = %0
  ret void
}

declare dso_local double @f2c_4b__(double* noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @f2c_4c__() #3 {
  %1 = alloca { float, float }, align 4
  %2 = alloca { float, float }, align 4
  br i1 false, label %3, label %5, !prof !4

3:                                                ; preds = %0
  br i1 false, label %4, label %5, !prof !4

4:                                                ; preds = %3
  br label %5

5:                                                ; preds = %4, %3, %0
  %6 = getelementptr inbounds { float, float }, { float, float }* %1, i64 0, i32 0
  %7 = getelementptr inbounds { float, float }, { float, float }* %1, i64 0, i32 1
  store float 1.234000e+03, float* %6, align 4
  store float 5.678000e+03, float* %7, align 4
  call void @f2c_4d__({ float, float }* noundef nonnull %2, { float, float }* noundef nonnull %1) #5
  %8 = getelementptr inbounds { float, float }, { float, float }* %1, i64 0, i32 0
  %9 = load float, float* %8, align 4
  %10 = getelementptr inbounds { float, float }, { float, float }* %1, i64 0, i32 1
  %11 = load float, float* %10, align 4
  %12 = getelementptr inbounds { float, float }, { float, float }* %2, i64 0, i32 0
  %13 = load float, float* %12, align 4
  %14 = getelementptr inbounds { float, float }, { float, float }* %2, i64 0, i32 1
  %15 = load float, float* %14, align 4
  %16 = fcmp une float %9, %13
  %17 = fcmp une float %11, %15
  %18 = or i1 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  call void @abort() #6
  unreachable

20:                                               ; preds = %5
  ret void
}

declare dso_local <2 x float> @__mulsc3(float, float, float, float)

declare dso_local void @f2c_4d__({ float, float }* noundef, { float, float }* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @f2c_4e__() #3 {
  %1 = alloca { float, float }, align 4
  %2 = alloca { float, float }, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  br i1 false, label %4, label %6, !prof !4

4:                                                ; preds = %0
  br i1 false, label %5, label %6, !prof !4

5:                                                ; preds = %4
  br label %6

6:                                                ; preds = %5, %4, %0
  %7 = getelementptr inbounds { float, float }, { float, float }* %1, i64 0, i32 0
  %8 = getelementptr inbounds { float, float }, { float, float }* %1, i64 0, i32 1
  store float 1.234000e+03, float* %7, align 4
  store float 5.678000e+03, float* %8, align 4
  call void @f2c_4f__({ float, float }* noundef nonnull %2, i32* noundef nonnull %3, { float, float }* noundef nonnull %1) #5
  %9 = getelementptr inbounds { float, float }, { float, float }* %1, i64 0, i32 0
  %10 = load float, float* %9, align 4
  %11 = getelementptr inbounds { float, float }, { float, float }* %1, i64 0, i32 1
  %12 = load float, float* %11, align 4
  %13 = getelementptr inbounds { float, float }, { float, float }* %2, i64 0, i32 0
  %14 = load float, float* %13, align 4
  %15 = getelementptr inbounds { float, float }, { float, float }* %2, i64 0, i32 1
  %16 = load float, float* %15, align 4
  %17 = fcmp une float %10, %14
  %18 = fcmp une float %12, %16
  %19 = or i1 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  call void @abort() #6
  unreachable

21:                                               ; preds = %6
  ret void
}

declare dso_local void @f2c_4f__({ float, float }* noundef, i32* noundef, { float, float }* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @f2c_4g__() #0 {
  %1 = alloca { double, double }, align 8
  %2 = alloca { double, double }, align 8
  %3 = getelementptr inbounds { double, double }, { double, double }* %1, i64 0, i32 0
  %4 = getelementptr inbounds { double, double }, { double, double }* %1, i64 0, i32 1
  store double 1.234000e+03, double* %3, align 8
  store double 5.678000e+03, double* %4, align 8
  call void @f2c_4h__({ double, double }* noundef nonnull %2, { double, double }* noundef nonnull %1) #5
  %5 = getelementptr inbounds { double, double }, { double, double }* %1, i64 0, i32 0
  %6 = load double, double* %5, align 8
  %7 = getelementptr inbounds { double, double }, { double, double }* %1, i64 0, i32 1
  %8 = load double, double* %7, align 8
  %9 = getelementptr inbounds { double, double }, { double, double }* %2, i64 0, i32 0
  %10 = load double, double* %9, align 8
  %11 = getelementptr inbounds { double, double }, { double, double }* %2, i64 0, i32 1
  %12 = load double, double* %11, align 8
  %13 = fcmp une double %6, %10
  %14 = fcmp une double %8, %12
  %15 = or i1 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %0
  call void @abort() #6
  unreachable

17:                                               ; preds = %0
  ret void
}

declare dso_local void @f2c_4h__({ double, double }* noundef, { double, double }* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @f2c_4i__() #0 {
  %1 = alloca { double, double }, align 8
  %2 = alloca { double, double }, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %4 = getelementptr inbounds { double, double }, { double, double }* %1, i64 0, i32 0
  %5 = getelementptr inbounds { double, double }, { double, double }* %1, i64 0, i32 1
  store double 1.234000e+03, double* %4, align 8
  store double 5.678000e+03, double* %5, align 8
  call void @f2c_4j__({ double, double }* noundef nonnull %2, i32* noundef nonnull %3, { double, double }* noundef nonnull %1) #5
  %6 = getelementptr inbounds { double, double }, { double, double }* %1, i64 0, i32 0
  %7 = load double, double* %6, align 8
  %8 = getelementptr inbounds { double, double }, { double, double }* %1, i64 0, i32 1
  %9 = load double, double* %8, align 8
  %10 = getelementptr inbounds { double, double }, { double, double }* %2, i64 0, i32 0
  %11 = load double, double* %10, align 8
  %12 = getelementptr inbounds { double, double }, { double, double }* %2, i64 0, i32 1
  %13 = load double, double* %12, align 8
  %14 = fcmp une double %7, %11
  %15 = fcmp une double %9, %13
  %16 = or i1 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %0
  call void @abort() #6
  unreachable

18:                                               ; preds = %0
  ret void
}

declare dso_local void @f2c_4j__({ double, double }* noundef, i32* noundef, { double, double }* noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @f2c_4k__({ float, float }* nocapture noundef writeonly %0, { float, float }* nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds { float, float }, { float, float }* %1, i64 0, i32 0
  %4 = load float, float* %3, align 4
  %5 = getelementptr inbounds { float, float }, { float, float }* %1, i64 0, i32 1
  %6 = load float, float* %5, align 4
  %7 = getelementptr inbounds { float, float }, { float, float }* %0, i64 0, i32 0
  %8 = getelementptr inbounds { float, float }, { float, float }* %0, i64 0, i32 1
  store float %4, float* %7, align 4
  store float %6, float* %8, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @f2c_4l__({ float, float }* nocapture noundef writeonly %0, i32* nocapture noundef readnone %1, { float, float }* nocapture noundef readonly %2) #4 {
  %4 = getelementptr inbounds { float, float }, { float, float }* %2, i64 0, i32 0
  %5 = load float, float* %4, align 4
  %6 = getelementptr inbounds { float, float }, { float, float }* %2, i64 0, i32 1
  %7 = load float, float* %6, align 4
  %8 = getelementptr inbounds { float, float }, { float, float }* %0, i64 0, i32 0
  %9 = getelementptr inbounds { float, float }, { float, float }* %0, i64 0, i32 1
  store float %5, float* %8, align 4
  store float %7, float* %9, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @f2c_4m__({ double, double }* nocapture noundef writeonly %0, { double, double }* nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds { double, double }, { double, double }* %1, i64 0, i32 0
  %4 = load double, double* %3, align 8
  %5 = getelementptr inbounds { double, double }, { double, double }* %1, i64 0, i32 1
  %6 = load double, double* %5, align 8
  %7 = getelementptr inbounds { double, double }, { double, double }* %0, i64 0, i32 0
  %8 = getelementptr inbounds { double, double }, { double, double }* %0, i64 0, i32 1
  store double %4, double* %7, align 8
  store double %6, double* %8, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @f2c_4n__({ double, double }* nocapture noundef writeonly %0, i32* nocapture noundef readnone %1, { double, double }* nocapture noundef readonly %2) #4 {
  %4 = getelementptr inbounds { double, double }, { double, double }* %2, i64 0, i32 0
  %5 = load double, double* %4, align 8
  %6 = getelementptr inbounds { double, double }, { double, double }* %2, i64 0, i32 1
  %7 = load double, double* %6, align 8
  %8 = getelementptr inbounds { double, double }, { double, double }* %0, i64 0, i32 0
  %9 = getelementptr inbounds { double, double }, { double, double }* %0, i64 0, i32 1
  store double %5, double* %8, align 8
  store double %7, double* %9, align 8
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{!"branch_weights", i32 1, i32 1048575}
