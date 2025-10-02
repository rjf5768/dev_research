; ModuleID = './L_canny.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/18-imp/L_canny.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @L_canny(float noundef %0, float* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, float** nocapture noundef writeonly %4, i8* noundef %5) #0 {
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = fpext float %0 to double
  %14 = call i32 @GaussianMask(double noundef %13, i32* noundef nonnull %11, float** noundef nonnull %9, i8* noundef %5)
  %.not = icmp eq i32 %14, 0
  br i1 %.not, label %16, label %15

15:                                               ; preds = %6
  br label %69

16:                                               ; preds = %6
  %17 = fpext float %0 to double
  %18 = call i32 @DGaussianMask(double noundef %17, i32* noundef nonnull %12, float** noundef nonnull %10, i8* noundef %5)
  %.not2 = icmp eq i32 %18, 0
  br i1 %.not2, label %20, label %19

19:                                               ; preds = %16
  br label %69

20:                                               ; preds = %16
  %21 = load float*, float** %9, align 8
  %22 = load float*, float** %10, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @dfilter(float* noundef %1, float* noundef %21, float* noundef %22, i32 noundef %23, i32 noundef %24, i32 noundef %2, i32 noundef %3, float** noundef nonnull %7, i8* noundef %5)
  %.not3 = icmp eq i32 %25, 0
  br i1 %.not3, label %27, label %26

26:                                               ; preds = %20
  br label %69

27:                                               ; preds = %20
  %28 = load float*, float** %10, align 8
  %29 = load float*, float** %9, align 8
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @dfilter(float* noundef %1, float* noundef %28, float* noundef %29, i32 noundef %30, i32 noundef %31, i32 noundef %2, i32 noundef %3, float** noundef nonnull %8, i8* noundef %5)
  %.not4 = icmp eq i32 %32, 0
  br i1 %.not4, label %34, label %33

33:                                               ; preds = %27
  br label %69

34:                                               ; preds = %27
  %35 = mul nsw i32 %3, %2
  %36 = sext i32 %35 to i64
  %37 = call noalias i8* @calloc(i64 noundef %36, i64 noundef 4) #4
  %38 = bitcast i8* %37 to float*
  %.not5 = icmp eq i8* %37, null
  br i1 %.not5, label %39, label %40

39:                                               ; preds = %34
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(14) %5, i8* noundef nonnull align 1 dereferenceable(14) getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 14, i1 false)
  br label %69

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %63, %40
  %.01 = phi i32 [ 0, %40 ], [ %64, %63 ]
  %42 = mul nsw i32 %3, %2
  %43 = icmp slt i32 %.01, %42
  br i1 %43, label %44, label %65

44:                                               ; preds = %41
  %45 = load float*, float** %8, align 8
  %46 = zext i32 %.01 to i64
  %47 = getelementptr inbounds float, float* %45, i64 %46
  %48 = load float, float* %47, align 4
  %49 = zext i32 %.01 to i64
  %50 = getelementptr inbounds float, float* %45, i64 %49
  %51 = load float, float* %50, align 4
  %52 = load float*, float** %7, align 8
  %53 = zext i32 %.01 to i64
  %54 = getelementptr inbounds float, float* %52, i64 %53
  %55 = load float, float* %54, align 4
  %56 = zext i32 %.01 to i64
  %57 = getelementptr inbounds float, float* %52, i64 %56
  %58 = load float, float* %57, align 4
  %59 = fmul float %55, %58
  %60 = call float @llvm.fmuladd.f32(float %48, float %51, float %59)
  %sqrtf = call float @sqrtf(float noundef %60) #1
  %61 = zext i32 %.01 to i64
  %62 = getelementptr inbounds float, float* %38, i64 %61
  store float %sqrtf, float* %62, align 4
  br label %63

63:                                               ; preds = %44
  %64 = add nuw nsw i32 %.01, 1
  br label %41, !llvm.loop !4

65:                                               ; preds = %41
  %66 = load float*, float** %7, align 8
  %67 = load float*, float** %8, align 8
  %68 = call float* @dnon_max(float* noundef nonnull %38, float* noundef %66, float* noundef %67, i32 noundef %2, i32 noundef %3)
  store float* %68, float** %4, align 8
  br label %69

69:                                               ; preds = %65, %39, %33, %26, %19, %15
  %.0 = phi i32 [ 1, %15 ], [ 1, %19 ], [ 1, %26 ], [ 1, %33 ], [ 0, %65 ], [ 1, %39 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @GaussianMask(double noundef %0, i32* nocapture noundef %1, float** nocapture noundef writeonly %2, i8* noundef %3) #0 {
  %5 = fptrunc double %0 to float
  %6 = fmul float %5, 6.000000e+00
  %7 = fptosi float %6 to i16
  %8 = sext i16 %7 to i32
  store i32 %8, i32* %1, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %4
  %12 = load i32, i32* %1, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %1, align 4
  br label %14

14:                                               ; preds = %11, %4
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = call noalias i8* @calloc(i64 noundef %16, i64 noundef 4) #4
  %.not = icmp eq i8* %17, null
  br i1 %.not, label %18, label %19

18:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(14) %3, i8* noundef nonnull align 1 dereferenceable(14) getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 14, i1 false)
  br label %76

19:                                               ; preds = %14
  %20 = bitcast i8* %17 to float*
  %21 = load i32, i32* %1, align 4
  %.neg = sdiv i32 %21, -2
  %22 = trunc i32 %.neg to i16
  br label %23

23:                                               ; preds = %72, %19
  %.02 = phi i16 [ %22, %19 ], [ %73, %72 ]
  %.01 = phi float* [ %20, %19 ], [ %.2, %72 ]
  %24 = sext i16 %.02 to i32
  %25 = load i32, i32* %1, align 4
  %26 = sdiv i32 %25, 2
  %.not3 = icmp slt i32 %26, %24
  br i1 %.not3, label %74, label %27

27:                                               ; preds = %23
  %28 = sext i16 %.02 to i32
  %29 = load i32, i32* %1, align 4
  %30 = sdiv i32 %29, 2
  %31 = sub nsw i32 0, %28
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = sitofp i16 %.02 to double
  %35 = fadd double %34, 5.000000e-01
  %sqrtf7 = call float @sqrtf(float noundef 2.000000e+00) #1
  %36 = fpext float %5 to double
  %37 = fmul double %36, 0x3FF6A09E667F3BCD
  %38 = fdiv double %35, %37
  %39 = call double @erf(double noundef %38) #4
  %40 = fadd double %39, 1.000000e+00
  br label %71

41:                                               ; preds = %27
  %42 = sext i16 %.02 to i32
  %43 = load i32, i32* %1, align 4
  %44 = sdiv i32 %43, 2
  %45 = add nsw i32 %44, %42
  %46 = add nsw i32 %43, -1
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %41
  %49 = sitofp i16 %.02 to double
  %50 = fadd double %49, -5.000000e-01
  %sqrtf6 = call float @sqrtf(float noundef 2.000000e+00) #1
  %51 = fpext float %5 to double
  %52 = fmul double %51, 0x3FF6A09E667F3BCD
  %53 = fdiv double %50, %52
  %54 = call double @erf(double noundef %53) #4
  %55 = fsub double 1.000000e+00, %54
  br label %70

56:                                               ; preds = %41
  %57 = sitofp i16 %.02 to double
  %58 = fadd double %57, 5.000000e-01
  %sqrtf = call float @sqrtf(float noundef 2.000000e+00) #1
  %59 = fpext float %5 to double
  %60 = fmul double %59, 0x3FF6A09E667F3BCD
  %61 = fdiv double %58, %60
  %62 = call double @erf(double noundef %61) #4
  %63 = sitofp i16 %.02 to double
  %64 = fadd double %63, -5.000000e-01
  %sqrtf5 = call float @sqrtf(float noundef 2.000000e+00) #1
  %65 = fpext float %5 to double
  %66 = fmul double %65, 0x3FF6A09E667F3BCD
  %67 = fdiv double %64, %66
  %68 = call double @erf(double noundef %67) #4
  %69 = fsub double %62, %68
  br label %70

70:                                               ; preds = %56, %48
  %storemerge.in.in = phi double [ %69, %56 ], [ %55, %48 ]
  br label %71

71:                                               ; preds = %70, %33
  %storemerge4.in.in = phi double [ %storemerge.in.in, %70 ], [ %40, %33 ]
  %storemerge4.in = fmul double %storemerge4.in.in, 5.000000e-01
  %storemerge4 = fptrunc double %storemerge4.in to float
  store float %storemerge4, float* %.01, align 4
  br label %72

72:                                               ; preds = %71
  %.2 = getelementptr inbounds float, float* %.01, i64 1
  %73 = add i16 %.02, 1
  br label %23, !llvm.loop !6

74:                                               ; preds = %23
  %75 = bitcast float** %2 to i8**
  store i8* %17, i8** %75, align 8
  br label %76

76:                                               ; preds = %74, %18
  %.0 = phi i32 [ 0, %74 ], [ 1, %18 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local double @erf(double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @DGaussianMask(double noundef %0, i32* nocapture noundef %1, float** nocapture noundef writeonly %2, i8* noundef %3) #0 {
  %5 = fptrunc double %0 to float
  %sqrtf = call float @sqrtf(float noundef 2.000000e+00) #1
  %6 = fpext float %5 to double
  %7 = fmul double %6, 0x4026A09E667F3BCD
  %8 = fptosi double %7 to i16
  %9 = sext i16 %8 to i32
  store i32 %9, i32* %1, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load i32, i32* %1, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %1, align 4
  br label %15

15:                                               ; preds = %12, %4
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = call noalias i8* @calloc(i64 noundef %17, i64 noundef 4) #4
  %.not = icmp eq i8* %18, null
  br i1 %.not, label %19, label %20

19:                                               ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(14) %3, i8* noundef nonnull align 1 dereferenceable(14) getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 14, i1 false)
  br label %117

20:                                               ; preds = %15
  %21 = bitcast i8* %18 to float*
  %22 = load i32, i32* %1, align 4
  %.neg = sdiv i32 %22, -2
  %23 = trunc i32 %.neg to i16
  br label %24

24:                                               ; preds = %113, %20
  %.02 = phi i16 [ %23, %20 ], [ %114, %113 ]
  %.01 = phi float* [ %21, %20 ], [ %.2, %113 ]
  %25 = sext i16 %.02 to i32
  %26 = load i32, i32* %1, align 4
  %27 = sdiv i32 %26, 2
  %.not3 = icmp slt i32 %27, %25
  br i1 %.not3, label %115, label %28

28:                                               ; preds = %24
  %29 = sext i16 %.02 to i32
  %30 = load i32, i32* %1, align 4
  %31 = sdiv i32 %30, 2
  %32 = sub nsw i32 0, %29
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %28
  %35 = fpext float %5 to double
  %36 = call double @sqrt(double noundef 0x401921FB54442D18) #4
  %37 = fmul double %35, 0x40040D931FF62705
  %38 = fdiv double 1.000000e+00, %37
  %39 = fptrunc double %38 to float
  %40 = fpext float %39 to double
  %41 = sitofp i16 %.02 to double
  %42 = fadd double %41, 5.000000e-01
  %43 = sitofp i16 %.02 to double
  %44 = fadd double %43, 5.000000e-01
  %45 = fneg double %42
  %46 = fmul double %44, %45
  %47 = fpext float %5 to double
  %48 = fmul double %47, 2.000000e+00
  %49 = fpext float %5 to double
  %50 = fmul double %48, %49
  %51 = fdiv double %46, %50
  %52 = call double @exp(double noundef %51) #4
  %53 = fmul double %52, %40
  br label %112

54:                                               ; preds = %28
  %55 = sext i16 %.02 to i32
  %56 = load i32, i32* %1, align 4
  %57 = sdiv i32 %56, 2
  %58 = add nsw i32 %57, %55
  %59 = add nsw i32 %56, -1
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %81

61:                                               ; preds = %54
  %62 = fpext float %5 to double
  %63 = call double @sqrt(double noundef 0x401921FB54442D18) #4
  %64 = fmul double %62, 0x40040D931FF62705
  %65 = fdiv double -1.000000e+00, %64
  %66 = fptrunc double %65 to float
  %67 = fpext float %66 to double
  %68 = sitofp i16 %.02 to double
  %69 = fadd double %68, -5.000000e-01
  %70 = sitofp i16 %.02 to double
  %71 = fadd double %70, -5.000000e-01
  %72 = fneg double %69
  %73 = fmul double %71, %72
  %74 = fpext float %5 to double
  %75 = fmul double %74, 2.000000e+00
  %76 = fpext float %5 to double
  %77 = fmul double %75, %76
  %78 = fdiv double %73, %77
  %79 = call double @exp(double noundef %78) #4
  %80 = fmul double %79, %67
  br label %111

81:                                               ; preds = %54
  %82 = sitofp i16 %.02 to double
  %83 = fadd double %82, 5.000000e-01
  %84 = sitofp i16 %.02 to double
  %85 = fadd double %84, 5.000000e-01
  %86 = fneg double %83
  %87 = fmul double %85, %86
  %88 = fpext float %5 to double
  %89 = fmul double %88, 2.000000e+00
  %90 = fpext float %5 to double
  %91 = fmul double %89, %90
  %92 = fdiv double %87, %91
  %93 = call double @exp(double noundef %92) #4
  %94 = sitofp i16 %.02 to double
  %95 = fadd double %94, -5.000000e-01
  %96 = sitofp i16 %.02 to double
  %97 = fadd double %96, -5.000000e-01
  %98 = fneg double %95
  %99 = fmul double %97, %98
  %100 = fpext float %5 to double
  %101 = fmul double %100, 2.000000e+00
  %102 = fpext float %5 to double
  %103 = fmul double %101, %102
  %104 = fdiv double %99, %103
  %105 = call double @exp(double noundef %104) #4
  %106 = fsub double %93, %105
  %107 = fpext float %5 to double
  %108 = call double @sqrt(double noundef 0x401921FB54442D18) #4
  %109 = fmul double %107, 0x40040D931FF62705
  %110 = fdiv double %106, %109
  br label %111

111:                                              ; preds = %81, %61
  %storemerge.in = phi double [ %110, %81 ], [ %80, %61 ]
  br label %112

112:                                              ; preds = %111, %34
  %storemerge4.in = phi double [ %storemerge.in, %111 ], [ %53, %34 ]
  %storemerge4 = fptrunc double %storemerge4.in to float
  store float %storemerge4, float* %.01, align 4
  br label %113

113:                                              ; preds = %112
  %.2 = getelementptr inbounds float, float* %.01, i64 1
  %114 = add i16 %.02, 1
  br label %24, !llvm.loop !7

115:                                              ; preds = %24
  %116 = bitcast float** %2 to i8**
  store i8* %18, i8** %116, align 8
  br label %117

117:                                              ; preds = %115, %19
  %.0 = phi i32 [ 0, %115 ], [ 1, %19 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local double @exp(double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dfilter(float* nocapture noundef readonly %0, float* nocapture noundef readonly %1, float* nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, float** nocapture noundef writeonly %7, i8* noundef %8) #0 {
  %10 = mul nsw i32 %5, %6
  %11 = sext i32 %10 to i64
  %12 = call noalias i8* @calloc(i64 noundef %11, i64 noundef 4) #4
  %13 = bitcast i8* %12 to float*
  %.not = icmp eq i8* %12, null
  br i1 %.not, label %14, label %15

14:                                               ; preds = %9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(14) %8, i8* noundef nonnull align 1 dereferenceable(14) getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 14, i1 false)
  br label %151

15:                                               ; preds = %9
  br label %16

16:                                               ; preds = %75, %15
  %.08 = phi i16 [ 0, %15 ], [ %76, %75 ]
  %.01 = phi float* [ %13, %15 ], [ %.1, %75 ]
  %17 = sext i16 %.08 to i32
  %sext = shl i32 %6, 16
  %18 = ashr exact i32 %sext, 16
  %19 = icmp sgt i32 %18, %17
  br i1 %19, label %20, label %77

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %71, %20
  %.06 = phi i16 [ 0, %20 ], [ %73, %71 ]
  %.1 = phi float* [ %.01, %20 ], [ %72, %71 ]
  %22 = sext i16 %.06 to i32
  %sext20 = shl i32 %5, 16
  %23 = ashr exact i32 %sext20, 16
  %24 = icmp sgt i32 %23, %22
  br i1 %24, label %25, label %74

25:                                               ; preds = %21
  %.neg21 = sdiv i32 %3, -2
  %26 = trunc i32 %.neg21 to i16
  br label %27

27:                                               ; preds = %68, %25
  %.04 = phi i16 [ %26, %25 ], [ %69, %68 ]
  %28 = sext i16 %.04 to i32
  %29 = sdiv i32 %3, 2
  %.not22 = icmp slt i32 %29, %28
  br i1 %.not22, label %70, label %30

30:                                               ; preds = %27
  %31 = sext i16 %.06 to i32
  %32 = sext i16 %.04 to i32
  %33 = add nsw i32 %31, %32
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = sext i16 %.08 to i32
  %sext29 = shl i32 %5, 16
  %37 = ashr exact i32 %sext29, 16
  %38 = mul nsw i32 %37, %36
  br label %59

39:                                               ; preds = %30
  %40 = sext i16 %.06 to i32
  %41 = sext i16 %.04 to i32
  %42 = add nsw i32 %40, %41
  %sext23 = shl i32 %5, 16
  %43 = ashr exact i32 %sext23, 16
  %.not24 = icmp slt i32 %42, %43
  br i1 %.not24, label %50, label %44

44:                                               ; preds = %39
  %45 = sext i16 %.08 to i32
  %46 = add nsw i32 %45, 1
  %sext28 = shl i32 %5, 16
  %47 = ashr exact i32 %sext28, 16
  %48 = mul nsw i32 %46, %47
  %49 = add nsw i32 %48, -1
  br label %58

50:                                               ; preds = %39
  %51 = sext i16 %.08 to i32
  %sext25 = shl i32 %5, 16
  %52 = ashr exact i32 %sext25, 16
  %53 = mul nsw i32 %52, %51
  %54 = sext i16 %.06 to i32
  %55 = add nsw i32 %53, %54
  %56 = sext i16 %.04 to i32
  %57 = add nsw i32 %55, %56
  br label %58

58:                                               ; preds = %50, %44
  %.pn26.in = phi i32 [ %49, %44 ], [ %57, %50 ]
  br label %59

59:                                               ; preds = %58, %35
  %.pn27.in = phi i32 [ %38, %35 ], [ %.pn26.in, %58 ]
  %.pn27 = sext i32 %.pn27.in to i64
  %.13.in = getelementptr inbounds float, float* %0, i64 %.pn27
  %.13 = load float, float* %.13.in, align 4
  %60 = sdiv i32 %3, 2
  %61 = sext i16 %.04 to i32
  %62 = sub nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds float, float* %1, i64 %63
  %65 = load float, float* %64, align 4
  %66 = load float, float* %.1, align 4
  %67 = call float @llvm.fmuladd.f32(float %.13, float %65, float %66)
  store float %67, float* %.1, align 4
  br label %68

68:                                               ; preds = %59
  %69 = add i16 %.04, 1
  br label %27, !llvm.loop !8

70:                                               ; preds = %27
  br label %71

71:                                               ; preds = %70
  %72 = getelementptr inbounds float, float* %.1, i64 1
  %73 = add i16 %.06, 1
  br label %21, !llvm.loop !9

74:                                               ; preds = %21
  br label %75

75:                                               ; preds = %74
  %76 = add i16 %.08, 1
  br label %16, !llvm.loop !10

77:                                               ; preds = %16
  %78 = mul nsw i32 %5, %6
  %79 = sext i32 %78 to i64
  %80 = call noalias i8* @calloc(i64 noundef %79, i64 noundef 4) #4
  %81 = bitcast i8* %80 to float*
  %.not10 = icmp eq i8* %80, null
  br i1 %.not10, label %82, label %83

82:                                               ; preds = %77
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(14) %8, i8* noundef nonnull align 1 dereferenceable(14) getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 14, i1 false)
  br label %151

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %147, %83
  %.17 = phi i16 [ 0, %83 ], [ %148, %147 ]
  %85 = sext i16 %.17 to i32
  %sext11 = shl i32 %5, 16
  %86 = ashr exact i32 %sext11, 16
  %87 = icmp sgt i32 %86, %85
  br i1 %87, label %88, label %149

88:                                               ; preds = %84
  br label %89

89:                                               ; preds = %144, %88
  %.19 = phi i16 [ 0, %88 ], [ %145, %144 ]
  %90 = sext i16 %.19 to i32
  %sext12 = shl i32 %6, 16
  %91 = ashr exact i32 %sext12, 16
  %92 = icmp sgt i32 %91, %90
  br i1 %92, label %93, label %146

93:                                               ; preds = %89
  %.neg = sdiv i32 %4, -2
  %94 = trunc i32 %.neg to i16
  br label %95

95:                                               ; preds = %141, %93
  %.15 = phi i16 [ %94, %93 ], [ %142, %141 ]
  %96 = sext i16 %.15 to i32
  %97 = sdiv i32 %4, 2
  %.not13 = icmp slt i32 %97, %96
  br i1 %.not13, label %143, label %98

98:                                               ; preds = %95
  %99 = sext i16 %.19 to i32
  %100 = sext i16 %.15 to i32
  %101 = add nsw i32 %99, %100
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = sext i16 %.17 to i64
  br label %125

105:                                              ; preds = %98
  %106 = sext i16 %.19 to i32
  %107 = sext i16 %.15 to i32
  %108 = add nsw i32 %106, %107
  %sext14 = shl i32 %6, 16
  %109 = ashr exact i32 %sext14, 16
  %.not15 = icmp slt i32 %108, %109
  br i1 %.not15, label %116, label %110

110:                                              ; preds = %105
  %sext19 = shl i32 %6, 16
  %111 = ashr exact i32 %sext19, 16
  %112 = add nsw i32 %111, -1
  %113 = mul nsw i32 %112, %5
  %114 = sext i16 %.17 to i32
  %115 = add nsw i32 %113, %114
  br label %124

116:                                              ; preds = %105
  %117 = sext i16 %.19 to i32
  %118 = sext i16 %.15 to i32
  %119 = add nsw i32 %117, %118
  %sext16 = shl i32 %5, 16
  %120 = ashr exact i32 %sext16, 16
  %121 = mul nsw i32 %119, %120
  %122 = sext i16 %.17 to i32
  %123 = add nsw i32 %121, %122
  br label %124

124:                                              ; preds = %116, %110
  %.pn.in = phi i32 [ %115, %110 ], [ %123, %116 ]
  %.pn = sext i32 %.pn.in to i64
  br label %125

125:                                              ; preds = %124, %103
  %.pn17 = phi i64 [ %104, %103 ], [ %.pn, %124 ]
  %.3.in = getelementptr inbounds float, float* %13, i64 %.pn17
  %.3 = load float, float* %.3.in, align 4
  %126 = sext i16 %.19 to i32
  %sext18 = shl i32 %5, 16
  %127 = ashr exact i32 %sext18, 16
  %128 = mul nsw i32 %127, %126
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds float, float* %81, i64 %129
  %131 = sext i16 %.17 to i64
  %132 = getelementptr inbounds float, float* %130, i64 %131
  %133 = sdiv i32 %4, 2
  %134 = sext i16 %.15 to i32
  %135 = sub nsw i32 %133, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds float, float* %2, i64 %136
  %138 = load float, float* %137, align 4
  %139 = load float, float* %132, align 4
  %140 = call float @llvm.fmuladd.f32(float %.3, float %138, float %139)
  store float %140, float* %132, align 4
  br label %141

141:                                              ; preds = %125
  %142 = add i16 %.15, 1
  br label %95, !llvm.loop !11

143:                                              ; preds = %95
  br label %144

144:                                              ; preds = %143
  %145 = add i16 %.19, 1
  br label %89, !llvm.loop !12

146:                                              ; preds = %89
  br label %147

147:                                              ; preds = %146
  %148 = add i16 %.17, 1
  br label %84, !llvm.loop !13

149:                                              ; preds = %84
  %150 = bitcast float** %7 to i8**
  store i8* %80, i8** %150, align 8
  br label %151

151:                                              ; preds = %149, %82, %14
  %.0 = phi i32 [ 0, %149 ], [ 1, %82 ], [ 1, %14 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias float* @dnon_max(float* nocapture noundef readonly %0, float* nocapture noundef readonly %1, float* nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = mul nsw i32 %3, %4
  %7 = sext i32 %6 to i64
  %8 = call noalias i8* @calloc(i64 noundef %7, i64 noundef 4) #4
  %9 = bitcast i8* %8 to float*
  br label %10

10:                                               ; preds = %183, %5
  %.04 = phi i32 [ 1, %5 ], [ %184, %183 ]
  %11 = add nsw i32 %4, -2
  %12 = icmp slt i32 %.04, %11
  br i1 %12, label %13, label %185

13:                                               ; preds = %10
  br label %14

14:                                               ; preds = %180, %13
  %.03 = phi i32 [ 1, %13 ], [ %181, %180 ]
  %15 = add nsw i32 %3, -2
  %16 = icmp slt i32 %.03, %15
  br i1 %16, label %17, label %182

17:                                               ; preds = %14
  %18 = mul nsw i32 %.04, %3
  %19 = add nsw i32 %18, %.03
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds float, float* %1, i64 %20
  %22 = load float, float* %21, align 4
  %23 = fpext float %22 to double
  %24 = fcmp ugt double %23, 1.000000e-08
  br i1 %24, label %46, label %25

25:                                               ; preds = %17
  %26 = mul nsw i32 %.04, %3
  %27 = add nsw i32 %26, %.03
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds float, float* %1, i64 %28
  %30 = load float, float* %29, align 4
  %31 = fpext float %30 to double
  %32 = fcmp ult double %31, -1.000000e-08
  br i1 %32, label %46, label %33

33:                                               ; preds = %25
  %34 = mul nsw i32 %.04, %3
  %35 = add nsw i32 %34, %.03
  %36 = add nsw i32 %35, -1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float, float* %0, i64 %37
  %39 = load float, float* %38, align 4
  %40 = mul nsw i32 %.04, %3
  %41 = add nsw i32 %40, %.03
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, float* %0, i64 %43
  %45 = load float, float* %44, align 4
  br label %154

46:                                               ; preds = %25, %17
  %47 = mul nsw i32 %.04, %3
  %48 = add nsw i32 %47, %.03
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %2, i64 %49
  %51 = load float, float* %50, align 4
  %52 = mul nsw i32 %.04, %3
  %53 = add nsw i32 %52, %.03
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, float* %1, i64 %54
  %56 = load float, float* %55, align 4
  %57 = fdiv float %51, %56
  %58 = fcmp ult float %57, 0.000000e+00
  br i1 %58, label %101, label %59

59:                                               ; preds = %46
  %60 = fpext float %57 to double
  %61 = fcmp olt double %60, 4.000000e-01
  br i1 %61, label %62, label %101

62:                                               ; preds = %59
  %63 = add nuw nsw i32 %.04, 1
  %64 = mul nsw i32 %63, %3
  %65 = add nsw i32 %64, %.03
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds float, float* %0, i64 %67
  %69 = load float, float* %68, align 4
  %70 = fmul float %69, %57
  %71 = fpext float %70 to double
  %72 = fpext float %57 to double
  %73 = fsub double 1.000000e+00, %72
  %74 = add nuw nsw i32 %.04, 1
  %75 = mul nsw i32 %74, %3
  %76 = add nsw i32 %75, %.03
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, float* %0, i64 %77
  %79 = load float, float* %78, align 4
  %80 = fpext float %79 to double
  %81 = call double @llvm.fmuladd.f64(double %73, double %80, double %71)
  %82 = add nsw i32 %.04, -1
  %83 = mul nsw i32 %82, %3
  %84 = add nsw i32 %83, %.03
  %85 = add nsw i32 %84, -1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds float, float* %0, i64 %86
  %88 = load float, float* %87, align 4
  %89 = fmul float %88, %57
  %90 = fpext float %89 to double
  %91 = fpext float %57 to double
  %92 = fsub double 1.000000e+00, %91
  %93 = add nsw i32 %.04, -1
  %94 = mul nsw i32 %93, %3
  %95 = add nsw i32 %94, %.03
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float, float* %0, i64 %96
  %98 = load float, float* %97, align 4
  %99 = fpext float %98 to double
  %100 = call double @llvm.fmuladd.f64(double %92, double %99, double %90)
  br label %153

101:                                              ; preds = %59, %46
  %102 = fcmp ugt float %57, 0.000000e+00
  br i1 %102, label %107, label %103

103:                                              ; preds = %101
  %104 = fpext float %57 to double
  %105 = fcmp ogt double %104, -4.000000e-01
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  br label %112

107:                                              ; preds = %103, %101
  %108 = mul nsw i32 %.04, %3
  %109 = add nsw i32 %108, %.03
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds float, float* %9, i64 %110
  store float 0.000000e+00, float* %111, align 4
  br label %180

112:                                              ; preds = %106
  %113 = fpext float %57 to double
  %114 = fadd double %113, 1.000000e+00
  %115 = add nsw i32 %.04, -1
  %116 = mul nsw i32 %115, %3
  %117 = add nsw i32 %116, %.03
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds float, float* %0, i64 %118
  %120 = load float, float* %119, align 4
  %121 = fpext float %120 to double
  %122 = add nsw i32 %.04, -1
  %123 = mul nsw i32 %122, %3
  %124 = add nsw i32 %123, %.03
  %125 = add nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds float, float* %0, i64 %126
  %128 = load float, float* %127, align 4
  %129 = fneg float %128
  %130 = fmul float %57, %129
  %131 = fpext float %130 to double
  %132 = call double @llvm.fmuladd.f64(double %114, double %121, double %131)
  %133 = fpext float %57 to double
  %134 = fadd double %133, 1.000000e+00
  %135 = add nuw nsw i32 %.04, 1
  %136 = mul nsw i32 %135, %3
  %137 = add nsw i32 %136, %.03
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds float, float* %0, i64 %138
  %140 = load float, float* %139, align 4
  %141 = fpext float %140 to double
  %142 = add nuw nsw i32 %.04, 1
  %143 = mul nsw i32 %142, %3
  %144 = add nsw i32 %143, %.03
  %145 = add nsw i32 %144, -1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds float, float* %0, i64 %146
  %148 = load float, float* %147, align 4
  %149 = fneg float %148
  %150 = fmul float %57, %149
  %151 = fpext float %150 to double
  %152 = call double @llvm.fmuladd.f64(double %134, double %141, double %151)
  br label %153

153:                                              ; preds = %112, %62
  %.01.in = phi double [ %81, %62 ], [ %152, %112 ]
  %.0.in = phi double [ %100, %62 ], [ %132, %112 ]
  %.0 = fptrunc double %.0.in to float
  %.01 = fptrunc double %.01.in to float
  br label %154

154:                                              ; preds = %153, %33
  %.12 = phi float [ %39, %33 ], [ %.01, %153 ]
  %.1 = phi float [ %45, %33 ], [ %.0, %153 ]
  %155 = mul nsw i32 %.04, %3
  %156 = add nsw i32 %155, %.03
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds float, float* %0, i64 %157
  %159 = load float, float* %158, align 4
  %160 = fpext float %159 to double
  %161 = fpext float %.12 to double
  %162 = fadd double %161, 1.000000e-08
  %163 = fcmp olt double %162, %160
  br i1 %163, label %164, label %179

164:                                              ; preds = %154
  %165 = mul nsw i32 %.04, %3
  %166 = add nsw i32 %165, %.03
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds float, float* %0, i64 %167
  %169 = load float, float* %168, align 4
  %170 = fpext float %169 to double
  %171 = fpext float %.1 to double
  %172 = fadd double %171, 1.000000e-08
  %173 = fcmp olt double %172, %170
  br i1 %173, label %174, label %179

174:                                              ; preds = %164
  %175 = mul nsw i32 %.04, %3
  %176 = add nsw i32 %175, %.03
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds float, float* %9, i64 %177
  store float 2.550000e+02, float* %178, align 4
  br label %179

179:                                              ; preds = %174, %164, %154
  br label %180

180:                                              ; preds = %179, %107
  %181 = add nuw nsw i32 %.03, 1
  br label %14, !llvm.loop !14

182:                                              ; preds = %14
  br label %183

183:                                              ; preds = %182
  %184 = add nuw nsw i32 %.04, 1
  br label %10, !llvm.loop !15

185:                                              ; preds = %10
  ret float* %9
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare float @sqrtf(float)

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind }

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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
