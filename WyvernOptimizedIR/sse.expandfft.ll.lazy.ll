; ModuleID = './sse.expandfft.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Vector/SSE/sse.expandfft.c"
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

2:                                                ; preds = %112, %0
  %.05 = phi i32 [ 0, %0 ], [ %113, %112 ]
  %.01 = phi i32 [ 1, %0 ], [ %.12, %112 ]
  %3 = icmp ult i32 %.05, 2
  br i1 %3, label %4, label %114

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
  br i1 %.not8, label %88, label %42

42:                                               ; preds = %41
  call void @cfft2(i32 noundef 1024, [2 x float]* noundef bitcast ([2048 x float]* @x to [2 x float]*), [2 x float]* noundef bitcast ([2048 x float]* @y to [2 x float]*), [2 x float]* noundef bitcast ([1024 x float]* @w to [2 x float]*), double noundef 1.000000e+00)
  call void @cfft2(i32 noundef 1024, [2 x float]* noundef bitcast ([2048 x float]* @y to [2 x float]*), [2 x float]* noundef bitcast ([2048 x float]* @x to [2 x float]*), [2 x float]* noundef bitcast ([1024 x float]* @w to [2 x float]*), double noundef -1.000000e+00)
  br label %43

43:                                               ; preds = %46, %42
  %.07 = phi double [ 0.000000e+00, %42 ], [ %82, %46 ]
  %.2 = phi i32 [ 0, %42 ], [ %83, %46 ]
  %44 = icmp ult i32 %.2, 2048
  br i1 %44, label %45, label %84

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
  %81 = fpext float %80 to double
  %82 = fadd double %.07, %81
  %83 = add nuw nsw i32 %.2, 2
  br label %43, !llvm.loop !7

84:                                               ; preds = %43
  %85 = fmul double %.07, 0x3F50000000000000
  %86 = call double @sqrt(double noundef %85) #6
  %87 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1024, double noundef %86) #6
  br label %111

88:                                               ; preds = %41
  br label %89

89:                                               ; preds = %92, %88
  %.06 = phi i32 [ 0, %88 ], [ %93, %92 ]
  %90 = icmp ult i32 %.06, 20000
  br i1 %90, label %91, label %94

91:                                               ; preds = %89
  call void @cfft2(i32 noundef 1024, [2 x float]* noundef bitcast ([2048 x float]* @x to [2 x float]*), [2 x float]* noundef bitcast ([2048 x float]* @y to [2 x float]*), [2 x float]* noundef bitcast ([1024 x float]* @w to [2 x float]*), double noundef 1.000000e+00)
  call void @cfft2(i32 noundef 1024, [2 x float]* noundef bitcast ([2048 x float]* @y to [2 x float]*), [2 x float]* noundef bitcast ([2048 x float]* @x to [2 x float]*), [2 x float]* noundef bitcast ([1024 x float]* @w to [2 x float]*), double noundef -1.000000e+00)
  br label %92

92:                                               ; preds = %91
  %93 = add nuw nsw i32 %.06, 1
  br label %89, !llvm.loop !8

94:                                               ; preds = %89
  %95 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1024) #6
  br label %96

96:                                               ; preds = %108, %94
  %.3 = phi i32 [ 0, %94 ], [ %109, %108 ]
  %.0 = phi i32 [ 0, %94 ], [ %.1, %108 ]
  %97 = icmp ult i32 %.3, 1024
  br i1 %97, label %98, label %110

98:                                               ; preds = %96
  %99 = zext i32 %.3 to i64
  %100 = getelementptr inbounds [1024 x float], [1024 x float]* @w, i64 0, i64 %99
  %101 = load float, float* %100, align 4
  %102 = fpext float %101 to double
  %103 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), double noundef %102) #6
  %104 = add i32 %.0, 1
  %105 = icmp eq i32 %104, 4
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  %putchar = call i32 @putchar(i32 10)
  br label %107

107:                                              ; preds = %106, %98
  %.1 = phi i32 [ 0, %106 ], [ %104, %98 ]
  br label %108

108:                                              ; preds = %107
  %109 = add nuw nsw i32 %.3, 1
  br label %96, !llvm.loop !9

110:                                              ; preds = %96
  br label %111

111:                                              ; preds = %110, %84
  %.12 = phi i32 [ 0, %84 ], [ %.01, %110 ]
  br label %112

112:                                              ; preds = %111
  %113 = add nuw nsw i32 %.05, 1
  br label %2, !llvm.loop !10

114:                                              ; preds = %2
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @cfft2(i32 noundef %0, [2 x float]* nocapture noundef %1, [2 x float]* nocapture noundef %2, [2 x float]* nocapture noundef readonly %3, double noundef %4) #4 {
  %6 = alloca <4 x float>, align 16
  %7 = alloca <4 x float>, align 16
  %8 = fptrunc double %4 to float
  %9 = icmp slt i32 %0, 2
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  %11 = getelementptr inbounds [2 x float], [2 x float]* %1, i64 0, i64 0
  %12 = load float, float* %11, align 4
  %13 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 0
  store float %12, float* %13, align 4
  %14 = getelementptr inbounds [2 x float], [2 x float]* %1, i64 0, i64 1
  %15 = load float, float* %14, align 4
  %16 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 1
  store float %15, float* %16, align 4
  br label %328

17:                                               ; preds = %5
  %18 = sitofp i32 %0 to float
  %19 = fpext float %18 to double
  %20 = call double @log(double noundef %19) #6
  %21 = call double @log(double noundef 1.990000e+00) #6
  %22 = fdiv double %20, 0x3FE60532EF13C385
  %23 = fptosi double %22 to i32
  %24 = sdiv i32 %0, 2
  %25 = sdiv i32 %0, 2
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [2 x float], [2 x float]* %1, i64 %26, i64 0
  %28 = bitcast float* %27 to [2 x float]*
  %29 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 1, i64 0
  %30 = bitcast float* %29 to [2 x float]*
  br label %31

31:                                               ; preds = %100, %17
  %.014 = phi i32 [ 0, %17 ], [ %101, %100 ]
  %32 = icmp slt i32 %.014, %24
  br i1 %32, label %33, label %102

33:                                               ; preds = %31
  %34 = shl nuw nsw i32 %.014, 1
  %35 = zext i32 %.014 to i64
  %36 = getelementptr inbounds [2 x float], [2 x float]* %3, i64 %35, i64 0
  %37 = load float, float* %36, align 4
  %38 = zext i32 %.014 to i64
  %39 = getelementptr inbounds [2 x float], [2 x float]* %3, i64 %38, i64 1
  %40 = load float, float* %39, align 4
  %41 = fcmp olt float %8, 0.000000e+00
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = fneg float %40
  br label %44

44:                                               ; preds = %42, %33
  %.0 = phi float [ %43, %42 ], [ %40, %33 ]
  %45 = zext i32 %.014 to i64
  %46 = getelementptr inbounds [2 x float], [2 x float]* %1, i64 %45, i64 0
  %47 = load float, float* %46, align 4
  %48 = zext i32 %.014 to i64
  %49 = getelementptr inbounds [2 x float], [2 x float]* %28, i64 %48, i64 0
  %50 = load float, float* %49, align 4
  %51 = fsub float %47, %50
  %52 = zext i32 %.014 to i64
  %53 = getelementptr inbounds [2 x float], [2 x float]* %1, i64 %52, i64 1
  %54 = load float, float* %53, align 4
  %55 = zext i32 %.014 to i64
  %56 = getelementptr inbounds [2 x float], [2 x float]* %28, i64 %55, i64 1
  %57 = load float, float* %56, align 4
  %58 = fsub float %54, %57
  %59 = fneg float %.0
  %60 = fmul float %58, %59
  %61 = call float @llvm.fmuladd.f32(float %37, float %51, float %60)
  %62 = zext i32 %34 to i64
  %63 = getelementptr inbounds [2 x float], [2 x float]* %30, i64 %62, i64 0
  store float %61, float* %63, align 4
  %64 = zext i32 %.014 to i64
  %65 = getelementptr inbounds [2 x float], [2 x float]* %1, i64 %64, i64 0
  %66 = load float, float* %65, align 4
  %67 = zext i32 %.014 to i64
  %68 = getelementptr inbounds [2 x float], [2 x float]* %28, i64 %67, i64 0
  %69 = load float, float* %68, align 4
  %70 = fsub float %66, %69
  %71 = zext i32 %.014 to i64
  %72 = getelementptr inbounds [2 x float], [2 x float]* %1, i64 %71, i64 1
  %73 = load float, float* %72, align 4
  %74 = zext i32 %.014 to i64
  %75 = getelementptr inbounds [2 x float], [2 x float]* %28, i64 %74, i64 1
  %76 = load float, float* %75, align 4
  %77 = fsub float %73, %76
  %78 = fmul float %37, %77
  %79 = call float @llvm.fmuladd.f32(float %.0, float %70, float %78)
  %80 = zext i32 %34 to i64
  %81 = getelementptr inbounds [2 x float], [2 x float]* %30, i64 %80, i64 1
  store float %79, float* %81, align 4
  %82 = zext i32 %.014 to i64
  %83 = getelementptr inbounds [2 x float], [2 x float]* %1, i64 %82, i64 0
  %84 = load float, float* %83, align 4
  %85 = zext i32 %.014 to i64
  %86 = getelementptr inbounds [2 x float], [2 x float]* %28, i64 %85, i64 0
  %87 = load float, float* %86, align 4
  %88 = fadd float %84, %87
  %89 = zext i32 %34 to i64
  %90 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 %89, i64 0
  store float %88, float* %90, align 4
  %91 = zext i32 %.014 to i64
  %92 = getelementptr inbounds [2 x float], [2 x float]* %1, i64 %91, i64 1
  %93 = load float, float* %92, align 4
  %94 = zext i32 %.014 to i64
  %95 = getelementptr inbounds [2 x float], [2 x float]* %28, i64 %94, i64 1
  %96 = load float, float* %95, align 4
  %97 = fadd float %93, %96
  %98 = zext i32 %34 to i64
  %99 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 %98, i64 1
  store float %97, float* %99, align 4
  br label %100

100:                                              ; preds = %44
  %101 = add nuw nsw i32 %.014, 1
  br label %31, !llvm.loop !11

102:                                              ; preds = %31
  %103 = icmp eq i32 %0, 2
  br i1 %103, label %104, label %105

104:                                              ; preds = %102
  br label %328

105:                                              ; preds = %102
  %106 = sdiv i32 %0, 4
  %107 = sdiv i32 %0, 2
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 %108, i64 0
  %110 = bitcast float* %109 to [2 x float]*
  %111 = icmp eq i32 %0, 4
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %113

113:                                              ; preds = %112, %105
  %.03 = phi [2 x float]* [ %2, %112 ], [ %1, %105 ]
  %.01.in = getelementptr inbounds [2 x float], [2 x float]* %.03, i64 2, i64 0
  %.01 = bitcast float* %.01.in to [2 x float]*
  br label %114

114:                                              ; preds = %161, %113
  %.115 = phi i32 [ 0, %113 ], [ %162, %161 ]
  %115 = icmp slt i32 %.115, %106
  br i1 %115, label %116, label %163

116:                                              ; preds = %114
  %117 = shl nuw nsw i32 %.115, 1
  %118 = shl nsw i32 %.115, 2
  %119 = zext i32 %117 to i64
  %120 = getelementptr inbounds [2 x float], [2 x float]* %3, i64 %119, i64 0
  %121 = load float, float* %120, align 4
  %122 = zext i32 %117 to i64
  %123 = getelementptr inbounds [2 x float], [2 x float]* %3, i64 %122, i64 1
  %124 = load float, float* %123, align 4
  %125 = fcmp olt float %8, 0.000000e+00
  br i1 %125, label %126, label %128

126:                                              ; preds = %116
  %127 = fneg float %124
  br label %128

128:                                              ; preds = %126, %116
  %.1 = phi float [ %127, %126 ], [ %124, %116 ]
  %129 = getelementptr inbounds <4 x float>, <4 x float>* %6, i64 0, i64 0
  store float %121, float* %129, align 16
  %130 = getelementptr inbounds <4 x float>, <4 x float>* %6, i64 0, i64 1
  store float %121, float* %130, align 4
  %131 = getelementptr inbounds <4 x float>, <4 x float>* %6, i64 0, i64 2
  store float %121, float* %131, align 8
  %132 = getelementptr inbounds <4 x float>, <4 x float>* %6, i64 0, i64 3
  store float %121, float* %132, align 4
  %133 = fneg float %.1
  %134 = getelementptr inbounds <4 x float>, <4 x float>* %7, i64 0, i64 0
  store float %133, float* %134, align 16
  %135 = getelementptr inbounds <4 x float>, <4 x float>* %7, i64 0, i64 1
  store float %.1, float* %135, align 4
  %136 = fneg float %.1
  %137 = getelementptr inbounds <4 x float>, <4 x float>* %7, i64 0, i64 2
  store float %136, float* %137, align 8
  %138 = getelementptr inbounds <4 x float>, <4 x float>* %7, i64 0, i64 3
  store float %.1, float* %138, align 4
  %139 = load <4 x float>, <4 x float>* %6, align 16
  %140 = load <4 x float>, <4 x float>* %7, align 16
  %141 = zext i32 %117 to i64
  %142 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 %141, i64 0
  %143 = bitcast float* %142 to <4 x float>*
  %144 = load <4 x float>, <4 x float>* %143, align 16
  %145 = zext i32 %117 to i64
  %146 = getelementptr inbounds [2 x float], [2 x float]* %110, i64 %145, i64 0
  %147 = bitcast float* %146 to <4 x float>*
  %148 = load <4 x float>, <4 x float>* %147, align 16
  %149 = fadd <4 x float> %144, %148
  %150 = zext i32 %118 to i64
  %151 = getelementptr inbounds [2 x float], [2 x float]* %.03, i64 %150, i64 0
  %152 = bitcast float* %151 to <4 x float>*
  store <4 x float> %149, <4 x float>* %152, align 16
  %153 = fsub <4 x float> %144, %148
  %154 = shufflevector <4 x float> %153, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %155 = fmul <4 x float> %139, %153
  %156 = fmul <4 x float> %140, %154
  %157 = fadd <4 x float> %155, %156
  %158 = zext i32 %118 to i64
  %159 = getelementptr inbounds [2 x float], [2 x float]* %.01, i64 %158, i64 0
  %160 = bitcast float* %159 to <4 x float>*
  store <4 x float> %157, <4 x float>* %160, align 16
  br label %161

161:                                              ; preds = %128
  %162 = add nuw nsw i32 %.115, 1
  br label %114, !llvm.loop !12

163:                                              ; preds = %114
  %164 = icmp eq i32 %0, 4
  br i1 %164, label %165, label %166

165:                                              ; preds = %163
  br label %328

166:                                              ; preds = %163
  %167 = sdiv i32 %0, 8
  br label %168

168:                                              ; preds = %271, %166
  %.017 = phi i32 [ %167, %166 ], [ %272, %271 ]
  %.013 = phi i32 [ 4, %166 ], [ %273, %271 ]
  %.012 = phi i32 [ 8, %166 ], [ %270, %271 ]
  %.011 = phi i32 [ 2, %166 ], [ %274, %271 ]
  %.09 = phi i32 [ 0, %166 ], [ %.110, %271 ]
  %169 = add nsw i32 %23, -1
  %170 = icmp slt i32 %.011, %169
  br i1 %170, label %171, label %275

171:                                              ; preds = %168
  %.not20 = icmp eq i32 %.09, 0
  br i1 %.not20, label %178, label %172

172:                                              ; preds = %171
  %173 = sdiv i32 %0, 2
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 %174, i64 0
  %176 = sext i32 %.013 to i64
  %177 = getelementptr inbounds [2 x float], [2 x float]* %1, i64 %176, i64 0
  br label %184

178:                                              ; preds = %171
  %179 = sdiv i32 %0, 2
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [2 x float], [2 x float]* %1, i64 %180, i64 0
  %182 = zext i32 %.013 to i64
  %183 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 %182, i64 0
  br label %184

184:                                              ; preds = %178, %172
  %.110 = phi i32 [ 0, %172 ], [ 1, %178 ]
  %.07 = phi [2 x float]* [ %2, %172 ], [ %1, %178 ]
  %.05.in = phi float* [ %175, %172 ], [ %181, %178 ]
  %.14 = phi [2 x float]* [ %1, %172 ], [ %2, %178 ]
  %.12.in = phi float* [ %177, %172 ], [ %183, %178 ]
  %.12 = bitcast float* %.12.in to [2 x float]*
  %.05 = bitcast float* %.05.in to [2 x float]*
  br label %185

185:                                              ; preds = %267, %184
  %.216 = phi i32 [ 0, %184 ], [ %268, %267 ]
  %186 = icmp slt i32 %.216, %.017
  br i1 %186, label %187, label %269

187:                                              ; preds = %185
  %188 = mul nsw i32 %.216, %.013
  %189 = mul nsw i32 %.216, %.012
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds [2 x float], [2 x float]* %3, i64 %190, i64 0
  %192 = load float, float* %191, align 4
  %193 = sext i32 %188 to i64
  %194 = getelementptr inbounds [2 x float], [2 x float]* %3, i64 %193, i64 1
  %195 = load float, float* %194, align 4
  %196 = fcmp olt float %8, 0.000000e+00
  br i1 %196, label %197, label %199

197:                                              ; preds = %187
  %198 = fneg float %195
  br label %199

199:                                              ; preds = %197, %187
  %.2 = phi float [ %198, %197 ], [ %195, %187 ]
  %200 = getelementptr inbounds <4 x float>, <4 x float>* %6, i64 0, i64 0
  store float %192, float* %200, align 16
  %201 = getelementptr inbounds <4 x float>, <4 x float>* %6, i64 0, i64 1
  store float %192, float* %201, align 4
  %202 = getelementptr inbounds <4 x float>, <4 x float>* %6, i64 0, i64 2
  store float %192, float* %202, align 8
  %203 = getelementptr inbounds <4 x float>, <4 x float>* %6, i64 0, i64 3
  store float %192, float* %203, align 4
  %204 = fneg float %.2
  %205 = getelementptr inbounds <4 x float>, <4 x float>* %7, i64 0, i64 0
  store float %204, float* %205, align 16
  %206 = getelementptr inbounds <4 x float>, <4 x float>* %7, i64 0, i64 1
  store float %.2, float* %206, align 4
  %207 = fneg float %.2
  %208 = getelementptr inbounds <4 x float>, <4 x float>* %7, i64 0, i64 2
  store float %207, float* %208, align 8
  %209 = getelementptr inbounds <4 x float>, <4 x float>* %7, i64 0, i64 3
  store float %.2, float* %209, align 4
  %210 = load <4 x float>, <4 x float>* %6, align 16
  %211 = load <4 x float>, <4 x float>* %7, align 16
  br label %212

212:                                              ; preds = %264, %199
  %.018 = phi i32 [ 0, %199 ], [ %265, %264 ]
  %213 = icmp slt i32 %.018, %.013
  br i1 %213, label %214, label %266

214:                                              ; preds = %212
  %215 = or i32 %.018, 2
  %216 = add nsw i32 %188, %.018
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [2 x float], [2 x float]* %.07, i64 %217, i64 0
  %219 = bitcast float* %218 to <4 x float>*
  %220 = load <4 x float>, <4 x float>* %219, align 16
  %221 = add nsw i32 %188, %.018
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [2 x float], [2 x float]* %.05, i64 %222, i64 0
  %224 = bitcast float* %223 to <4 x float>*
  %225 = load <4 x float>, <4 x float>* %224, align 16
  %226 = fadd <4 x float> %220, %225
  %227 = add nsw i32 %189, %.018
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [2 x float], [2 x float]* %.14, i64 %228, i64 0
  %230 = bitcast float* %229 to <4 x float>*
  store <4 x float> %226, <4 x float>* %230, align 16
  %231 = fsub <4 x float> %220, %225
  %232 = shufflevector <4 x float> %231, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %233 = fmul <4 x float> %210, %231
  %234 = fmul <4 x float> %211, %232
  %235 = fadd <4 x float> %233, %234
  %236 = add nsw i32 %189, %.018
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [2 x float], [2 x float]* %.12, i64 %237, i64 0
  %239 = bitcast float* %238 to <4 x float>*
  store <4 x float> %235, <4 x float>* %239, align 16
  %240 = add nsw i32 %188, %215
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [2 x float], [2 x float]* %.07, i64 %241, i64 0
  %243 = bitcast float* %242 to <4 x float>*
  %244 = load <4 x float>, <4 x float>* %243, align 16
  %245 = add nsw i32 %188, %215
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [2 x float], [2 x float]* %.05, i64 %246, i64 0
  %248 = bitcast float* %247 to <4 x float>*
  %249 = load <4 x float>, <4 x float>* %248, align 16
  %250 = fadd <4 x float> %244, %249
  %251 = add nsw i32 %189, %215
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [2 x float], [2 x float]* %.14, i64 %252, i64 0
  %254 = bitcast float* %253 to <4 x float>*
  store <4 x float> %250, <4 x float>* %254, align 16
  %255 = fsub <4 x float> %244, %249
  %256 = shufflevector <4 x float> %255, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %257 = fmul <4 x float> %210, %255
  %258 = fmul <4 x float> %211, %256
  %259 = fadd <4 x float> %257, %258
  %260 = add nsw i32 %189, %215
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [2 x float], [2 x float]* %.12, i64 %261, i64 0
  %263 = bitcast float* %262 to <4 x float>*
  store <4 x float> %259, <4 x float>* %263, align 16
  br label %264

264:                                              ; preds = %214
  %265 = add nuw nsw i32 %.018, 4
  br label %212, !llvm.loop !13

266:                                              ; preds = %212
  br label %267

267:                                              ; preds = %266
  %268 = add nuw nsw i32 %.216, 1
  br label %185, !llvm.loop !14

269:                                              ; preds = %185
  %270 = shl nsw i32 %.013, 2
  br label %271

271:                                              ; preds = %269
  %272 = sdiv i32 %0, %270
  %273 = shl nsw i32 %.013, 1
  %274 = add nuw nsw i32 %.011, 1
  br label %168, !llvm.loop !15

275:                                              ; preds = %168
  %276 = sdiv i32 %0, 2
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 %277, i64 0
  %279 = bitcast float* %278 to [2 x float]*
  %.not = icmp eq i32 %.09, 0
  br i1 %.not, label %284, label %280

280:                                              ; preds = %275
  %281 = sdiv i32 %0, 2
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 %282, i64 0
  br label %288

284:                                              ; preds = %275
  %285 = sdiv i32 %0, 2
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds [2 x float], [2 x float]* %1, i64 %286, i64 0
  br label %288

288:                                              ; preds = %284, %280
  %.18 = phi [2 x float]* [ %2, %280 ], [ %1, %284 ]
  %.16.in = phi float* [ %283, %280 ], [ %287, %284 ]
  %.16 = bitcast float* %.16.in to [2 x float]*
  br label %289

289:                                              ; preds = %326, %288
  %.119 = phi i32 [ 0, %288 ], [ %327, %326 ]
  %290 = sdiv i32 %0, 2
  %291 = icmp slt i32 %.119, %290
  br i1 %291, label %292, label %.loopexit

292:                                              ; preds = %289
  %293 = or i32 %.119, 2
  %294 = zext i32 %.119 to i64
  %295 = getelementptr inbounds [2 x float], [2 x float]* %.18, i64 %294, i64 0
  %296 = bitcast float* %295 to <4 x float>*
  %297 = load <4 x float>, <4 x float>* %296, align 16
  %298 = zext i32 %.119 to i64
  %299 = getelementptr inbounds [2 x float], [2 x float]* %.16, i64 %298, i64 0
  %300 = bitcast float* %299 to <4 x float>*
  %301 = load <4 x float>, <4 x float>* %300, align 16
  %302 = fadd <4 x float> %297, %301
  %303 = zext i32 %.119 to i64
  %304 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 %303, i64 0
  %305 = bitcast float* %304 to <4 x float>*
  store <4 x float> %302, <4 x float>* %305, align 16
  %306 = fsub <4 x float> %297, %301
  %307 = zext i32 %.119 to i64
  %308 = getelementptr inbounds [2 x float], [2 x float]* %279, i64 %307, i64 0
  %309 = bitcast float* %308 to <4 x float>*
  store <4 x float> %306, <4 x float>* %309, align 16
  %310 = zext i32 %293 to i64
  %311 = getelementptr inbounds [2 x float], [2 x float]* %.18, i64 %310, i64 0
  %312 = bitcast float* %311 to <4 x float>*
  %313 = load <4 x float>, <4 x float>* %312, align 16
  %314 = zext i32 %293 to i64
  %315 = getelementptr inbounds [2 x float], [2 x float]* %.16, i64 %314, i64 0
  %316 = bitcast float* %315 to <4 x float>*
  %317 = load <4 x float>, <4 x float>* %316, align 16
  %318 = fadd <4 x float> %313, %317
  %319 = zext i32 %293 to i64
  %320 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 %319, i64 0
  %321 = bitcast float* %320 to <4 x float>*
  store <4 x float> %318, <4 x float>* %321, align 16
  %322 = fsub <4 x float> %313, %317
  %323 = zext i32 %293 to i64
  %324 = getelementptr inbounds [2 x float], [2 x float]* %279, i64 %323, i64 0
  %325 = bitcast float* %324 to <4 x float>*
  store <4 x float> %322, <4 x float>* %325, align 16
  br label %326

326:                                              ; preds = %292
  %327 = add nuw nsw i32 %.119, 4
  br label %289, !llvm.loop !16

.loopexit:                                        ; preds = %289
  br label %328

328:                                              ; preds = %.loopexit, %165, %104, %10
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
  %12 = call double @cos(double noundef %11) #6
  %13 = fptrunc double %12 to float
  %14 = zext i32 %.0 to i64
  %15 = getelementptr inbounds [2 x float], [2 x float]* %1, i64 %14, i64 0
  store float %13, float* %15, align 4
  %16 = fpext float %10 to double
  %17 = call double @sin(double noundef %16) #6
  %18 = fptrunc double %17 to float
  %19 = zext i32 %.0 to i64
  %20 = getelementptr inbounds [2 x float], [2 x float]* %1, i64 %19, i64 1
  store float %18, float* %20, align 4
  br label %21

21:                                               ; preds = %8
  %22 = add nuw nsw i32 %.0, 1
  br label %6, !llvm.loop !17

23:                                               ; preds = %6
  ret void
}

; Function Attrs: nounwind
declare dso_local double @cos(double noundef) #2

; Function Attrs: nounwind
declare dso_local double @sin(double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local float @ggl(float* nocapture noundef %0) #0 {
  %2 = load float, float* %0, align 4
  %3 = fpext float %2 to double
  %4 = fmul double %3, 1.680700e+04
  %5 = call double @fmod(double noundef %4, double noundef 0x41DFFFFFFFC00000) #6
  %6 = fptrunc double %5 to float
  store float %6, float* %0, align 4
  %7 = fadd double %5, -1.000000e+00
  %8 = fdiv double %7, 0x41DFFFFFFF800000
  %9 = fptrunc double %8 to float
  ret float %9
}

; Function Attrs: nounwind
declare dso_local double @fmod(double noundef, double noundef) #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }

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
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
