; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/copysign1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/copysign1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Df = type { float, float, float }
%struct.D = type { double, double, double }
%struct.Dl = type { x86_fp80, x86_fp80, x86_fp80 }

@Tf = internal constant [8 x %struct.Df] [%struct.Df { float 1.000000e+00, float 2.000000e+00, float 1.000000e+00 }, %struct.Df { float 1.000000e+00, float -2.000000e+00, float -1.000000e+00 }, %struct.Df { float -1.000000e+00, float -2.000000e+00, float -1.000000e+00 }, %struct.Df { float 0.000000e+00, float -2.000000e+00, float -0.000000e+00 }, %struct.Df { float -0.000000e+00, float -2.000000e+00, float -0.000000e+00 }, %struct.Df { float -0.000000e+00, float 2.000000e+00, float 0.000000e+00 }, %struct.Df { float 0x7FF0000000000000, float -0.000000e+00, float 0xFFF0000000000000 }, %struct.Df { float 0xFFF8000000000000, float 0x7FF0000000000000, float 0x7FF8000000000000 }], align 16
@T = internal constant [8 x %struct.D] [%struct.D { double 1.000000e+00, double 2.000000e+00, double 1.000000e+00 }, %struct.D { double 1.000000e+00, double -2.000000e+00, double -1.000000e+00 }, %struct.D { double -1.000000e+00, double -2.000000e+00, double -1.000000e+00 }, %struct.D { double 0.000000e+00, double -2.000000e+00, double -0.000000e+00 }, %struct.D { double -0.000000e+00, double -2.000000e+00, double -0.000000e+00 }, %struct.D { double -0.000000e+00, double 2.000000e+00, double 0.000000e+00 }, %struct.D { double 0x7FF0000000000000, double -0.000000e+00, double 0xFFF0000000000000 }, %struct.D { double 0xFFF8000000000000, double 0x7FF0000000000000, double 0x7FF8000000000000 }], align 16
@Tl = internal constant [8 x %struct.Dl] [%struct.Dl { x86_fp80 0xK3FFF8000000000000000, x86_fp80 0xK40008000000000000000, x86_fp80 0xK3FFF8000000000000000 }, %struct.Dl { x86_fp80 0xK3FFF8000000000000000, x86_fp80 0xKC0008000000000000000, x86_fp80 0xKBFFF8000000000000000 }, %struct.Dl { x86_fp80 0xKBFFF8000000000000000, x86_fp80 0xKC0008000000000000000, x86_fp80 0xKBFFF8000000000000000 }, %struct.Dl { x86_fp80 0xK00000000000000000000, x86_fp80 0xKC0008000000000000000, x86_fp80 0xK80000000000000000000 }, %struct.Dl { x86_fp80 0xK80000000000000000000, x86_fp80 0xKC0008000000000000000, x86_fp80 0xK80000000000000000000 }, %struct.Dl { x86_fp80 0xK80000000000000000000, x86_fp80 0xK40008000000000000000, x86_fp80 0xK00000000000000000000 }, %struct.Dl { x86_fp80 0xK7FFF8000000000000000, x86_fp80 0xK80000000000000000000, x86_fp80 0xKFFFF8000000000000000 }, %struct.Dl { x86_fp80 0xKFFFFC000000000000000, x86_fp80 0xK7FFF8000000000000000, x86_fp80 0xK7FFFC000000000000000 }], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local float @cf(float noundef %0, float noundef %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %5 = load float, float* %3, align 4
  %6 = load float, float* %4, align 4
  %7 = call float @llvm.copysign.f32(float %5, float %6)
  ret float %7
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.copysign.f32(float, float) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @testf() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca float, align 4
  store i32 8, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %30, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %33

8:                                                ; preds = %4
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [8 x %struct.Df], [8 x %struct.Df]* @Tf, i64 0, i64 %10
  %12 = getelementptr inbounds %struct.Df, %struct.Df* %11, i32 0, i32 0
  %13 = load float, float* %12, align 4
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x %struct.Df], [8 x %struct.Df]* @Tf, i64 0, i64 %15
  %17 = getelementptr inbounds %struct.Df, %struct.Df* %16, i32 0, i32 1
  %18 = load float, float* %17, align 4
  %19 = call float @cf(float noundef %13, float noundef %18)
  store float %19, float* %3, align 4
  %20 = bitcast float* %3 to i8*
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x %struct.Df], [8 x %struct.Df]* @Tf, i64 0, i64 %22
  %24 = getelementptr inbounds %struct.Df, %struct.Df* %23, i32 0, i32 2
  %25 = bitcast float* %24 to i8*
  %26 = call i32 @memcmp(i8* noundef %20, i8* noundef %25, i64 noundef 4) #4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %8
  call void @abort() #5
  unreachable

29:                                               ; preds = %8
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %1, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %1, align 4
  br label %4, !llvm.loop !4

33:                                               ; preds = %4
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

; Function Attrs: noinline nounwind uwtable
define dso_local double @c(double noundef %0, double noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %5 = load double, double* %3, align 8
  %6 = load double, double* %4, align 8
  %7 = call double @llvm.copysign.f64(double %5, double %6)
  ret double %7
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.copysign.f64(double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  store i32 8, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %30, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %33

8:                                                ; preds = %4
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [8 x %struct.D], [8 x %struct.D]* @T, i64 0, i64 %10
  %12 = getelementptr inbounds %struct.D, %struct.D* %11, i32 0, i32 0
  %13 = load double, double* %12, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x %struct.D], [8 x %struct.D]* @T, i64 0, i64 %15
  %17 = getelementptr inbounds %struct.D, %struct.D* %16, i32 0, i32 1
  %18 = load double, double* %17, align 8
  %19 = call double @c(double noundef %13, double noundef %18)
  store double %19, double* %3, align 8
  %20 = bitcast double* %3 to i8*
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x %struct.D], [8 x %struct.D]* @T, i64 0, i64 %22
  %24 = getelementptr inbounds %struct.D, %struct.D* %23, i32 0, i32 2
  %25 = bitcast double* %24 to i8*
  %26 = call i32 @memcmp(i8* noundef %20, i8* noundef %25, i64 noundef 8) #4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %8
  call void @abort() #5
  unreachable

29:                                               ; preds = %8
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %1, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %1, align 4
  br label %4, !llvm.loop !6

33:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local x86_fp80 @cl(x86_fp80 noundef %0, x86_fp80 noundef %1) #0 {
  %3 = alloca x86_fp80, align 16
  %4 = alloca x86_fp80, align 16
  store x86_fp80 %0, x86_fp80* %3, align 16
  store x86_fp80 %1, x86_fp80* %4, align 16
  %5 = load x86_fp80, x86_fp80* %3, align 16
  %6 = load x86_fp80, x86_fp80* %4, align 16
  %7 = call x86_fp80 @llvm.copysign.f80(x86_fp80 %5, x86_fp80 %6)
  ret x86_fp80 %7
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare x86_fp80 @llvm.copysign.f80(x86_fp80, x86_fp80) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @testl() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca x86_fp80, align 16
  store i32 8, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %30, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %33

8:                                                ; preds = %4
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [8 x %struct.Dl], [8 x %struct.Dl]* @Tl, i64 0, i64 %10
  %12 = getelementptr inbounds %struct.Dl, %struct.Dl* %11, i32 0, i32 0
  %13 = load x86_fp80, x86_fp80* %12, align 16
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x %struct.Dl], [8 x %struct.Dl]* @Tl, i64 0, i64 %15
  %17 = getelementptr inbounds %struct.Dl, %struct.Dl* %16, i32 0, i32 1
  %18 = load x86_fp80, x86_fp80* %17, align 16
  %19 = call x86_fp80 @cl(x86_fp80 noundef %13, x86_fp80 noundef %18)
  store x86_fp80 %19, x86_fp80* %3, align 16
  %20 = bitcast x86_fp80* %3 to i8*
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x %struct.Dl], [8 x %struct.Dl]* @Tl, i64 0, i64 %22
  %24 = getelementptr inbounds %struct.Dl, %struct.Dl* %23, i32 0, i32 2
  %25 = bitcast x86_fp80* %24 to i8*
  %26 = call i32 @memcmp(i8* noundef %20, i8* noundef %25, i64 noundef 10) #4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %8
  call void @abort() #5
  unreachable

29:                                               ; preds = %8
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %1, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %1, align 4
  br label %4, !llvm.loop !7

33:                                               ; preds = %4
  ret void
}

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
