; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/copysign2.c'
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
  %2 = alloca i32, align 4
  %3 = load float, float* getelementptr inbounds ([8 x float], [8 x float]* @Yf, i64 0, i64 0), align 16
  %4 = call float @llvm.copysign.f32(float 1.000000e+00, float %3)
  %5 = getelementptr inbounds [8 x float], [8 x float]* %1, i64 0, i64 0
  store float %4, float* %5, align 16
  %6 = load float, float* getelementptr inbounds ([8 x float], [8 x float]* @Yf, i64 0, i64 1), align 4
  %7 = call float @llvm.copysign.f32(float 1.000000e+00, float %6)
  %8 = getelementptr inbounds [8 x float], [8 x float]* %1, i64 0, i64 1
  store float %7, float* %8, align 4
  %9 = load float, float* getelementptr inbounds ([8 x float], [8 x float]* @Yf, i64 0, i64 2), align 8
  %10 = call float @llvm.copysign.f32(float -1.000000e+00, float %9)
  %11 = getelementptr inbounds [8 x float], [8 x float]* %1, i64 0, i64 2
  store float %10, float* %11, align 8
  %12 = load float, float* getelementptr inbounds ([8 x float], [8 x float]* @Yf, i64 0, i64 3), align 4
  %13 = call float @llvm.copysign.f32(float 0.000000e+00, float %12)
  %14 = getelementptr inbounds [8 x float], [8 x float]* %1, i64 0, i64 3
  store float %13, float* %14, align 4
  %15 = load float, float* getelementptr inbounds ([8 x float], [8 x float]* @Yf, i64 0, i64 4), align 16
  %16 = call float @llvm.copysign.f32(float -0.000000e+00, float %15)
  %17 = getelementptr inbounds [8 x float], [8 x float]* %1, i64 0, i64 4
  store float %16, float* %17, align 16
  %18 = load float, float* getelementptr inbounds ([8 x float], [8 x float]* @Yf, i64 0, i64 5), align 4
  %19 = call float @llvm.copysign.f32(float -0.000000e+00, float %18)
  %20 = getelementptr inbounds [8 x float], [8 x float]* %1, i64 0, i64 5
  store float %19, float* %20, align 4
  %21 = load float, float* getelementptr inbounds ([8 x float], [8 x float]* @Yf, i64 0, i64 6), align 8
  %22 = call float @llvm.copysign.f32(float 0x7FF0000000000000, float %21)
  %23 = getelementptr inbounds [8 x float], [8 x float]* %1, i64 0, i64 6
  store float %22, float* %23, align 8
  %24 = load float, float* getelementptr inbounds ([8 x float], [8 x float]* @Yf, i64 0, i64 7), align 4
  %25 = call float @llvm.copysign.f32(float 0xFFF8000000000000, float %24)
  %26 = getelementptr inbounds [8 x float], [8 x float]* %1, i64 0, i64 7
  store float %25, float* %26, align 4
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %44, %0
  %28 = load i32, i32* %2, align 4
  %29 = icmp slt i32 %28, 8
  br i1 %29, label %30, label %47

30:                                               ; preds = %27
  %31 = getelementptr inbounds [8 x float], [8 x float]* %1, i64 0, i64 0
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float, float* %31, i64 %33
  %35 = bitcast float* %34 to i8*
  %36 = load i32, i32* %2, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float, float* getelementptr inbounds ([8 x float], [8 x float]* @Zf, i64 0, i64 0), i64 %37
  %39 = bitcast float* %38 to i8*
  %40 = call i32 @memcmp(i8* noundef %35, i8* noundef %39, i64 noundef 4) #4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  call void @abort() #5
  unreachable

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %2, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %2, align 4
  br label %27, !llvm.loop !4

47:                                               ; preds = %27
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.copysign.f32(float, float) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @test() #0 {
  %1 = alloca [8 x double], align 16
  %2 = alloca i32, align 4
  %3 = load double, double* getelementptr inbounds ([8 x double], [8 x double]* @Y, i64 0, i64 0), align 16
  %4 = call double @llvm.copysign.f64(double 1.000000e+00, double %3)
  %5 = getelementptr inbounds [8 x double], [8 x double]* %1, i64 0, i64 0
  store double %4, double* %5, align 16
  %6 = load double, double* getelementptr inbounds ([8 x double], [8 x double]* @Y, i64 0, i64 1), align 8
  %7 = call double @llvm.copysign.f64(double 1.000000e+00, double %6)
  %8 = getelementptr inbounds [8 x double], [8 x double]* %1, i64 0, i64 1
  store double %7, double* %8, align 8
  %9 = load double, double* getelementptr inbounds ([8 x double], [8 x double]* @Y, i64 0, i64 2), align 16
  %10 = call double @llvm.copysign.f64(double -1.000000e+00, double %9)
  %11 = getelementptr inbounds [8 x double], [8 x double]* %1, i64 0, i64 2
  store double %10, double* %11, align 16
  %12 = load double, double* getelementptr inbounds ([8 x double], [8 x double]* @Y, i64 0, i64 3), align 8
  %13 = call double @llvm.copysign.f64(double 0.000000e+00, double %12)
  %14 = getelementptr inbounds [8 x double], [8 x double]* %1, i64 0, i64 3
  store double %13, double* %14, align 8
  %15 = load double, double* getelementptr inbounds ([8 x double], [8 x double]* @Y, i64 0, i64 4), align 16
  %16 = call double @llvm.copysign.f64(double -0.000000e+00, double %15)
  %17 = getelementptr inbounds [8 x double], [8 x double]* %1, i64 0, i64 4
  store double %16, double* %17, align 16
  %18 = load double, double* getelementptr inbounds ([8 x double], [8 x double]* @Y, i64 0, i64 5), align 8
  %19 = call double @llvm.copysign.f64(double -0.000000e+00, double %18)
  %20 = getelementptr inbounds [8 x double], [8 x double]* %1, i64 0, i64 5
  store double %19, double* %20, align 8
  %21 = load double, double* getelementptr inbounds ([8 x double], [8 x double]* @Y, i64 0, i64 6), align 16
  %22 = call double @llvm.copysign.f64(double 0x7FF0000000000000, double %21)
  %23 = getelementptr inbounds [8 x double], [8 x double]* %1, i64 0, i64 6
  store double %22, double* %23, align 16
  %24 = load double, double* getelementptr inbounds ([8 x double], [8 x double]* @Y, i64 0, i64 7), align 8
  %25 = call double @llvm.copysign.f64(double 0xFFF8000000000000, double %24)
  %26 = getelementptr inbounds [8 x double], [8 x double]* %1, i64 0, i64 7
  store double %25, double* %26, align 8
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %44, %0
  %28 = load i32, i32* %2, align 4
  %29 = icmp slt i32 %28, 8
  br i1 %29, label %30, label %47

30:                                               ; preds = %27
  %31 = getelementptr inbounds [8 x double], [8 x double]* %1, i64 0, i64 0
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds double, double* %31, i64 %33
  %35 = bitcast double* %34 to i8*
  %36 = load i32, i32* %2, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds double, double* getelementptr inbounds ([8 x double], [8 x double]* @Z, i64 0, i64 0), i64 %37
  %39 = bitcast double* %38 to i8*
  %40 = call i32 @memcmp(i8* noundef %35, i8* noundef %39, i64 noundef 8) #4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  call void @abort() #5
  unreachable

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %2, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %2, align 4
  br label %27, !llvm.loop !6

47:                                               ; preds = %27
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.copysign.f64(double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @testl() #0 {
  %1 = alloca [8 x x86_fp80], align 16
  %2 = alloca i32, align 4
  %3 = load x86_fp80, x86_fp80* getelementptr inbounds ([8 x x86_fp80], [8 x x86_fp80]* @Yl, i64 0, i64 0), align 16
  %4 = call x86_fp80 @llvm.copysign.f80(x86_fp80 0xK3FFF8000000000000000, x86_fp80 %3)
  %5 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %1, i64 0, i64 0
  store x86_fp80 %4, x86_fp80* %5, align 16
  %6 = load x86_fp80, x86_fp80* getelementptr inbounds ([8 x x86_fp80], [8 x x86_fp80]* @Yl, i64 0, i64 1), align 16
  %7 = call x86_fp80 @llvm.copysign.f80(x86_fp80 0xK3FFF8000000000000000, x86_fp80 %6)
  %8 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %1, i64 0, i64 1
  store x86_fp80 %7, x86_fp80* %8, align 16
  %9 = load x86_fp80, x86_fp80* getelementptr inbounds ([8 x x86_fp80], [8 x x86_fp80]* @Yl, i64 0, i64 2), align 16
  %10 = call x86_fp80 @llvm.copysign.f80(x86_fp80 0xKBFFF8000000000000000, x86_fp80 %9)
  %11 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %1, i64 0, i64 2
  store x86_fp80 %10, x86_fp80* %11, align 16
  %12 = load x86_fp80, x86_fp80* getelementptr inbounds ([8 x x86_fp80], [8 x x86_fp80]* @Yl, i64 0, i64 3), align 16
  %13 = call x86_fp80 @llvm.copysign.f80(x86_fp80 0xK00000000000000000000, x86_fp80 %12)
  %14 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %1, i64 0, i64 3
  store x86_fp80 %13, x86_fp80* %14, align 16
  %15 = load x86_fp80, x86_fp80* getelementptr inbounds ([8 x x86_fp80], [8 x x86_fp80]* @Yl, i64 0, i64 4), align 16
  %16 = call x86_fp80 @llvm.copysign.f80(x86_fp80 0xK80000000000000000000, x86_fp80 %15)
  %17 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %1, i64 0, i64 4
  store x86_fp80 %16, x86_fp80* %17, align 16
  %18 = load x86_fp80, x86_fp80* getelementptr inbounds ([8 x x86_fp80], [8 x x86_fp80]* @Yl, i64 0, i64 5), align 16
  %19 = call x86_fp80 @llvm.copysign.f80(x86_fp80 0xK80000000000000000000, x86_fp80 %18)
  %20 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %1, i64 0, i64 5
  store x86_fp80 %19, x86_fp80* %20, align 16
  %21 = load x86_fp80, x86_fp80* getelementptr inbounds ([8 x x86_fp80], [8 x x86_fp80]* @Yl, i64 0, i64 6), align 16
  %22 = call x86_fp80 @llvm.copysign.f80(x86_fp80 0xK7FFF8000000000000000, x86_fp80 %21)
  %23 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %1, i64 0, i64 6
  store x86_fp80 %22, x86_fp80* %23, align 16
  %24 = load x86_fp80, x86_fp80* getelementptr inbounds ([8 x x86_fp80], [8 x x86_fp80]* @Yl, i64 0, i64 7), align 16
  %25 = call x86_fp80 @llvm.copysign.f80(x86_fp80 0xKFFFFC000000000000000, x86_fp80 %24)
  %26 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %1, i64 0, i64 7
  store x86_fp80 %25, x86_fp80* %26, align 16
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %44, %0
  %28 = load i32, i32* %2, align 4
  %29 = icmp slt i32 %28, 8
  br i1 %29, label %30, label %47

30:                                               ; preds = %27
  %31 = getelementptr inbounds [8 x x86_fp80], [8 x x86_fp80]* %1, i64 0, i64 0
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds x86_fp80, x86_fp80* %31, i64 %33
  %35 = bitcast x86_fp80* %34 to i8*
  %36 = load i32, i32* %2, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds x86_fp80, x86_fp80* getelementptr inbounds ([8 x x86_fp80], [8 x x86_fp80]* @Zl, i64 0, i64 0), i64 %37
  %39 = bitcast x86_fp80* %38 to i8*
  %40 = call i32 @memcmp(i8* noundef %35, i8* noundef %39, i64 noundef 10) #4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  call void @abort() #5
  unreachable

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %2, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %2, align 4
  br label %27, !llvm.loop !7

47:                                               ; preds = %27
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare x86_fp80 @llvm.copysign.f80(x86_fp80, x86_fp80) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @testf()
  call void @test()
  call void @testl()
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
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
