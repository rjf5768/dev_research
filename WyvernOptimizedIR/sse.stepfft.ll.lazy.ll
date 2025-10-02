; ModuleID = './sse.stepfft.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Vector/SSE/sse.stepfft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global [2048 x float] zeroinitializer, align 16
@z = dso_local global [2048 x float] zeroinitializer, align 16
@w = dso_local global [1024 x float] zeroinitializer, align 16
@y = dso_local global [2048 x float] zeroinitializer, align 16
@.str = private unnamed_addr constant [29 x i8] c" for n=%d, fwd/bck error=%e\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c" for n=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%g  \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca float, align 4
  store float 3.310000e+02, float* %1, align 4
  br label %2

2:                                                ; preds = %111, %0
  %.05 = phi i32 [ 0, %0 ], [ %112, %111 ]
  %.01 = phi i32 [ 1, %0 ], [ %.12, %111 ]
  %3 = icmp ult i32 %.05, 2
  br i1 %3, label %4, label %113

4:                                                ; preds = %2
  %.not = icmp eq i32 %.01, 0
  br i1 %.not, label %24, label %5

5:                                                ; preds = %4
  br label %6

6:                                                ; preds = %21, %5
  %.03 = phi i32 [ 0, %5 ], [ %22, %21 ]
  %7 = icmp ult i32 %.03, 2048
  br i1 %7, label %8, label %23

8:                                                ; preds = %6
  %9 = call float @ggl(float* noundef nonnull %1)
  %10 = call float @ggl(float* noundef nonnull %1)
  %11 = zext i32 %.03 to i64
  %12 = getelementptr inbounds [2048 x float], [2048 x float]* @x, i64 0, i64 %11
  store float %9, float* %12, align 8
  %13 = zext i32 %.03 to i64
  %14 = getelementptr inbounds [2048 x float], [2048 x float]* @z, i64 0, i64 %13
  store float %9, float* %14, align 8
  %15 = or i32 %.03, 1
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [2048 x float], [2048 x float]* @x, i64 0, i64 %16
  store float %10, float* %17, align 4
  %18 = or i32 %.03, 1
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [2048 x float], [2048 x float]* @z, i64 0, i64 %19
  store float %10, float* %20, align 4
  br label %21

21:                                               ; preds = %8
  %22 = add nuw nsw i32 %.03, 2
  br label %6, !llvm.loop !4

23:                                               ; preds = %6
  br label %41

24:                                               ; preds = %4
  br label %25

25:                                               ; preds = %38, %24
  %.14 = phi i32 [ 0, %24 ], [ %39, %38 ]
  %26 = icmp ult i32 %.14, 2048
  br i1 %26, label %27, label %40

27:                                               ; preds = %25
  %28 = zext i32 %.14 to i64
  %29 = getelementptr inbounds [2048 x float], [2048 x float]* @x, i64 0, i64 %28
  store float 0.000000e+00, float* %29, align 8
  %30 = zext i32 %.14 to i64
  %31 = getelementptr inbounds [2048 x float], [2048 x float]* @z, i64 0, i64 %30
  store float 0.000000e+00, float* %31, align 8
  %32 = or i32 %.14, 1
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [2048 x float], [2048 x float]* @x, i64 0, i64 %33
  store float 0.000000e+00, float* %34, align 4
  %35 = or i32 %.14, 1
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [2048 x float], [2048 x float]* @z, i64 0, i64 %36
  store float 0.000000e+00, float* %37, align 4
  br label %38

38:                                               ; preds = %27
  %39 = add nuw nsw i32 %.14, 2
  br label %25, !llvm.loop !6

40:                                               ; preds = %25
  br label %41

41:                                               ; preds = %40, %23
  call void @cffti(i32 noundef 1024, [2 x float]* noundef bitcast ([1024 x float]* @w to [2 x float]*))
  %.not8 = icmp eq i32 %.01, 0
  br i1 %.not8, label %87, label %42

42:                                               ; preds = %41
  call void @cfft2(i32 noundef 1024, [2 x float]* noundef bitcast ([2048 x float]* @x to [2 x float]*), [2 x float]* noundef bitcast ([2048 x float]* @y to [2 x float]*), [2 x float]* noundef bitcast ([1024 x float]* @w to [2 x float]*), double noundef 1.000000e+00)
  call void @cfft2(i32 noundef 1024, [2 x float]* noundef bitcast ([2048 x float]* @y to [2 x float]*), [2 x float]* noundef bitcast ([2048 x float]* @x to [2 x float]*), [2 x float]* noundef bitcast ([1024 x float]* @w to [2 x float]*), double noundef -1.000000e+00)
  br label %43

43:                                               ; preds = %46, %42
  %.07 = phi float [ 0.000000e+00, %42 ], [ %81, %46 ]
  %.2 = phi i32 [ 0, %42 ], [ %82, %46 ]
  %44 = icmp ult i32 %.2, 2048
  br i1 %44, label %45, label %83

45:                                               ; preds = %43
  br label %46

46:                                               ; preds = %45
  %47 = zext i32 %.2 to i64
  %48 = getelementptr inbounds [2048 x float], [2048 x float]* @x, i64 0, i64 %47
  %49 = load float, float* %48, align 8
  %50 = zext i32 %.2 to i64
  %51 = getelementptr inbounds [2048 x float], [2048 x float]* @z, i64 0, i64 %50
  %52 = load float, float* %51, align 8
  %53 = call float @llvm.fmuladd.f32(float %49, float 0xBF50000000000000, float %52)
  %54 = zext i32 %.2 to i64
  %55 = getelementptr inbounds [2048 x float], [2048 x float]* @x, i64 0, i64 %54
  %56 = load float, float* %55, align 8
  %57 = zext i32 %.2 to i64
  %58 = getelementptr inbounds [2048 x float], [2048 x float]* @z, i64 0, i64 %57
  %59 = load float, float* %58, align 8
  %60 = call float @llvm.fmuladd.f32(float %56, float 0xBF50000000000000, float %59)
  %61 = or i32 %.2, 1
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [2048 x float], [2048 x float]* @x, i64 0, i64 %62
  %64 = load float, float* %63, align 4
  %65 = or i32 %.2, 1
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds [2048 x float], [2048 x float]* @z, i64 0, i64 %66
  %68 = load float, float* %67, align 4
  %69 = call float @llvm.fmuladd.f32(float %64, float 0xBF50000000000000, float %68)
  %70 = or i32 %.2, 1
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds [2048 x float], [2048 x float]* @x, i64 0, i64 %71
  %73 = load float, float* %72, align 4
  %74 = or i32 %.2, 1
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds [2048 x float], [2048 x float]* @z, i64 0, i64 %75
  %77 = load float, float* %76, align 4
  %78 = call float @llvm.fmuladd.f32(float %73, float 0xBF50000000000000, float %77)
  %79 = fmul float %69, %78
  %80 = call float @llvm.fmuladd.f32(float %53, float %60, float %79)
  %81 = fadd float %.07, %80
  %82 = add nuw nsw i32 %.2, 2
  br label %43, !llvm.loop !7

83:                                               ; preds = %43
  %84 = fmul float %.07, 0x3F50000000000000
  %sqrtf = call float @sqrtf(float noundef %84) #2
  %85 = fpext float %sqrtf to double
  %86 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1024, double noundef %85) #7
  br label %110

87:                                               ; preds = %41
  br label %88

88:                                               ; preds = %91, %87
  %.06 = phi i32 [ 0, %87 ], [ %92, %91 ]
  %89 = icmp ult i32 %.06, 20000
  br i1 %89, label %90, label %93

90:                                               ; preds = %88
  call void @cfft2(i32 noundef 1024, [2 x float]* noundef bitcast ([2048 x float]* @x to [2 x float]*), [2 x float]* noundef bitcast ([2048 x float]* @y to [2 x float]*), [2 x float]* noundef bitcast ([1024 x float]* @w to [2 x float]*), double noundef 1.000000e+00)
  call void @cfft2(i32 noundef 1024, [2 x float]* noundef bitcast ([2048 x float]* @y to [2 x float]*), [2 x float]* noundef bitcast ([2048 x float]* @x to [2 x float]*), [2 x float]* noundef bitcast ([1024 x float]* @w to [2 x float]*), double noundef -1.000000e+00)
  br label %91

91:                                               ; preds = %90
  %92 = add nuw nsw i32 %.06, 1
  br label %88, !llvm.loop !8

93:                                               ; preds = %88
  %94 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1024) #7
  br label %95

95:                                               ; preds = %107, %93
  %.3 = phi i32 [ 0, %93 ], [ %108, %107 ]
  %.0 = phi i32 [ 0, %93 ], [ %.1, %107 ]
  %96 = icmp ult i32 %.3, 1024
  br i1 %96, label %97, label %109

97:                                               ; preds = %95
  %98 = zext i32 %.3 to i64
  %99 = getelementptr inbounds [1024 x float], [1024 x float]* @w, i64 0, i64 %98
  %100 = load float, float* %99, align 4
  %101 = fpext float %100 to double
  %102 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), double noundef %101) #7
  %103 = add i32 %.0, 1
  %104 = icmp eq i32 %103, 4
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  %putchar = call i32 @putchar(i32 10)
  br label %106

106:                                              ; preds = %105, %97
  %.1 = phi i32 [ 0, %105 ], [ %103, %97 ]
  br label %107

107:                                              ; preds = %106
  %108 = add nuw nsw i32 %.3, 1
  br label %95, !llvm.loop !9

109:                                              ; preds = %95
  br label %110

110:                                              ; preds = %109, %83
  %.12 = phi i32 [ 0, %83 ], [ %.01, %109 ]
  br label %111

111:                                              ; preds = %110
  %112 = add nuw nsw i32 %.05, 1
  br label %2, !llvm.loop !10

113:                                              ; preds = %2
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @cfft2(i32 noundef %0, [2 x float]* noundef %1, [2 x float]* noundef %2, [2 x float]* noundef %3, double noundef %4) #0 {
  %6 = fptrunc double %4 to float
  %7 = sitofp i32 %0 to float
  %8 = fpext float %7 to double
  %9 = call double @log(double noundef %8) #7
  %10 = call double @log(double noundef 1.990000e+00) #7
  %11 = fdiv double %9, 0x3FE60532EF13C385
  %12 = fptosi double %11 to i32
  %13 = sdiv i32 %0, 2
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [2 x float], [2 x float]* %1, i64 %14, i64 0
  %16 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 1, i64 0
  %17 = fpext float %6 to double
  %18 = bitcast float* %15 to [2 x float]*
  %19 = bitcast float* %16 to [2 x float]*
  call void @step(i32 noundef %0, i32 noundef 1, [2 x float]* noundef %1, [2 x float]* noundef %18, [2 x float]* noundef %2, [2 x float]* noundef nonnull %19, [2 x float]* noundef %3, double noundef %17)
  br label %20

20:                                               ; preds = %44, %5
  %.02 = phi i32 [ 0, %5 ], [ %45, %44 ]
  %.01 = phi i32 [ 1, %5 ], [ %24, %44 ]
  %.0 = phi i32 [ 1, %5 ], [ %.1, %44 ]
  %21 = add nsw i32 %12, -2
  %22 = icmp slt i32 %.02, %21
  br i1 %22, label %23, label %46

23:                                               ; preds = %20
  %24 = shl nsw i32 %.01, 1
  %.not3 = icmp eq i32 %.0, 0
  br i1 %.not3, label %34, label %25

25:                                               ; preds = %23
  %26 = sdiv i32 %0, 2
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 %27, i64 0
  %29 = sext i32 %24 to i64
  %30 = getelementptr inbounds [2 x float], [2 x float]* %1, i64 %29, i64 0
  %31 = fpext float %6 to double
  %32 = bitcast float* %28 to [2 x float]*
  %33 = bitcast float* %30 to [2 x float]*
  call void @step(i32 noundef %0, i32 noundef %24, [2 x float]* noundef %2, [2 x float]* noundef %32, [2 x float]* noundef %1, [2 x float]* noundef %33, [2 x float]* noundef %3, double noundef %31)
  br label %43

34:                                               ; preds = %23
  %35 = sdiv i32 %0, 2
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [2 x float], [2 x float]* %1, i64 %36, i64 0
  %38 = sext i32 %24 to i64
  %39 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 %38, i64 0
  %40 = fpext float %6 to double
  %41 = bitcast float* %37 to [2 x float]*
  %42 = bitcast float* %39 to [2 x float]*
  call void @step(i32 noundef %0, i32 noundef %24, [2 x float]* noundef %1, [2 x float]* noundef %41, [2 x float]* noundef %2, [2 x float]* noundef %42, [2 x float]* noundef %3, double noundef %40)
  br label %43

43:                                               ; preds = %34, %25
  %.1 = phi i32 [ 0, %25 ], [ 1, %34 ]
  br label %44

44:                                               ; preds = %43
  %45 = add nuw nsw i32 %.02, 1
  br label %20, !llvm.loop !11

46:                                               ; preds = %20
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %48, label %47

47:                                               ; preds = %46
  call void @ccopy(i32 noundef %0, [2 x float]* noundef %2, [2 x float]* noundef %1)
  br label %48

48:                                               ; preds = %47, %46
  %49 = sdiv i32 %0, 2
  %50 = sdiv i32 %0, 2
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [2 x float], [2 x float]* %1, i64 %51, i64 0
  %53 = sext i32 %49 to i64
  %54 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 %53, i64 0
  %55 = fpext float %6 to double
  %56 = bitcast float* %52 to [2 x float]*
  %57 = bitcast float* %54 to [2 x float]*
  call void @step(i32 noundef %0, i32 noundef %49, [2 x float]* noundef %1, [2 x float]* noundef %56, [2 x float]* noundef %2, [2 x float]* noundef %57, [2 x float]* noundef %3, double noundef %55)
  ret void
}

; Function Attrs: nounwind
declare dso_local double @log(double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @cffti(i32 noundef %0, [2 x float]* nocapture noundef writeonly %1) #0 {
  %3 = sdiv i32 %0, 2
  %4 = sitofp i32 %0 to float
  %5 = fdiv float 0x401921FB60000000, %4
  br label %6

6:                                                ; preds = %21, %2
  %.0 = phi i32 [ 0, %2 ], [ %22, %21 ]
  %7 = icmp slt i32 %.0, %3
  br i1 %7, label %8, label %23

8:                                                ; preds = %6
  %9 = sitofp i32 %.0 to float
  %10 = fmul float %5, %9
  %11 = fpext float %10 to double
  %12 = call double @cos(double noundef %11) #7
  %13 = fptrunc double %12 to float
  %14 = zext i32 %.0 to i64
  %15 = getelementptr inbounds [2 x float], [2 x float]* %1, i64 %14, i64 0
  store float %13, float* %15, align 4
  %16 = fpext float %10 to double
  %17 = call double @sin(double noundef %16) #7
  %18 = fptrunc double %17 to float
  %19 = zext i32 %.0 to i64
  %20 = getelementptr inbounds [2 x float], [2 x float]* %1, i64 %19, i64 1
  store float %18, float* %20, align 4
  br label %21

21:                                               ; preds = %8
  %22 = add nuw nsw i32 %.0, 1
  br label %6, !llvm.loop !12

23:                                               ; preds = %6
  ret void
}

; Function Attrs: nounwind
declare dso_local double @cos(double noundef) #2

; Function Attrs: nounwind
declare dso_local double @sin(double noundef) #2

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @ccopy(i32 noundef %0, [2 x float]* nocapture noundef readonly %1, [2 x float]* nocapture noundef writeonly %2) #4 {
  br label %4

4:                                                ; preds = %17, %3
  %.0 = phi i32 [ 0, %3 ], [ %18, %17 ]
  %5 = icmp slt i32 %.0, %0
  br i1 %5, label %6, label %19

6:                                                ; preds = %4
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds [2 x float], [2 x float]* %1, i64 %7, i64 0
  %9 = load float, float* %8, align 4
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 %10, i64 0
  store float %9, float* %11, align 4
  %12 = zext i32 %.0 to i64
  %13 = getelementptr inbounds [2 x float], [2 x float]* %1, i64 %12, i64 1
  %14 = load float, float* %13, align 4
  %15 = zext i32 %.0 to i64
  %16 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 %15, i64 1
  store float %14, float* %16, align 4
  br label %17

17:                                               ; preds = %6
  %18 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !13

19:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @ggl(float* nocapture noundef %0) #0 {
  %2 = load float, float* %0, align 4
  %3 = fpext float %2 to double
  %4 = fmul double %3, 1.680700e+04
  %5 = call double @fmod(double noundef %4, double noundef 0x41DFFFFFFFC00000) #7
  %6 = fptrunc double %5 to float
  store float %6, float* %0, align 4
  %7 = fadd double %5, -1.000000e+00
  %8 = fdiv double %7, 0x41DFFFFFFF800000
  %9 = fptrunc double %8 to float
  ret float %9
}

; Function Attrs: nounwind
declare dso_local double @fmod(double noundef, double noundef) #2

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @step(i32 noundef %0, i32 noundef %1, [2 x float]* nocapture noundef readonly %2, [2 x float]* nocapture noundef readonly %3, [2 x float]* nocapture noundef writeonly %4, [2 x float]* nocapture noundef writeonly %5, [2 x float]* nocapture noundef readonly %6, double noundef %7) #5 {
  %9 = alloca <4 x float>, align 16
  %10 = alloca <4 x float>, align 16
  %11 = fptrunc double %7 to float
  %12 = shl nsw i32 %1, 1
  %13 = sdiv i32 %0, %12
  br label %14

14:                                               ; preds = %130, %8
  %.02 = phi i32 [ 0, %8 ], [ %131, %130 ]
  %15 = icmp slt i32 %.02, %13
  br i1 %15, label %16, label %132

16:                                               ; preds = %14
  %17 = mul nsw i32 %.02, %1
  %18 = mul nsw i32 %.02, %12
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds [2 x float], [2 x float]* %6, i64 %19, i64 0
  %21 = load float, float* %20, align 4
  %22 = sext i32 %17 to i64
  %23 = getelementptr inbounds [2 x float], [2 x float]* %6, i64 %22, i64 1
  %24 = load float, float* %23, align 4
  %25 = fcmp olt float %11, 0.000000e+00
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = fneg float %24
  br label %28

28:                                               ; preds = %26, %16
  %.0 = phi float [ %27, %26 ], [ %24, %16 ]
  %29 = icmp slt i32 %1, 2
  br i1 %29, label %30, label %86

30:                                               ; preds = %28
  %31 = sext i32 %17 to i64
  %32 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 %31, i64 0
  %33 = load float, float* %32, align 4
  %34 = sext i32 %17 to i64
  %35 = getelementptr inbounds [2 x float], [2 x float]* %3, i64 %34, i64 0
  %36 = load float, float* %35, align 4
  %37 = fsub float %33, %36
  %38 = sext i32 %17 to i64
  %39 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 %38, i64 1
  %40 = load float, float* %39, align 4
  %41 = sext i32 %17 to i64
  %42 = getelementptr inbounds [2 x float], [2 x float]* %3, i64 %41, i64 1
  %43 = load float, float* %42, align 4
  %44 = fsub float %40, %43
  %45 = fneg float %.0
  %46 = fmul float %44, %45
  %47 = call float @llvm.fmuladd.f32(float %21, float %37, float %46)
  %48 = sext i32 %18 to i64
  %49 = getelementptr inbounds [2 x float], [2 x float]* %5, i64 %48, i64 0
  store float %47, float* %49, align 4
  %50 = sext i32 %17 to i64
  %51 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 %50, i64 0
  %52 = load float, float* %51, align 4
  %53 = sext i32 %17 to i64
  %54 = getelementptr inbounds [2 x float], [2 x float]* %3, i64 %53, i64 0
  %55 = load float, float* %54, align 4
  %56 = fsub float %52, %55
  %57 = sext i32 %17 to i64
  %58 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 %57, i64 1
  %59 = load float, float* %58, align 4
  %60 = sext i32 %17 to i64
  %61 = getelementptr inbounds [2 x float], [2 x float]* %3, i64 %60, i64 1
  %62 = load float, float* %61, align 4
  %63 = fsub float %59, %62
  %64 = fmul float %21, %63
  %65 = call float @llvm.fmuladd.f32(float %.0, float %56, float %64)
  %66 = sext i32 %18 to i64
  %67 = getelementptr inbounds [2 x float], [2 x float]* %5, i64 %66, i64 1
  store float %65, float* %67, align 4
  %68 = sext i32 %17 to i64
  %69 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 %68, i64 0
  %70 = load float, float* %69, align 4
  %71 = sext i32 %17 to i64
  %72 = getelementptr inbounds [2 x float], [2 x float]* %3, i64 %71, i64 0
  %73 = load float, float* %72, align 4
  %74 = fadd float %70, %73
  %75 = sext i32 %18 to i64
  %76 = getelementptr inbounds [2 x float], [2 x float]* %4, i64 %75, i64 0
  store float %74, float* %76, align 4
  %77 = sext i32 %17 to i64
  %78 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 %77, i64 1
  %79 = load float, float* %78, align 4
  %80 = sext i32 %17 to i64
  %81 = getelementptr inbounds [2 x float], [2 x float]* %3, i64 %80, i64 1
  %82 = load float, float* %81, align 4
  %83 = fadd float %79, %82
  %84 = sext i32 %18 to i64
  %85 = getelementptr inbounds [2 x float], [2 x float]* %4, i64 %84, i64 1
  store float %83, float* %85, align 4
  br label %129

86:                                               ; preds = %28
  %87 = getelementptr inbounds <4 x float>, <4 x float>* %9, i64 0, i64 0
  store float %21, float* %87, align 16
  %88 = getelementptr inbounds <4 x float>, <4 x float>* %9, i64 0, i64 1
  store float %21, float* %88, align 4
  %89 = getelementptr inbounds <4 x float>, <4 x float>* %9, i64 0, i64 2
  store float %21, float* %89, align 8
  %90 = getelementptr inbounds <4 x float>, <4 x float>* %9, i64 0, i64 3
  store float %21, float* %90, align 4
  %91 = fneg float %.0
  %92 = getelementptr inbounds <4 x float>, <4 x float>* %10, i64 0, i64 0
  store float %91, float* %92, align 16
  %93 = getelementptr inbounds <4 x float>, <4 x float>* %10, i64 0, i64 1
  store float %.0, float* %93, align 4
  %94 = fneg float %.0
  %95 = getelementptr inbounds <4 x float>, <4 x float>* %10, i64 0, i64 2
  store float %94, float* %95, align 8
  %96 = getelementptr inbounds <4 x float>, <4 x float>* %10, i64 0, i64 3
  store float %.0, float* %96, align 4
  %97 = load <4 x float>, <4 x float>* %9, align 16
  %98 = load <4 x float>, <4 x float>* %10, align 16
  br label %99

99:                                               ; preds = %126, %86
  %.01 = phi i32 [ 0, %86 ], [ %127, %126 ]
  %100 = icmp slt i32 %.01, %1
  br i1 %100, label %101, label %128

101:                                              ; preds = %99
  %102 = add nsw i32 %17, %.01
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 %103, i64 0
  %105 = bitcast float* %104 to <4 x float>*
  %106 = load <4 x float>, <4 x float>* %105, align 16
  %107 = add nsw i32 %17, %.01
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [2 x float], [2 x float]* %3, i64 %108, i64 0
  %110 = bitcast float* %109 to <4 x float>*
  %111 = load <4 x float>, <4 x float>* %110, align 16
  %112 = fadd <4 x float> %106, %111
  %113 = add nsw i32 %18, %.01
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [2 x float], [2 x float]* %4, i64 %114, i64 0
  %116 = bitcast float* %115 to <4 x float>*
  store <4 x float> %112, <4 x float>* %116, align 16
  %117 = fsub <4 x float> %106, %111
  %118 = shufflevector <4 x float> %117, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %119 = fmul <4 x float> %97, %117
  %120 = fmul <4 x float> %98, %118
  %121 = fadd <4 x float> %119, %120
  %122 = add nsw i32 %18, %.01
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [2 x float], [2 x float]* %5, i64 %123, i64 0
  %125 = bitcast float* %124 to <4 x float>*
  store <4 x float> %121, <4 x float>* %125, align 16
  br label %126

126:                                              ; preds = %101
  %127 = add nuw nsw i32 %.01, 2
  br label %99, !llvm.loop !14

128:                                              ; preds = %99
  br label %129

129:                                              ; preds = %128, %30
  br label %130

130:                                              ; preds = %129
  %131 = add nuw nsw i32 %.02, 1
  br label %14, !llvm.loop !15

132:                                              ; preds = %14
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #6

declare float @sqrtf(float)

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }

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
