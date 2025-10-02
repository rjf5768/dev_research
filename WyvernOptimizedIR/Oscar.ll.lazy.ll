; ModuleID = './Oscar.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/Stanford/Oscar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex = type { float, float }
%struct.node = type { %struct.node*, %struct.node*, i32 }
%struct.element = type { i32, i32 }

@seed = dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"  %15.3f%15.3f\00", align 1
@e = dso_local global [130 x %struct.complex] zeroinitializer, align 16
@zr = dso_local global float 0.000000e+00, align 4
@zi = dso_local global float 0.000000e+00, align 4
@z = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@w = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@value = dso_local global float 0.000000e+00, align 4
@fixed = dso_local global float 0.000000e+00, align 4
@floated = dso_local global float 0.000000e+00, align 4
@permarray = dso_local global [11 x i32] zeroinitializer, align 16
@pctr = dso_local global i32 0, align 4
@tree = dso_local global %struct.node* null, align 8
@stack = dso_local global [4 x i32] zeroinitializer, align 16
@cellspace = dso_local global [19 x %struct.element] zeroinitializer, align 16
@freelist = dso_local global i32 0, align 4
@movesdone = dso_local global i32 0, align 4
@ima = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imb = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imr = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@rma = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@rmb = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@rmr = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@piececount = dso_local global [4 x i32] zeroinitializer, align 16
@class = dso_local global [13 x i32] zeroinitializer, align 16
@piecemax = dso_local global [13 x i32] zeroinitializer, align 16
@puzzl = dso_local global [512 x i32] zeroinitializer, align 16
@p = dso_local global [13 x [512 x i32]] zeroinitializer, align 16
@n = dso_local global i32 0, align 4
@kount = dso_local global i32 0, align 4
@sortlist = dso_local global [5001 x i32] zeroinitializer, align 16
@biggest = dso_local global i32 0, align 4
@littlest = dso_local global i32 0, align 4
@top = dso_local global i32 0, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @Initrand() #0 {
  store i64 74755, i64* @seed, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @Rand() #1 {
  %1 = load i64, i64* @seed, align 8
  %2 = mul nsw i64 %1, 1309
  %3 = add nsw i64 %2, 13849
  %4 = and i64 %3, 65535
  store i64 %4, i64* @seed, align 8
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local float @Cos(float noundef %0) #2 {
  br label %2

2:                                                ; preds = %22, %1
  %.03 = phi float [ 1.000000e+00, %1 ], [ %.2, %22 ]
  %.02 = phi i32 [ 1, %1 ], [ %5, %22 ]
  %.01 = phi i32 [ 2, %1 ], [ %23, %22 ]
  %.0 = phi float [ %0, %1 ], [ %6, %22 ]
  %3 = icmp ult i32 %.01, 11
  br i1 %3, label %4, label %24

4:                                                ; preds = %2
  %5 = mul nsw i32 %.02, %.01
  %6 = fmul float %.0, %0
  %7 = and i32 %.01, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %4
  %10 = and i32 %.01, 3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = sitofp i32 %5 to float
  %14 = fdiv float %6, %13
  %15 = fadd float %.03, %14
  br label %20

16:                                               ; preds = %9
  %17 = sitofp i32 %5 to float
  %18 = fdiv float %6, %17
  %19 = fsub float %.03, %18
  br label %20

20:                                               ; preds = %16, %12
  %.1 = phi float [ %15, %12 ], [ %19, %16 ]
  br label %21

21:                                               ; preds = %20, %4
  %.2 = phi float [ %.1, %20 ], [ %.03, %4 ]
  br label %22

22:                                               ; preds = %21
  %23 = add nuw nsw i32 %.01, 1
  br label %2, !llvm.loop !4

24:                                               ; preds = %2
  ret float %.03
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @Min0(i32 noundef %0, i32 noundef %1) #3 {
  %3 = icmp slt i32 %0, %1
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %4
  %.0 = phi i32 [ %0, %4 ], [ %1, %5 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Printcomplex(%struct.complex* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #4 {
  %putchar = call i32 @putchar(i32 10)
  br label %5

5:                                                ; preds = %26, %4
  %.0 = phi i32 [ %1, %4 ], [ %25, %26 ]
  %6 = sext i32 %.0 to i64
  %7 = getelementptr inbounds %struct.complex, %struct.complex* %0, i64 %6, i32 0
  %8 = load float, float* %7, align 4
  %9 = fpext float %8 to double
  %10 = sext i32 %.0 to i64
  %11 = getelementptr inbounds %struct.complex, %struct.complex* %0, i64 %10, i32 1
  %12 = load float, float* %11, align 4
  %13 = fpext float %12 to double
  %14 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), double noundef %9, double noundef %13) #11
  %15 = add nsw i32 %.0, %3
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.complex, %struct.complex* %0, i64 %16, i32 0
  %18 = load float, float* %17, align 4
  %19 = fpext float %18 to double
  %20 = sext i32 %15 to i64
  %21 = getelementptr inbounds %struct.complex, %struct.complex* %0, i64 %20, i32 1
  %22 = load float, float* %21, align 4
  %23 = fpext float %22 to double
  %24 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), double noundef %19, double noundef %23) #11
  %putchar1 = call i32 @putchar(i32 10)
  %25 = add nsw i32 %15, %3
  br label %26

26:                                               ; preds = %5
  %.not = icmp sgt i32 %25, %2
  br i1 %.not, label %27, label %5, !llvm.loop !6

27:                                               ; preds = %26
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @Uniform11(i32* nocapture noundef %0, float* nocapture noundef writeonly %1) #1 {
  %3 = load i32, i32* %0, align 4
  %4 = mul nsw i32 %3, 4855
  %5 = add nsw i32 %4, 1731
  %6 = and i32 %5, 8191
  store i32 %6, i32* %0, align 4
  %7 = sitofp i32 %6 to float
  %8 = fmul float %7, 0x3F20000000000000
  store float %8, float* %1, align 4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @Exptab(i32 noundef %0, %struct.complex* nocapture noundef %1) #6 {
  %3 = alloca [26 x float], align 16
  br label %4

4:                                                ; preds = %13, %2
  %.04 = phi i32 [ 1, %2 ], [ %15, %13 ]
  %.03 = phi float [ 4.000000e+00, %2 ], [ %14, %13 ]
  %5 = icmp ult i32 %.04, 26
  br i1 %5, label %6, label %16

6:                                                ; preds = %4
  %7 = fdiv float 0x400921FB60000000, %.03
  %8 = call float @Cos(float noundef %7)
  %9 = fmul float %8, 2.000000e+00
  %10 = fdiv float 1.000000e+00, %9
  %11 = zext i32 %.04 to i64
  %12 = getelementptr inbounds [26 x float], [26 x float]* %3, i64 0, i64 %11
  store float %10, float* %12, align 4
  br label %13

13:                                               ; preds = %6
  %14 = fadd float %.03, %.03
  %15 = add nuw nsw i32 %.04, 1
  br label %4, !llvm.loop !7

16:                                               ; preds = %4
  %17 = sdiv i32 %0, 2
  %18 = sdiv i32 %0, 4
  %19 = getelementptr inbounds %struct.complex, %struct.complex* %1, i64 1, i32 0
  store float 1.000000e+00, float* %19, align 4
  %20 = getelementptr inbounds %struct.complex, %struct.complex* %1, i64 1, i32 1
  store float 0.000000e+00, float* %20, align 4
  %21 = add nsw i32 %18, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.complex, %struct.complex* %1, i64 %22, i32 0
  store float 0.000000e+00, float* %23, align 4
  %24 = add nsw i32 %18, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.complex, %struct.complex* %1, i64 %25, i32 1
  store float 1.000000e+00, float* %26, align 4
  %27 = add nsw i32 %17, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.complex, %struct.complex* %1, i64 %28, i32 0
  store float -1.000000e+00, float* %29, align 4
  %30 = add nsw i32 %17, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.complex, %struct.complex* %1, i64 %31, i32 1
  store float 0.000000e+00, float* %32, align 4
  br label %33

33:                                               ; preds = %75, %16
  %.02 = phi i32 [ 1, %16 ], [ %77, %75 ]
  %.0 = phi i32 [ %18, %16 ], [ %34, %75 ]
  %34 = sdiv i32 %.0, 2
  br label %35

35:                                               ; preds = %73, %33
  %.01 = phi i32 [ %34, %33 ], [ %72, %73 ]
  %36 = sext i32 %.02 to i64
  %37 = getelementptr inbounds [26 x float], [26 x float]* %3, i64 0, i64 %36
  %38 = load float, float* %37, align 4
  %39 = add nsw i32 %.01, %34
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.complex, %struct.complex* %1, i64 %41, i32 0
  %43 = load float, float* %42, align 4
  %44 = sub nsw i32 %.01, %34
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.complex, %struct.complex* %1, i64 %46, i32 0
  %48 = load float, float* %47, align 4
  %49 = fadd float %43, %48
  %50 = fmul float %38, %49
  %51 = add nsw i32 %.01, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.complex, %struct.complex* %1, i64 %52, i32 0
  store float %50, float* %53, align 4
  %54 = sext i32 %.02 to i64
  %55 = getelementptr inbounds [26 x float], [26 x float]* %3, i64 0, i64 %54
  %56 = load float, float* %55, align 4
  %57 = add nsw i32 %.01, %34
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.complex, %struct.complex* %1, i64 %59, i32 1
  %61 = load float, float* %60, align 4
  %62 = sub nsw i32 %.01, %34
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.complex, %struct.complex* %1, i64 %64, i32 1
  %66 = load float, float* %65, align 4
  %67 = fadd float %61, %66
  %68 = fmul float %56, %67
  %69 = add nsw i32 %.01, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.complex, %struct.complex* %1, i64 %70, i32 1
  store float %68, float* %71, align 4
  %72 = add nsw i32 %.01, %.0
  br label %73

73:                                               ; preds = %35
  %.not = icmp sgt i32 %72, %17
  br i1 %.not, label %74, label %35, !llvm.loop !8

74:                                               ; preds = %73
  br label %75

75:                                               ; preds = %74
  %76 = add nsw i32 %.02, 1
  %77 = call i32 @Min0(i32 noundef %76, i32 noundef 25)
  %78 = icmp sgt i32 %.0, 3
  br i1 %78, label %33, label %79, !llvm.loop !9

79:                                               ; preds = %75
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @Fft(i32 noundef %0, %struct.complex* nocapture noundef %1, %struct.complex* nocapture noundef %2, %struct.complex* nocapture noundef readonly %3, float noundef %4) #7 {
  %6 = sdiv i32 %0, 2
  br label %7

7:                                                ; preds = %109, %5
  %.01 = phi i32 [ 1, %5 ], [ %108, %109 ]
  br label %8

8:                                                ; preds = %95, %7
  %.04 = phi i32 [ 1, %7 ], [ %91, %95 ]
  %.03 = phi i32 [ %.01, %7 ], [ %94, %95 ]
  %.02 = phi i32 [ 0, %7 ], [ %.03, %95 ]
  br label %9

9:                                                ; preds = %92, %8
  %.1 = phi i32 [ %.04, %8 ], [ %91, %92 ]
  %10 = sext i32 %.1 to i64
  %11 = getelementptr inbounds %struct.complex, %struct.complex* %1, i64 %10, i32 0
  %12 = load float, float* %11, align 4
  %13 = add nsw i32 %6, %.1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.complex, %struct.complex* %1, i64 %14, i32 0
  %16 = load float, float* %15, align 4
  %17 = fadd float %12, %16
  %18 = add nsw i32 %.1, %.02
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.complex, %struct.complex* %2, i64 %19, i32 0
  store float %17, float* %20, align 4
  %21 = sext i32 %.1 to i64
  %22 = getelementptr inbounds %struct.complex, %struct.complex* %1, i64 %21, i32 1
  %23 = load float, float* %22, align 4
  %24 = add nsw i32 %6, %.1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.complex, %struct.complex* %1, i64 %25, i32 1
  %27 = load float, float* %26, align 4
  %28 = fadd float %23, %27
  %29 = add nsw i32 %.1, %.02
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.complex, %struct.complex* %2, i64 %30, i32 1
  store float %28, float* %31, align 4
  %32 = add nsw i32 %.02, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.complex, %struct.complex* %3, i64 %33, i32 0
  %35 = load float, float* %34, align 4
  %36 = sext i32 %.1 to i64
  %37 = getelementptr inbounds %struct.complex, %struct.complex* %1, i64 %36, i32 0
  %38 = load float, float* %37, align 4
  %39 = add nsw i32 %.1, %6
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.complex, %struct.complex* %1, i64 %40, i32 0
  %42 = load float, float* %41, align 4
  %43 = fsub float %38, %42
  %44 = add nsw i32 %.02, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.complex, %struct.complex* %3, i64 %45, i32 1
  %47 = load float, float* %46, align 4
  %48 = sext i32 %.1 to i64
  %49 = getelementptr inbounds %struct.complex, %struct.complex* %1, i64 %48, i32 1
  %50 = load float, float* %49, align 4
  %51 = add nsw i32 %.1, %6
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.complex, %struct.complex* %1, i64 %52, i32 1
  %54 = load float, float* %53, align 4
  %55 = fsub float %50, %54
  %56 = fneg float %47
  %57 = fmul float %55, %56
  %58 = call float @llvm.fmuladd.f32(float %35, float %43, float %57)
  %59 = add nsw i32 %.1, %.03
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.complex, %struct.complex* %2, i64 %60, i32 0
  store float %58, float* %61, align 4
  %62 = add nsw i32 %.02, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.complex, %struct.complex* %3, i64 %63, i32 0
  %65 = load float, float* %64, align 4
  %66 = sext i32 %.1 to i64
  %67 = getelementptr inbounds %struct.complex, %struct.complex* %1, i64 %66, i32 1
  %68 = load float, float* %67, align 4
  %69 = add nsw i32 %.1, %6
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.complex, %struct.complex* %1, i64 %70, i32 1
  %72 = load float, float* %71, align 4
  %73 = fsub float %68, %72
  %74 = add nsw i32 %.02, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.complex, %struct.complex* %3, i64 %75, i32 1
  %77 = load float, float* %76, align 4
  %78 = sext i32 %.1 to i64
  %79 = getelementptr inbounds %struct.complex, %struct.complex* %1, i64 %78, i32 0
  %80 = load float, float* %79, align 4
  %81 = add nsw i32 %.1, %6
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.complex, %struct.complex* %1, i64 %82, i32 0
  %84 = load float, float* %83, align 4
  %85 = fsub float %80, %84
  %86 = fmul float %77, %85
  %87 = call float @llvm.fmuladd.f32(float %65, float %73, float %86)
  %88 = add nsw i32 %.1, %.03
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.complex, %struct.complex* %2, i64 %89, i32 1
  store float %87, float* %90, align 4
  %91 = add nsw i32 %.1, 1
  br label %92

92:                                               ; preds = %9
  %.not.not = icmp slt i32 %.1, %.03
  br i1 %.not.not, label %9, label %93, !llvm.loop !10

93:                                               ; preds = %92
  %94 = add nsw i32 %.03, %.01
  br label %95

95:                                               ; preds = %93
  %.not = icmp sgt i32 %94, %6
  br i1 %.not, label %96, label %8, !llvm.loop !11

96:                                               ; preds = %95
  br label %97

97:                                               ; preds = %105, %96
  %.0 = phi i32 [ 1, %96 ], [ %106, %105 ]
  %98 = zext i32 %.0 to i64
  %99 = getelementptr inbounds %struct.complex, %struct.complex* %1, i64 %98
  %100 = zext i32 %.0 to i64
  %101 = getelementptr inbounds %struct.complex, %struct.complex* %2, i64 %100
  %102 = bitcast %struct.complex* %101 to i64*
  %103 = bitcast %struct.complex* %99 to i64*
  %104 = load i64, i64* %102, align 4
  store i64 %104, i64* %103, align 4
  br label %105

105:                                              ; preds = %97
  %106 = add nuw nsw i32 %.0, 1
  %.not5.not = icmp slt i32 %.0, %0
  br i1 %.not5.not, label %97, label %107, !llvm.loop !12

107:                                              ; preds = %105
  %108 = shl nsw i32 %.01, 1
  br label %109

109:                                              ; preds = %107
  %.not6 = icmp sgt i32 %108, %6
  br i1 %.not6, label %110, label %7, !llvm.loop !13

110:                                              ; preds = %109
  br label %111

111:                                              ; preds = %126, %110
  %.2 = phi i32 [ 1, %110 ], [ %127, %126 ]
  %.not7 = icmp sgt i32 %.2, %0
  br i1 %.not7, label %128, label %112

112:                                              ; preds = %111
  %113 = zext i32 %.2 to i64
  %114 = getelementptr inbounds %struct.complex, %struct.complex* %1, i64 %113, i32 0
  %115 = load float, float* %114, align 4
  %116 = fmul float %115, %4
  %117 = zext i32 %.2 to i64
  %118 = getelementptr inbounds %struct.complex, %struct.complex* %1, i64 %117, i32 0
  store float %116, float* %118, align 4
  %119 = fneg float %4
  %120 = zext i32 %.2 to i64
  %121 = getelementptr inbounds %struct.complex, %struct.complex* %1, i64 %120, i32 1
  %122 = load float, float* %121, align 4
  %123 = fmul float %122, %119
  %124 = zext i32 %.2 to i64
  %125 = getelementptr inbounds %struct.complex, %struct.complex* %1, i64 %124, i32 1
  store float %123, float* %125, align 4
  br label %126

126:                                              ; preds = %112
  %127 = add nuw nsw i32 %.2, 1
  br label %111, !llvm.loop !14

128:                                              ; preds = %111
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: noinline nounwind uwtable
define dso_local void @Oscar() #4 {
  %1 = alloca i32, align 4
  call void @Exptab(i32 noundef 256, %struct.complex* noundef getelementptr inbounds ([130 x %struct.complex], [130 x %struct.complex]* @e, i64 0, i64 0))
  store i64 5767, i64* @seed, align 8
  br label %2

2:                                                ; preds = %19, %0
  %.0 = phi i32 [ 1, %0 ], [ %20, %19 ]
  %3 = icmp ult i32 %.0, 257
  br i1 %3, label %4, label %21

4:                                                ; preds = %2
  %5 = load i64, i64* @seed, align 8
  %6 = trunc i64 %5 to i32
  store i32 %6, i32* %1, align 4
  call void @Uniform11(i32* noundef nonnull %1, float* noundef nonnull @zr)
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  store i64 %8, i64* @seed, align 8
  call void @Uniform11(i32* noundef nonnull %1, float* noundef nonnull @zi)
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* @seed, align 8
  %11 = load float, float* @zr, align 4
  %12 = call float @llvm.fmuladd.f32(float %11, float 2.000000e+01, float -1.000000e+01)
  %13 = zext i32 %.0 to i64
  %14 = getelementptr inbounds [257 x %struct.complex], [257 x %struct.complex]* @z, i64 0, i64 %13, i32 0
  store float %12, float* %14, align 8
  %15 = load float, float* @zi, align 4
  %16 = call float @llvm.fmuladd.f32(float %15, float 2.000000e+01, float -1.000000e+01)
  %17 = zext i32 %.0 to i64
  %18 = getelementptr inbounds [257 x %struct.complex], [257 x %struct.complex]* @z, i64 0, i64 %17, i32 1
  store float %16, float* %18, align 4
  br label %19

19:                                               ; preds = %4
  %20 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !15

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %25, %21
  %.1 = phi i32 [ 1, %21 ], [ %26, %25 ]
  %23 = icmp ult i32 %.1, 21
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  call void @Fft(i32 noundef 256, %struct.complex* noundef getelementptr inbounds ([257 x %struct.complex], [257 x %struct.complex]* @z, i64 0, i64 0), %struct.complex* noundef getelementptr inbounds ([257 x %struct.complex], [257 x %struct.complex]* @w, i64 0, i64 0), %struct.complex* noundef getelementptr inbounds ([130 x %struct.complex], [130 x %struct.complex]* @e, i64 0, i64 0), float noundef 6.250000e-02)
  br label %25

25:                                               ; preds = %24
  %26 = add nuw nsw i32 %.1, 1
  br label %22, !llvm.loop !16

27:                                               ; preds = %22
  call void @Printcomplex(%struct.complex* noundef getelementptr inbounds ([257 x %struct.complex], [257 x %struct.complex]* @z, i64 0, i64 0), i32 noundef 1, i32 noundef 256, i32 noundef 17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #4 {
  br label %1

1:                                                ; preds = %4, %0
  %.0 = phi i32 [ 0, %0 ], [ %5, %4 ]
  %2 = icmp ult i32 %.0, 10
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  call void @Oscar()
  br label %4

4:                                                ; preds = %3
  %5 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !17

6:                                                ; preds = %1
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #10

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind }

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
