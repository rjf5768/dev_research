; ModuleID = './trig.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/08-main/trig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.HPointStruct = type { double, double, double, double }
%struct.ObjPointStruct = type { double, double, double, double, double, double }

@.str = private unnamed_addr constant [30 x i8] c" [[ %.2f, %.2f, %.2f, %.2f] \0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"  [ %.2f, %.2f, %.2f, %.2f] \0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"  [ %.2f, %.2f, %.2f, %.2f]]\0A\00", align 1

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @MultMatrixMatrix([4 x [4 x double]]* nocapture noundef readonly %0, [4 x [4 x double]]* nocapture noundef readonly %1, [4 x [4 x double]]* nocapture noundef %2) #0 {
  br label %4

4:                                                ; preds = %35, %3
  %.02 = phi i32 [ 0, %3 ], [ %36, %35 ]
  %5 = icmp ult i32 %.02, 4
  br i1 %5, label %6, label %37

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %32, %6
  %.01 = phi i32 [ 0, %6 ], [ %33, %32 ]
  %8 = icmp ult i32 %.01, 4
  br i1 %8, label %9, label %34

9:                                                ; preds = %7
  %10 = zext i32 %.02 to i64
  %11 = zext i32 %.01 to i64
  %12 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %2, i64 0, i64 %10, i64 %11
  store double 0.000000e+00, double* %12, align 8
  br label %13

13:                                               ; preds = %29, %9
  %.0 = phi i32 [ 0, %9 ], [ %30, %29 ]
  %14 = icmp ult i32 %.0, 4
  br i1 %14, label %15, label %31

15:                                               ; preds = %13
  %16 = zext i32 %.02 to i64
  %17 = zext i32 %.0 to i64
  %18 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %0, i64 0, i64 %16, i64 %17
  %19 = load double, double* %18, align 8
  %20 = zext i32 %.0 to i64
  %21 = zext i32 %.01 to i64
  %22 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %1, i64 0, i64 %20, i64 %21
  %23 = load double, double* %22, align 8
  %24 = zext i32 %.02 to i64
  %25 = zext i32 %.01 to i64
  %26 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %2, i64 0, i64 %24, i64 %25
  %27 = load double, double* %26, align 8
  %28 = call double @llvm.fmuladd.f64(double %19, double %23, double %27)
  store double %28, double* %26, align 8
  br label %29

29:                                               ; preds = %15
  %30 = add nuw nsw i32 %.0, 1
  br label %13, !llvm.loop !4

31:                                               ; preds = %13
  br label %32

32:                                               ; preds = %31
  %33 = add nuw nsw i32 %.01, 1
  br label %7, !llvm.loop !6

34:                                               ; preds = %7
  br label %35

35:                                               ; preds = %34
  %36 = add nuw nsw i32 %.02, 1
  br label %4, !llvm.loop !7

37:                                               ; preds = %4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @MultMatrixHPoint(%struct.HPointStruct* noalias nocapture writeonly sret(%struct.HPointStruct) align 8 %0, [4 x [4 x double]]* nocapture noundef readonly %1, %struct.HPointStruct* nocapture noundef readonly byval(%struct.HPointStruct) align 8 %2) #2 {
  %4 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i64 0, i32 0
  %5 = load double, double* %4, align 8
  %6 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %1, i64 0, i64 0, i64 0
  %7 = load double, double* %6, align 8
  %8 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i64 0, i32 1
  %9 = load double, double* %8, align 8
  %10 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %1, i64 0, i64 0, i64 1
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  %13 = call double @llvm.fmuladd.f64(double %5, double %7, double %12)
  %14 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i64 0, i32 2
  %15 = load double, double* %14, align 8
  %16 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %1, i64 0, i64 0, i64 2
  %17 = load double, double* %16, align 8
  %18 = call double @llvm.fmuladd.f64(double %15, double %17, double %13)
  %19 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i64 0, i32 3
  %20 = load double, double* %19, align 8
  %21 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %1, i64 0, i64 0, i64 3
  %22 = load double, double* %21, align 8
  %23 = call double @llvm.fmuladd.f64(double %20, double %22, double %18)
  %24 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %0, i64 0, i32 0
  store double %23, double* %24, align 8
  %25 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i64 0, i32 0
  %26 = load double, double* %25, align 8
  %27 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %1, i64 0, i64 1, i64 0
  %28 = load double, double* %27, align 8
  %29 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i64 0, i32 1
  %30 = load double, double* %29, align 8
  %31 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %1, i64 0, i64 1, i64 1
  %32 = load double, double* %31, align 8
  %33 = fmul double %30, %32
  %34 = call double @llvm.fmuladd.f64(double %26, double %28, double %33)
  %35 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i64 0, i32 2
  %36 = load double, double* %35, align 8
  %37 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %1, i64 0, i64 1, i64 2
  %38 = load double, double* %37, align 8
  %39 = call double @llvm.fmuladd.f64(double %36, double %38, double %34)
  %40 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i64 0, i32 3
  %41 = load double, double* %40, align 8
  %42 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %1, i64 0, i64 1, i64 3
  %43 = load double, double* %42, align 8
  %44 = call double @llvm.fmuladd.f64(double %41, double %43, double %39)
  %45 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %0, i64 0, i32 1
  store double %44, double* %45, align 8
  %46 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i64 0, i32 0
  %47 = load double, double* %46, align 8
  %48 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %1, i64 0, i64 2, i64 0
  %49 = load double, double* %48, align 8
  %50 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i64 0, i32 1
  %51 = load double, double* %50, align 8
  %52 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %1, i64 0, i64 2, i64 1
  %53 = load double, double* %52, align 8
  %54 = fmul double %51, %53
  %55 = call double @llvm.fmuladd.f64(double %47, double %49, double %54)
  %56 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i64 0, i32 2
  %57 = load double, double* %56, align 8
  %58 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %1, i64 0, i64 2, i64 2
  %59 = load double, double* %58, align 8
  %60 = call double @llvm.fmuladd.f64(double %57, double %59, double %55)
  %61 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i64 0, i32 3
  %62 = load double, double* %61, align 8
  %63 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %1, i64 0, i64 2, i64 3
  %64 = load double, double* %63, align 8
  %65 = call double @llvm.fmuladd.f64(double %62, double %64, double %60)
  %66 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %0, i64 0, i32 2
  store double %65, double* %66, align 8
  %67 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i64 0, i32 0
  %68 = load double, double* %67, align 8
  %69 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %1, i64 0, i64 3, i64 0
  %70 = load double, double* %69, align 8
  %71 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i64 0, i32 1
  %72 = load double, double* %71, align 8
  %73 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %1, i64 0, i64 3, i64 1
  %74 = load double, double* %73, align 8
  %75 = fmul double %72, %74
  %76 = call double @llvm.fmuladd.f64(double %68, double %70, double %75)
  %77 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i64 0, i32 2
  %78 = load double, double* %77, align 8
  %79 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %1, i64 0, i64 3, i64 2
  %80 = load double, double* %79, align 8
  %81 = call double @llvm.fmuladd.f64(double %78, double %80, double %76)
  %82 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %2, i64 0, i32 3
  %83 = load double, double* %82, align 8
  %84 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %1, i64 0, i64 3, i64 3
  %85 = load double, double* %84, align 8
  %86 = call double @llvm.fmuladd.f64(double %83, double %85, double %81)
  %87 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %0, i64 0, i32 3
  store double %86, double* %87, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias [4 x [4 x double]]* @CopyMatrix([4 x [4 x double]]* noundef readonly %0) #3 {
  %.not = icmp eq [4 x [4 x double]]* %0, null
  br i1 %.not, label %24, label %2

2:                                                ; preds = %1
  %3 = call noalias dereferenceable_or_null(128) i8* @malloc(i64 noundef 128) #8
  %4 = bitcast i8* %3 to [4 x [4 x double]]*
  br label %5

5:                                                ; preds = %21, %2
  %.01 = phi i32 [ 0, %2 ], [ %22, %21 ]
  %6 = icmp ult i32 %.01, 4
  br i1 %6, label %7, label %23

7:                                                ; preds = %5
  br label %8

8:                                                ; preds = %18, %7
  %.02 = phi i32 [ 0, %7 ], [ %19, %18 ]
  %9 = icmp ult i32 %.02, 4
  br i1 %9, label %10, label %20

10:                                               ; preds = %8
  %11 = zext i32 %.01 to i64
  %12 = zext i32 %.02 to i64
  %13 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %0, i64 0, i64 %11, i64 %12
  %14 = load double, double* %13, align 8
  %15 = zext i32 %.01 to i64
  %16 = zext i32 %.02 to i64
  %17 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %4, i64 0, i64 %15, i64 %16
  store double %14, double* %17, align 8
  br label %18

18:                                               ; preds = %10
  %19 = add nuw nsw i32 %.02, 1
  br label %8, !llvm.loop !8

20:                                               ; preds = %8
  br label %21

21:                                               ; preds = %20
  %22 = add nuw nsw i32 %.01, 1
  br label %5, !llvm.loop !9

23:                                               ; preds = %5
  br label %24

24:                                               ; preds = %23, %1
  %.0 = phi [4 x [4 x double]]* [ %4, %23 ], [ null, %1 ]
  ret [4 x [4 x double]]* %.0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local noalias [4 x [4 x double]]* @IdentMatrix() #3 {
  %1 = alloca [4 x [4 x double]], align 16
  %2 = bitcast [4 x [4 x double]]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(128) %2, i8 0, i64 128, i1 false)
  %3 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %1, i64 0, i64 0, i64 0
  store double 1.000000e+00, double* %3, align 16
  %4 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %1, i64 0, i64 1, i64 1
  store double 1.000000e+00, double* %4, align 8
  %5 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %1, i64 0, i64 2, i64 2
  store double 1.000000e+00, double* %5, align 16
  %6 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %1, i64 0, i64 3, i64 3
  store double 1.000000e+00, double* %6, align 8
  %7 = call [4 x [4 x double]]* @CopyMatrix([4 x [4 x double]]* noundef nonnull %1)
  ret [4 x [4 x double]]* %7
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local noalias [4 x [4 x double]]* @TranslateMatrix(double noundef %0, double noundef %1, double noundef %2) #3 {
  %4 = call [4 x [4 x double]]* @IdentMatrix()
  %5 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %4, i64 0, i64 0, i64 3
  store double %0, double* %5, align 8
  %6 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %4, i64 0, i64 1, i64 3
  store double %1, double* %6, align 8
  %7 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %4, i64 0, i64 2, i64 3
  store double %2, double* %7, align 8
  ret [4 x [4 x double]]* %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias [4 x [4 x double]]* @RotateMatrix(double noundef %0, double noundef %1, double noundef %2) #3 {
  %4 = fmul double %0, 0x3F91DF46A2529E84
  %5 = call double @cos(double noundef %4) #8
  %6 = fmul double %0, 0x3F91DF46A2529E84
  %7 = call double @sin(double noundef %6) #8
  %8 = fmul double %1, 0x3F91DF46A2529E84
  %9 = call double @cos(double noundef %8) #8
  %10 = fmul double %1, 0x3F91DF46A2529E84
  %11 = call double @sin(double noundef %10) #8
  %12 = fmul double %2, 0x3F91DF46A2529E84
  %13 = call double @cos(double noundef %12) #8
  %14 = fmul double %2, 0x3F91DF46A2529E84
  %15 = call double @sin(double noundef %14) #8
  %16 = call [4 x [4 x double]]* @IdentMatrix()
  %17 = call [4 x [4 x double]]* @IdentMatrix()
  %18 = call [4 x [4 x double]]* @IdentMatrix()
  %19 = call [4 x [4 x double]]* @IdentMatrix()
  %20 = call [4 x [4 x double]]* @IdentMatrix()
  %21 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %16, i64 0, i64 1, i64 1
  store double %5, double* %21, align 8
  %22 = fneg double %7
  %23 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %16, i64 0, i64 1, i64 2
  store double %22, double* %23, align 8
  %24 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %16, i64 0, i64 2, i64 1
  store double %7, double* %24, align 8
  %25 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %16, i64 0, i64 2, i64 2
  store double %5, double* %25, align 8
  %26 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %17, i64 0, i64 0, i64 0
  store double %9, double* %26, align 8
  %27 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %17, i64 0, i64 0, i64 2
  store double %11, double* %27, align 8
  %28 = fneg double %11
  %29 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %17, i64 0, i64 2, i64 0
  store double %28, double* %29, align 8
  %30 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %17, i64 0, i64 2, i64 2
  store double %9, double* %30, align 8
  %31 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %18, i64 0, i64 0, i64 0
  store double %13, double* %31, align 8
  %32 = fneg double %15
  %33 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %18, i64 0, i64 0, i64 1
  store double %32, double* %33, align 8
  %34 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %18, i64 0, i64 1, i64 0
  store double %15, double* %34, align 8
  %35 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %18, i64 0, i64 1, i64 1
  store double %13, double* %35, align 8
  call void @MultMatrixMatrix([4 x [4 x double]]* noundef %16, [4 x [4 x double]]* noundef %17, [4 x [4 x double]]* noundef %19)
  call void @MultMatrixMatrix([4 x [4 x double]]* noundef %19, [4 x [4 x double]]* noundef %18, [4 x [4 x double]]* noundef %20)
  ret [4 x [4 x double]]* %20
}

; Function Attrs: nounwind
declare dso_local double @cos(double noundef) #4

; Function Attrs: nounwind
declare dso_local double @sin(double noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local noalias [4 x [4 x double]]* @ScaleMatrix(double noundef %0, double noundef %1, double noundef %2) #3 {
  %4 = call [4 x [4 x double]]* @IdentMatrix()
  %5 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %4, i64 0, i64 0, i64 0
  store double %0, double* %5, align 8
  %6 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %4, i64 0, i64 1, i64 1
  store double %1, double* %6, align 8
  %7 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %4, i64 0, i64 2, i64 2
  store double %2, double* %7, align 8
  ret [4 x [4 x double]]* %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @RotatePoint(%struct.ObjPointStruct* noalias nocapture writeonly sret(%struct.ObjPointStruct) align 8 %0, %struct.ObjPointStruct* noundef byval(%struct.ObjPointStruct) align 8 %1, double noundef %2, double noundef %3, double noundef %4) #3 {
  %6 = alloca %struct.HPointStruct, align 8
  %7 = alloca %struct.HPointStruct, align 8
  %8 = alloca %struct.HPointStruct, align 8
  call void @PointToHPoint(%struct.HPointStruct* nonnull sret(%struct.HPointStruct) align 8 %7, %struct.ObjPointStruct* noundef nonnull byval(%struct.ObjPointStruct) align 8 %1) #8
  %9 = bitcast %struct.HPointStruct* %6 to i8*
  %10 = bitcast %struct.HPointStruct* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %10, i64 32, i1 false)
  %11 = call [4 x [4 x double]]* @RotateMatrix(double noundef %2, double noundef %3, double noundef %4)
  call void @MultMatrixHPoint(%struct.HPointStruct* nonnull sret(%struct.HPointStruct) align 8 %8, [4 x [4 x double]]* noundef %11, %struct.HPointStruct* noundef nonnull byval(%struct.HPointStruct) align 8 %6)
  %12 = bitcast %struct.HPointStruct* %6 to i8*
  %13 = bitcast %struct.HPointStruct* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %12, i8* noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false)
  %14 = bitcast %struct.ObjPointStruct* %0 to i8*
  %15 = bitcast %struct.ObjPointStruct* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %14, i8* noundef nonnull align 8 dereferenceable(48) %15, i64 48, i1 false)
  ret void
}

declare dso_local void @PointToHPoint(%struct.HPointStruct* sret(%struct.HPointStruct) align 8, %struct.ObjPointStruct* noundef byval(%struct.ObjPointStruct) align 8) #6

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind uwtable
define dso_local void @PrintMatrix([4 x double]* nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds [4 x double], [4 x double]* %0, i64 0, i64 0
  %3 = load double, double* %2, align 8
  %4 = getelementptr inbounds [4 x double], [4 x double]* %0, i64 0, i64 1
  %5 = load double, double* %4, align 8
  %6 = getelementptr inbounds [4 x double], [4 x double]* %0, i64 0, i64 2
  %7 = load double, double* %6, align 8
  %8 = getelementptr inbounds [4 x double], [4 x double]* %0, i64 0, i64 3
  %9 = load double, double* %8, align 8
  %10 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), double noundef %3, double noundef %5, double noundef %7, double noundef %9) #8
  %11 = getelementptr inbounds [4 x double], [4 x double]* %0, i64 1, i64 0
  %12 = load double, double* %11, align 8
  %13 = getelementptr inbounds [4 x double], [4 x double]* %0, i64 1, i64 1
  %14 = load double, double* %13, align 8
  %15 = getelementptr inbounds [4 x double], [4 x double]* %0, i64 1, i64 2
  %16 = load double, double* %15, align 8
  %17 = getelementptr inbounds [4 x double], [4 x double]* %0, i64 1, i64 3
  %18 = load double, double* %17, align 8
  %19 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), double noundef %12, double noundef %14, double noundef %16, double noundef %18) #8
  %20 = getelementptr inbounds [4 x double], [4 x double]* %0, i64 2, i64 0
  %21 = load double, double* %20, align 8
  %22 = getelementptr inbounds [4 x double], [4 x double]* %0, i64 2, i64 1
  %23 = load double, double* %22, align 8
  %24 = getelementptr inbounds [4 x double], [4 x double]* %0, i64 2, i64 2
  %25 = load double, double* %24, align 8
  %26 = getelementptr inbounds [4 x double], [4 x double]* %0, i64 2, i64 3
  %27 = load double, double* %26, align 8
  %28 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), double noundef %21, double noundef %23, double noundef %25, double noundef %27) #8
  %29 = getelementptr inbounds [4 x double], [4 x double]* %0, i64 3, i64 0
  %30 = load double, double* %29, align 8
  %31 = getelementptr inbounds [4 x double], [4 x double]* %0, i64 3, i64 1
  %32 = load double, double* %31, align 8
  %33 = getelementptr inbounds [4 x double], [4 x double]* %0, i64 3, i64 2
  %34 = load double, double* %33, align 8
  %35 = getelementptr inbounds [4 x double], [4 x double]* %0, i64 3, i64 3
  %36 = load double, double* %35, align 8
  %37 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), double noundef %30, double noundef %32, double noundef %34, double noundef %36) #8
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #6

attributes #0 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #8 = { nounwind }

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
