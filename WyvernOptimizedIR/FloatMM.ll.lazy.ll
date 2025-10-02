; ModuleID = './FloatMM.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/Stanford/FloatMM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { %struct.node*, %struct.node*, i32 }
%struct.element = type { i32, i32 }
%struct.complex = type { float, float }

@seed = dso_local global i64 0, align 8
@rma = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@rmb = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@rmr = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
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
@z = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@w = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@e = dso_local global [130 x %struct.complex] zeroinitializer, align 16
@zr = dso_local global float 0.000000e+00, align 4
@zi = dso_local global float 0.000000e+00, align 4

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

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @rInitmatrix([41 x float]* nocapture noundef writeonly %0) #2 {
  br label %2

2:                                                ; preds = %19, %1
  %.01 = phi i32 [ 1, %1 ], [ %20, %19 ]
  %3 = icmp ult i32 %.01, 41
  br i1 %3, label %4, label %21

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %16, %4
  %.0 = phi i32 [ 1, %4 ], [ %17, %16 ]
  %6 = icmp ult i32 %.0, 41
  br i1 %6, label %7, label %18

7:                                                ; preds = %5
  %8 = call i32 @Rand()
  %9 = srem i32 %8, 120
  %10 = add nsw i32 %9, -60
  %11 = sitofp i32 %10 to float
  %12 = fdiv float %11, 3.000000e+00
  %13 = zext i32 %.01 to i64
  %14 = zext i32 %.0 to i64
  %15 = getelementptr inbounds [41 x float], [41 x float]* %0, i64 %13, i64 %14
  store float %12, float* %15, align 4
  br label %16

16:                                               ; preds = %7
  %17 = add nuw nsw i32 %.0, 1
  br label %5, !llvm.loop !4

18:                                               ; preds = %5
  br label %19

19:                                               ; preds = %18
  %20 = add nuw nsw i32 %.01, 1
  br label %2, !llvm.loop !6

21:                                               ; preds = %2
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @rInnerproduct(float* nocapture noundef %0, [41 x float]* nocapture noundef readonly %1, [41 x float]* nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #3 {
  store float 0.000000e+00, float* %0, align 4
  br label %6

6:                                                ; preds = %19, %5
  %.0 = phi i32 [ 1, %5 ], [ %20, %19 ]
  %7 = icmp ult i32 %.0, 41
  br i1 %7, label %8, label %21

8:                                                ; preds = %6
  %9 = load float, float* %0, align 4
  %10 = sext i32 %3 to i64
  %11 = zext i32 %.0 to i64
  %12 = getelementptr inbounds [41 x float], [41 x float]* %1, i64 %10, i64 %11
  %13 = load float, float* %12, align 4
  %14 = zext i32 %.0 to i64
  %15 = sext i32 %4 to i64
  %16 = getelementptr inbounds [41 x float], [41 x float]* %2, i64 %14, i64 %15
  %17 = load float, float* %16, align 4
  %18 = call float @llvm.fmuladd.f32(float %13, float %17, float %9)
  store float %18, float* %0, align 4
  br label %19

19:                                               ; preds = %8
  %20 = add nuw nsw i32 %.0, 1
  br label %6, !llvm.loop !7

21:                                               ; preds = %6
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @Mm(i32 noundef %0) #5 {
  call void @Initrand()
  call void @rInitmatrix([41 x float]* noundef getelementptr inbounds ([41 x [41 x float]], [41 x [41 x float]]* @rma, i64 0, i64 0))
  call void @rInitmatrix([41 x float]* noundef getelementptr inbounds ([41 x [41 x float]], [41 x [41 x float]]* @rmb, i64 0, i64 0))
  br label %2

2:                                                ; preds = %14, %1
  %.01 = phi i32 [ 1, %1 ], [ %15, %14 ]
  %3 = icmp ult i32 %.01, 41
  br i1 %3, label %4, label %16

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %11, %4
  %.0 = phi i32 [ 1, %4 ], [ %12, %11 ]
  %6 = icmp ult i32 %.0, 41
  br i1 %6, label %7, label %13

7:                                                ; preds = %5
  %8 = zext i32 %.01 to i64
  %9 = zext i32 %.0 to i64
  %10 = getelementptr inbounds [41 x [41 x float]], [41 x [41 x float]]* @rmr, i64 0, i64 %8, i64 %9
  call void @rInnerproduct(float* noundef nonnull %10, [41 x float]* noundef getelementptr inbounds ([41 x [41 x float]], [41 x [41 x float]]* @rma, i64 0, i64 0), [41 x float]* noundef getelementptr inbounds ([41 x [41 x float]], [41 x [41 x float]]* @rmb, i64 0, i64 0), i32 noundef %.01, i32 noundef %.0)
  br label %11

11:                                               ; preds = %7
  %12 = add nuw nsw i32 %.0, 1
  br label %5, !llvm.loop !8

13:                                               ; preds = %5
  br label %14

14:                                               ; preds = %13
  %15 = add nuw nsw i32 %.01, 1
  br label %2, !llvm.loop !9

16:                                               ; preds = %2
  %17 = icmp slt i32 %0, 40
  br i1 %17, label %18, label %27

18:                                               ; preds = %16
  %19 = add nsw i32 %0, 1
  %20 = sext i32 %19 to i64
  %21 = add nsw i32 %0, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [41 x [41 x float]], [41 x [41 x float]]* @rmr, i64 0, i64 %20, i64 %22
  %24 = load float, float* %23, align 4
  %25 = fpext float %24 to double
  %26 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double noundef %25) #7
  br label %27

27:                                               ; preds = %18, %16
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #5 {
  br label %1

1:                                                ; preds = %4, %0
  %.0 = phi i32 [ 0, %0 ], [ %5, %4 ]
  %2 = icmp ult i32 %.0, 5000
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  call void @Mm(i32 noundef %.0)
  br label %4

4:                                                ; preds = %3
  %5 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !10

6:                                                ; preds = %1
  ret i32 0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
