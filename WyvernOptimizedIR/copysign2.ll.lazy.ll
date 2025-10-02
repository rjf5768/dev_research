; ModuleID = './copysign2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/copysign2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Yf = internal global [8 x float] [float 2.000000e+00, float -2.000000e+00, float -2.000000e+00, float -2.000000e+00, float -2.000000e+00, float 2.000000e+00, float -0.000000e+00, float 0x7FF0000000000000], align 16
@Zf = internal constant [8 x float] [float 1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -0.000000e+00, float -0.000000e+00, float 0.000000e+00, float 0xFFF0000000000000, float 0x7FF8000000000000], align 16
@Y = internal global [8 x double] [double 2.000000e+00, double -2.000000e+00, double -2.000000e+00, double -2.000000e+00, double -2.000000e+00, double 2.000000e+00, double -0.000000e+00, double 0x7FF0000000000000], align 16
@Z = internal constant [8 x double] [double 1.000000e+00, double -1.000000e+00, double -1.000000e+00, double -0.000000e+00, double -0.000000e+00, double 0.000000e+00, double 0xFFF0000000000000, double 0x7FF8000000000000], align 16
@Yl = internal global [8 x x86_fp80] [x86_fp80 0xK40008000000000000000, x86_fp80 0xKC0008000000000000000, x86_fp80 0xKC0008000000000000000, x86_fp80 0xKC0008000000000000000, x86_fp80 0xKC0008000000000000000, x86_fp80 0xK40008000000000000000, x86_fp80 0xK80000000000000000000, x86_fp80 0xK7FFF8000000000000000], align 16
@Zl = internal constant [8 x x86_fp80] [x86_fp80 0xK3FFF8000000000000000, x86_fp80 0xKBFFF8000000000000000, x86_fp80 0xKBFFF8000000000000000, x86_fp80 0xK80000000000000000000, x86_fp80 0xK80000000000000000000, x86_fp80 0xK00000000000000000000, x86_fp80 0xKFFFF8000000000000000, x86_fp80 0xK7FFFC000000000000000], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @testf() #0 {
  %1 = alloca [8 x float], align 16
  %2 = load float, float* getelementptr inbounds ([8 x float], [8 x float]* @Yf, i64 0, i64 0), align 16
  %3 = call float @llvm.copysign.f32(float 1.000000e+00, float %2)
  %4 = getelementptr inbounds [8 x float], [8 x float]* %1, i64 0, i64 0
  store float %3, float* %4, align 16
  %5 = load float, float* getelementptr inbounds ([8 x float], [8 x float]* @Yf, i64 0, i64 1), align 4
  %6 = call float @llvm.copysign.f32(float 1.000000e+00, float %5)
  %7 = getelementptr inbounds [8 x float], [8 x float]* %1, i64 0, i64 1
  store float %6, float* %7, align 4
  %8 = load float, float* getelementptr inbounds ([8 x float], [8 x float]* @Yf, i64 0, i64 2), align 8
  %9 = call float @llvm.copysign.f32(float -1.000000e+00, float %8)
  %10 = getelementptr inbounds [8 x float], [8 x float]* %1, i64 0, i64 2
  store float %9, float* %10, align 8
  %11 = load float, float* getelementptr inbounds ([8 x float], [8 x float]* @Yf, i64 0, i64 3), align 4
  %12 = call float @llvm.copysign.f32(float 0.000000e+00, float %11)
  %13 = getelementptr inbounds [8 x float], [8 x float]* %1, i64 0, i64 3
  store float %12, float* %13, align 4
  %14 = load float, float* getelementptr inbounds ([8 x float], [8 x float]* @Yf, i64 0, i64 4), align 16
  %15 = call float @llvm.copysign.f32(float -0.000000e+00, float %14)
  %16 = getelementptr inbounds [8 x float], [8 x float]* %1, i64 0, i64 4
  store float %15, float* %16, align 16
  %17 = load float, float* getelementptr inbounds ([8 x float], [8 x float]* @Yf, i64 0, i64 5), align 4
  %18 = call float @llvm.copysign.f32(float -0.000000e+00, float %17)
  %19 = getelementptr inbounds [8 x float], [8 x float]* %1, i64 0, i64 5
  store float %18, float* %19, align 4
  %20 = load float, float* getelementptr inbounds ([8 x float], [8 x float]* @Yf, i64 0, i64 6), align 8
  %21 = call float @llvm.copysign.f32(float 0x7FF0000000000000, float %20)
  %22 = getelementptr inbounds [8 x float], [8 x float]* %1, i64 0, i64 6
  store float %21, float* %22, align 8
  %23 = load float, float* getelementptr inbounds ([8 x float], [8 x float]* @Yf, i64 0, i64 7), align 4
  %24 = call float @llvm.copysign.f32(float 0xFFF8000000000000, float %23)
  %25 = getelementptr inbounds [8 x float], [8 x float]* %1, i64 0, i64 7
  store float %24, float* %25, align 4
  br label %26

26:                                               ; preds = %37, %0
  %.0 = phi i32 [ 0, %0 ], [ %38, %37 ]
  %27 = icmp ult i32 %.0, 8
  br i1 %27, label %28, label %39

28:                                               ; preds = %26
  %29 = zext i32 %.0 to i64
  %30 = getelementptr inbounds [8 x float], [8 x float]* %1, i64 0, i64 %29
  %31 = zext i32 %.0 to i64
  %32 = getelementptr inbounds [8 x float], [8 x float]* @Zf, i64 0, i64 %31
  %33 = bitcast float* %30 to i32*
  %lhsv = load i32, i32* %33, align 4
  %34 = bitcast float* %32 to i32*
  %rhsv = load i32, i32* %34, align 4
  %.not = icmp eq i32 %lhsv, %rhsv
  br i1 %.not, label %36, label %35

35:                                               ; preds = %28
  call void @abort() #5
  unreachable

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36
  %38 = add nuw nsw i32 %.0, 1
  br label %26, !llvm.loop !4

39:                                               ; preds = %26
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.copysign.f32(float, float) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @test() #0 {
  %1 = alloca [8 x double], align 16
  %2 = load double, double* getelementptr inbounds ([8 x double], [8 x double]* @Y, i64 0, i64 0), align 16
  %3 = call double @llvm.copysign.f64(double 1.000000e+00, double %2)
  %4 = getelementptr inbounds [8 x double], [8 x double]* %1, i64 0, i64 0
  store double %3, double* %4, align 16
  %5 = load double, double* getelementptr inbounds ([8 x double], [8 x double]* @Y, i64 0, i64 1), align 8
  %6 = call double @llvm.copysign.f64(double 1.000000e+00, double %5)
  %7 = getelementptr inbounds [8 x double], [8 x double]* %1, i64 0, i64 1
  store double %6, double* %7, align 8
  %8 = load double, double* getelementptr inbounds ([8 x double], [8 x double]* @Y, i64 0, i64 2), align 16
  %9 = call double @llvm.copysign.f64(double -1.000000e+00, double %8)
  %10 = getelementptr inbounds [8 x double], [8 x double]* %1, i64 0, i64 2
  store double %9, double* %10, align 16
  %11 = load double, double* getelementptr inbounds ([8 x double], [8 x double]* @Y, i64 0, i64 3), align 8
  %12 = call double @llvm.copysign.f64(double 0.000000e+00, double %11)
  %13 = getelementptr inbounds [8 x double], [8 x double]* %1, i64 0, i64 3
  store double %12, double* %13, align 8
  %14 = load double, double* getelementptr inbounds ([8 x double], [8 x double]* @Y, i64 0, i64 4), align 16
  %15 = call double @llvm.copysign.f64(double -0.000000e+00, double %14)
  %16 = getelementptr inbounds [8 x double], [8 x double]* %1, i64 0, i64 4
  store double %15, double* %16, align 16
  %17 = load double, double* getelementptr inbounds ([8 x double], [8 x double]* @Y, i64 0, i64 5), align 8
  %18 = call double @llvm.copysign.f64(double -0.000000e+00, double %17)
  %19 = getelementptr inbounds [8 x double], [8 x double]* %1, i64 0, i64 5
  store double %18, double* %19, align 8
  %20 = load double, double* getelementptr inbounds ([8 x double], [8 x double]* @Y, i64 0, i64 6), align 16
  %21 = call double @llvm.copysign.f64(double 0x7FF0000000000000, double %20)
  %22 = getelementptr inbounds [8 x double], [8 x double]* %1, i64 0, i64 6
  store double %21, double* %22, align 16
  %23 = load double, double* getelementptr inbounds ([8 x double], [8 x double]* @Y, i64 0, i64 7), align 8
  %24 = call double @llvm.copysign.f64(double 0xFFF8000000000000, double %23)
  %25 = getelementptr inbounds [8 x double], [8 x double]* %1, i64 0, i64 7
  store double %24, double* %25, align 8
  br label %26

26:                                               ; preds = %37, %0
  %.0 = phi i32 [ 0, %0 ], [ %38, %37 ]
  %27 = icmp ult i32 %.0, 8
  br i1 %27, label %28, label %39

28:                                               ; preds = %26
  %29 = zext i32 %.0 to i64
  %30 = getelementptr inbounds [8 x double], [8 x double]* %1, i64 0, i64 %29
  %31 = zext i32 %.0 to i64
  %32 = getelementptr inbounds [8 x double], [8 x double]* @Z, i64 0, i64 %31
  %33 = bitcast double* %30 to i64*
  %lhsv = load i64, i64* %33, align 8
  %34 = bitcast double* %32 to i64*
  %rhsv = load i64, i64* %34, align 8
  %.not = icmp eq i64 %lhsv, %rhsv
  br i1 %.not, label %36, label %35

35:                                               ; preds = %28
  call void @abort() #5
  unreachable

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36
  %38 = add nuw nsw i32 %.0, 1
  br label %26, !llvm.loop !6

39:                                               ; preds = %26
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.copysign.f64(double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @testl() #0 {
  %1 = alloca [8 x x86_fp80], align 16
  %2 = load x86_fp80, x86_fp80* getelementptr inbounds ([8 x x86_fp80], [8 x x86_fp80]* @Yl, i64 0, i64 0), align 16
  %3 = call x86_fp80 @llvm.copysign.f80(x86_fp80 0xK3FFF8000000000000000, x86_fp80 %2)
  %4 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %1, i64 0, i64 0
  store x86_fp80 %3, x86_fp80* %4, align 16
  %5 = load x86_fp80, x86_fp80* getelementptr inbounds ([8 x x86_fp80], [8 x x86_fp80]* @Yl, i64 0, i64 1), align 16
  %6 = call x86_fp80 @llvm.copysign.f80(x86_fp80 0xK3FFF8000000000000000, x86_fp80 %5)
  %7 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %1, i64 0, i64 1
  store x86_fp80 %6, x86_fp80* %7, align 16
  %8 = load x86_fp80, x86_fp80* getelementptr inbounds ([8 x x86_fp80], [8 x x86_fp80]* @Yl, i64 0, i64 2), align 16
  %9 = call x86_fp80 @llvm.copysign.f80(x86_fp80 0xKBFFF8000000000000000, x86_fp80 %8)
  %10 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %1, i64 0, i64 2
  store x86_fp80 %9, x86_fp80* %10, align 16
  %11 = load x86_fp80, x86_fp80* getelementptr inbounds ([8 x x86_fp80], [8 x x86_fp80]* @Yl, i64 0, i64 3), align 16
  %12 = call x86_fp80 @llvm.copysign.f80(x86_fp80 0xK00000000000000000000, x86_fp80 %11)
  %13 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %1, i64 0, i64 3
  store x86_fp80 %12, x86_fp80* %13, align 16
  %14 = load x86_fp80, x86_fp80* getelementptr inbounds ([8 x x86_fp80], [8 x x86_fp80]* @Yl, i64 0, i64 4), align 16
  %15 = call x86_fp80 @llvm.copysign.f80(x86_fp80 0xK80000000000000000000, x86_fp80 %14)
  %16 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %1, i64 0, i64 4
  store x86_fp80 %15, x86_fp80* %16, align 16
  %17 = load x86_fp80, x86_fp80* getelementptr inbounds ([8 x x86_fp80], [8 x x86_fp80]* @Yl, i64 0, i64 5), align 16
  %18 = call x86_fp80 @llvm.copysign.f80(x86_fp80 0xK80000000000000000000, x86_fp80 %17)
  %19 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %1, i64 0, i64 5
  store x86_fp80 %18, x86_fp80* %19, align 16
  %20 = load x86_fp80, x86_fp80* getelementptr inbounds ([8 x x86_fp80], [8 x x86_fp80]* @Yl, i64 0, i64 6), align 16
  %21 = call x86_fp80 @llvm.copysign.f80(x86_fp80 0xK7FFF8000000000000000, x86_fp80 %20)
  %22 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %1, i64 0, i64 6
  store x86_fp80 %21, x86_fp80* %22, align 16
  %23 = load x86_fp80, x86_fp80* getelementptr inbounds ([8 x x86_fp80], [8 x x86_fp80]* @Yl, i64 0, i64 7), align 16
  %24 = call x86_fp80 @llvm.copysign.f80(x86_fp80 0xKFFFFC000000000000000, x86_fp80 %23)
  %25 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %1, i64 0, i64 7
  store x86_fp80 %24, x86_fp80* %25, align 16
  br label %26

26:                                               ; preds = %37, %0
  %.0 = phi i32 [ 0, %0 ], [ %38, %37 ]
  %27 = icmp ult i32 %.0, 8
  br i1 %27, label %28, label %39

28:                                               ; preds = %26
  %29 = zext i32 %.0 to i64
  %30 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %1, i64 0, i64 %29
  %31 = bitcast x86_fp80* %30 to i8*
  %32 = zext i32 %.0 to i64
  %33 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* @Zl, i64 0, i64 %32
  %34 = bitcast x86_fp80* %33 to i8*
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(10) %31, i8* noundef nonnull dereferenceable(10) %34, i64 10)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %36, label %35

35:                                               ; preds = %28
  call void @abort() #5
  unreachable

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36
  %38 = add nuw nsw i32 %.0, 1
  br label %26, !llvm.loop !7

39:                                               ; preds = %26
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare x86_fp80 @llvm.copysign.f80(x86_fp80, x86_fp80) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @testf()
  call void @test()
  call void @testl()
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
